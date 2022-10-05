@echo off
title saldo
set nombre= Diego
set apellido= Extremiana
set salario= 1800

:Menu
Color 07
cls
echo.
echo Bienvenido Sr/a %nombre% %apellido%,hoy es %Date%
echo %nombre% selecciona la operacion que deseas realizar,si seleccionas otra tecla producira (Salir):
echo + + + + + + + + + + + + + + + + + + + +
echo +  				   +
echo + (1)-(Ingresar)			   +
echo + (2)-(Retirar)                       +
echo + (3)-(Consultar tu saldo)            +
echo + (4)-(Salir)                         +
echo +                                     +
echo + + + + + + + + + + + + + + + + + + + +
set /p op=Pulse un numero o caracter

if %op%==1 goto Ingresar
if %op%==2 goto Retirar
if %op%==3 goto Consultar
if %op%==4 goto Salir

echo.
echo + + + esto no deberia salir
echo.
pause
exit


:Ingresar
cls
pause
color 0a
echo Ha escogido INGRESAR
set /p v1= ¿Cuanto salario quiere ingresar?:
set v2= %salario%
set /a salario=v1+v2
echo El resultado es=%salario%
pause
goto Menu 

:Retirar
cls
pause
color 04
echo Ha escogido RETIRAR
set /p v1= ¿Cuanto salario quiere retirar?:
if %v1% GTR %salario% goto :error
set /a salario=%salario%-v1
echo El resultado es=%salario%
pause
goto Menu 

:Consultar
cls
pause
color 09
echo Ha escogido CONSULTAR su saldo
echo Su saldo actual es de %salario%
pause
goto Menu

:error
echo La cantidad que quiere sacar supera la cantidad que posee.
pause
goto Menu

:Salir
cls
echo Hasta la proxima Sr/a. %nombre% %apellido%
echo disfrute del dia.Pulse una tecla mas para salir
pause>nul
exit