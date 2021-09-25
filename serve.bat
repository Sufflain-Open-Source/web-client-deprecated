@echo off

set PORT=%1

if "%PORT%" == "" (
    set PORT=8080
)

webdev serve web:%PORT%