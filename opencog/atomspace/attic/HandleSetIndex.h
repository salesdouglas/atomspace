/*
 * opencog/atomspace/HandleIndex.h
 *
 * Copyright (C) 2008,2009,2013 Linas Vepstas <linasvepstas@gmail.com>
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

#ifndef _OPENCOG_HANDLE_SET_INDEX_H
#define _OPENCOG_HANDLE_SET_INDEX_H

#include <map>

#include <opencog/atoms/base/Handle.h>

namespace opencog
{
/** \addtogroup grp_atomspace
 *  @{
 */

/**
 * Implements a Handle index as an RB-tree (C++ map)
 * That is, given a Handle, it will return an UnorderedHandleSet
 * associated with that Handle.  This index is the "opposite" to the 
 * HandleSeqIndex; the map goes in the opposite direction.
 *
 * This is used to build the IncomingIndex (which is not used anywhere,
 * currently).
 */
class HandleSetIndex
{
	private:
		std::map<Handle, const UnorderedHandleSet> idx;

	public:
		void insert(Handle h, const UnorderedHandleSet& uset)
		{
			idx.insert(std::pair<Handle, const UnorderedHandleSet>(h, uset));
		}
		const UnorderedHandleSet& get(Handle h) const
		{
			std::map<Handle, const UnorderedHandleSet>::const_iterator it;
			it = idx.find(h);
			if (it != idx.end()) return it->second;
			static UnorderedHandleSet empty;
			return empty;
		}
		void remove(Handle h)
		{
			idx.erase(h);
		}
		size_t size(void) const
		{
			return idx.size();
		}
		void remove(bool (*)(const UnorderedHandleSet&));
		void remove(bool (*)(Handle));
};

/** @}*/
} //namespace opencog

#endif // _OPENCOG_HANDLE_SET_INDEX_H
