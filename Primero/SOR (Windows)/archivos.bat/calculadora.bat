@echo off
title Calculadora

:bucle1
pause
Color 07
cls
echo.
echo + + + + + + + + + + + Menu de operaciones + + + + + + + + + + 
echo + + + Selecciona tu operacon, si seleccionas otra tecla producira (Terminar)
echo (1)  - (Sumar)
echo (2)  - (Restar)
echo (3)  - (Multiplicar)
echo (4)  - (Dividir)
echo (c)   - (Pulsa C para- Calculadora de Windows)
echo.
echo + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
set /p op= Pulse un numero o caracter:

if %op%==1 goto Sumar
if %op%==2 goto Restar
if %op%==3 goto Multiplicar
if %op%==4 goto Dividir
if %op%==c goto Calculadora

echo.
echo + + + esta opcion no esta en el menu
echo.
pause
exit

:Sumar
color 06
echo La operacion es SUMAR
set /p v1= ¿Cual es el primer numero?:
set /p v2= ¿Cual es el segundo numero?:
echo num1=%v1% y num2=%v2%
set/a suma=v1+v2
echo El resultado es=%suma%
goto bucle1
goto salir

:Restar
color 06
echo La operacion es RESTAR
set /p v1= ¿Cual es el primer numero?:
set /p v2= ¿Cual es el segundo numero?:
echo num1=%v1% y num2=%v2%
set/a resta=v1-v2
echo El resultado es=%resta%
goto bucle1
goto salir

:Multiplicar
color 06
echo La operacion es MULTIPLICAR
set /p v1= ¿Cual es el primer numero?:
set /p v2= ¿Cual es el segundo numero?:
echo num1=%v1% y num2=%v2%
set/a multiplicacion=v1*v2
echo El resultado es=%multiplicacion%
goto bucle1
goto salir

:Dividir
color 06
echo La operacion es DIVIDIR
set /p v1= ¿Cual es el primer numero?:
set /p v2= ¿Cual es el segundo numero?:
echo num1=%v1% y num2=%v2%
set/a division=v1/v2
echo El resultado es=%division%
goto bucle1
goto salir

:Calculadora
echo Has elegido calculadora de Windows,pulsa una tecla a continuacion
calc.exe
goto bucle1

:salir
echo Final de operaciones.Pulsa una tecla para salir
pause>nul
exit
