@echo off
setlocal enabledelayedexpansion
color 0A
title Assembly Language Program Viewer

:MAIN_MENU
cls
echo ===============================================
echo         ASSEMBLY LANGUAGE PROGRAM VIEWER
echo ===============================================
echo.
echo Available Programs:
echo.
echo EXPERIMENT 1 - Basic Operations (1-10):
echo   1. Addition of two 8-bit numbers
echo   2. Subtraction of two 8-bit numbers  
echo   3. Multiplication of two 8-bit numbers
echo   4. Division of 16-bit by 8-bit number
echo   5. Addition of two 16-bit numbers
echo   6. Subtraction of two 16-bit numbers
echo   7. Multiplication of two 16-bit numbers
echo   8. Division of 32-bit by 16-bit number
echo   9. Addition of two 32-bit numbers
echo   10. Subtraction of two 32-bit numbers
echo.
echo EXPERIMENT 2 - Mathematical Operations (11-15):
echo   11. Square of a number
echo   12. Cube of a number
echo   13. Factorial of a number
echo   14. Logical AND operation
echo   15. Logical NOR operation
echo.
echo EXPERIMENT 3 - Array Operations (16-19):
echo   16. Sum of array numbers
echo   17. Average of numbers
echo   18. Sum of squares
echo   19. Sum of cubes
echo.
echo EXPERIMENT 4 - Array Processing (20-23):
echo   20. Largest number in array
echo   21. Smallest number in array
echo   22. Ascending order sort
echo   23. Descending order sort
echo.
echo EXPERIMENT 5 - String Operations (24-27):
echo   24. Move string data
echo   25. Reverse string
echo   26. Palindrome check
echo   27. String length
echo.
echo WAVEFORM GENERATORS:
echo   28. Square wave generator
echo   29. Triangular wave generator
echo   30. Staircase waveform generator
echo.
echo ===============================================
echo.
set /p choice="Enter program number (1-30) or 'exit' to quit: "

if /i "%choice%"=="exit" goto END
if "%choice%"=="" goto INVALID

:: Validate input
set valid=0
for /l %%i in (1,1,30) do (
    if "%choice%"=="%%i" set valid=1
)
if %valid%==0 goto INVALID

:: Display selected program
goto PROGRAM_%choice%

:INVALID
echo.
echo Invalid choice! Please enter a number between 1-30 or 'exit'.
pause
goto MAIN_MENU

