;
; similarity-api.scm
;
; Provide framework to fetch/store similarity values.
;
; Copyright (c) 2017 Linas Vepstas
;
; ---------------------------------------------------------------------
; OVERVIEW
; --------
; There is a generic need to work with similarity values between pairs
; of things. These are usually CPU-intensive to compute, and are usually
; non-sparse: i.e. the similarity between N items requires an NxN
; matrix.  For N=one-thousand, NxN=one-million, so this gets out of
; control pretty quickly.
;
; Two things are provided below. First, an API to set and get
; similarities.  Specifically, it provides an API for storing
; similarities as Values in the atomspace. This not only avoids
; recomputation, but also allows them to be persisted in the database.
;
; The second tool provided is a batch-compute function, that will
; compute all NxN similarity values. This is extremely CPU-itensive,
; and even moderate-sized matrixes can take days or weeks to compute.
;
; By default, the similarity measure is assumed to be the cosine
; similarity; the ctor for the API allows other similairty measures
; to be specified.
;
; It is assumed that similarity scores are symmetric, so that exchanging
; left and right give the same answer.  Thus, an UnorderedLink is best
; for storing the pair. Specifically, the SimilarityLink.  So,
;
;    SimilarityLink
;        Atom "this"
;        Atom "that"
;
; and
;
;    SimilarityLink
;        Atom "that"
;        Atom "this"
;
; are both exactly the same atom. The actual similarity values are
; stored as Values on these atoms.  The specific key used to store
; the value depennds on the arguments the API is given; by default,
; the (Predicate "*-Cosine Sim Key-*") is used; if the underlying
; matrix is filtered, then a filter-name-dependent key is used.
; Thus, the same API can be sed with both fitlered and non-filtered
; versions of the dataset.
;
; ---------------------------------------------------------------------
;
(use-modules (srfi srfi-1))
(use-modules (ice-9 optargs)) ; for define*-public
(use-modules (ice-9 threads)) ; for threads
(use-modules (opencog) (opencog persist))

