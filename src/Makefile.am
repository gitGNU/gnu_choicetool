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

bin_SCRIPTS =					\
	choicetool

pkgvbin_SCRIPTS =				\
	choicetool-preprocessor			\
	choicetool-parser			\
	choicetool-compiler			\
	choicetool-linker

##
## XXX FIXME:
##     Replace 'sed' with '$SED' in install-exec-hook and uninstall-hook
##     rules ...
##

## Make versioned links on bin_SCRIPTS.  We only run the transform on the
## root name; then we make a versioned link with the transformed base name.
## This seemed like the most reasonable approach.
install-exec-hook:
	for p in $(bin_SCRIPTS); do \
	  f="`echo $$p|sed '$(transform)'`"; \
	  fv="$$f-$(API_VERSION)"; \
	  cd $(DESTDIR)$(bindir) && \
	  rm -f $$fv && \
	  mv -f $$f $$fv && \
	  $(LN_S) $$fv $$f; \
	done

uninstall-hook:
	for p in $(bin_SCRIPTS); do \
	  f="`echo $$p|sed '$(transform)'`"; \
	  fv="$$f-$(API_VERSION)"; \
	  rm -f $(DESTDIR)$(bindir)/$$fv; \
	done

pl_scripts_SRCS =				\
	choicetool.in				\
	choicetool-preprocessor.in		\
	choicetool-parser.in			\
	choicetool-compiler.in			\
	choicetool-linker.in

EXTRA_DIST =					\
        $(pl_scripts_SRCS)

CLEANFILES = $(bin_SCRIPTS) $(pkgvbin_SCRIPTS)

choicetool: Makefile $(srcdir)/choicetool.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choicetool.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

choicetool-preprocessor: Makefile $(srcdir)/choicetool-preprocessor.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choicetool-preprocessor.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

choicetool-parser: Makefile $(srcdir)/choicetool-parser.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choicetool-parser.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

choicetool-compiler: Makefile $(srcdir)/choicetool-compiler.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choicetool-compiler.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

choicetool-linker: Makefile $(srcdir)/choicetool-linker.in
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/choicetool-linker.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
	        rm -f $@ $@.tmp ; \
	        exit 1 ; \
	}

##
## Maintainer related targets
##
update-local: Makefile

maintainer-check-parameters: Makefile $(bin_SCRIPTS) $(pkgvbin_SCRIPTS)
	for i in $(bin_SCRIPTS) $(pkgvbin_SCRIPTS) ; do \
		echo @ECHO_N@ "Checking standard parameters for $$i... " ; \
		CHOICETOOL_LIBRARY_PATH="$(top_builddir)/libs" ; \
		export CHOICETOOL_LIBRARY_PATH ; \
		if ( ./$$i -h 2>&1 > /dev/null ) ; then \
			echo "@ECHO_T@ok" ; \
		else \
			echo "@ECHO_T@error" ; \
			exit 1 ; \
		fi ; \
	done

maintainer-check-whitespaces: Makefile
	$(WHITESPACE_DETECT) $(pl_scripts_SRCS)

maintainer-check-local: Makefile maintainer-check-whitespaces maintainer-check-parameters
