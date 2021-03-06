TERMUX_PKG_HOMEPAGE=https://github.com/mauke/unibilium
TERMUX_PKG_DESCRIPTION="Terminfo parsing library"
TERMUX_PKG_VERSION=1.1.6
TERMUX_PKG_SRCURL=https://github.com/mauke/unibilium/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_FOLDERNAME=unibilium-${TERMUX_PKG_VERSION}

termux_step_make () {
	return
}

termux_step_make_install () {
	CFLAGS+=" -DTERMINFO_DIRS=\"$TERMUX_PREFIX/share/terminfo/\""
	$CC $CFLAGS -c -fPIC unibilium.c -o unibilium.o
	$CC $CFLAGS -c -fPIC uninames.c -o uninames.o
	$CC $CFLAGS -c -fPIC uniutil.c -o uniutil.o
	$CC -shared -fPIC $LDFLAGS -o $TERMUX_PREFIX/lib/libunibilium.so unibilium.o uninames.o uniutil.o
	cp unibilium.h $TERMUX_PREFIX/include/
}
