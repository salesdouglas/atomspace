;
; sequence.scm
;
; Test data for the GroundedPredicateNode, which is a virtual node.
; A sequence of these is evaluated, verifying that sequential evaluation
; works.
;
(use-modules (opencog))
(use-modules (opencog exec))

(define green-light  (ConceptNode "green light"))
(define red-light  (ConceptNode "red light"))

(define num-green 0)
(define num-red 0)

; Return SimpleTV of true if green light, false if red light, and
; throw an exception if neither.  Increment counters so that we
; can verify that this was invoked.
(define (stop-go atom)
	(cond
		((equal? atom green-light) (begin (set! num-green (+ 1 num-green)) (stv 1 1)))
		((equal? atom red-light) (begin (set! num-red (+ 1 num-red)) (stv 0 1)))
		(else (throw 'not-a-stoplight "stop-go" "you're busted"))
	)
)

; Should throw an exception in all cases. Shouldn't do donuts on
; corn fields.
(define (off-road)
	(SequentialAndLink
		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink
				(ConceptNode "corn field")
			)
		)
	)
)

;; Should see two green lights, and one red light, after which
;; the matching should stop.  There should be no exceptions or
;; errors when evaluating this.
(define (traffic-lights)
	(SequentialAndLink
		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink green-light)
		)

		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink green-light)
		)

		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink red-light)
		)

		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink
				(ConceptNode "traffic ticket")
			)
		)
	)
)

;; Two green lights, and that is all.
(define (all-green)
	(SequentialAndLink
		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink green-light)
		)

		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink green-light)
		)
	)
)

;; Not Links invert the meaning...
(define (anti-green)
	(SequentialAndLink
		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink green-light)
		)

		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink green-light)
		)

		(NotLink
			(EvaluationLink
				(GroundedPredicateNode "scm: stop-go")
				(ListLink green-light)
			)
		)

		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink green-light)
		)

		(EvaluationLink
			(GroundedPredicateNode "scm: stop-go")
			(ListLink (ConceptNode "traffic ticket"))
		)
	)
)

;;; The below is very similar to the above, except that this uses
;;; a SequentialOrLink that halts after the first TRUE value.
;;;
(define drag-race
	(SatisfactionLink
		(VariableList)  ; no variables
		(SequentialOrLink   ; <==== unlike before, this it OR
			(EvaluationLink
				(GroundedPredicateNode "scm: stop-go")
				(ListLink red-light)
			)
			(EvaluationLink
				(GroundedPredicateNode "scm: stop-go")
				(ListLink red-light)
			)
			(EvaluationLink
				(GroundedPredicateNode "scm: stop-go")
				(ListLink red-light)
			)
			(EvaluationLink
				(GroundedPredicateNode "scm: stop-go")
				(ListLink green-light)
			)
			(EvaluationLink
				(GroundedPredicateNode "scm: stop-go")
				(ListLink
					(ConceptNode ".... And they're off!"))))))
