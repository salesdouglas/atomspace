/*
 * opencog/atoms/base/Node.cc
 *
 * Copyright (C) 2008-2010 OpenCog Foundation
 * Copyright (C) 2002-2007 Novamente LLC
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

#include <stdio.h>

#include <opencog/util/Logger.h>
#include <opencog/atoms/proto/NameServer.h>
#include <opencog/atoms/base/Link.h>
#include <opencog/atomspace/AtomTable.h>

#include "Node.h"

using namespace opencog;

void Node::init(const std::string& cname)
{
    if (not nameserver().isA(_type, NODE))
    {
        throw InvalidParamException(TRACE_INFO,
            "Node - Invalid node type '%d' %s.",
            _type, nameserver().getTypeName(_type).c_str());
    }
    _name = cname;
}

std::string Node::to_short_string(const std::string& indent) const
{
    std::string answer = indent;
    answer += "(" + nameserver().getTypeName(_type);
    answer += " \"" + _name + "\"";

    // Print the TV only if its not the default.
    if (not getTruthValue()->isDefaultTV())
        answer += " " + getTruthValue()->to_string();

    answer += ")\n";

    return answer;
}

std::string Node::to_string(const std::string& indent) const
{
    std::string answer = indent;
    answer += "(" + nameserver().getTypeName(_type);
    answer += " \"" + _name + "\"";

    // Print the TV only if its not the default.
    if (not getTruthValue()->isDefaultTV())
        answer += " " + getTruthValue()->to_string();

    answer += ") ; " + id_to_string() + "\n";

    return answer;
}

bool Node::operator==(const Atom& other) const
{
    // If other points to this, then have equality.
    if (this == &other) return true;

    // Rule out obvious mis-matches, based on the hash.
    if (get_hash() != other.get_hash()) return false;

    if (get_type() != other.get_type()) return false;
    return get_name() == other.get_name();
}

bool Node::operator<(const Atom& other) const
{
    if (this == &other) return false;

    ContentHash cht = get_hash();
    ContentHash cho = other.get_hash();
    if (cht != cho) return cht < cho;

    // We get to here only if the hashes are equal.
    // Compare the contents directly, for this
    // (hopefully rare) case.
    if (get_type() == other.get_type())
        return get_name() < other.get_name();
    else
        return get_type() < other.get_type();
}

ContentHash Node::compute_hash() const
{
	ContentHash hsh = std::hash<std::string>()(get_name());

	// 1<<43 - 369 is a prime number.
	hsh += (hsh<<5) + ((1UL<<43)-369) * get_type();

	// Nodes will never have the MSB set.
	ContentHash mask = ~(((ContentHash) 1UL) << (8*sizeof(ContentHash) - 1));
	hsh &= mask;

	if (Handle::INVALID_HASH == hsh) hsh -= 1;
	_content_hash = hsh;
	return _content_hash;
}
