
#                 Query Processing/Pattern Matching
                          ----------------
               Linas Vepstas <linasvepstas@gmail.com>
                        Created 18 March 2008
                      Revised on 6 November 2014


This directory contains code that implements a subgraph isomorphism
algorithm, and then uses this algorithm to support several functions,
including query processing, graph-rewriting, graph satisfiaibility and
"satsifiability modulo theories".  Forward and backward chaining are
implemented separately, in the rule-engine directory.

The first part of the file describes the generic algorithm; the second
part describes some of its applications to query processing, graph
rewriting, unification, satisfiability and satsifiability module theories.

A simple example of one possible use of this code is shown in the file
"/examples/pattern-matcher/simple.scm".

A Quick Sketch
--------------

The basic idea is that one can specify a pattern or template, in the
form of a graph, some of whose nodes are variables.  The pattern
matcher can then find all other graphs that match the given template,
substituing for the variables. Thus, one has:

 * A Hypergraph Query Language (HQL), that, much like SQL, allows you
   to define a query statement, and ask for all graphs that match. This
   makes the atomspace a kind of graphical database.

 * Given the variable values returned by the query, one can create new
   graphs, thus, one has a graph re-writing facility.

 * The pattern is specified as a collection of trees; it is the union
   of these trees that defines the graph.  The vertexes in the tree are
   typed (they are OpenCog "Atoms"), and so each tree can be understood
   as a term. in the sense of a "term algebra".

 * The same variable can appear in different parts of the template. All
   solutions must therefore have the same value for that variable, thus,
   the pattern matcher performs "unification".  Variables can be
   substituted either by vertexes, or by graphs; so the form of
   unification is not mereley on values, but on terms/expressions.

 * When a value is found for a variable, that value is called a
   "grounding". When the entire pattern can be grounded, it can be
   thought of as being "satisfied", in the sense of "satisfiability".
   Thus, the pattern matcher is a (graphical) satisfiability solver.

 * Certain subgraphs are "evaluatable", other subgraphs are
   "executable". Evaluatable graphs are those that can be evaluated, in
   the sense of functional programming; the result of evaluation is a
   truth value. Executable graphs are likewise, except that the result
   is another graph.

 * During the pattern search, both the evaluatable and the executable
   subgraphs are evaluated, and the matching/unification is done on the
   results. This implies that the pattern amtcher is a "satsifiability
   modulo theories" solver: when it determines that two subgraphs are
   equal, it is applying the "equational theory" given by functions
   (graphs) that are evaluatable. A simple arithmetic theory is
   built-in, and thus, for example, the pattern matcher can prove that
   the equation 5 = 2 + 3 holds (is satsified, modulo the theory of
   addition), while 7 + x = 3 + x is false (not satsifiable).


Subgraph Isomorphism Discovery
------------------------------

Given a small (hyper-)graph and a bigger "universe" (hyper-)graph, the
subgraph isomorphism problem requires one to find the corresponding
smaller graph within the universe graph.  The smaller graph may include
one or more variable nodes or links; these denote variables which will
be given values (groundings): a variable will match any corresponding
node or link in the universe, as long as it occurs in the correct
location. Thus, subgraph matching defacto performs a kind of "variable
unification", and can be used to perform query processing, to "fill in
the blanks".

The subgraph matching algorithm implemented here is more or less
completely general.  The API to it provides for user-defined callbacks
that can be used to modify the search:

 * define what constitutes a 'match' (for individual nodes, links and
   clauses),
 * support for optional clauses (portions of the subgraph, which if
   found, are also returned; commonly used to reject certain types of
   patterns),
 * support for search-order ranking (re-ordering the incoming set,
   e.g. by priority), or even truncation of the incoming set.
 * support for the search start location (again, to potentialy limit
   the total search).
 * solution acceptance callback, to provide on-the-fly reporting, and
   limit the total number of groundings reported.
 * support for a back-tracking callback. During the search, the
   pattern matcher will typically need to backtrack; this callback
   allows user-defined algorithms to push and pop stacks as
   appropriate, as well.

