#!/bin/sh
if [ -z $CLICK_PREFIX ]
then
    echo "CLICK_PREFIX is not set, exiting..."
    exit 1
fi

export CC="arm-linux-androideabi-gcc"
export CXX="arm-linux-androideabi-g++"
export LDFLAGS="-lgnustl_shared -shared" # must specify -shared to build the source as shared library

./configure \
--host=arm-linux-androideabi \
--with-click="$CLICK_PREFIX" \
--prefix="$CLICK_PREFIX" \
CXXFLAGS="-fno-rtti -fno-exceptions -g"

# must call make while LDFLAGS are set, otherwise gnustl will not be invoked
make -j2
