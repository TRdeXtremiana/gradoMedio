@echo off


echo bienvenido, pulse una tecla para continuar
:menu
pause
cls

echo.
echo *********** MENU *****************
echo.
echo 1- Ver la version del sistema operativo "ver"
echo 2- Abrir iexplore.exe
echo 3- Mostrar la hora
echo 4- Mostrar la fecha
echo 5- o cualquier otra tecla salir

set/p op= Introduzca opcion: 
echo.
echo.
echo su opcion introducida es %op%

if %op% ==1 goto sistema
if %op% ==2 goto explore
if %op% ==3 goto hora
if %op% ==4 goto fecha
if not goto salir

:sistema
echo mostrando informacion de sistema
ver
goto menu

:explore
echo abriendo Internet Explorer
start iexplore.exe
goto menu

:hora
echo mostrando la hora sin pedir nueva hora
time /t
echo mostrando vble del sistema
:a
echo %time%
goto a
goto menu

:fecha
echo mostrando la fecha sin pedir nueva fecha
date /t
echo mostrando vble del sistema
echo %date%

goto menu

:salir
echo para salir presiona cualquier tecla
pause>nul
exit
