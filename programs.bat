@echo off
setlocal enabledelayedexpansion

:: Initialize program database
call :init_programs

:menu
cls
echo *******************************************************
echo *       ALP (Assembly Language Program) Viewer        *
echo *******************************************************
echo.
echo Enter a program number (1-27) or 'Q' to quit:
set /p "program=Program #: "

if /i "%program%"=="Q" exit /b

:: Validate input is a number between 1-27
echo %program%|findstr /r "^[0-9][0-9]*$" >nul
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

:: Display selected program
echo.
echo ===== Program %program% =====
echo.

for /f "tokens=1,* delims==" %%A in ('set programs[%program%] 2^>nul') do (
    set "code=%%B"
)

if not defined code (
    echo Program %program% not defined yet.
    pause
    goto menu
)

:: Replace caret placeholders with newlines
for /f "delims=" %%a in ("!code!") do (
    set "line=%%a"
    set "line=!line:^=^&echo.!"
    cmd /v:on /c echo !line!
)

pause
goto menu

:init_programs
:: Program 1: Addition of two 8-bit numbers
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

:: Program 2: Subtraction of two 8-bit numbers
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

:: Add more programs here following the same pattern...
:: programs[3] to programs[27]

goto :eof
