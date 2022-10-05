@echo off

echo.
echo probar asignacion directa set nombrevble=(valor introducido por codigo)
echo mucho cuidado de no dejar espacios en blanco
set v1=100
set v2=1000

echo la vble1= %v1%  y la vble2= %v2%
pause

if %v1% lss %v2% goto sumar
if %v1% equ %v2% (echo v1 es igual q v2)
if %v1% gtr %v2% goto restar
echo.

:sumar
echo v1 es menor q v2
set/a suma=v1+v2
echo %suma%
echo la suma de v1 y v2 es= %suma%
goto salir

:restar
echo v1 es mayor q v2
set/a resta=v1-v2
echo %resta%
echo la resta de v1 y v2 es= %resta%
goto salir


:salir
echo fin prueba asignacion directa, pulsa tecla para terminar
pause>nul
exit