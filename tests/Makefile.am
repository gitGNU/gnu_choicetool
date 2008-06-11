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

CLEANFILES =
EXTRA_DIST =

##
## NOTE:
##     In order to debug the tests during the 'distcheck' target use the
##     following TESTS_ENVIRONMENT:
##
##       TESTS_ENVIRONMENT = testdir=@abs_builddir@ DEBUG=x VERBOSE=x
##
TESTS_ENVIRONMENT = testdir=@abs_builddir@

scripts =					\
	wrapper					\
	include					\
	defs

all-local: $(scripts)

# include
include: Makefile $(srcdir)/include.in
	{ cat $(srcdir)/include.in | $(do_subst) > include &&	\
	  chmod +x include ; } ||				\
	{ rm -f include ; exit 1 ; }
CLEANFILES += include
EXTRA_DIST += include.in

# wrapper
wrapper: Makefile $(srcdir)/wrapper.in
	{ cat $(srcdir)/wrapper.in | $(do_subst) > wrapper &&	\
	  chmod +x wrapper ; } ||				\
	{ rm -f wrapper ; exit 1 ; }
CLEANFILES += wrapper
EXTRA_DIST += wrapper.in

##
## NOTE:
##   defs should not be made executable because it should be only included by
##   test-cases
##

# defs
defs: Makefile $(srcdir)/defs.in
	{ cat $(srcdir)/defs.in | $(do_subst) > defs ; } ||	\
	{ rm -f defs ; exit 1 ; }
CLEANFILES += defs
EXTRA_DIST += defs.in

# Tests
FAIL_TESTS    =
SUCCESS_TESTS =

FAIL_TESTS +=					\
	test-fail				\
	test-language-10			\
	test-language-11			\
	test-language-12			\
	test-language-13			\
	test-language-14			\
	test-language-15			\
	test-language-19			\
	test-options-short-3			\
	test-options-short-4			\
	test-options-long-3			\
	test-options-long-4			\
	test-options-abbr-3			\
	test-options-shortargs-3		\
	test-options-shortargs-4		\
	test-options-longargs-3			\
	test-options-longargs-4			\
	test-options-abbrargs-3			\
	test-options-abbrargs-4

SUCCESS_TESTS +=				\
	test-success				\
	test-dry-run				\
	test-language-parse-1			\
	test-language-comments-1		\
	test-language-comments-2		\
	test-language-comments-3		\
	test-language-source-1			\
	test-language-source-2			\
	test-language-source-3			\
	test-language-source-4			\
	test-language-1				\
	test-language-2				\
	test-language-3				\
	test-language-4				\
	test-language-5				\
	test-language-6				\
	test-language-7				\
	test-language-8				\
	test-language-9				\
	test-language-16			\
	test-language-17			\
	test-language-18			\
	test-language-20			\
	test-language-21			\
	test-language-22			\
	test-language-23			\
	test-input-name-1			\
	test-output-name-1			\
	test-autotools-1			\
	test-autotools-2			\
	test-autotools-3			\
	test-options-short-1			\
	test-options-short-2			\
	test-options-long-1			\
	test-options-long-2			\
	test-options-abbr-1			\
	test-options-abbr-2			\
	test-options-shortargs-1		\
	test-options-shortargs-2		\
	test-options-longargs-1			\
	test-options-longargs-2			\
	test-options-abbrargs-1			\
	test-options-abbrargs-2			\
	test-options-multi-1			\
	test-options-multi-2			\
	test-options-multi-3			\
	test-options-multi-4			\
	test-options-multi-5			\
	test-options-multi-6			\
	test-options-multi-7			\
	test-options-multi-8			\
	test-options-tool-preprocessor		\
	test-options-tool-parser		\
	test-options-tool-compiler		\
	test-options-tool-linker

#	test-language-complete

XFAIL_TESTS = $(FAIL_TESTS)
TESTS       = $(FAIL_TESTS) $(SUCCESS_TESTS)

EXTRA_DIST += $(TESTS)

test-success: $(srcdir)/test-success.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-success.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-success.in
CLEANFILES += test-success

test-fail: $(srcdir)/test-fail.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-fail.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-fail.in
CLEANFILES += test-fail

test-language-1: $(srcdir)/test-language-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-1.in
CLEANFILES += test-language-1

test-language-2: $(srcdir)/test-language-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-2.in
CLEANFILES += test-language-2

test-language-3: $(srcdir)/test-language-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-3.in
CLEANFILES += test-language-3

test-language-4: $(srcdir)/test-language-4.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-4.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-4.in
CLEANFILES += test-language-4

test-language-5: $(srcdir)/test-language-5.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-5.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-5.in
CLEANFILES += test-language-5

test-language-6: $(srcdir)/test-language-6.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-6.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-6.in
CLEANFILES += test-language-6

test-language-7: $(srcdir)/test-language-7.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-7.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-7.in
CLEANFILES += test-language-7

