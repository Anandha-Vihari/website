@echo off
setlocal enabledelayedexpansion

:menu
cls
echo *******************************************************
echo *       ALP (Assembly Language Program) Viewer        *
echo *******************************************************
echo.
echo Enter a program number (1-27) or 'Q' to quit:
set /p "program=Program #: "

if /i "%program%"=="Q" exit /b

:: Validate input
echo %program%|findstr /r "^[0-9]*$" >nul
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

:: Define programs
set "programs[1]=data segment^
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
end start"

set "programs[2]=data segment^
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
 sub al,bl^
 mov result,al^
 int 3h^
code ends^
end start"

:: Display selected program
echo.
echo ===== Program %program% =====
echo.

for /f "tokens=1,* delims==" %%A in ('set programs[%program%] 2^>nul') do (
    set "code=%%B"
)

if not defined code (
    echo Program %program% not found.
    pause
    goto menu
)

set "code=!code:^= & echo.!"
echo !code!

pause
goto menu