An additional very important feature is support for 'virtual'
hypergraphs: those that are not pre-existing in the fixed universe
(i.e. in the atomspace), but are only defined algorithmically, by a
predicate function that returns a yes/no answer about their existence.
An example would be a greater-than hypergraph that 'virtually' exists
only if a right-hand number is greater than a left-hand number.
Clearly, pre-loading the atomspace with every possible number, and
every possible number-pair is impossible; thus virtual hypergraphs
provide these relations on-the-fly, as needed.  The pattern matcher
is able to correctly find subgraphs that contain such virtual
hypergraphs.

Another important and perhaps under-appreciated function is the
ability to search through unordered links.  When the query subgraph
contains one or more unordered links, the subgraph isomorphism may
exist only for certain permutations of the unordered link.  Thus,
during search, all possible permutations of an unordered link must be
explored.  This increases the size of the search space by
combinatorial factors, and requires a significantly more complex
algorithm to deal with nested unordered links.

The algorithm itself performs an exhaustive search, and can therefore,
under certain circumstances, encounter a combinatorial explosion of
the search space, leading to very long run-times.  This is not usually
the case for most ordinary problems, but can occur for large problems
containing hundreds of unordered links and/or virtual nodes.

Under "normal" circumstances, the algorithm reports each result
exactly once.  However, in certain graphs having a common subexpression,
arranged in a particular way, identical solutions may be repeated more
than once. (With the current algorithm, this occurs when the common
subexpression occurs within different singleton links, and the different
singleton links are all contained within the same link. A solution
will be reported once for each such singleton. This situation would
surely never occur during any sort of "typical" usage. See the
ArcanaUTest::test_repeats() unit test for an example.)

The algorithm performs a fair amount of pre-traversal setup and error
checking, such as finding the common variables that connect different
clauses together, and initializing and setting up maps to make traversal
easier.  This setup time is non-trivial.  Thus, for the simplest
patterns, it might be faster (and probably simpler) for the user to
obtain the desired graphs directly, instead of using the pattern
matcher.  The strength of the pattern matcher is its ability to handle
large, complex graphs with multiple variables interacting in difficult
ways (or even graphs with no constant nodes in them at all!)

The subgraph isomomorphism algorithm itself does not make use of or
require the atomspace: it simply traces connections between links by
traversing the incoming and outgoing sets. The atomspace is required
in only two places: to find a set of starting points for the search
(e.g. by finding all nodes of a given type), and as the location into
which new graphs are inserted (during graph-re-writing).

Clauses and Groundings
----------------------

The OpenCog hypergraph is most easily understood in terms of its
corresponding incidence graph (or "Levi graph"). This, in turn, is best
understood as a collection of trees formed by the "outgoing set" of an
OpenCog Link.  Each internal node of a tree is a link (as only links
have outgoing sets), and each leaf of a tree being a node (as nodes do
not have outgoing sets).  Thus, the outgoing set of an OpenCog Link
forms the downward-branching part of a tree.  The incidence graph is
then a collection of such trees, sharing common nodes or links.  The
incidence graph is an ordinary graph, not a hypergraph, and thus is
perhaps easier to visualize.

The pattern matcher was initially designed to search only for
connected incidence graphs but now supports disconnected graphs.

Note: At this time, neither the OpenCog AtomSpace, nor the pattern
matcher support infinite, recursive subtrees.  That is, a given
incidence graph cannot/must-not have itself as a subtree.  This is
analogous to well-founded sets in set theory.  The tree formed by
outgoing sets must be finite.  Specifying a recursive subtree to the
pattern matcher risks infinite loops (although these could be
mitigated, if desired), and, likewise, infinite loops if inserted
into the atomspace.  Thus, the incidence trees must be finite
(although they do not need to be acyclic: different parts of the tree
may share common subtrees).

In the discussion below, and in the code, these trees are also called
"clauses".  More specifically, the input to the pattern matcher is
given by a list of clauses to be matched.

Consider the following example taken from a dependency parse of the
English language sentence "John threw a ball":

    _subj(throw, John)
    _obj(throw, ball)

