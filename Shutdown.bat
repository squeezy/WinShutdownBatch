@echo off
cls
set /p dMin="Shut down in(minutes): "

ping localhost -n 3 >nul
echo shuting down in 5
ping localhost -n 3 >nul
echo shuting down in 4
ping localhost -n 3 >nul
echo shuting down in 3
ping localhost -n 3 >nulcls
echo shuting down in 2
ping localhost -n 3 >nul
echo shuting down in 1...

set /a min=%dMin%
set /a sec=120*(%min%)
echo Windows will shut down in %min% minutes

shutdown.exe -s -f -t %sec%

ping localhost -n 5 >nul
