@echo off
title File maker
echo  Introduce un nombre para tu archivo:
set /p name=
echo Introduce la extensión para tu archivo:
set /p extension= 
echo Introduce tu nombre y apellidos:
set /p nombre=
echo %nombre% > %name%.%extension%
exit
