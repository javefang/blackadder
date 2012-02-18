#!/bin/sh
export CC="arm-linux-androideabi-gcc"
export CXX="arm-linux-androideabi-g++"

./configure \
--host=arm-linux-androideabi \
CXXFLAGS="-fno-rtti -fno-exceptions -g" \
LDFLAGS="-lgnustl_shared" \

make -j2