There are two distinct graphical interpretations of this dependency
parse: the one commonly used in linguistics, and the one we want to
use here; they are not the same.  In linguistics, "throw" would be the
head word, and there would be labelled arrows pointing from the head
word to the subject and the object (the labels on the arrows being
_subj and _obj)

As a hypergraph, this consists of two trees.  The first tree has
"_subj" as the root, with "throw" and "John" as leaves underneath it.
Likewise, _obj is a tree. These two trees form the incidence graph of
the hypergraph. Note that these two trees share a common node:
"throw", that serves to join them together into one connected graph.

In OpenCog, links cannot have names; only nodes can. Thus, the actual
representation of the above parse, in OpenCog, will be:

    EvaluationLink
       PredicateNode "_subj"
       ListLink
          WordNode "throw"
          WordNode "John"

    EvaluationLink
       PredicateNode "_obj"
       ListLink
          WordNode "throw"
          WordNode "ball"

Here, the indentation level describes the tree structure. The links
and nodes are indicated by name: the nodes are always leaves of the
tree. The two trees or clauses above share a single, common node: that
for "throw".

For the above example, pattern matching can be used to form a simple
question-answering system, by "filling in the blanks".  The dependency
parse for the question "What did John throw?" can be written as:

    _subj(throw, John)
    _obj(throw, _$qVar)

By comparing to the previous graph, it is obvious that the variable
_$qVar can be directly matched to the word "ball", thus answering the
question.  This illustrates the simplest use of the system, as a
kind-of fill-in-the-blanks solver, for elementary-school word
problems: "What did John throw? John threw a ____."

The solution or answer is "ball". This is refered to as a "grounding"
for the "variable" "_$qVar".   The terminology of "grounding" and
"variable" is meant to be identical to the terminology commonly used
in textbooks on model theory, lambda calculus and first-order logic:
these are the very same ideas, expressed as hypergraphs.  In
particular, each "clause" or "tree" in the hypergraph incidence graph
corresponds to an "atomic expression" in a term algebra or in
first-order logic.  The search pattern or query pattern that the
pattern matcher matches against is an "expression" or "sentence"
containing variables.  The act of finding groundings for the variables
is identical to performing variable "unification".

The pattern matcher uses VariableNodes to represent variables. The
proper representation for the above query is thus:

    EvaluationLink
       PredicateNode "_obj"
       ListLink
          WordNode "throw"
          VariableNode "_$qVar"

The query pattern consists of one or more clauses, such as the above.
The query pattern is essentially a boolean-and of these clauses: all
of the clauses must be satisfied (with the exception of optional
clauses; see later discussion for this).  All clauses MUST contain at
least one variable: if they do not, they are constant clauses, and are
ignored.  This is because constant clauses are "trivial": the
groundings for them can only be themselves, trivially, and so nothings
needs be done.

The clauses are partitioned in to connected components. A set of
clauses is connected if there is a transitive path through all of
them, that is if they share directly or indirectly the same variables.


Algorithm overview
------------------

The following sections present the algorithm details.

### Terminology

The incidence graph of a hypergraph is called the "Levi graph".
Levi graphs are bipartite; although the algorithm does not make
use of this.

A solution that assigns a value to a variable is called a "grounding"
of that variable. Graphs that contain variables will sometimes be
called ungrounded graphs.

### The Basic Algorithmic Idea

The basic idea is to treat the query as a graph, in which are embedded
some number of variables or unknowns. This query graph can be loosely
understood to be kind of like a predicate, in that the query is solved
only when the variables take on appropriate values, i.e. when the
variables are grounded.

The goal of query processing is to scan the collection of all knowledge,
(the "universe hypergraph"), looking for a subgraph that matches the
template. The nodes that fit where the unknowns would go are then the
answer (grounding) to the query.

The problem of finding certain subgraphs within graphs is known as the
"subgraph isomorphism problem" or the "subgraph matching problem", and
one uses a "subgraph isomorphism algorithm" to find the match.

The input to the algorithm is a set of trees. Because each tree may have
several groundings, the algorithm maintains a stack to hold intermediate
groundings, as the universe is explored. A solution is declared when
every tree has been grounded. If no grounding is found, or if additional
solutions are to be searched for, the algorithm will backtrack to the
most recent unexplored part of the universe, poping the stack as it
backtracks. In this sense, the algorithm resembles a pushdown automaton.
Since pushdown automata are associated with context-free languages,
the subgraph isomorphism problem is essentially a problem in
recognizing a context-free language.


