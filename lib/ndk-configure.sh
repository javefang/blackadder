#!/bin/sh
SYSROOT="$MY_NDK/sysroot" \
CC="arm-linux-androideabi-gcc" \
CXX="arm-linux-androideabi-g++" \
./configure --host=arm-linux-androideabi \
CXXFLAGS="-fno-rtti -fno-exceptions"
