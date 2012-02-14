#!/bin/sh
SYSROOT="$MY_NDK/sysroot" \
CC="arm-linux-androideabi-gcc" \
CXX="arm-linux-androideabi-g++" \
./configure --host=arm-linux-androideabi \
--with-click=/data/click \
--prefix=/data/click \
CXXFLAGS="-fno-rtti -fno-exceptions" \