### Currently Implemented Algorithm

1. In the following, the word "atom" may refer to either a hypergraph
   node, or a hypergraph link. Corresponding to every hypergraph is
   an incidence graph. The atoms of a hypergraph are vertices of
   the incidence graph. The convention used here is that the incidence
   graph is a directed graph; thus, only hypergraph links have
   outgoing incidence graph edges; whereas hypergraph nodes have
   no outgoing incidence graph edges.

   The implemented algorithm makes direct use of the incidence
   graph, and only indirectly to the hypergraph. The insistence
   on making the incidence graph be a directed graph helps make
   traversal more direct and removes ambiguity.

   [OpenCog-specific remarks are in square brackets.  In OpenCog, the
   outgoing incidence graph edges are given by the "outgoing set" of
   the atom. Given an OpenCog Link, its outgoing set forms a tree.
   A collection of such trees is a hypergraph.]

2. Input consists a sequence of the roots of incidence trees, that is,
   of a list of subgraphs of the incidence graph that are trees.  Thus,
   by definition, the incidence tree root must be a hypergraph link,
   as hypergraph node cannot, by definition, have a non-trivial
   incidence tree under it.  Each tree is, by definition, directed.
   These trees are also refered to as "clauses", below [and in the code].
   This is because such trees in OpenCog often play the role of logical
   clauses (i.e. clauses and sentences, as defined in first-order
   logic).  Subtrees of a clause are usually refered to as "terms"
   (as in "term algebra"). That is, the word "clause" is used when
   talking about a rooted tree; the word "term" is used when talking
   about it's subtrees. This helps avoid some of the confusion about
   the various different "trees" in the code.

   Thus, for example: the clause _subj(row, Steve) has _subj at the
   root of the tree, with "row" and "Steve" as leaves.

   Distinct trees may have common vertices.  The common vertices act
   to join together the trees into a partition of connected graph
   components.  The algorithm will find all groundings for each
   component separately, and form the final answer as the cartesian
   product of all component grounding sets.  The graph as a whole may
   contain loops (the decomposition into trees keeps the algorithm
   from having to explicitly accommodate loops).

   A list of the common, or shared, vertices is made; this list is
   used later in the algorithm, to find all trees connected to a
   specific vertex. [This list is implemented as
   PatternMatchEngine::_connectivity_map. The shared vertices are
   variables.]

   The universe graph may have any structure whatsoever; there are no
   limitations put on it, other than that it must be "well-founded",
   i.e. must not contain any infinite recursive graphs.

3. Input includes a list of the bound variables in the clauses.
   Thus, for example _obj(row,_$qVar) has _$qVar as the variable
   to be solved for. The list serves to explicitly identify the
   variables, so that they do not need to be computed or guessed.
   The designated variables need not be leaf vertices; that is,
   variables may match links. There must be at least one variable,
   as otherwise the graph is constant, and there is nothing to be
   done.  The variables are called "bound" simply because they have
   been called out; whereas "free variables" are variables that may
   occur in the clauses, but, because they have not been identified
   to the algorithm, they will not be grounded, but will instead be
   treated as if they were constants.

4. Node equivalence is determined by means of a callback; the user
   may implement any notion at all of "equivalence".  In particular,
   the equivalence callback may be used as an alternate way to perform
   variable bindings, with the callback itself determining when a
   node is variable, and what the allowed bindings to it may be.
   The callback is free to consider node truth values, attention
   values, or anything else, in determining whether to accept or
   reject a candidate grounding.  Link equivalence is likewise
   governed by a callback.

   [The node equivalence callback is implemented in
   PatternMatchCallback::node_match(). The link equivalence callback is
   PatternMatchCallback::link_match().]

