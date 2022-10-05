@echo off
title Contrasenia

:a
cls
echo INTRODUZCA CONTRASEÑA
color 07
set /p clave=
if %clave%==1234 goto :correct
if not %clave%==1234 goto :incorrect
pause

:correct
color 0a
echo ENHORABUENA
pause
exit

:incorrect
color 04
echo LA CLAVE NO ES CORRECTA
echo PRUEBE DE NUEVO
pause
goto :a