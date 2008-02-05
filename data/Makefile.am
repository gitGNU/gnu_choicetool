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

CLEANFILES         =
EXTRA_DIST         =

transform_m4_in_2_m4 =					\
        { cat $$INFILE | $(do_subst) > $$OUTFILE ; }

##
## All
##
all-local: choicetool.m4

##
## M4
##
m4dir = $(datadir)/aclocal

m4_SRCS =					\
	guile.m4.in				\
	core.m4.in

choicetool.m4.in: Makefile $(m4_SRCS)
	touch choicetool.m4.in ;			\
	for i in $(m4_SRCS) ; do			\
		cat $(srcdir)/$$i >> choicetool.m4.in ;	\
	done ||						\
	{ rm -f choicetool.m4.in ; exit 1 ; }
CLEANFILES += choicetool.m4.in

choicetool.m4: Makefile choicetool.m4.in
	INFILE=choicetool.m4.in ;		\
	OUTFILE=choicetool.m4 ;			\
	$(transform_m4_in_2_m4) ||		\
	{ rm -f $$OUTFILE ; exit 1 ; }
CLEANFILES += choicetool.m4

m4_DATA =					\
	choicetool.m4

EXTRA_DIST +=					\
	$(m4_SRCS)