5. Pick the first tree. Get the type of the root atom of the
   first tree. Get a list of all atoms in the universe of this type.
   These are the "candidate groundings".  Iterate over this list.
   The iterator is the next step below (step 6).

   [This step is implemented in PatternMatchEngine::match(), which
   calls PatternMatchEngine::explore_neighborhood() for each candidate
   root. The fetching of the list is provided by a user-defined
   algorithm.  The default callback DefaultPatternMatchCB::initiate_search()
   implements this by querying the atomspace for all atoms of a given
   type corresponding to some clause, and starting the search there.
   This default behaviour can be over-ridden with a user-dupplied
   callback.]

6. Initiate a recursive tree matching algorithm, comparing the
   incidence tree of the first clause to that rooted at the
   candidate grounding.

   First, the tree matching algo checks to see if the given
   node in the term is a variable; if so, then the match
   is considered to be successful. The node-match callback is
   invoked to decide whether this grounding is to be accepted;
   if it is, then the corresponding node in the universe is
   recorded as a grounding.

   If the clause itself is found in the universe, it is rejected.

   If the atom is a link, the link-match callback is invoked to
   determine whether its an acceptable grounding.

   The tree matching algorithm recurses to subtrees; recursion
   is terminated when a mismatch is found.

   [This step is implemented in PatternMatchEngine::tree_compare().]

   After an entire clause has been grounded, another callback, the
   clause-match callback, is called. This callback may reject the
   grounding of the clause as a whole.

7. Assuming a single tree has been successfully matched in the previous
   step, the next step is to find a clause that has not yet been
   grounded.  This is done by examining the list of all (variable)
   nodes that are shared between the most recently grounded clause,
   looking for an unsolved clause.

   [This is implemented in PatternMatchEngine::get_next_untried_clause()]

8. If an unsolved tree is found, then tree-matching, as described in
   step 6, resumes. However, the tree matching resumes at the shared
   node of the ungrounded tree. The ungrounded tree is recursively walked
   upwards, towards its root, with a tree match attempted at every stage.

   The upwards recursion uses a stack to track state; this is required
   in the case of there being multiple possible matches to a tree:
   after finding one match, the stack may be popped to explore other
   possible matches.  Push and pop callbacks are provided, in case the
   callback also needs to maintain stack state.

   If the upwards recursion reaches the root of the clause, the
   clause is now considered to be solved. Go to step 7, to find
   other unsolved clauses.

   [This is implemented by two routines: PatternMatchEngine::
   do_term_up() and PatternMatchEngine::explore_up_branches(). These
   two routines alternate calls to each other, by traversing the
   *incoming* set of the current node in the clause, and the candidate
   solution node.  The incoming set takes one "upwards" in the tree.]

   [The stack of current state is maintained by PatternMatchEngine::
   clause_stacks_push(), PatternMatchEngine::clause_stacks_pop(),
   etc.]

   [Partial solutions are recorded in PatternMatchEngine::var_grounding
   and PatternMatchEngine::clause_grounding.  These partial solutions
   must also be kept on stack, as a failed match at a later stage means
   that backtracking must be done. Since the partial solutions are used
   to find unsolved clauses, care must be taken that the partial
   solution is correct after backtracking: i.e. they must be popped
   as failed matches are encountered.]

   Note that multiple solution graphs may overlap.  Thus, if the
   universe contains the statement: "John threw a ball and a rock."
   and the query is "What did John throw?", then there are two
   valid subgraph matches: "John threw a ball" and "John threw
   a rock".  Both of these solutions contain a common subgraph,
   "John threw...", which must be reachable, and reconsidered,
   after one solution is proposed. In particular, this implies
   that the partial solution state must also be kept on stack,
   so that the backtracking can be performed to find other,
   overlapping solutions.

9. If no ungrounded tree is found, then the matching is complete.
   The full grounding is reported via callback.  The callback may
   indicate that the search be terminated, or that it continue to
   find other possible solutions.

   In addition to a list of clauses that MUST be grounded, the algorithm
   accepts a list of clauses that need only be optionally grounded. The
   optional list is exactly that: if no grounding is found, that's OK,
   and a solution is still reported for the must-list. The optional
   list can be used to implement pattern-rejection: so, for example,
   if a grounding for an optional clause is found, then the match as
   as a whole can be rejected. This kind of pattern-rejection is
   explicitly done with the crisp-boolean-logic callback.


