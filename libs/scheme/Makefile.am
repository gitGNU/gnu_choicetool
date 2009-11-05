##
## Input file for automake
##
## Copyright (C) 2008, 2009 Francesco Salvestrini
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License along
## with this program; if not, write to the Free Software Foundation, Inc.,
## 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
##

include $(top_srcdir)/Makefile.sub

CLEANFILES =

all-local: lib.scm

scm_libs_SRCS =					\
	utility.scm

lib.scm: Makefile $(scm_libs_SRCS)
	{ rm -f lib.scm &&				\
	  for i in $(scm_libs_SRCS) ; do		\
		cat $(srcdir)/$$i >> lib.scm ;		\
	  done ; } || { rm -f lib.scm ; exit 1 ; }
CLEANFILES += lib.scm

EXTRA_DIST =					\
	$(scm_libs_SRCS)

##
## Maintainer related targets
##
update-local: Makefile

maintainer-check-whitespaces: Makefile $(EXTRA_DIST)
	$(WHITESPACE_DETECT) $(EXTRA_DIST)

maintainer-check-wordwraps: Makefile $(EXTRA_DIST)
	$(WORDWRAP_DETECT) --tab-size 8 --columns 80 $(EXTRA_DIST)

maintainer-check-local: Makefile		\
	maintainer-check-whitespaces		\
	maintainer-check-wordwraps
