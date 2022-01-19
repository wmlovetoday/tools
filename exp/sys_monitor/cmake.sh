#!/bin/bash
rm -rf ./build

build_dir=`pwd`

mkdir build
cd build
cmake -DSRC_EXAM=${build_dir} ../..
make
cd -
mv build/test* ./
rm build -rf
# ulimit -c unlimited