### Virtual Links

Not mentioned above is a new whiz-bang feature: support for
VirtualLinks, which are links that do not actually exist in the
AtomSpace, but are evaluated on the fly, as needed.  The
prototypical such link is GreaterThanLink, which evaluates to
"exists" if the schema in it returns true; else it "doesn't
exist".  That is, a GreaterThanLink will match in the pattern
when its schema evaluates to true, behaving as if it existed in
the AtomSpace, else it behaves as if it does not exist in the
AtomSpace (and thus can't ground/match/unify).  This bit of
fraudulent trickery requires a bit of work: in short, all other
parts of the hypergraph are grounded first, leading to a possible
combinatoric explosion of goundings; these are then passed through
the virtual links to determine if a match has occured or not.
The code to do this is in PatternMatch::recursive_virtual()
(instead of in the engine proper, where you might expect it to be).

Note that the preliminary grounding is done by removing all virtual
links from the hypegraph. This will typically result in a set of
hypergraphs that are no longer connected.  Each connected component
is grounded, and then these are offered up to the virtual link,
which either virtually (and so there is a match) or does not exist
(so there is no match).  Note that having multiple disconnected
compoents thus leads to a multiplicatively explosive search space
to explore.

### Unordered Links

The use of unordered links within a pattern provides a special
challange for the pattern matcher. This is because each possible
permuation of an unordered link must be explored.  Consider, for
example, the search pattern:

    AndLink
       SetLink
          VariableNode $a
          VariableNode $b
       ListLink
          VariableNode $a
          ConceptNode "fizz"

If the universe contains the graphs:

    SetLink
       ConceptNode "dribble"
       ConceptNode "bubble"

    ListLink
       ConceptNode "bubble"
       ConceptNode "fizz"

then one must consider that $a might be grounded by "bubble" (and
so a match is found), or that $a could have been grounded by
"dribble" (although this is not consistent with the ListLink, and
so no overall match exists).  That is, all possible permutations of
the SetLink must be considered when searching for groundings. This
can lead to a combinatoric explosion.

Backtracking through unordered links is a challenge. To better
understand this challange, there are four distinct scenarios that
can occur during pattern matcing.  These are:

A) One is at the bottom, and is searching upwards, and encounters
   an unordered link as a parent of the current atom.

B) One is at the bottom, moving upwards, and during the (downward)
   tree_compare's that must be performed at each stage, there is
   an unordered set somwhere in a subtree.

C) Situations A) and B) can occur in a nested fashion, so that an
   unordered link may have another unordered link inside of it.
   All of this is happening within the smae clause.

D) There may be other unordered links in other clauses (possibly
   sharing variables with the unordered links in this clause).

Note that, for situation A), as one continues to move upwards, the
downward tree-compare effectively looks like situation B).

Situation D) is easily dealt with by using the existing
backtracking infrastructure, and so presents no new challanges.

Situations A, B and C are currently (Nov 2014) only paritally
handled, and are buggy.  Its all very confusing.
See github bug #1091 for details.


Open Questions
--------------

In many ways, the above algorithm resembles that of a recursive descent
parser.  However, it does a *lot* of backtracking during its solution
search. It is thoroughly unclear as to whether the hypergraph
pattern-matching problem can be reformulated to resemble an LL(k)
grammar, so that linear-time predictive parsing techniques can be used.

In many ways, the above algorithm resembles a boolean satsifiability
problem, except that, instead of having a two-valued true/false logic,
it is a many-valued logic (with each variable ranging over the
universe of allowed values for that variable).  Can any kind of a
modern boolean-SAT algorithm be applied to solve this problem quickly,
efficiently?  Is there a way of cribbing ideas from the DPLL algorithm
to help solve this?  This is entirely unclear to me...


Summary
-------

The above describes a specific implementation of a subgraph matching
algorithm. It is generic, in that it makes no reference to the
specifics of the actual data layout, or of node equivalences in the
data.  The only restriction made is that the input, query graph,
has been decomposed into a set of trees.

[On OpenCog, the entire implementation is in PatternMatchEngine.[h, .cc].]

