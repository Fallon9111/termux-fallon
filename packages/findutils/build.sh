TERMUX_PKG_HOMEPAGE=http://www.gnu.org/software/findutils/
TERMUX_PKG_DESCRIPTION="Utilities to find files meeting specified criteria and perform various actions on the files which are found"
TERMUX_PKG_VERSION=4.5.14
TERMUX_PKG_SRCURL=http://prep.ai.mit.edu/gnu/findutils/findutils-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="gl_cv_func_fflush_stdin=yes SORT_SUPPORTS_Z=yes SORT=$TERMUX_PREFIX/bin/applets/sort"
TERMUX_PKG_DEPENDS="libandroid-support"
TERMUX_PKG_RM_AFTER_INSTALL="bin/oldfind share/man/man1/oldfind.1"
