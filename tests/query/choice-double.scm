;
; Unit testing for ChoiceLinks in the pattern matcher.
; Much link choice-embed, except it ahs two choice links
;
(use-modules (opencog))
(use-modules (opencog exec))

;;; Populate the atomspace with four small trees.
(MemberLink
	(ConceptNode "Tom")
	(ConceptNode "ways and means")
)

(MemberLink
	(ConceptNode "Joe")
	(ConceptNode "ways and means")
)

(MemberLink
	(ConceptNode "Hank")
	(ConceptNode "ways and means")
)

(MemberLink
	(ConceptNode "Dick")
	(ConceptNode "agriculture")
)

;;; the list link serves no purpose other than to "embed"
(ListLink
	(MemberLink
		(ConceptNode "Tom")
		(ConceptNode "Senator")
	)
)

(ListLink
	(MemberLink
		(ConceptNode "Dick")
		(ConceptNode "Senator")
	)
)

(ListLink
	(MemberLink
		(ConceptNode "Joe")
		(ConceptNode "Representative")
	)
)

;; We should NOT find Hank!
(ListLink
	(MemberLink
		(ConceptNode "Hank")
		(ConceptNode "CEO")
	)
)

;;; Two clauses; they are both connected with a common variable.
(define (double)
	(BindLink
		(AndLink
			(ChoiceLink
				(MemberLink
					(VariableNode "$x")
					(ConceptNode "ways and means")
				)
				(MemberLink
					(VariableNode "$x")
					(ConceptNode "agriculture")
				)
			)
			(ListLink
				(ChoiceLink
					(MemberLink
						(VariableNode "$x")
						(ConceptNode "Senator")
					)
					(MemberLink
						(VariableNode "$x")
						(ConceptNode "Representative")
					)
				)
			)
		)
		(VariableNode "$x")
	)
)
