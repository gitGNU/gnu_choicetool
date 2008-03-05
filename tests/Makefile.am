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
	test-language-15

SUCCESS_TESTS +=				\
	test-success				\
	test-arguments-1			\
	test-arguments-2			\
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
	test-autotools-1			\
	test-input-name-1

XFAIL_TESTS = $(FAIL_TESTS)
TESTS       = $(FAIL_TESTS) $(SUCCESS_TESTS)

EXTRA_DIST += $(TESTS)

clean-local:
	rm -rf testSubDir-*
