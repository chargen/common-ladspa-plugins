#!/bin/sh

if [ -z "$1" ]; then
    echo "arg1 (COMIPLER_FLAGS) is unset";
    exit -1
fi

set -e
set -x


COMPILER_FLAGS="$1 -I/home/kjetil/osxcross/target/bin/../macports/pkgs/opt/local/include  -L/home/kjetil/osxcross/target/bin/../macports/pkgs/opt/local/lib"

SYSTEM=darwinx64

#CC=o64-gcc
#CCC=o64-g++

CC=o64-gcc
CCC=o64-g++

COMPILER_FLAGS=$COMPILER_FLAGS ./build_lmms.sh $CC $CCC build/$SYSTEM/build_lmms build/$SYSTEM/dlls
COMPILER_FLAGS=$COMPILER_FLAGS ./build_kokkinizita.sh $CC $CCC build/$SYSTEM/build_mcp build/$SYSTEM/dlls