Example Code
------------
The test/query directory contains several test cases checking on this
functionality. The BigPatternUTest test case is a small, simple, clear
example of using the simple forward chainer.


Satisfiability Modulo Theories
------------------------------

The final decision on matching to a given query pattern is delegated
to a callback. This allows for considerable flexibility in controlling
matching for hypergraphs that represent crisp logic statements, or those
that use probalistic logic, for ranking matches by quality, or many
other theories of logic.

Callbacks are provided to accept or reject individual node and link
groundings, and to accept of reject the grounding of individual clauses.
In addition, the "optional clause" mechanism provides a means of
pattern rejection. This can be done by specifying the pattern to be
rejected as "optional": thus, if it is not found, a solution is reported;
but if it is found, then the callback can reject the solution.
The callback is free to examine truth values, STI/LTI, etc. in
accepting or rejecting any given grounding.  The pattern matcher
performs backtracking; if the matchers maintain state, then they can
use the push and pop callbacks to piggy-back on the built-in
back-tracker.

The "optional" mechanism can also be used to implement approximate
matching, by specifying the parts of the graph that would be "nice
to match", but not strictly required.

Evaluatable terms (terms and clauses that need to be evaluated at
run-time to determine thier truth values) are evaluated in the
evaluate_sentence() callback.  See PatternMatchCallback.h for details:
in brief, though, this is where the basic conception of "truth" is
implemented. Crisp-logic theories would implement true/false truth
values, with and-or-not as the logical connectives. Probabilistic
theories would implement Bayesian or measure-theoretic "truth values"
ranging between 0.0 and 1.0; the logical connectives and-or-not would
correspond to set-intersection, set-union, set-compliment. Other
theories can implement arbitrary formulas here.

One generic callback is provided:

 * The DefaultPatternMatchCB. This callback implements node and link
   match methods that accept only strict node/link matches, unless a
   node is of type VariableNode, in which case the match is also
   accepted. All evaluatable terms (those containing a
   GroundedPredicateNode) are evaluated, and the resulting truth
   value is treated as "true" if the TV is greater than 0.5; else
   it is treated as false.


Forward Chainer
---------------

The PatternMatch::imply() method implements a critical component for a
forward chainer: it is able to accept a BindLink, containing a pattern
and a rewriting rule, and basically implement a form of IF ... THEN
... statement, expressed as an OpenCog hypergraph.

Properly, one writes "IF ... THEN ..." as "IF predicate THEN implicand".
The predicate is presumed to contain VariableNodes, while the implicand
is a hypergraph making used of those VariableNodes.  The predicate is
run through the pattern-matching engine. When groundings for the
variables are found, then a hypegraph is created based on the implicand,
using the grounded values found.  Because there may be more than one
grounding, a SetLink of all grounded implicands is returned.

Thus, the PattnerMatch::imply() method can be used to implement a
simple forward-chainer. For example, one may create a collection of
BindLinks. Then, calling each in turn, from a loop, will cause each to
be evaluated. Thus, N iterations of the loop is equivalent to chaining
N levels deep.


Hypergraph Query Language (HQL)
-------------------------------

A "hypergraph query language" is a language that allows queries to be
expressed as strings. Given *any* way of writing down a hypergraph as
a string, a hypergraph query language can be trivially formed by adding
variables to the expression, in exactly the same way that one adds
variables to predicate logic to get first-order logic.  In order to feel
comfortable to programmers, the query language should maintain the
outward form of SQL, SPARQL, RQL, etc.

So, for example, a hypergraph might be written as a list
of links, and their contents:

    <hypergraph> := { <link-type> <atom> <atom> ... <atom>.
                      <link-type> <atom> <atom> ... <atom>.
                      ...
                      <link-type> <atom> <atom> ... <atom>.
                    }

Here, <atom> is understood to refer to a specific, constant atom.
Let ?var be a variable.  Then define <vatom> as

    <vatom> :=  <atom> | ?var

That is, a vatom is a constant atom, or a variable. A hypergraph
with variables in it is then

    <v-hypergraph> := { <link-type> <vatom> <vatom> ... <vatom>.
                        <link-type> <vatom> <vatom> ... <vatom>.
                        ...
                        <link-type> <vatom> <vatom> ... <vatom>.
                      }

