@echo off
mkdir build
cd build

cmake .. -G "Visual Studio 16 2019"

echo CMake generation completed. Press any key to exit.
pause
