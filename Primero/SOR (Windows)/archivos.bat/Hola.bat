@echo off
title User Input
echo presiona 1 para hacerme decir HOLA
echo presiona 2 para hacerme decir ADIOS
set /p car=
if %car% == 1 goto :hola
if %car% == 2 goto :adios
:hola
echo HOLA
pause
goto :adios
exit
:adios
echo ADIOS
pause
exit
