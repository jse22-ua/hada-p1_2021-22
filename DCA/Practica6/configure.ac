AC_INIT([MathOpsTests], [1.0], [youremail@example.com])
AM_INIT_AUTOMAKE([foreign])

AC_PROG_CXX([g++])
AC_PROG_CC([gcc])
AC_CONFIG_HEADERS([config.h])

# Buscar Boost
BOOST_ROOT = "$withval"
AC_ARG_WITH([boost],
    [AS_HELP_STRING([--with-boost], [Location of Boost libraries])],
    [BOOST_ROOT="$withval"],
    [BOOST_ROOT=""])
AC_CHECK_LIB([boost_unit_test_framework], [main], [],
    [AC_MSG_ERROR([Boost.Test framework not found. Install Boost.])])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
