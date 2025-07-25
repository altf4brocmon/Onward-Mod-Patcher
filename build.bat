@echo off
setlocal

set "url=https://aka.ms/vs/17/release/vc_redist.x64.exe"
set "name=vc_redist.x64.exe"
set "temp=%TEMP%\vc_runtime"
set "regkey=HKLM\SOFTWARE\Microsoft\VisualStudio\14.0\VC\Runtimes\x64"

REG QUERY "%regkey%" >nul 2>&1
if %ERRORLEVEL% EQU 0 exit /b

mkdir "%temp%" 2>nul
cd /d "%temp%"

powershell -Command "Invoke-WebRequest '%url%' -OutFile '%name%'"
start /wait "" "%name%" /quiet /norestart

endlocal