test-language-8: $(srcdir)/test-language-8.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-8.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-8.in
CLEANFILES += test-language-8

test-language-9: $(srcdir)/test-language-9.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-9.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-9.in
CLEANFILES += test-language-9

test-language-10: $(srcdir)/test-language-10.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-10.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-10.in
CLEANFILES += test-language-10

test-language-11: $(srcdir)/test-language-11.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-11.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-11.in
CLEANFILES += test-language-11

test-language-12: $(srcdir)/test-language-12.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-12.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-12.in
CLEANFILES += test-language-12

test-language-13: $(srcdir)/test-language-13.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-13.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-13.in
CLEANFILES += test-language-13

test-language-14: $(srcdir)/test-language-14.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-14.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-14.in
CLEANFILES += test-language-14

test-language-15: $(srcdir)/test-language-15.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-15.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-15.in
CLEANFILES += test-language-15

test-language-16: $(srcdir)/test-language-16.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-16.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-16.in
CLEANFILES += test-language-16

test-language-17: $(srcdir)/test-language-17.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-17.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-17.in
CLEANFILES += test-language-17

test-language-18: $(srcdir)/test-language-18.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-18.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-18.in
CLEANFILES += test-language-18

test-language-19: $(srcdir)/test-language-19.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-19.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-19.in
CLEANFILES += test-language-19

test-language-20: $(srcdir)/test-language-20.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-20.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-20.in
CLEANFILES += test-language-20

test-language-21: $(srcdir)/test-language-21.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-21.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-21.in
CLEANFILES += test-language-21

test-language-22: $(srcdir)/test-language-22.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-22.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-22.in
CLEANFILES += test-language-22

test-language-23: $(srcdir)/test-language-23.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-23.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-23.in
CLEANFILES += test-language-23

test-language-complete: $(srcdir)/test-language-complete.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-complete.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-complete.in
CLEANFILES += test-language-complete

test-dry-run: $(srcdir)/test-dry-run.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-dry-run.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-dry-run.in
CLEANFILES += test-dry-run

test-autotools-1: $(srcdir)/test-autotools-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-autotools-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-autotools-1.in
CLEANFILES += test-autotools-1

test-autotools-2: $(srcdir)/test-autotools-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-autotools-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-autotools-2.in
CLEANFILES += test-autotools-2

test-autotools-3: $(srcdir)/test-autotools-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-autotools-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-autotools-3.in
CLEANFILES += test-autotools-3

test-language-parse-1: $(srcdir)/test-language-parse-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-parse-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-parse-1.in
CLEANFILES += test-language-parse-1

test-input-name-1: $(srcdir)/test-input-name-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-input-name-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-input-name-1.in
CLEANFILES += test-input-name-1

test-output-name-1: $(srcdir)/test-output-name-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-output-name-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-output-name-1.in
CLEANFILES += test-output-name-1

test-language-comments-1: $(srcdir)/test-language-comments-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-comments-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-comments-1.in
CLEANFILES += test-language-comments-1

test-language-comments-2: $(srcdir)/test-language-comments-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-comments-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-comments-2.in
CLEANFILES += test-language-comments-2

test-language-comments-3: $(srcdir)/test-language-comments-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-comments-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-comments-3.in
CLEANFILES += test-language-comments-3

test-language-source-1: $(srcdir)/test-language-source-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-source-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-source-1.in
CLEANFILES += test-language-source-1

test-language-source-2: $(srcdir)/test-language-source-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-source-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 2 ; \
	}
EXTRA_DIST += test-language-source-2.in
CLEANFILES += test-language-source-2

test-language-source-3: $(srcdir)/test-language-source-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-source-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 3 ; \
	}
EXTRA_DIST += test-language-source-3.in
CLEANFILES += test-language-source-3

test-language-source-4: $(srcdir)/test-language-source-4.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-language-source-4.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-language-source-4.in
CLEANFILES += test-language-source-4

test-options-short-1: $(srcdir)/test-options-short-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-short-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-short-1.in
CLEANFILES += test-options-short-1

test-options-short-2: $(srcdir)/test-options-short-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-short-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-short-2.in
CLEANFILES += test-options-short-2

test-options-short-3: $(srcdir)/test-options-short-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-short-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-short-3.in
CLEANFILES += test-options-short-3

test-options-short-4: $(srcdir)/test-options-short-4.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-short-4.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-short-4.in
CLEANFILES += test-options-short-4

test-options-long-1: $(srcdir)/test-options-long-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-long-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-long-1.in
CLEANFILES += test-options-long-1

test-options-long-2: $(srcdir)/test-options-long-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-long-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-long-2.in
CLEANFILES += test-options-long-2

test-options-long-3: $(srcdir)/test-options-long-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-long-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-long-3.in
CLEANFILES += test-options-long-3

test-options-long-4: $(srcdir)/test-options-long-4.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-long-4.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-long-4.in
CLEANFILES += test-options-long-4

