
(define (stv mean conf) (cog-new-stv mean conf))

; Some data to populate the atomspace
(SetLink
   (UnorderedLink
      (AssociativeLink (stv 1.0 1.0)
         (ConceptNode "want-this")
         (ConceptNode "valid")
      )

      (AssociativeLink (stv 1.0 1.0)
         (ConceptNode "want-this")
         (ConceptNode "one-high, 4-arity")
         (ConceptNode "mehh2")
         (ConceptNode "mehh3")
      )

      (AssociativeLink (stv 1.0 1.0)
         (ConceptNode "want-this")
         (MemberLink
            (WordInstanceNode "color")
            (WordInstanceNode "blue")
         )
      )
   )

   (SimilarityLink
      (AssociativeLink (stv 1.0 1.0)
         (ConceptNode "wrong thing")
         (MemberLink
            (WordInstanceNode "color")
            (WordInstanceNode "blue")
         )
      )

      (AssociativeLink (stv 1.0 1.0)
         (FeatureNode "want-this")
         (MemberLink
            (WordInstanceNode "color")
            (WordInstanceNode "blue")
         )
      )
   )

   (AssociativeLink (stv 1.0 1.0)
      (FeatureNode "want-this")
      (FeatureNode "not really")
      (MemberLink
         (WordInstanceNode "color")
         (WordInstanceNode "blue")
      )
   )
)

(AssociativeLink (stv 1.0 1.0)
   (MemberLink
      (WordInstanceNode "color")
      (WordInstanceNode "blue")
   )
   (ConceptNode "want-this")
)

(AssociativeLink (stv 1.0 1.0)
   (ConceptNode "want-this")
   (InheritanceLink
      (WordInstanceNode "color")
      (WordInstanceNode "green")
   )
)

(AssociativeLink (stv 1.0 1.0)
   (ConceptNode "want-this")
   (MemberLink
      (WordInstanceNode "color")
      (WordInstanceNode "blue")
   )
   (ConceptNode "mehh2")
   (ConceptNode "mehh3")
)

(AssociativeLink (stv 1.0 1.0)
   (FeatureNode "want-this")
   (AssociativeLink (stv 1.0 1.0)
      (FeatureNode "want-this")
      (MemberLink
         (FeatureNode "want-this")
         (AssociativeLink (stv 1.0 1.0)
            (WordInstanceNode "Volkerding")
            (WordInstanceNode "fnord")
         )
      )
      (MemberLink
         (WordInstanceNode "Volkerding")
         (WordInstanceNode "fnord")
      )
      (MemberLink
         (WordInstanceNode "Volkerding")
         (WordInstanceNode "fnord")
      )
   )
)

; Match any arity-2 structure of the desired form.
(define (untyped-link-match)
   (BindLink
      (VariableList
         (VariableNode "$var")
      )
      (AndLink
         (AssociativeLink (stv 1 0.99999988)
            (ConceptNode "want-this")
            (VariableNode "$var")
         )
      )
      (VariableNode "$var")
   )
)

; Match arity-2 with the link having a type.
(define (typed-link-match)
   (BindLink
      (VariableList
         (TypedVariableLink
            (VariableNode "$var")
            (TypeNode "MemberLink")
         )
      )
      (AndLink
         (AssociativeLink (stv 1 0.99999988)
            (ConceptNode "want-this")
            (VariableNode "$var")
         )
      )
      (VariableNode "$var")
   )
)

; Match any arity-two structure
(define (untyped-any-match)
   (BindLink
      (VariableList
         (VariableNode "$var-a")
         (VariableNode "$var-b")
      )
      (AndLink
         (AssociativeLink (stv 1 0.99999988)
            (VariableNode "$var-a")
            (VariableNode "$var-b")
         )
      )
      (ListLink
         (VariableNode "$var-a")
         (VariableNode "$var-b")
      )
   )
)

; Match typed arity-two structure
(define (typed-memb-link-match)
   (BindLink
      (VariableList
         (VariableNode "$var-a")
         (TypedVariableLink
            (VariableNode "$var-b")
            (TypeNode "MemberLink")
         )
      )
      (AndLink
         (AssociativeLink (stv 1 0.99999988)
            (VariableNode "$var-a")
            (VariableNode "$var-b")
         )
      )
      (ListLink
         (VariableNode "$var-a")
         (VariableNode "$var-b")
      )
   )
)

(define (typed-pet-node-match)
   (BindLink
      (VariableList
         (VariableNode "$var-a")
         (TypedVariableLink
            (VariableNode "$var-b")
            (TypeNode "FeatureNode")
         )
      )
      (AndLink
         (AssociativeLink (stv 1 0.99999988)
            (VariableNode "$var-b")
            (VariableNode "$var-a")
         )
      )
      (ListLink
         (VariableNode "$var-b")
         (VariableNode "$var-a")
      )
   )
)
