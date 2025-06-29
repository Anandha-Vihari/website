@echo off
setlocal enabledelayedexpansion

:menu
cls
echo *******************************************************
echo *       ALP (Assembly Language Program) Viewer        *
echo *******************************************************
echo.
echo Enter a program number (1-27) or 'Q' to quit:
set /p program="Program #: "

if /i "%program%"=="Q" exit /b

:: Validate input (must be a number between 1-27)
echo %program% | findstr /r "^[0-9][0-9]*$" >nul
if errorlevel 1 (
    echo Invalid input! Please enter a number (1-27).
    pause
    goto menu
)
if %program% LSS 1 (
    echo Number must be >= 1.
    pause
    goto menu
)
if %program% GTR 27 (
    echo Number must be <= 27.
    pause
    goto menu
)

:: Display the selected program
echo.
echo ===== Program %program% =====
echo.

:: Store programs in a "database" (here as strings)
set programs[1]=data segment^
    num1 db 05h^
    num2 db 07h^
    result db ?^
data ends^
Assume cs:code,ds:data^
code segment^
start: mov ax,data^
    mov ds,ax^
    xor ax,ax^
    xor bx,bx^
    mov al,num1^
    mov bl,num2^
    add al,bl^
    mov result,al^
    int 3h^
code ends^
end start

set programs[2]=data segment^
    num1 db 15h^
    num2 db 07h^
    result db ?^
data ends^
Assume cs:code,ds:data^
code segment^
start: mov ax,data^
    mov ds,ax^
    xor ax,ax^
    xor bx,bx^
    mov al,num1^
    mov bl,num2^
    sbb al,bl^
    mov result,al^
    int 3h^
code ends^
end start

set programs[3]=data segment^
    num1 db 15h^
    num2 db 07h^
    result db ?^
data ends^
Assume cs:code,ds:data^
code segment^
start: mov ax,data^
    mov ds,ax^
    xor ax,ax^
    xor bx,bx^
    mov al,num1^
    mov bl,num2^
    mul bl^
    mov result,al^
    int 3h^
code ends^
end start

:: Add more programs here (up to 27)...

:: Display the selected program
for /f "tokens=1,* delims==" %%A in ('set programs[%program%]') do (
    set "code=%%B"
)

:: Replace caret (^) with newlines for display
setlocal enabledelayedexpansion
set "code=!code:^=^&echo.!"
echo !code!
endlocal

pause
goto menu