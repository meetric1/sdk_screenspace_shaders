@echo off

REM Check if an argument was provided
if "%~1"=="" (
    echo Drag and drop a shader file onto this script
    pause
    exit /b
)

bin\ShaderCompile.exe -ver 20b -shaderpath "%cd%" %1