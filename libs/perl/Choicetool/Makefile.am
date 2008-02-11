##
## Input file for automake
##
## Copyright (C) 2007, 2008 Francesco Salvestrini
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

SUBDIRS =					\
	Base					\
	OS

perllibdir = $(pkgvlibsdir)/perl/Choicetool

dist_perllib_DATA =                             \
	Parse.pm				\
	Tree.pm					\
	Stack.pm				\
	Set.pm					\
	Menu.pm					\
	Rule.pm

nodist_perllib_DATA =                           \
	Autoconfig.pm

CLEANFILES     = $(nodist_perllib_DATA)
DISTCLEANFILES = Parse.pm

Parse.pm: Makefile $(srcdir)/Parse.yp
	$(YAPP) -s -m Choicetool::Parse -o $@ $(srcdir)/Parse.yp || { \
	        rm -f $@ ; \
	        exit 1 ; \
	}

Autoconfig.pm: Makefile $(srcdir)/Autoconfig.pm.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/Autoconfig.pm.in > $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

EXTRA_DIST =                                    \
	Autoconfig.pm.in                        \
	Parse.yp
