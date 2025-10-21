@echo off
setlocal

REM Get the directory of this script
set SCRIPT_DIR=%~dp0
REM Remove trailing backslash if any
if "%SCRIPT_DIR:~-1%"=="\" set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%

REM Go to root directory (one level up)
set ROOT_DIR=%SCRIPT_DIR%\..

pushd "%ROOT_DIR%"
"%ROOT_DIR%\Vendor\Binaries\Premake\Windows\premake5.exe" --file=Build.lua vs2022
popd

