;
; Simplified Sudoku puzzle rules, for smaller puzzles than the normal
; 9x9 one. These are encoded in such a way that the pattern matcher
; can try to do a brute-force exploration.
;
(use-modules (opencog))
(use-modules (opencog exec))


; Definition of a number.  Cells in the sudoku puzzle can only contain
; numbers.
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "one"))
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "two"))
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "three"))
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "four"))
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "five"))
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "six"))
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "seven"))
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "eight"))
(EvaluationLink (PredicateNode "IsNumber") (ConceptNode "nine"))

; -------------------------------------------------------------------
; The set of numbers for the 2x2 puzzle
(EvaluationLink
	(PredicateNode "2x2 sudoku")
	(SetLink
		(ConceptNode "one")
		(ConceptNode "two")
	)
)

; Four solution constraints for the 2x2 puzzle.
;
; I've avoided using whizzy scheme for-loops to specify these, and
; instead tediously wrote them out by hand.  The goal here is to make
; the structure slightly easier to read and understand.
;
(define (x2_row1)
	(EvaluationLink
		(PredicateNode "2x2 sudoku")
		(SetLink
			(VariableNode "$cell_11")
			(VariableNode "$cell_12")
		)
	)
)
(define (x2_row2)
	(EvaluationLink
		(PredicateNode "2x2 sudoku")
		(SetLink
			(VariableNode "$cell_21")
			(VariableNode "$cell_22")
		)
	)
)

;; Next, column constraints
(define (x2_col1)
	(EvaluationLink
		(PredicateNode "2x2 sudoku")
		(SetLink
			(VariableNode "$cell_11")
			(VariableNode "$cell_21")
		)
	)
)
(define (x2_col2)
	(EvaluationLink
		(PredicateNode "2x2 sudoku")
		(SetLink
			(VariableNode "$cell_12")
			(VariableNode "$cell_22")
		)
	)
)

;; The grand-total set of constraints.
(define (x2-sudoku-constraints)
	(list
		;; (cells_are_numbers) ; constraint isn't needed.
		(x2_row1)
		(x2_row2)
		(x2_col1)
		(x2_col2)
	)
)

; Define the variables to be solved for.
; This is just a big list of all the cells.
;
(define (x2-variable-decls lnk)
	(cog-new-link lnk
		(VariableNode "$cell_11")
		(VariableNode "$cell_12")

		(VariableNode "$cell_21")
		(VariableNode "$cell_22")
	)
)

; ------------------------------------------

; Certain fixed numbers appear in certain fixed cell locations.
(EvaluationLink (PredicateNode "x2-fix11") (ConceptNode "one"))
;
; This puzzle should have exactly one solution, since fixing the
; upper-left corner constrains everything else.
(define (x2-puzzle)
	(BindLink
		(x2-variable-decls 'VariableList)
		(AndLink
			; For this puzzle, 1 of the variables is fixed immediately.
			(EvaluationLink (PredicateNode "x2-fix11") (VariableNode "$cell_11"))

			; Aside from the above constraint, there are another
			; 4 constraints.
			(x2-sudoku-constraints)
		)
		; The solution
		(x2-variable-decls 'ListLink)
	)
)

; This puzzle should have 2 solutions total: no cells are fixed, and
; so the constraint rules should explore all two possible solutions.
; These are:
;
;   1 2      2 1
;   2 1      1 2
;
(define (x2-any)
	(BindLink
		(x2-variable-decls 'VariableList)
		(AndLink
			; There are 4 constraints. One is actually redundant...
			(x2-sudoku-constraints)
		)
		; The solution
		(x2-variable-decls 'ListLink)
	)
)

; -------------------------------------------------------------------
; -------------------------------------------------------------------
; -------------------------------------------------------------------
; The set of numbers for the 3x3 puzzle
(EvaluationLink
	(PredicateNode "3x3 sudoku")
	(SetLink
		(ConceptNode "one")
		(ConceptNode "two")
		(ConceptNode "three")
	)
)

; Four solution constraints for the 3x3 puzzle.
;
; I've avoided using whizzy scheme for-loops to specify these, and
; instead tediously wrote them out by hand.  The goal here is to make
; the structure slightly easier to read and understand.
;
(define (x3_row1)
	(EvaluationLink
		(PredicateNode "3x3 sudoku")
		(SetLink
			(VariableNode "$cell_11")
			(VariableNode "$cell_12")
			(VariableNode "$cell_13")
		)
	)
)
(define (x3_row2)
	(EvaluationLink
		(PredicateNode "3x3 sudoku")
		(SetLink
			(VariableNode "$cell_21")
			(VariableNode "$cell_22")
			(VariableNode "$cell_23")
		)
	)
)

(define (x3_row3)
	(EvaluationLink
		(PredicateNode "3x3 sudoku")
		(SetLink
			(VariableNode "$cell_31")
			(VariableNode "$cell_32")
			(VariableNode "$cell_33")
		)
	)
)

;; Next, column constraints
(define (x3_col1)
	(EvaluationLink
		(PredicateNode "3x3 sudoku")
		(SetLink
			(VariableNode "$cell_11")
			(VariableNode "$cell_21")
			(VariableNode "$cell_31")
		)
	)
)
(define (x3_col2)
	(EvaluationLink
		(PredicateNode "3x3 sudoku")
		(SetLink
			(VariableNode "$cell_12")
			(VariableNode "$cell_22")
			(VariableNode "$cell_32")
		)
	)
)
(define (x3_col3)
	(EvaluationLink
		(PredicateNode "3x3 sudoku")
		(SetLink
			(VariableNode "$cell_13")
			(VariableNode "$cell_23")
			(VariableNode "$cell_33")
		)
	)
)

;; The grand-total set of constraints.
(define (x3-sudoku-constraints)
	(list
		;; (cells_are_numbers) ; constraint isn't needed.
		(x3_row1)
		(x3_row2)
		(x3_row3)
		(x3_col1)
		(x3_col2)
		(x3_col3)
	)
)

; Define the variables to be solved for.
; This is just a big list of all the cells.
;
(define (x3-variable-decls lnk)
	(cog-new-link lnk
		(VariableNode "$cell_11")
		(VariableNode "$cell_12")
		(VariableNode "$cell_13")

		(VariableNode "$cell_21")
		(VariableNode "$cell_22")
		(VariableNode "$cell_23")

		(VariableNode "$cell_31")
		(VariableNode "$cell_32")
		(VariableNode "$cell_33")
	)
)

; ------------------------------------------
;
; The puzle below is underconstrained, and should have four total
; solutions: two with permuted columns, and two with permuted rows:
;
;  1 2 3
;  2 3 1   is one, then permute the rightmost 2 cols for another, and
;  3 1 2   then perumted the bottom two rows for two more solutions, to
;          get four grand total.  The upper-left 1 is fixed.

; Certain fixed numbers appear in certain fixed cell locations.
(EvaluationLink (PredicateNode "x3-fix11") (ConceptNode "one"))

(define (x3-puzzle)
	(BindLink
		(x3-variable-decls 'VariableList)
		(AndLink
			; For this puzzle, 1 of the variables is fixed immediately.
			(EvaluationLink (PredicateNode "x3-fix11") (VariableNode "$cell_11"))

			; Aside from the above constraints, there are another
			; 6 constraints.
			(x3-sudoku-constraints)
		)
		; The solution
		(x3-variable-decls 'ListLink)
	)
)
