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
EXTRA_DIST =

m4libdir = $(pkgvlibsdir)/m4

nodist_m4lib_DATA =				\
	choicetool.m4				\
	trace.m4				\
	debug.m4				\
	extensions.m4				\
	shell.m4				\
	header.m4				\
	footer.m4				\
	ui.m4

EXTRA_DIST +=					\
	choicetool.m4.in			\
	trace.m4.in				\
	debug.m4.in				\
	extensions.m4.in			\
	shell.m4.in				\
	header.m4.in				\
	footer.m4.in				\
	ui.m4.in

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

debug.m4: Makefile $(srcdir)/debug.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/debug.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

trace.m4: Makefile $(srcdir)/trace.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/trace.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

extensions.m4: Makefile $(srcdir)/extensions.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/extensions.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

shell.m4: Makefile $(srcdir)/shell.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/shell.m4.in > $@.tmp && \
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

ui.m4: Makefile $(srcdir)/ui.m4.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/ui.m4.in > $@.tmp && \
	  chmod -x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

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

