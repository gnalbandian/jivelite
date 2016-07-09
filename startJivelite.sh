#!/bin/sh

## Change these if you changed your install path
INSTALL_DIR=/home/pi/jivelite/opt/jivelite
LIB_DIR=$INSTALL_DIR/lib

## Start up
export LD_LIBRARY_PATH=$LIB_DIR:$LD_LIBRARY_PATH
export PATH=$PATH:$INSTALL_DIR/bin

export SDL_TOUCHSCREEN=1
export JIVE_NOCURSOR=1
export TSLIB_CONFFILE=$INSTALL_DIR/lib/ts.conf
export TSLIB_PLUGINDIR=$INSTALL_DIR/lib/ts
export SDL_MOUSEDRV=TSLIB
export TSLIB_TSDEVICE=/dev/input/event0

$INSTALL_DIR/bin/jivelite

exit 0;