An HQL query, resembling the syntax used in SQL or SPARQL, is then

    SELECT ?var-a ?var-b ... ?var-z WHERE <v-hypergraph>;

So, for example, the hypergraph for

    _subj(throw, John )
    _obj(throw, ball)

is somewhat complicated to write down, but vaguely resembles

    { ?x WORD_NODE John.
      ?y WORD_NODE throw.
      ?z WORD_NODE ball.
      RELEX_LINK _subj ?y ?x.
      RELEX_LINK _obj  ?y ?z.
    }

The query to determine what John threw would then be:

    SELECT ?item WHERE
      { ?x WORD_NODE John.
        ?y WORD_NODE throw.
        RELEX_LINK _subj ?y ?x.
        RELEX_LINK _obj  ?y ?item.
      }

There is currently no code that will actually parse such strings, and
return the query results, although, in principle, writing such code
would not be hard.  In practice, its a little more subtle than that:
we've glossed over the idea that truth values could be queryable, or
that truth values would need to have some minimum/maximum value, or
that atom types could be queryable.  Also, the representation of RelEx
expressions in OpenCog is considerably more complicated than the above.

To overcome these difficulties, it is strongly suggested (would make
sense) to create the actual query language from within the scheme
bindings. This is because it is straight-forward, in scheme, to create
the "syntactic sugar" to hide RelEx intricacies, and hide many of the
other nasty details, while keeping a nice and simple interface for the
user.

What is currently implemented is "English as a query language". That is,
queries are posed in English, such as "What did John throw?". These are
parsed by RelEx and turned into OpenCog hypergraphs with embedded query
variables (_$qVar) in them.  The code in this directory will process
these queries, and return values for _$qVar.

Thus, at least for RelEx-based queries, there is no need for HQL, as
using the English language is (a lot) easier than writing a formal
HQL query.  In this sense, English is the "best" query language, and
it is supported.


TODO
----

 * Atomspaces are done wrong. Grounding whould always be performed
   in the atomspace of the bindlink.  Thus should be fetched directly
   from the bind-link, and not passed as a third-party parameter.

 * Enhancement: Add support for VariableLink, so that, for example,
   (VariableLink $R (VariableNode $A) (VariableNode $B)) matches
   any arity-2 link (as long as the type constraints are obeyed).

 * Performance improvement: Steal an idea from DPLL, viz
   unit_propagate.  That is, start with those clauses that have only a
   single variable in them, ground that, and propagate.  Not sure, I
   think this could should improve run-time.  Perhaps there are other
   ideas to steal, e.g. from zChaff?

   Anyway, the next clause to be selected is chosen by
   get_next_untried_clause(); there is a XXX note in there about this.

 * Invent a callback so that ChoiceLink can become a random-choice or
   a Bayesian-probability-choice, etc. This is sort-of done, already,
   but more additional/experimental callbacks are needed.

 * Enhancement: Add support for IfLink, which would have the semantics
   'if (some-condition-during-search) then match-this else match-that'
   This would need to be an extension of GreaterThanLink, which has
   the semantics of 'if (some-condition-during-search) then
   trivial-always-match else trivial-impossible-match.'

 * Enhancement: Allow variable type declarations to occur anywhere in
   the body, not just at the top. This is because variable-type
   restirctions are essentially a kind-of special-case GPN, restricting
   the accept or reject... except that it is applied immediately, upon
   the initial attempt at variable grounding.

 * Enhancement: Add support for ExecutionOutputLink in the body of the
   pattern. Thus, given a specific groundings, the EOL is evaluated,
   resulting in a new sub-pattern to be grounded, until backtracking.

 * Enhancement: allow user to bind a handle name to a subset of the
   match. This would be handy to reduce the verbosity of writing down
   the consequent part (e.g. if we matched clauses a,b,c, then the
   output could be just clause b only, and it would be nice to just say
   'clause b' instead of spelling it out.)

 * Study the following some more: prolog, minikanren, mercury, curry
   (logic programming languague), godel (logic programming language)
