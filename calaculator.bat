@echo off
:MENU
cls
echo *** Simple Batch Calculator ***
echo.
echo 1. Add
echo 2. Subtract
echo 3. Multiply
echo 4. Divide
echo 5. Exit
echo.
set /p choice="Choose an option (1-5): "

if "%choice%"=="1" goto ADD
if "%choice%"=="2" goto SUBTRACT
if "%choice%"=="3" goto MULTIPLY
if "%choice%"=="4" goto DIVIDE
if "%choice%"=="5" exit

:ADD
cls
echo *** Addition ***
set /p num1="Enter first number: "
set /p num2="Enter second number: "
set /a result=num1+num2
echo The result is: %result%
pause
goto MENU

:SUBTRACT
cls
echo *** Subtraction ***
set /p num1="Enter first number: "
set /p num2="Enter second number: "
set /a result=num1-num2
echo The result is: %result%
pause
goto MENU

:MULTIPLY
cls
echo *** Multiplication ***
set /p num1="Enter first number: "
set /p num2="Enter second number: "
set /a result=num1*num2
echo The result is: %result%
pause
goto MENU

:DIVIDE
cls
echo *** Division ***
set /p num1="Enter first number: "
set /p num2="Enter second number: "
if %num2%==0 (
    echo Division by zero is not allowed.
) else (
    set /a result=num1/num2
    echo The result is: %result%
)
pause
goto MENU
