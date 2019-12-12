#!/bin/bash
echo "build lua5.3"

echo "mkdir build_linux"
rm -rf build_linux 
mkdir build_linux
cd build_linux

echo "cmake .."
cmake .. -DCMAKE_C_FLAGS="-fPIC"

echo "cmake --build ."
cmake --build .
cd -

mkdir -p lib/linux
cp build_linux/liblua5.3.so lib/linux/liblua5.3.so