test-options-abbr-1: $(srcdir)/test-options-abbr-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-abbr-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-abbr-1.in
CLEANFILES += test-options-abbr-1

test-options-abbr-2: $(srcdir)/test-options-abbr-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-abbr-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-abbr-2.in
CLEANFILES += test-options-abbr-2

test-options-abbr-3: $(srcdir)/test-options-abbr-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-abbr-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-abbr-3.in
CLEANFILES += test-options-abbr-3

test-options-shortargs-1: $(srcdir)/test-options-shortargs-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-shortargs-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-shortargs-1.in
CLEANFILES += test-options-shortargs-1

test-options-shortargs-2: $(srcdir)/test-options-shortargs-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-shortargs-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-shortargs-2.in
CLEANFILES += test-options-shortargs-2

test-options-shortargs-3: $(srcdir)/test-options-shortargs-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-shortargs-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-shortargs-3.in
CLEANFILES += test-options-shortargs-3

test-options-shortargs-4: $(srcdir)/test-options-shortargs-4.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-shortargs-4.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-shortargs-4.in
CLEANFILES += test-options-shortargs-4

test-options-longargs-1: $(srcdir)/test-options-longargs-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-longargs-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-longargs-1.in
CLEANFILES += test-options-longargs-1

test-options-longargs-2: $(srcdir)/test-options-longargs-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-longargs-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-longargs-2.in
CLEANFILES += test-options-longargs-2

test-options-longargs-3: $(srcdir)/test-options-longargs-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-longargs-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-longargs-3.in
CLEANFILES += test-options-longargs-3

test-options-longargs-4: $(srcdir)/test-options-longargs-4.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-longargs-4.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-longargs-4.in
CLEANFILES += test-options-longargs-4

test-options-abbrargs-1: $(srcdir)/test-options-abbrargs-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-abbrargs-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-abbrargs-1.in
CLEANFILES += test-options-abbrargs-1

test-options-abbrargs-2: $(srcdir)/test-options-abbrargs-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-abbrargs-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-abbrargs-2.in
CLEANFILES += test-options-abbrargs-2

test-options-abbrargs-3: $(srcdir)/test-options-abbrargs-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-abbrargs-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-abbrargs-3.in
CLEANFILES += test-options-abbrargs-3

test-options-abbrargs-4: $(srcdir)/test-options-abbrargs-4.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-abbrargs-4.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-abbrargs-4.in
CLEANFILES += test-options-abbrargs-4

test-options-multi-1: $(srcdir)/test-options-multi-1.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-multi-1.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-multi-1.in
CLEANFILES += test-options-multi-1

test-options-multi-2: $(srcdir)/test-options-multi-2.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-multi-2.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-multi-2.in
CLEANFILES += test-options-multi-2

test-options-multi-3: $(srcdir)/test-options-multi-3.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-multi-3.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-multi-3.in
CLEANFILES += test-options-multi-3

test-options-multi-4: $(srcdir)/test-options-multi-4.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-multi-4.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-multi-4.in
CLEANFILES += test-options-multi-4

test-options-multi-5: $(srcdir)/test-options-multi-5.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-multi-5.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-multi-5.in
CLEANFILES += test-options-multi-5

test-options-multi-6: $(srcdir)/test-options-multi-6.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-multi-6.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-multi-6.in
CLEANFILES += test-options-multi-6

test-options-multi-7: $(srcdir)/test-options-multi-7.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-multi-7.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-multi-7.in
CLEANFILES += test-options-multi-7

test-options-multi-8: $(srcdir)/test-options-multi-8.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-multi-8.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-multi-8.in
CLEANFILES += test-options-multi-8

test-options-tool-preprocessor: $(srcdir)/test-options-tool-preprocessor.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-tool-preprocessor.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-tool-preprocessor.in
CLEANFILES += test-options-tool-preprocessor

test-options-tool-parser: $(srcdir)/test-options-tool-parser.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-tool-parser.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-tool-parser.in
CLEANFILES += test-options-tool-parser

test-options-tool-compiler: $(srcdir)/test-options-tool-compiler.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-tool-compiler.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-tool-compiler.in
CLEANFILES += test-options-tool-compiler

test-options-tool-linker: $(srcdir)/test-options-tool-linker.in Makefile
	( rm -f $@ $@.tmp && \
	  $(do_subst) < $(srcdir)/test-options-tool-linker.in > $@.tmp && \
	  chmod +x $@.tmp && \
	  chmod a-w $@.tmp && \
	  mv -f $@.tmp $@ ) || { \
		rm -f $@ $@.tmp ; \
		exit 1 ; \
	}
EXTRA_DIST += test-options-tool-linker.in
CLEANFILES += test-options-tool-linker

clean-local:
	rm -rf testSubDir-*

##
## Maintainer related targets
##
update-local: Makefile

maintainer-check-local: Makefile
