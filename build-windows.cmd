@echo off
rem Build do OTClient (preset windows-release) com o ambiente do MSVC carregado.
call "C:\Program Files (x86)\Microsoft Visual Studio\18\BuildTools\VC\Auxiliary\Build\vcvars64.bat" >nul || exit /b 1
set "VCPKG_ROOT=C:\vcpkg"
set "PATH=%PATH%;C:\Program Files\Git\cmd;C:\Program Files\CMake\bin"
cd /d "%~dp0"
cmake --preset windows-release || exit /b 2
cmake --build --preset windows-release || exit /b 3
echo BUILD_OK
