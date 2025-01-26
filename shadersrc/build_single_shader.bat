@echo off

REM Check if an argument was provided
if "%~1"=="" (
    echo Drag and drop a shader file onto this script
    pause
    exit /b
)

REM Detect shader version

set "filename=%~nx1"
set "char7=%filename:~-7,1%"

if "%char7%" == "3" (
	bin\ShaderCompile.exe /O 3 -ver 30 -shaderpath "%cd%" %1
) else (
	bin\ShaderCompile.exe /O 3 -ver 20b -shaderpath "%cd%" %1
)

pause