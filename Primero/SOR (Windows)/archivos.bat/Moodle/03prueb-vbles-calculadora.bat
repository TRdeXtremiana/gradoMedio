@echo off

:bucle1
pause
cls
echo.
echo *** Menu de operaciones de nuestra calculadora
echo *** Introduzca 1 , 2 , 3 , 4 , C , cualquier otra tecla producira (Terminar)
echo (1) - (Sumar)
echo (2) - (Restar)
echo (3) - (Multiplicar)
echo (4) - (Dividir)
echo (C) - (Pulsa C para - Calculadora de Windows)
echo.
echo ******************************************** 
set/p op= pulse un numero o caracter: 


if %op%==1 goto sumar
if %op%==2 goto restar
if %op%==3 goto multiplicar
if %op%==4 goto dividir
if /I "%op%"=="c" goto calculadora

echo.
echo ****  esto n debe de salir
echo.
pause
exit

:sumar
echo la operacion es sumar
set/p v1= introduzca el primer numero: 
set/p v2= introduzca el segundo numero: 
echo num1 = %v1%  y  num2= %v2%
set/a suma=v1+v2
echo la suma de v1 y v2 es= %suma%
goto bucle1
goto salir


:restar
echo la operacion es restar
set/p v1= introduzca el primer numero: 
set/p v2= introduzca el segundo numero: 
echo num1 = %v1%  y  num2= %v2%
set/a resta=v1-v2
echo la resta de v1 y v2 es= %resta%
goto bucle1
goto salir

:multiplicar
echo la operacion es multiplicar
set/p v1= introduzca el primer numero: 
set/p v2= introduzca el segundo numero: 
echo num1 = %v1%  y  num2= %v2%
set/a resultado=v1*v2
echo la multiplicacion de v1 y v2 es= %resultado%
goto bucle1
goto salir


:dividir
echo la operacion es dividir
set/p v1= introduzca el primer numero: 
set/p v2= introduzca el segundo numero: 
echo num1 = %v1%  y  num2= %v2%
set/a resultado=v1/v2
echo la division de v1 y v2 es= %resultado%
goto bucle1
goto salir

:calculadora

echo bienvenido a la calculadora de windows, pulse una tecla para continuar
calc.exe
goto bucle1

:salir
echo fin operaciones introducidas por teclado, pulsa tecla para terminar
pause>nul
exit