@echo off
echo dame un numero para operar
set v1=100
set /a v2=1
set /p v3=
echo v1=%v1% v2=%v2% v3=%v3%
pause
echo %v1% + %v3% =
set /a v4= v1+v3
echo v4=%v4%
pause
echo %v4% - %v2% =
set /a v5= v4-v2
echo v5=%v5%
pause
echo %v5% x %v1% =
set /a v6= v5*v1
echo v6=%v6%
pause
echo %v6% : %v1% =
set /a v7= v6/v1
echo v7=%v7%
pause
exit