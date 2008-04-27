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
	ui-menu.m4				\
	ui-choice.m4				\
	ui-comment.m4				\
	ui-yesno.m4

EXTRA_DIST +=					\
	choicetool.m4.in			\
	header.m4.in				\
	footer.m4.in				\
	ui-menu.m4.in				\
	ui-choice.m4.in				\
	ui-comment.m4.in			\
	ui-yesno.m4.in

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

ui-menu.m4: Makefile $(srcdir)/ui-menu.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/ui-menu.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

ui-choice.m4: Makefile $(srcdir)/ui-choice.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/ui-choice.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

ui-comment.m4: Makefile $(srcdir)/ui-comment.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/ui-comment.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

ui-yesno.m4: Makefile $(srcdir)/ui-yesno.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/ui-yesno.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

##
## Maintainer related targets
##
maintainer-check: Makefile maintainer-check-local maintainer-check-recursive

maintainer-check-recursive: Makefile
	@for i in $(SUBDIRS) ; do \
		(cd $$i && $(MAKE) $(AM_MAKEFLAGS) maintainer-check) \
	done

maintainer-check-local: Makefile
	$(WHITESPACE_DETECT) $(EXTRA_DIST)
