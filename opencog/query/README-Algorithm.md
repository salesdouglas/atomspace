Pattern Match Engine Overview
=============================
Linas Vepstas 2008-2015

This README describes the internal workings of the class
PatternMatchEngine only; it (mostly) does NOT describe the other
classes, nor does it explain how to use this thing. This README
is meant to provide an understanding of the code internals.

The pattern match engine finds groundings (interpretations) for a
set of mandatory and optional clauses. It can be thought of in several
ways: it performs a variable unification across multiple clauses;
it discovers groundings for variables; it solves the subgraph
isomorphism problem; it queries a graphical relational database
for data that satisfies the query statement; it solves a typed
satisfiability problem; it finds an "answer set".  Which of these
things it does depends on your point of view; it does all of these
things, although, in each case, the language is slightly different.

It works by being given a list of variables ("bound variables") and
a set of mandatory and optional clauses containing those variables.
Each "clause" is nothing more than an ordinary OpenCog Atom:
specifically, a typed link.  It should be thought of as a tree, the
tree being formed by the outgoing set of the Atom.  We could call
these things "Atoms" or "Links", but it is more convenient to call
them "clauses", in part to avoid confusion, and in part because they
resemble terms (from "term algebra") or the "sentences" (of
first-order logic). They, in fact, are neither, but there is a
general resemblance that is useful to keep in mind.

Any given clause is "solved" or "grounded", if there exists a
substitution for the variables such that the resulting clause exists
in the atomspace.  Thus, a grounding can be thought of as an
"interpretation" of the clause; the pattern matcher searches for
interpretations.  It can be thought of as a "unifier", in that ALL
of the mandatory clauses must be grounded, and they must be grounded in
a self-consistent way (i.e. the clauses must be grounded in
conjunction with one-another.)

The list of "bound vars" are to be solved for ("grounded", or
"interpreted") during pattern matching. That is, if the subgraph
defined by the clauses is located, then the vars are given the
corresponding values associated to that match. Because these
variables can be shared across multiple clauses, this can be
understood to be a unification problem; the pattern matcher is thus
a unifier.

The optionals are a set of clauses which are also searched for,
but whose presence is not mandatory. The optional clauses can be
used to implement negation or pattern-rejection (among other things).
Their use for negation/rejection is determined by the "optional
clause" callback.  Thus, if an optional clause is found, the callback
can then signal that the pattern as a whole should be rejected.
Alternately, the callback could base its considerations on the
truth-value of the optional clause: if the optional clause has
a TV of FALSE, then it is accepted; otherwise it is rejected.
Other strategies for handling optional clauses in the callback
are also possible. Thus, optional clauses themselves can be thought
as implementing a bridge between "intuitionistic logic" and
"classical logic", depending on how they are handled in the callback.

At every step of the process, the PatternMatchCallback is consulted
to determine whether a candidate match should be accepted or not.
In general, the callbacks have almost total control over the search;
the pattern match engine only provides the general framework for
navigating and backtracking and maintaining the needed state for
such traversal.  It is up to the callbacks to perform the actual
grounding or interpretation, and to record the search results.


Algorithm Overview
------------------
The basic search algorithm is relatively straightforward: its a
back-tracking search. It is made complicated by several features,
some nice to have, others mandatory. The review begins with the basic
algorithm, and then the adjustments made for the complications.

Basic Algorithm
---------------
The input is a set of trees describing the pattern; these are to be
matched against the contents of the atomspace. If the pattern has a
constant node (not variable), then search can begin at this node
(since it must, by definition, be shared by the pattern and its
grounding). If the pattern has no constant nodes, search can begin
elsewhere, e.g. at a link; either way, the precise starting point
is specified by a callback.  Once the callback has found a starting
point, it calls explore_neighborhood(), which will walk the connected
trees in the pattern and compare them to the atomspace contents.

In the below, atoms belonging to the pattern are called "terms"; this
terminology helps to distinguish them from the atoms they are being
matched up with. At every point of the search, the current term (and
all of the terms that came before it) have a corresponding "match",
"ground" or "solution", these last three names being used
interchangeably in the comments below.

From the starting term, the search moves "upwards": the parent of
the starting term is compared to all possible parents of its match.
(It is possible that a given term may appear more than once in the
pattern; this is one of the complications. For now, assume the parent
term is unique.) The comparison of the term to it's potential match
is done with the tree_compare() method. This takes the two trees, and
compares them side-by-side, walking "downwards" in the trees. If the
two trees match up, then another step upwards can be taken. This
proceeds until the top of the current tree or "clause" is reached.

