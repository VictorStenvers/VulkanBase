@echo off
color a

:: Build glfw
cmake -S glfw -B glfw/Build -D BUILD_SHARED_LIBS=OFF -D GLFW_BUILD_EXAMPLES=OFF -D GLFW_BUILD_DOCS=OFF

cmake --build glfw/Build --config Release

:: Move the .lib file to a new Lib folder
mkdir glfw\Lib

move /y glfw\Build\src\Release\glfw3.lib glfw\Lib\

:: Done
set /p=Build complete, hit enter to exit
