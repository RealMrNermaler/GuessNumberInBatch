@echo off
setlocal enabledelayedexpansion

:: Generate a random number between 1 and 100
set /a secretNumber=%random% %% 100 + 1

:START
cls
echo *** Guess the Number Game ***
echo.
set /p guess="Guess a number between 1 and 100: "

:: Check if the guess is correct
if %guess%==%secretNumber% (
    echo Congratulations! You guessed the number correctly!
    goto END
) else (
    echo Incorrect guess. Try again!
    pause
    goto START
)

:END
pause
