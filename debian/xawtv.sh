#!/bin/sh

#
# set XAWTV_USE_DGA to force use of DGA
#

unset ARGS

if [ ! "$XAWTV_USE_DGA" ] &&
   [ -n "`xdpyinfo -queryExtensions | grep NV-GLX`" ] ; then
        ARGS="-nodga"
fi

exec /usr/bin/xawtv.bin $ARGS $@
