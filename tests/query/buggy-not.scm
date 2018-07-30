;;
;; buggy-not.scm
;;
;; Crazy NotLink bug
;;

(define (stv mean conf) (cog-new-stv mean conf))

;; Person1 lives in the red house.
(EvaluationLink (stv 1 1)
	(PredicateNode "LivesIn")
	(ListLink
		(FeatureNode "person1") ; AvatarNode
		(ConceptNode "red_house")
	)
)

;; Person2 lives the red house.
(EvaluationLink (stv 1 1)
	(PredicateNode "LivesIn")
	(ListLink
		(FeatureNode "person2")
		(ConceptNode "red_house")
	)
)

;; "Is the same person" deduction rule.
;; If person A and person B both share the same predicate and property,
;; then they must be the same person.
(define (is-same-rule)
	(BindLink
		;; variable declarations
		(VariableList
			(TypedVariableLink
				(VariableNode "$predicate")
				(TypeNode "PredicateNode")
			)
			(TypedVariableLink
				(VariableNode "$person_a")
				(TypeNode "FeatureNode")
			)
			(TypedVariableLink
				(VariableNode "$person_b")
				(TypeNode "FeatureNode")
			)
			(TypedVariableLink
				(VariableNode "$property")
				(TypeNode "ConceptNode")
			)
		)
		;; body -- if all parts of AndLink hold true ... then
		(AndLink
			(EvaluationLink
				(VariableNode "$predicate")
				(ListLink
					(VariableNode "$person_a")
					(VariableNode "$property")
				)
			)
			(EvaluationLink
				(VariableNode "$predicate")
				(ListLink
					(VariableNode "$person_b")
					(VariableNode "$property")
				)
			)
			;; Avoid reporting things we already know.
			;; Basically, if we already know that person A and B
			;; are the same person, then lets not deduce it again.
			(AbsentLink
				(EvaluationLink
					(PredicateNode "IsSamePerson")
					(ListLink
						(VariableNode "$person_a")
						(VariableNode "$person_b")
					)
				)
			)
		)
		;; implicand -- then the following is true too
		(EvaluationLink
			(PredicateNode "IsSamePerson")
			(ListLink
				(VariableNode "$person_a")
				(VariableNode "$person_b")
			)
		)
	)
)

(define (transitive-rule)
	(BindLink
		;; variable declarations
		(VariableList
			(TypedVariableLink
				(VariableNode "$person_a")
				(TypeNode "FeatureNode")
			)
			(TypedVariableLink
				(VariableNode "$person_b")
				(TypeNode "FeatureNode")
			)
		)
		;; body -- if all parts of AndLink hold true ... then
		(AndLink
			(EvaluationLink
				(PredicateNode "IsSamePerson")
				(ListLink
					(VariableNode "$person_a")
					(VariableNode "$person_b")
				)
			)
		)
		;; implicand -- then the following is true too
		(OrderedLink
			(VariableNode "$person_a")
			(VariableNode "$person_b")
		)
	)
)
