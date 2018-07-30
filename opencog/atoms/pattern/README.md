
Query and Satisfaction
======================

The atoms in this directory memoize (cache) the patterns specified by
the SatisfactionLink and the BindLink.  This helps avoid having to
unpack these links every time a pattern search is performed. It also
verifies that the syntax is correct; that the links are well-formed.

The SatisfactionLink and BindLink implicitly assume (have to assume)
that they will run with the DefaultPatternMatchCB, or variants thereof.
However, the current implementation does allow them to actually run
with other callbacks as well, so weird stuff may happen due to this
implicit assumption. By contrast, the ConcreteLink tries not to make
such assumptions, or, at least, to make fewer of them.


Basic Intro
-----------
What follows is a basic intro to satisfiability and grounding.

The BindLink::imply() method is used to "evaluate" a BindLink.  The
BindLink serves to declare the variables present in predicate and the
implicand (the rewrite term).

Given a BindLink, this method will "evaluate" it, matching
the predicate, and creating a grounded implicand, assuming the
predicate can be satisfied. Thus, for example, given the structure

   BindLink
      VariableList
         VariableNode "$var0"
         VariableNode "$var1"
      AndList
         EvaluationLink
            PredicateNode "_obj"
            ListLink
               ConceptNode "make"
               VariableNode "$var0"
         EvaluationLink
            PredicateNode "from"
            ListLink
               ConceptNode "make"
               VariableNode "$var1"
      EvaluationLink
         PredicateNode "make_from"
         ListLink
            VariableNode "$var0"
            VariableNode "$var1"

Then, if the atomspace also contains a parsed version of the English
sentence "Pottery is made from clay", that is, if it contains the
hypergraph

   EvaluationLink
      PredicateNode "_obj"
      ListLink
         ConceptNode "make"
         ConceptNode "pottery"

and the hypergraph

   EvaluationLink
      PredicateNode "from"
      ListLink
         ConceptNode "make"
         ConceptNode "clay"

Then, by pattern matching, the predicate part of the BindLink can be
fulfilled, binding $var0 to "pottery" and $var1 to "clay".  These
bindings are referred to as the 'groundings' or 'solutions' to the
variables. So, e.g. $var0 is 'grounded' by "pottery".

Next, a grounded copy of the implicand is then created; that is,
the following hypergraph is created and added to the atomspace:

   EvaluationLink
      PredicateNode "make_from"
      ListLink
         ConceptNode "pottery"
         ConceptNode "clay"

As the above example illustrates, this function expects that BindLink
has 3 outgoings (or 2 if the variables are ignored), the variables to
bind, a predicate consisting entirely of one disjunct (one AndList)
and one (ungrounded) implicand.  The variables are explicitly declared
in the 'varlist' argument to this function. These variables should be
understood as 'bound variables' in the usual sense of
lambda-calculus. (It is strongly suggested that variables always be
declared as VariableNodes; there are several spots in the code where
this is explicitly assumed, and declaring some other node type as a
variable may lead to unexpected results.)

Pattern-matching proceeds by finding groundings for these variables.
When a pattern match is found, the variables can be understood as
being grounded by some explicit terms in the atomspace. This
grounding is then used to create a grounded version of the
(ungrounded) implicand. That is, the variables in the implicand are
substituted by their grounding values.  This method then returns a
list of all of the grounded implicands that were created.

The act of pattern-matching to the predicate of the implication has
an implicit 'for-all' flavour to it: the pattern is matched to 'all'
matches in the atomspace.  However, with a suitably defined
PatternMatchCallback, the search can be terminated at any time, and
so this method can be used to implement a 'there-exists' predicate,
or any quantifier whatsoever.
 
Note that this method can be used to create a simple forward-chainer:
One need only to take a set of implication links, and call this
method repeatedly on them, until one is exhausted.

TO-DO List
==========

Type Restrictions
-----------------
It could make sense to store type restrictions with a new VariableNode
class. This would offer a minor performance improvement: type
restrictions would not have to be looked up in a map, as currently
implemented.  On the other hand, this could be a major headache: every
variable would have to be globally unique, as otherwise, the type
restrictions would clash with one another.  This would also make
type equations hard to enforce.  Hmm. So maybe this is a bad idea...
