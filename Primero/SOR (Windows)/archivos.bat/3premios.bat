@echo off
set Premio1= 1000
set Premio2= 500
set Premio3= 100
set B= 20


echo Los ganadores son:
cls
set /p Nombre1= El ganador del primer premio es %Nombre1%
set /p Edad1= La edad de %Nombre1% es de %Edad1%
if %Edad1% LSS %B% goto :MAS1
echo HAS GANADO %Premio1%
pause
:a
cls
set /p Nombre2= El ganador del segundo premio es para %Nombre2%
set /p Edad2= La edad de %Nombre2% es de %Edad2%
if %Edad2% LSS %B% goto :MAS2
echo HAS GANADO %Premio2%
pause
:b
cls
set /p Nombre3= El ganador del tercer premio es para %Nombre3%
set /p Edad3= La edad de %Nombre3% es de %Edad3%
if %Edad3% LSS %B% goto :MAS3
echo HAS GANADO %Premio3%
pause
:c
echo Hoy dia %date% los ganadores han sido: > premios.txt
echo PREMIO 1 de %Premio1% euros es de %Nombre1% con la edad de %Edad1% >>  premios.txt
echo PREMIO 2 de %Premio2% euros es de %Nombre2% con la edad de %Edad2% >> premios.txt
echo PREMIO 3 de %Premio3% euros es de %Nombre3% con la edad de %Edad3% >> premios.txt
pause
exit

:MAS1
set /a Premio1=%Premio1%*15/10
echo HAS GANADO %Premio1%
pause
goto :a

:MAS2
set /a Premio2=%Premio2%*15/10
echo HAS GANADO %Premio2%
pause
goto :b

:MAS3
set /a Premio3=%Premio3%*15/10
echo HAS GANADO %Premio3%
pause
goto :c