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

m4libdir = $(pkgvlibsdir)/m4

nodist_m4lib_DATA =				\
	choicetool.m4				\
	header.m4				\
	footer.m4				\
	menu.m4					\
	choice.m4				\
	comment.m4

EXTRA_DIST +=					\
	choicetool.m4.in			\
	header.m4.in				\
	footer.m4.in				\
	menu.m4.in				\
	choice.m4.in				\
	comment.m4.in

CLEANFILES += $(nodist_m4lib_DATA)

choicetool.m4: Makefile $(srcdir)/choicetool.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choicetool.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

header.m4: Makefile $(srcdir)/header.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/header.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

footer.m4: Makefile $(srcdir)/footer.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/footer.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

menu.m4: Makefile $(srcdir)/menu.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/menu.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

choice.m4: Makefile $(srcdir)/choice.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choice.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

comment.m4: Makefile $(srcdir)/comment.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/comment.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}