; ---------------------------------------------------------------------
; ---------------------------------------------------------------------
;
; Extend the LLOBJ with additional methods to access similarity scores.
;
(define*-public (add-similarity-api LLOBJ MTM?
	#:optional
	(ID (if (LLOBJ 'filters?) (LLOBJ 'id) #f)))
"
  add-similarity-api - Add API to access similarity values between
  rows or columns of the LLOBJ.  This API merely provides access to
  values that were previously computed, located as Values attached
  to pairs of Atoms under certain specific keys. That means that this
  API is appropriate for working with similarity values that were
  stored in a database.

  The 'set-pair-similarity method is used to set a value.
  The 'pair-simiarity method is used to fetch it.
  
  This creates a new NON-sparse matrix that can be understood as a
  kind-of matrix product of LLOBJ with it's transpose.

  If MTM? is #t, then the similarity matrix is the product M^T M
  for LLOBJ = M, otherwise, the product is MM^T.  Here, M^T is the
  matrix-transpose.

  If the optional argument ID is present, it is used to construct the
  key under which the similarity scores are accessed.  This is needed
  if the similarity scores are not the default cosine similarity scores.
"
	; We need 'left-basis, provided by add-pair-stars
	(let ((wldobj (add-pair-stars LLOBJ)))

		(define name
			(if ID
				(string-append "Similarity Matrix " ID)
				(string-append
					(if MTM? "Left" "Right")
					" Cosine Similarity Matrix")))

		; The type of the rows and columns in the composite matrix.
		(define item-type
			(if MTM?
				(LLOBJ 'right-type)
				(LLOBJ 'left-type)))

		(define pair-sim-type 'SimilarityLink)

		(define sim-key (PredicateNode
			(if ID
				(string-append "*-SimKey " ID)
				"*-Cosine Sim Key-*")))

		; Return the precomputed similarity value on ATOM
		; This returns the Value on the atom, and not a number!
		(define (get-sim ATOM)
			(if (null? ATOM) '()
				(cog-value ATOM sim-key)))

		; Save a precomputed similarity on ATOM. The SIM should be a
		; Value, e.g. a FloatValue.
		(define (set-sim ATOM SIM)
			(cog-set-value! ATOM sim-key SIM))

		; fetch-sim-pairs - fetch all SimilarityLinks from the database.
		(define (fetch-sim-pairs)
			(define start-time (current-time))
			(load-atoms-of-type pair-sim-type)
			(format #t "Elapsed time to load sims: ~A secs\n"
				(- (current-time) start-time)))

		; Methods on this class.
		(lambda (message . args)
			(case message
				((name)           name)
				((left-type)      item-type)
				((right-type)     item-type)
				((pair-type)      pair-sim-type)
				((fetch-pairs)    (fetch-sim-pairs))

				((pair-similarity)     (apply get-sim args))
				((set-pair-similarity) (apply set-sim args))

				; (else             (apply LLOBJ (cons message args)))
				(else (error "Bad method call on similarity API:" message))
		)))
)

; ---------------------------------------------------------------------
; ---------------------------------------------------------------------
;
; Extend the LLOBJ with additional methods to batch-compute similarity
; scores.
;
(define*-public (batch-similarity LLOBJ MTM?
	#:optional
	(ID (if (LLOBJ 'filters?) (LLOBJ 'id) #f))
	(CUTOFF 0.1)
	(SIM-FUN
		(let ((acc (add-pair-cosine-compute LLOBJ)))
			(if MTM?
				(lambda (x y) (acc 'left-cosine x y))
				(lambda (x y) (acc 'right-cosine x y)))))
	)
"
  batch-similarity - Add API to batch-compute similarity values between
  rows or columns of the LLOBJ.  By default, the cosine similarity is
  computed, unless some alternate function is specified in the ctor.

  Batching is EXTREMELY CPU-intensive.  A typical run will take days or
  a week or more, even for modest-sized datasets. It will also blow up
  memory usage, since a SimilarityLink and also an atom Value is created
  for each pair of atoms. For N=1000, this means N^2=one million
  SimilarityLinks and values. This might require a few GBytes of RAM.

  This creates a new NON-sparse matrix that can be understood as a
  kind-of matrix product of LLOBJ with it's transpose.

  If MTM? is #t, then the similarity matrix is the product M^T M
  for LLOBJ = M, otherwise, the product is MM^T.  Here, M^T is the
  matrix-transpose.
"
	; We need 'left-basis, provided by add-pair-stars
	(let* ((wldobj (add-pair-stars LLOBJ))
			(simobj (add-similarity-api wldobj MTM? ID))
			(pair-sim-type (simobj 'pair-type))
			(goodcnt 0)
		)

		; Fetch or compute the similarity value.
		; If the sim value is stored already, return that,
		; else compute it. If the computed value is greater than
		; CUTOFF, then save it.
		(define (compute-sim A B)
			(define mpr (cog-link pair-sim-type A B))
			(define prs (simobj 'pair-similarity mpr))
			(if (not (null? prs))
				(cog-value-ref prs 0)
				(let ((simv (SIM-FUN A B)))
					(if (<= CUTOFF simv)
						(begin
							(set! goodcnt (+ goodcnt 1))
							(simobj 'set-pair-similarity
								(cog-new-link pair-sim-type A B)
									(FloatValue simv))))
					simv)))

		; Compute and store the similarity between the ITEM, and the
		; other items in the ITEM-LIST.  Do NOT actually cache the
		; similarity value, if it is less than CUTOFF.  This is used
		; to avoid having N-squared pairs cluttering the atomspace.
		;
		(define (batch-simlist ITEM ITEM-LIST)
			(set! goodcnt 0)
			(for-each
				(lambda (item) (compute-sim ITEM item))
				ITEM-LIST)
			goodcnt
		)

		; Loop over the entire list of items, and compute similarity
		; scores between pairs of them.  This might take a very long time!
		; Serial version, see also parallel version below.
		(define (batch-sim-pairs ITEM-LIST)

			(define len (length ITEM-LIST))
			(define tot (* 0.5 len (- len 1)))
			(define done 0)
			(define prs 0)
			(define prevf 0)
			(define start (current-time))
			(define prevt start)

			(define (do-one-and-rpt ITM-LST)
				(set! prs (+ prs (batch-simlist (car ITM-LST) (cdr ITM-LST))))
				(set! done (+  done 1))
				(if (eqv? 0 (modulo done 10))
					(let* ((elapsed (- (current-time) start))
							(togo (* 0.5 (- len done) (- len (+ done 1))))
							(frt (- tot togo))
							(rate (* 0.001 (/ (- frt prevf) (- elapsed prevt))))
							)
						(format #t
							 "Done ~A/~A frac=~5f% Time: ~A Done: ~4f% rate=~5f K prs/sec\n"
							done len
							(* 100.0 (/ prs frt))
							elapsed
							(* 100.0 (/ frt tot))
							rate
						)
						(set! prevt (- elapsed 1.0e-6))
						(set! prevf frt)
				)))

			; tail-recursive list-walker.
			(define (make-pairs ITM-LST)
				(if (not (null? ITM-LST))
					(begin
						(do-one-and-rpt ITM-LST)
						(make-pairs (cdr ITM-LST)))))

			(make-pairs ITEM-LIST)
		)

		; Loop over the entire list of items, and compute similarity
		; scores for them.  Hacked parallel version.
		(define (para-batch-sim-pairs ITEM-LIST NTHREADS)

			(define len (length ITEM-LIST))
			(define tot (* 0.5 len (- len 1)))
			(define done 0)
			(define prs 0)
			(define prevf 0)
			(define start (current-time))
			(define prevt start)

			(define (do-one-and-rpt ITM-LST)
				; These sets are not thread-safe but I don't care.
				(set! prs (+ prs (batch-simlist (car ITM-LST) (cdr ITM-LST))))
				(set! done (+ done 1))
				(if (eqv? 0 (modulo done 20))
					(let* ((elapsed (- (current-time) start))
							(togo (* 0.5 (- len done) (- len (+ done 1))))
							(frt (- tot togo))
							(rate (* 0.001 (/ (- frt prevf) (- elapsed prevt))))
							)
						(format #t
							 "Done ~A/~A frac=~5f% Time: ~A Done: ~4f% rate=~5f K prs/sec\n"
							done len
							(* 100.0 (/ (* NTHREADS prs) frt))
							elapsed
							(* 100.0 (/ frt tot))
							rate
						)
						(set! prevt (- elapsed 1.0e-6))
						(set! prevf frt)
					)))

			; tail-recursive list-walker.
			(define (make-pairs ITM-LST)
				(if (not (null? ITM-LST))
					(begin
						(do-one-and-rpt ITM-LST)
						(if (< NTHREADS (length ITM-LST))
							(make-pairs (drop ITM-LST NTHREADS))))))

			; thread launcher
			(define (launch ITM-LST CNT)
				(if (< 0 CNT)
					(begin
						(call-with-new-thread (lambda () (make-pairs ITM-LST)))
						(launch (cdr ITM-LST) (- CNT 1)))))

			(launch ITEM-LIST NTHREADS)

			(format #t "Started ~d threads\n" NTHREADS)
		)

		; Loop over basis elements
		(define (batch)
			(batch-sim-pairs
				(if MTM?
					(wldobj 'right-basis)
					(wldobj 'left-basis))))


		; Loop over basis elements
		(define (para-batch NTHREADS)
			(para-batch-sim-pairs
				(if MTM?
					(wldobj 'right-basis)
					(wldobj 'left-basis))
				NTHREADS))

		; Methods on this class.
		(lambda (message . args)
			(case message

				((compute-similarity)  (apply compute-sim args))
				((batch-compute)       (batch))
				((paralel-batch)       (apply para-batch args))

				(else                  (apply LLOBJ (cons message args)))
		)))
)

; ---------------------------------------------------------------------
; ---------------------------------------------------------------------