:PROGRAM_1
cls
echo ===============================================
echo Program 1: Addition of two 8-bit numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 db 05h
echo num2 db 07h
echo result db ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo mov al,num1
echo mov bl,num2
echo add al,bl
echo mov result,al
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_2
cls
echo ===============================================
echo Program 2: Subtraction of two 8-bit numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 db 15h
echo num2 db 07h
echo result db ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo mov al,num1
echo mov bl,num2
echo sbb al,bl
echo mov result,al
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_3
cls
echo ===============================================
echo Program 3: Multiplication of two 8-bit numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 db 15h
echo num2 db 07h
echo result db ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo mov al,num1
echo mov bl,num2
echo mul bl
echo mov result,al
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_4
cls
echo ===============================================
echo Program 4: Division of 16-bit by 8-bit number
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 dw 5555h
echo num2 db 04h
echo result db ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo mov al,num1
echo mov bl,num2
echo div bl
echo mov result,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_5
cls
echo ===============================================
echo Program 5: Addition of two 16-bit numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 dw 4605h
echo num2 dw 1007h
echo result dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo mov ax,num1
echo mov bx,num2
echo add ax,bx
echo mov result,al
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_6
cls
echo ===============================================
echo Program 6: Subtraction of two 16-bit numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 dw 4605h
echo num2 dw 1007h
echo result dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo mov ax,num1
echo mov bx,num2
echo sbb ax,bx
echo mov result,al
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_7
cls
echo ===============================================
echo Program 7: Multiplication of two 16-bit numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo a dw 1234h
echo b dw 5678h
echo c dd ?
echo data ends
echo code segment
echo assume ds:data, cs:code
echo start:
echo mov ax,data
echo mov ds,ax
echo mov ax,a
echo mov bx,b
echo mul bx
echo mov word ptr c,ax
echo mov word ptr c+2,dx
echo int 3
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_8
cls
echo ===============================================
echo Program 8: Division of 32-bit by 16-bit number
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo Res dw ?
echo data ends
echo Assume cs:code,ds: data
echo Start: mov ax,2345h
echo mov dx,2334h
echo mov bx,2040h
echo div bx
echo mov res,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_9
cls
echo ===============================================
echo Program 9: Addition of two 32-bit numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo abc dd 12345678h
echo def dd 9ABCDEF0h
echo ghi dw ?
echo data ends
echo code segment
echo assume cs:code, ds:data
echo start:
echo mov ax,data
echo mov ds,ax
echo mov dl,00h
echo mov ax, word ptr abc
echo mov bx, word ptr def
echo add ax,bx
echo mov word ptr ghi,ax
echo mov ax, word ptr abc+2
echo mov bx, word ptr def+2
echo adc ax,bx
echo mov word ptr ghi+2,ax
echo jnc move
echo inc dl
echo move: mov byte ptr ghi+4,dl
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_10
cls
echo ===============================================
echo Program 10: Subtraction of two 32-bit numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo abc dd 9ABCDEF0h
echo def dd 12345678h
echo ghi dw ?
echo data ends
echo code segment
echo assume cs:code, ds:data
echo start:
echo mov ax,data
echo mov ds,ax
echo mov dl,00h
echo mov ax, word ptr abc
echo mov bx, word ptr def
echo sub ax,bx
echo mov word ptr ghi,ax
echo mov ax, word ptr abc+2
echo mov bx, word ptr def+2
echo sbb ax,bx
echo mov word ptr ghi+2,ax
echo jnc move
echo inc dl
echo move: mov byte ptr ghi+4,dl
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_11
cls
echo ===============================================
echo Program 11: Square of a number
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 dw 008H
echo res dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo mov ax,num1
echo mov bx,num1
echo mul bx
echo mov res, ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_12
cls
echo ===============================================
echo Program 12: Cube of a number
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 dw 008H
echo res dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo mov ax,num1
echo mov bx,num1
echo mul bx
echo mul bx
echo mov res, ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_13
cls
echo ===============================================
echo Program 13: Factorial of a number
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num dw 6h
echo res dw ?
echo data ends
echo code segment
echo assume cs:code,ds:data
echo start: mov ax,data
echo mov ds,ax
echo mov cx, num
echo mov ax,01h
echo fact: mul cx
echo dec cx
echo jnz fact
echo mov res,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_14
cls
echo ===============================================
echo Program 14: Logical AND operation
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 dw 2040h
echo num2 dw 4060h
echo res dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo mov ax,num1
echo mov bx,num2
echo and ax,bx
echo mov res,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_15
cls
echo ===============================================
echo Program 15: Logical NOR operation
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo num1 dw 2040h
echo num2 dw 4060h
echo res dw ?
echo data ends
echo Assume cs:code,ds:data
echo Code segment
echo start: mov ax,data
echo mov ds,ax
echo mov ax,num1
echo mov bx,num2
echo or ax,bx
echo not ax
echo mov res,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_16
cls
echo ===============================================
echo Program 16: Sum of array numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo string db 05h,06h,18h,20h,32h
echo count dw 4h
echo res dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo lea si, string
echo mov cx, count
echo mov al, [si]
echo repeatadd: inc si
echo mov bl,[si]
echo add al,bl
echo dec cx
echo jnz repeatadd
echo mov res,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_17
cls
echo ===============================================
echo Program 17: Average of numbers
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo string db 05h,06h,18h,20h,32h
echo count dw 4h
echo res dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo lea si,string
echo mov cx,count
echo mov al,[si]
echo repeatadd: inc si
echo mov bl,[si]
echo add al,bl
echo dec cx
echo jnz repeatadd
echo mov BL,05H
echo div BL
echo mov res,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_18
cls
echo ===============================================
echo Program 18: Sum of squares
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo string1 dw 05h,06h,18h,20h,32h
echo string2 dw ?
echo count1 db 05h
echo count2 db 04h
echo res dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo lea si,string1
echo mov cl,count1
echo lea di,string2
echo repeatmul: mov ax,[si]
echo mul ax
echo mov [di],ax
echo inc di
echo inc di
echo inc si
echo inc si
echo dec cl
echo jnz repeatmul
echo lea si,string2
echo mov ax,[si]
echo mov cl,04h
echo repeatadd: inc si
echo inc si
echo mov bx,[si]
echo add ax,bx
echo dec cl
echo jnz repeatadd
echo mov res,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_19
cls
echo ===============================================
echo Program 19: Sum of cubes
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo string1 dw 05h,06h,18h,20h,04h
echo string2 dw ?
echo count1 db 05h
echo count2 db 04h
echo res dw ?
echo data ends
echo Assume cs:code,ds:data
echo code segment
echo start: mov ax,data
echo mov ds,ax
echo xor ax,ax
echo xor bx,bx
echo lea si,string1
echo mov cl,count1
echo lea di,string2
echo repeatmul: mov ax,[si]
echo mov bx,ax
echo mul ax
echo mul bx
echo mov [di],ax
echo inc di
echo inc di
echo inc si
echo inc si
echo dec cl
echo jnz repeatmul
echo lea si,string2
echo mov ax,[si]
echo mov cl,04h
echo repeatadd:inc si
echo inc si
echo mov bx,[si]
echo add ax,bx
echo dec cl
echo jnz repeatadd
echo mov res,ax
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_20
cls
echo ===============================================
echo Program 20: Largest number in array
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo STRING1 DB 08h,14h,05h,0Fh,09h
echo res db ?
echo data ends
echo code segment
echo assume cs:code, ds:data
echo start: mov ax, data
echo mov ds, ax
echo mov cx, 04h
echo LEA SI, STRING1
echo mov bl, [si+1]
echo up:
echo mov al, [SI]
echo cmp al, bl
echo jc nxt
echo mov bl, al
echo nxt:
echo inc si
echo dec cx
echo jnz up
echo mov res,bl
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_21
cls
echo ===============================================
echo Program 21: Smallest number in array
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo STRING1 DB 08h,14h,05h,0Fh,09h
echo res db ?
echo data ends
echo code segment
echo assume cs:code, ds:data
echo start: mov ax, data
echo mov ds, ax
echo mov cx, 04h
echo mov bl, [si+1]
echo LEA SI, STRING1
echo up:
echo mov al, [SI]
echo cmp al, bl
echo jnc nxt
echo mov bl, al
echo nxt:
echo inc si
echo dec cx
echo jnz up
echo mov res,bl
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_22
cls
echo ===============================================
echo Program 22: Ascending order sort
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo string1 db 99h,12h,56h,45h,36h
echo data ends
echo code segment
echo assume cs:code,ds:data
echo start: mov ax,data
echo mov ds,ax
echo mov ch,04h
echo up2: mov cl,04h
echo lea si,string1
echo up1: mov al,[si]
echo mov bl,[si+1]
echo cmp al,bl
echo jc down
echo mov dl,[si+1]
echo xchg [si],dl
echo mov [si+1],dl
echo down: inc si
echo dec cl
echo jnz up1
echo dec ch
echo jnz up2
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_23
cls
echo ===============================================
echo Program 23: Descending order sort
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo string1 db 99h,12h,56h,45h,36h
echo data ends
echo code segment
echo assume cs:code,ds:data
echo start: mov ax,data
echo mov ds,ax
echo mov ch,04h
echo up2: mov cl,04h
echo lea si,string1
echo up1: mov al,[si]
echo mov bl,[si+1]
echo cmp al,bl
echo jnc down
echo mov dl,[si+1]
echo xchg [si],dl
echo mov [si+1],dl
echo down: inc si
echo dec cl
echo jnz up1
echo dec ch
echo jnz up2
echo int 3h
echo code ends
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_24
cls
echo ===============================================
echo Program 24: Move string data
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo STR1 DB 09H, "Admin",'$'
echo STR2 DB ?
echo ST1 DB 09H, "STR1:$"
echo ST2 DB 09H, "STR2:$"
echo LEN DB 0AH
echo data ends
echo code segment
echo assume cs:code,ds:data
echo START: MOV AX,DATA
echo MOV DS,AX
echo MOV ES,AX
echo LEA SI,STR1
echo LEA DI,STR2
echo LEA DX,ST1
echo MOV AH,09H
echo INT 21H
echo LEA DX,STR1
echo MOV AH,09H
echo INT 21H
echo LEA DX,ST2
echo MOV AH,09H
echo INT 21H
echo CLD
echo MOV CH,00H
echo MOV CL,LEN
echo REP MOVSB
echo LEA DX,STR2
echo MOV AH,09H
echo INT 21H
echo MOV AH,4CH
echo INT 21H
echo code ends
echo END START
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_25
cls
echo ===============================================
echo Program 25: Reverse string
echo ===============================================
echo.
type nul > temp_program.txt
(
echo DATA SEGMENT
echo STRINGA DB 'MICROPROCESSOR',0,0
echo STRINGB DB 0AH,0DH,"$",'50 DUP(0)',0AH,0DH,"$"
echo DATA ENDS
echo CODE SEGMENT
echo ASSUME CS:CODE, DS:DATA, ES:DATA
echo START: MOV AX,DATA
echo MOV DS,AX
echo MOV ES,AX
echo MOV BX,0000H
echo MOV CX,14
echo LEA SI,STRINGA
echo LEA DI,STRINGB+13
echo GOBACK: MOV AL,[SI]
echo MOV [DI],AL
echo INC SI
echo DEC DI
echo LOOP GOBACK
echo JZ AHEAD
echo MOV DX,SI
echo MOV AH,09
echo INT 21H
echo AHEAD: MOV DX,DI
echo MOV AH,09
echo INT 21H
echo INT 3H
echo CODE ENDS
echo END START
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_26
cls
echo ===============================================
echo Program 26: Palindrome check
echo ===============================================
echo.
type nul > temp_program.txt
(
echo DATA SEGMENT
echo BLOCK1 DB 'MALAYALAM'
echo MSG1 DB "IT IS PALINDROME $"
echo MSG2 DB "IT IS NOT PALINDROME $"
echo PAL DB 00H
echo DATA ENDS
echo PRINT MACRO MSG
echo MOV AH,09H
echo LEA DX,MSG
echo INT 21H
echo INT 3H
echo ENDM
echo EXTRA SEGMENT
echo BLOCK2 DB 9 DUP(?)
echo EXTRA ENDS
echo CODE SEGMENT
echo ASSUME CS:CODE,DS:DATA,ES:EXTRA
echo START: MOV AX,DATA
echo MOV DS,AX
echo MOV AX,EXTRA
echo MOV ES,AX
echo LEA SI,BLOCK1
echo LEA DI,BLOCK2+8
echo MOV CX,00009H
echo BACK: CLD
echo LODSB
echo STD
echo STOSB
echo LOOP BACK
echo LEA SI,BLOCK1
echo LEA DI,BLOCK2
echo MOV CX,0009H
echo CLD
echo REPZ CMPSB
echo JNZ SKIP
echo PRINT MSG1
echo SKIP: PRINT MSG2
echo CODE ENDS
echo END START
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_27
cls
echo ===============================================
echo Program 27: String length
echo ===============================================
echo.
type nul > temp_program.txt
(
echo DATA SEGMENT
echo STR1 DB 'STUDENT BOX OFFICE','$'
echo LENGTH DB ?
echo DATA ENDS
echo ASSUME CS : CODE, DS : DATA
echo CODE SEGMENT
echo START: MOV AX, DATA
echo MOV DS, AX
echo MOV AL, '$'
echo MOV CX, 00H
echo MOV SI, OFFSET STR1
echo BACK: CMP AL, [SI]
echo JE GO
echo INC CL
echo INC SI
echo JMP BACK
echo GO: MOV LENGTH, CL
echo int 3h
echo CODE ENDS
echo end start
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_28
cls
echo ===============================================
echo Program 28: Square wave generator
echo ===============================================
echo.
type nul > temp_program.txt
(
echo data segment
echo CONTROL EQU 0FFC6H
echo PORTA EQU 0FFC0H
echo PORTB EQU 0FFC2H
echo PORTC EQU 0FFC4H
echo Data ends
echo Code segment
echo Assume cs: code segment, ds:data segment
echo START:
echo MOV DX,CONTROL
echo MOV AL,80H
echo OUT DX,AL
echo UP: MOV DX,PORTB
echo MOV AL,00H
echo CALL OUTPUT
echo MOV AL,0FFH
echo CALL OUTPUT
echo JMP UP
echo OUTPUT:
echo OUT DX,AL
echo CALL DELAY
echo INT 21H
echo DELAY:
echo MOV CX,0FFH
echo LUP1: LOOP LUP1
echo INT 21H
echo code ends
echo END START
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_29
cls
echo ===============================================
echo Program 29: Triangular wave generator
echo ===============================================
echo.
type nul > temp_program.txt
(
echo MODEL SMALL
echo .STACK 100
echo .DATA
echo CONTROL EQU 0FFC6H
echo PORTA EQU 0FFC0H
echo PORTB EQU 0FFC2H
echo PORTC EQU 0FFC4H
echo .CODE
echo START:
echo MOV DX,CONTROL
echo MOV AL,80H
echo OUT DX,AL
echo BEGIN:
echo MOV DX,PORTB
echo MOV AL,00H
echo UP: CALL OUTPUT
echo INC AL
echo CMP AL,00H
echo JNZ UP
echo MOV AL,0FFH
echo UP1: CALL OUTPUT
echo DEC AL
echo CMP AL,0FFH
echo JNZ UP1
echo JMP BEGIN
echo OUTPUT:
echo OUT DX,AL
echo CALL DELAY
echo INT 21H
echo DELAY:
echo MOV CX,07H
echo LUP1:LOOP LUP1
echo INT 21H
echo END START
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:PROGRAM_30
cls
echo ===============================================
echo Program 30: Staircase waveform generator
echo ===============================================
echo.
type nul > temp_program.txt
(
echo MODEL SMALL
echo .STACK 100
echo .DATA
echo CONTROL EQU 0FFC6H
echo PORTA EQU 0FFC0H
echo PORTB EQU 0FFC2H
echo PORTC EQU 0FFC4H
echo .CODE
echo START:
echo MOV DX,CONTROL
echo MOV AL,80H
echo OUT DX,AL
echo UP: MOV DX,PORTB
echo MOV AL,00H
echo CALL OUTPUT
echo MOV AL,0FFH
echo CALL OUTPUT
echo MOV AL,07FH
echo CALL OUTPUT
echo JMP UP
echo OUTPUT: OUT DX,AL
echo MOV CX,FFH
echo DELAY: LOOP DELAY
echo INT 03H
echo END START
) > temp_program.txt
type temp_program.txt
del temp_program.txt
goto CONTINUE

:CONTINUE
echo.
echo ===============================================
echo.
set /p next="Press 'M' for main menu or 'E' to exit: "
if /i "%next%"=="M" goto MAIN_MENU
if /i "%next%"=="E" goto END
goto CONTINUE

:END
cls
echo.
echo Thank you for using Assembly Language Program Viewer!
echo.
pause
exit