@echo off

set PORT=%1

if "%PORT%" == "" (
    set PORT=8080
)

dart pub global run webdev serve web:%PORT%