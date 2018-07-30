/*
 * opencog/atoms/core/LambdaLink.h
 *
 * Copyright (C) 2015 Linas Vepstas
 * All Rights Reserved
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License v3 as
 * published by the Free Software Foundation and including the exceptions
 * at http://opencog.org/wiki/Licenses
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program; if not, write to:
 * Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef _OPENCOG_LAMBDA_LINK_H
#define _OPENCOG_LAMBDA_LINK_H

#include <opencog/atoms/core/PrenexLink.h>

namespace opencog
{
/** \addtogroup grp_atomspace
 *  @{
 */

/// The LambdaLink is supposed to closely model the traditional concept
/// of a lambda from lambda calculus (or functional programming). It
/// is meant to behave just like a combinator, and supports the standard
/// operations of beta-reduction and alpha-conversion (modulo that the
/// atomspace enforces alpha-equivalence).
///
/// The actual implementation of the alpha and beta reduction sits on
/// the PrenexLink, so this class is effectively a no-op, from the
/// C++ point of view. However...
///
/// However, we want to have this to minimize confusion in other,
/// distant parts of the code base.  The issue is that there are many
/// other classes derived from PrenexLink, and they are NOT lambdas!
/// The most prominent example are the various PatternLinks; a simpler
/// example is the PutLink, which is a beta-redex and therefore cannot
/// ever be an actual lambda, elthough it derives from PrenexLink
/// to do it's beta-reduction.  And so that's why we have a no-op C++
/// class, here.
///
class LambdaLink : public PrenexLink
{
public:
	LambdaLink(const HandleSeq&, Type=LAMBDA_LINK);
	LambdaLink(const Handle& varcdecls, const Handle& body);
	LambdaLink(const Link &l);

	static Handle factory(const Handle&);
};

typedef std::shared_ptr<LambdaLink> LambdaLinkPtr;
static inline LambdaLinkPtr LambdaLinkCast(const Handle& h)
	{ return std::dynamic_pointer_cast<LambdaLink>(h); }
static inline LambdaLinkPtr LambdaLinkCast(const AtomPtr& a)
	{ return std::dynamic_pointer_cast<LambdaLink>(a); }

#define createLambdaLink std::make_shared<LambdaLink>

/** @}*/
}

#endif // _OPENCOG_LAMBDA_LINK_H