Thus, the upwards-search method is recursive: it calls itself, until
the top is reached. The recursion alternates between an upward step
in the pattern (implemented by do_term_up()) and an upward step of
the ground (implemented by explore_up_branches()). The explore_up_branches()
method loops over the incoming set (i.e. the parents) of the current
match. Thus, these two alternate between each other, calling each
other, until the top of the clause is reached.

Once the top of a clause is reached, another clause is selected. The
selected clause must be "connected" to the grounded clause(s) by a
common, shared term: thus, the search continues at this shared term
and its corresponding ground. This becomes the new "starting term",
above.  Search then continues until all terms are grounded, at which
point, one has a solution that satisfies the search pattern; one is
then done. If additional groundings are desired, one can backtrack
from here, and explore other possible groundings.

The next clause is selected and explored by the do_next_clause()
method. Again, it is recursive: it ends up calling itself, until all
of the clauses have been grounded.

To summarize, there are four basic recursive methods:

 * tree_compare(), which recursively compares a term in the pattern
   to a proposed grounding. It moves "downwards" in the two trees;
   it only calls itself, and terminates on match or mis-match.

 * explore_up_branches() and do_term_up(), which alternately call each
   other, moving up the pattern tree and it's matching tree.
   These invoke tree_compare() to make sure the trees actually match.
   When the top of a pattern clause is reached, these call the
   do_next_clause() method.

 * do_next_clause(), which effectively calls itself, moving "sideways"
   from one clause to the next. "Effectively", because, actually, it
   invokes do_term_up() to perform the actual clause matching; upon
   reaching the top, it recurses to do_next_clause(). The recursion
   terminates when there are no more clauses to be grounded.


State, Stack and Backtracking
-----------------------------
At each stage of the exploration, a mis-match may be declared. In
this case, the interlocking nested recursive routines then return
back to the most recent branchpoint. This return is called
"backtracking".  The "branchpoint" is a location where there existed
some alternative in the recursion. The primary branchpoint is the
incoming set of the current match. If the first element of this
incoming set does not provide a ground, then the next element can be
explored. Thus, each call to explore_up_branches() encounters a
branchpoint when it examines the incoming set. Support for some of
the more complex features introduce additional branchpoints at other
locations.

During the forward recursion, assort state is maintained; this
includes the set of all groundings discovered so far, and the set of
all clauses grounded so far. In order to backtrack, a stack of the
current state must be maintained. At each branchpoint, the current
state is pushed onto the stack, before the exploration continues down
one branch.  If that branch yields no results, then, upon return to
the branchpoint, the accumulated state must be discarded and replaced
by pristine state, before the next branch can be explored. The
pristine state is the state that is sitting at the top of the stack.
If none of the branches yielded a solution, the stack is popped, and
the calls return (backtrack) to the previous branchpoint.
Backtracking continues until all methods return to the very first
caller, at which point, the algorithm concludes. Zero, one or more
groundings will have been discovered.

The callback methods push() and pop() are invoked at these
branchpoints, in case the callback also has state management to
perform.


Tree Compare
------------
To simplify the implementation of tree_compare(), it has been broken
up into various pieces. There are methods to compare ordered and
unordered links, a method to compare the contents of a ChoiceLink,
a method to compare a variable against its proposed ground, and
a method for handling quoted terms.  This breakup makes it easier to
see how tree_compare(), as a whole, is functioning.

