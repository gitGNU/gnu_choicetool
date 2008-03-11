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

CLEANFILES =
EXTRA_DIST =

m4dir = $(datadir)/aclocal

m4_DATA =					\
	choicetool-guile.m4			\
	choicetool-core.m4

pkgvdata_DATA =					\
	header.ctm				\
	footer.ctm				\
	menu.ctm

EXTRA_DIST +=					\
	choicetool-guile.m4.in			\
	choicetool-core.m4.in			\
	header.ctm.in				\
	footer.ctm.in				\
	menu.ctm.in

CLEANFILES += $(m4_DATA) $(pkgvdata_DATA)

choicetool-core.m4: Makefile $(srcdir)/choicetool-core.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choicetool-core.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

choicetool-guile.m4: Makefile $(srcdir)/choicetool-guile.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choicetool-guile.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

header.ctm: Makefile $(srcdir)/header.ctm.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/header.ctm.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

footer.ctm: Makefile $(srcdir)/footer.ctm.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/footer.ctm.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

menu.ctm: Makefile $(srcdir)/menu.ctm.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/menu.ctm.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}
