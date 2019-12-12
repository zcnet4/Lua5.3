echo off
echo "build lua5.3"

pushd .
echo "mkdir build_win32"
rmdir /S /Q build_win32 
mkdir build_win32
cd build_win32

echo "cmake .."
cmake .. -G"Visual Studio 15 2017"

echo "cmake --build win32"
cmake --build . --config Debug
cmake --build . --config Release
popd

mkdir lib\win32\Debug lib\win32\Release
copy /y build_win32\Debug\lua5.3.lib lib\win32\Debug\lua5.3.lib
copy /y build_win32\Debug\lua5.3.dll lib\win32\Debug\lua5.3.dll
copy /y build_win32\Release\lua5.3.lib lib\win32\Release\lua5.3.lib
copy /y build_win32\Release\lua5.3.dll lib\win32\Release\lua5.3.dll

pushd .
echo "mkdir build_win64"
rmdir /S /Q build_win64 
mkdir build_win64
cd build_win64

echo "cmake .."
cmake .. -G"Visual Studio 15 2017 Win64"

echo "cmake --build win64"
cmake --build . --config Debug
cmake --build . --config Release
popd

mkdir lib\win64\Debug lib\win64\Release
copy /y build_win64\Debug\lua5.3.lib lib\win64\Debug\lua5.3.lib
copy /y build_win64\Debug\lua5.3.dll lib\win64\Debug\lua5.3.dll
copy /y build_win64\Release\lua5.3.lib lib\win64\Release\lua5.3.lib
copy /y build_win64\Release\lua5.3.dll lib\win64\Release\lua5.3.dll
