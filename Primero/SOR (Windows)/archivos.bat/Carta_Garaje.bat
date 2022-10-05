@echo off
echo Le va a escribir un comunicado a su vecino/a
echo ¿A quien va dirigida?:
set /p nombre=
echo ¿En que planta vive?
set /p planta=
echo ¿Que letra le pertenece a su casa?
set /p letra=
echo ¿Hoy es dia %date%?
set /p pregunta=

if %pregunta%==si goto :si
if %pregunta%==no goto :no

echo.
echo No ha escogido una opcion valida
echo.

:si
echo Se escribira el siguiente comunicado
echo Hola Sr/Sra. %nombre% del %planta%%letra% le escribo para que sepa que hoy, a dia %date% vamos a limpiar el garaje en Carta.txt
echo Hola Sr/Sra. %nombre% del %planta%%letra% le escribo para que sepa que hoy, a dia %date% vamos a limpiar el garaje > Carta.txt
pause
exit


:no
echo Entonces ¿que dia es hoy?
set /p fecha=
echo Se escribira el siguiente comunicado
echo Hola Sr/Sra. %nombre% del %planta%%letra% le escribo para que sepa que hoy, a dia %fecha% vamos a limpiar el garaje en Carta.txt
echo Hola Sr/Sra. %nombre% del %planta%%letra% le escribo para que sepa que hoy, a dia %fecha% vamos a limpiar el garaje > Carta.txt
pause
exit