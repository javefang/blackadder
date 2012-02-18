#!/bin/sh
export CC="arm-linux-androideabi-gcc"
export CXX="arm-linux-androideabi-g++"
export LDFLAGS="-lgnustl_shared -shared" # not clear about what -shared is, but compile will fail if not added"

./configure \
--host=arm-linux-androideabi \
--with-click=/data/click \
--prefix=/data/click \
CXXFLAGS="-fno-rtti -fno-exceptions -g"

# must call make while LDFLAGS are set, otherwise gnustl will not be invoked
make -j2