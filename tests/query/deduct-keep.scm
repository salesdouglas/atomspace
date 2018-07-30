;;
;; deduct-keep.scm
;;
;; Print out who keeps what
;;
;; Part of the "Einstein puzzle" demo.

(define (print-ownership)
	(BindLink
		;; variable declarations
		(VariableList
			(TypedVariableLink
				(VariableNode "$person")
				(TypeNode "FeatureNode")
			)
			(VariableNode "$nationality")
			(VariableNode "$house")
			(VariableNode "$pet")
		)
		;; body -- if all parts of AndLink hold true ... then
		(AndLink
			(EvaluationLink
				(PredicateNode "Nationality")
				(ListLink
					(VariableNode "$person")
					(VariableNode "$nationality")
				)
			)
			(EvaluationLink
				(PredicateNode "LivesIn")
				(ListLink
					(VariableNode "$person")
					(VariableNode "$house")
				)
			)
			(EvaluationLink
				(PredicateNode "KeepsPet")
				(ListLink
					(VariableNode "$person")
					(VariableNode "$pet")
				)
			)
		)
		(OrderedLink
			(VariableNode "$person")
			(VariableNode "$nationality")
			(VariableNode "$house")
			(VariableNode "$pet")
		)
	)
)


(define (print-results)
	(BindLink
		;; variable declarations
		(VariableList
			(TypedVariableLink
				(VariableNode "$person")
				(TypeNode "FeatureNode")
			)
			(VariableNode "$pred")
			(TypedVariableLink
				(VariableNode "$attr")
				(TypeNode "ConceptNode")
			)
		)
		;; body -- if all parts of AndLink hold true ... then
		(AndLink
			(EvaluationLink
				(VariableNode "$pred")
				(ListLink
					(VariableNode "$person")
					(VariableNode "$attr")
				)
			)
		)
		(OrderedLink
			(VariableNode "$person")
			(VariableNode "$pred")
			(VariableNode "$attr")
		)
	)
)


