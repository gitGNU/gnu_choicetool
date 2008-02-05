## Autoconf macros for missing package error printing.
##
##  Copyright (c) 2008 Francesco Salvestrini <salvestrini@users.sourceforge.net>
##
##   Copying and distribution of this file, with or without
##   modification, are permitted in any medium without royalty provided
##   the copyright notice and this notice are preserved.
##

AC_DEFUN([AX_MISSING_PACKAGE],[dnl
  if test -z "$2" ; then
	AC_MSG_ERROR([
***
*** $1 package seems missing. In order to continue it must be installed.
***
])
  else
	AC_MSG_ERROR([
***
*** $1 package seems missing. In order to continue it must be installed.
*** It should be found at the following address:
***
***     $2
***
])
  fi
])