Complications
-------------
Complications are introduced due to the following features:

 * Unordered links. To compare an unordered link to it's proposed
   grounding, every possible permutation of the order must be tried.
   Thus, each permutation is a branchpoint; state must be saved and
   restored if an earlier permutation did not work out. However, it is
   worse than that: during the tree_compare stage, the comparison
   must be performed only for the current permutation. Thus, the state
   includes the set of all permutations taken so far.

 * ChoiceLinks. These are similar to unordered links, and are
   implemented similarly. Each ChoiceLink presents a (mututally-
   exclusive) choice of terms that may be grounded; only one of
   these is to be grounded.  Again, the choice represents a
   branch-point: if one choice didn't work out, another must be
   tried. Again, during tree_compare, exactly the same choices
   must be made. Thus, the state includes the set of all choices made
   so far.

   Both of the above branch-points are dealt with in the
   explore_link_branches() method.  It is essentially a wrapper around
   tree_compare(), and deals with setting up the state so that
   tree_compare() can reproduce the desired choices when it performs
   it's comparison.  Thus, the description of the basic algorithm, up
   above, is modified in a fairly straight-forward way: when two trees
   need to be compared for similarity, the tree_compare() method is not
   invoked directly; instead, the explore_link_branches() method is
   invoked: it makes sure that the correct state has been established,
   and it explores the different branches that the unordered and the
   choice links represent.

 * Evaluatable and executable links. These links are not a static
   part of the pattern, but can only be known at runtime, at the time
   the actual match must be made. Evaluatable links are those that
   contain a GroundedPredicateNode (GPN), or are one of the equivalent
   stand-ins for a GPN, such as an EqualLink or GreaterThanLink.
   Whenever one of these is encountered, it must be evaluated on the
   spot to determine if a match is successful (if the predicate is
   satisfied).

   Evaluatable links can be joined together with connective links.
   Thus, for example, if the evaluatable links yield crisp-logic
   true/false match/no-match values, then these can be combined with
   the connectives AndLink, OrLink and NotLink to form a classical
   boolean algebra. This crisp-logic combination is performed in the
   Default callback.  It is performed in the callback because other
   ways of combining evaluatables is possible: another simple example
   would be Bayesian probability: If each evaluatable yields a
   probability 0.0 <= p <= 1.0, then these probabilities can be
   combined with the standard Bayesian probability-union, conditional
   probability and inversion operators. This too could be implemented
   in a callback. However, at the very top, the final decision must
   be a go/no-go decision: proceed with the grounding, or do not.
   It is OK to make this a random choice. The callback or GPN can use
   any policy whatsoever.

   The technical name for the different ways of joining together
   different evaluatable terms is called a "theory". Thus, the
   pattern matcher is a "satisfiability modulo theories" (SMT)
   solver, with different theories implementable via the
   evaluatable-link callback. (Theories can also be implemented more
   directly but more opaquely using the "black box" GPN's; this is
   easier in the short-run but not advisable in the long-run; so e.g.
   the "Bayesian theory" should be hard-coded in C++; a demo of the
   Bayesian theory, via GPN's, can be found in the Markov Chain
   example demo).

   Evaluatable links come in two forms: "black box" links, which
   specify a python or scheme program in a GPN, or "clear-box" links,
   such as EqualLink or GreaterThanLink.  The "clear-box" links are
   more convenient for the external user: they can be reasoned about
   (its "obvious" what they mean). They are also faster: they can be
   implemented inentirely in C++, whereas the black-box links
   require entry into to python or scheme virtual machine, which can
   take in excess of 100 microseconds each time, thus limiting
   performance to about 10K calls/second on current (2015) CPU's.

   The distinction between clear-box and black-box doesn't much
   matter to the pattern matcher, other than that clear-box clauses
   are tried first, so that if satisfaction is not possible, then
   perhaps some invocations to the slower black-boxes can be avoided.

   The primary difficulty that the evaluatable links present is when
   whey are organized such that, when they are removed, the pattern
   graph falls apart into multiple disconnected pieces. This requires
   that each piece must be separately grounded, and each possible
   grounding is then stitched back together by evaluating the
   evaluatable link, with its arguments taken from each grounding.
   Note that there is a combinatoric explosion here, as well: If
   there are n disconnected pieces, and piece k has M_k possible
   groundings, then there is a total of (M_1 * M_2 * ... * M_n)
   possibilities to explore.  This combinatoric explosion is handled
   outside of the class PatternMatchEngine: it is implemented in
   PatternMatch class. (Thus, grounding just one component, here,
   resembles the "unit propagation" of DPLL.)

   This class (PatternMatchEngine) does handle evaluatable clauses
   as long as the total graph would remain connected if the
   evaluatable clauses were removed.  Thus, grounding proceeds by
   evaluating all "fixed" (non-evaluatable) clauses, so that every
   variable is given a ground BEFORE the evaluatable clauses are
   evaluated. Thus, the evaluatable terms are always working with
   concrete, fully-grounded terms (closed terms): there is no
   question of how to evaluate something that has a free variable in
   it.

   Note that evaluatable terms need not have any variables in them at
   all; they can consist entirely of constant, fixed links. However,
   black-box links can have a side-effect (e.g. they can send a
   message) or can depend on external data (evaluate to true/false
   depending on whether a message has been received).

 * Executable terms.  These are terms that contain a
   GroundedSchemaNode (GSN).  These must be executed. The atom that
   results from their execution is then treated as an "ordinary"
   term, and is grounded as per usual (unless it also contains GSN's,
   in which case the process repeats).  The use of GSN's means that
   patterns themselves can be recursive. Support for GSN's means that
   patterns are essentially the equivalent of ProLog programs, or
   "answer-set" programs; the pattern matcher is then a
   satisfiability solver. Since the pattern matcher can handle
   truth values that are more general than true/false, it should more
   accurately be called a satisfiability-modulo-theories (SMT) solver.

   At this time, support for GSN's is only partly implemented, and
   badly.
