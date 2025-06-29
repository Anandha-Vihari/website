<?php
// Assembly Program Viewer with all 27 programs
$programs = [
    1 => [
        'title' => 'Add two 8-bit numbers',
        'code' => 'data segment  
    num1 db 05h  
    num2 db 07h  
    result db ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    xor ax,ax  
    xor bx,bx  
    mov al,num1  
    mov bl,num2  
    add al,bl  
    mov result,al  
    int 3h  
code ends  
end start'
    ],
    2 => [
        'title' => 'Subtract two 8-bit numbers',
        'code' => 'data segment  
    num1 db 15h  
    num2 db 07h  
    result db ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    xor ax,ax  
    xor bx,bx  
    mov al,num1  
    mov bl,num2  
    sbb al,bl  
    mov result,al  
    int 3h  
code ends  
end start'
    ],
    3 => [
        'title' => 'Multiply two 8-bit numbers',
        'code' => 'data segment  
    num1 db 15h  
    num2 db 07h  
    result db ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    xor ax,ax  
    xor bx,bx  
    mov al,num1  
    mov bl,num2  
    mul bl  
    mov result,al  
    int 3h  
code ends  
end start'
    ],
    4 => [
        'title' => 'Divide 16-bit by 8-bit number',
        'code' => 'data segment  
    num1 dw 5555h  
    num2 db 04h  
    result db ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    xor ax,ax  
    xor bx,bx  
    mov al,num1  
    mov bl,num2  
    div bl  
    mov result,ax  
    int 3h  
code ends  
end start'
    ],
    5 => [
        'title' => 'Add two 16-bit numbers',
        'code' => 'data segment  
    num1 dw 4605h  
    num2 dw 1007h  
    result dw ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    xor ax,ax  
    xor bx,bx  
    mov ax,num1  
    mov bx,num2  
    add ax,bx  
    mov result,al  
    int 3h  
code ends  
end start'
    ],
    6 => [
        'title' => 'Subtract two 16-bit numbers',
        'code' => 'data segment  
    num1 dw 4605h  
    num2 dw 1007h  
    result dw ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    xor ax,ax  
    xor bx,bx  
    mov ax,num1  
    mov bx,num2  
    sbb ax,bx  
    mov result,al  
    int 3h  
code ends  
end start'
    ],
    7 => [
        'title' => 'Multiply two 16-bit numbers',
        'code' => 'data segment
a dw 1234h
b dw 5678h
c dd ?
data ends
code segment
assume ds:data, cs:code
start:
mov ax,data
mov ds,ax
mov ax,a
mov bx,b
mul bx
mov word ptr c,ax
mov word ptr c+2,dx
int 3
code ends
end start'
    ],
    8 => [
        'title' => 'Divide 32-bit by 16-bit number',
        'code' => 'data segment 
Res dw ?
data ends 
Assume cs:code,ds: data 
Start: mov ax,2345h 
mov dx,2334h 
mov bx,2040h 
div bx 
mov res,ax 
int 3h 
code ends 
end start'
    ],
    9 => [
        'title' => 'Add two 32-bit numbers',
        'code' => 'data segment 
abc dd 12345678h 
def dd 9ABCDEF0h 
ghi dw ?
data ends 
code segment 
assume cs:code, ds:data 
start: mov ax,data 
mov ds,ax
mov dl,00h
mov ax, word ptr abc
mov bx, word ptr def
add ax,bx
mov word ptr ghi,ax
mov ax, word ptr abc+2
mov bx, word ptr def+2
adc ax,bx
mov word ptr ghi+2,ax
jnc move
inc dl
move: mov byte ptr ghi+4,dl
int 3h
code ends
end start'
    ],
    10 => [
        'title' => 'Subtract two 32-bit numbers',
        'code' => 'data segment
abc dd 9ABCDEF0h
def dd 12345678h
ghi dw ?
data ends

code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax
mov dl,00h
mov ax, word ptr abc
mov bx, word ptr def
sub ax,bx
mov word ptr ghi,ax
mov ax, word ptr abc+2
mov bx, word ptr def+2
sbb ax,bx
mov word ptr ghi+2,ax
jnc move
inc dl
move: mov byte ptr ghi+4,dl
int 3h
code ends
end start'
    ],
    11 => [
        'title' => 'Find square of a number',
        'code' => 'data segment  
num1 dw 008H  
res dw ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    mov ax,num1  
    mov bx,num1  
    mul bx  
    mov res, ax  
    int 3h  
code ends  
end start'
    ],
    12 => [
        'title' => 'Find cube of a number',
        'code' => 'data segment  
num1 dw 008H  
res dw ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    mov ax,num1  
    mov bx,num1  
    mul bx  
    mul bx  
    mov res, ax  
    int 3h  
code ends  
end start'
    ],
    13 => [
        'title' => 'Find factorial of a number',
        'code' => 'data segment  
num dw 6h  
res dw ?  
data ends  
code segment  
    assume cs:code,ds:data  
start: mov ax,data  
    mov ds,ax  
    mov cx, num  
    mov ax,01h  
fact: mul cx  
    dec cx  
    jnz fact  
    mov res,ax  
    int 3h  
code ends'
    ],
    14 => [
        'title' => 'Logical AND operation',
        'code' => 'data segment  
num1 dw 2040h  
    num2 dw 4060h  
    res dw ?  
    data ends  
    Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    mov ax,num1  
    mov bx,num2  
    and ax,bx  
    mov res,ax  
    int 3h  
code ends  
end start'
    ],
    15 => [
        'title' => 'Logical NOR operation',
        'code' => 'data segment  
num1 dw 2040h  
    num2 dw 4060h
res dw ?
data ends
Assume cs:code,ds:data
Code segment
start: mov ax,data
    mov ds,ax
    mov ax,num1
    mov bx,num2
    or ax,bx
    not ax
    mov res,ax
    int 3h
code ends
end start'
    ],
    16 => [
        'title' => 'Sum of array elements',
        'code' => 'data segment
    string db 05h,06h,18h,20h,32h
    count dw 4h
    res dw ?
data ends
Assume cs:code,ds:data
code segment
start: mov ax,data
    mov ds,ax
    xor ax,ax
    xor bx,bx
    lea si, string
    mov cx, count
    mov al, [si]
repeatadd: inc si
    mov bl,[si]
    add al,bl
    dec cx
    jnz repeatedd
    mov res,ax
    int 3h
code ends
end start'
    ],
    17 => [
        'title' => 'Average of numbers',
        'code' => 'data segment  
    string db 05h,06h,18h,20h,32h  
    count dw 4h  
    res dw ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    xor ax,ax  
    xor bx,bx  
    lea si,string  
    mov cx,count  
    mov al,[si]  
repeatadd: inc si  
    mov bl,[si]  
    add al,bl  
    dec cx  
    jnz repeatedd  
    mov BL,05H  
    div BL  
    mov res,ax  
    int 3h  
    code ends  
    end start'
    ],
    18 => [
        'title' => 'Sum of squares of numbers',
        'code' => 'data segment  
    string1 dw 05h,06h,18h,20h,32h  
    string2 dw ?  
    count1 db 05h  
    count2 db 04h  
    res dw ?  
data ends  
Assume cs:code,ds:data  
code segment  
start: mov ax,data  
    mov ds,ax  
    xor ax,ax  
xor bx,bx
lea si,string1
mov cl,count1
lea di,string2

repeatmul: mov ax,[si]
    mul ax
    mov [di],ax
    inc di
    inc di
    inc si
    inc si
    dec cl
    jnz repeatmul
    lea si,string2
    mov ax,[si]
    mov cl,04h

repeatadd: inc si
    inc si
    mov bx,[si]
    add ax,bx
    dec cl
    jnz repeatadd
    mov res,ax
    int 3h
    code ends
    end start'
    ],
    19 => [
        'title' => 'Sum of cubes of numbers',
        'code' => 'data segment
    string1 dw 05h,06h,18h,20h,04h
    string2 dw ?
    count1 db 05h
    count2 db 04h
    res dw ?
data ends
Assume cs:code,ds:data
code segment
start: mov ax,data
    mov ds,ax
    xor ax,ax
    xor bx,bx
lea si,string1
    mov cl,count1
    lea di,string2
repeatmul: mov ax,[si]
    mov bx,ax
    mul ax
    mul bx
    mov [di],ax
    inc di
    inc di
    inc si
    inc si
    dec cl
    jnz repeatmul
    lea si,string2
    mov ax,[si]
    mov cl,04h
repeatadd:inc si
    inc si
    mov bx,[si]
    add ax,bx
    dec cl
    jnz repeatadd
    mov res,ax
    int 3h
    code ends
    end start'
    ],
    20 => [
        'title' => 'Find largest number in array',
        'code' => 'data segment
STRING1 DB 08h,14h,05h,0Fh,09h
res db ?
data ends
code segment
assume cs:code, ds:data
start: mov ax, data
mov ds, ax
mov cx, 04h
LEA SI, STRING1
mov bl, [si+1]
up:
mov al, [SI]
cmp al, bl
jc nxt
mov bl, al

nxt:
    inc si
    dec cx
    jnz up
mov res,bl
int 3h
code ends
end start'
    ],
    21 => [
        'title' => 'Find smallest number in array',
        'code' => 'data segment
STRING1 DB 08h,14h,05h,0Fh,09h
res db ?
data ends
    code segment
assume cs:code, ds:data
start: mov ax, data
mov ds, ax
mov cx, 04h
mov bl, [si+1]
LEA SI, STRING1
up:
    mov al, [SI]
    cmp al, bl
    jnc nxt
    mov bl, al

nxt:
    inc si
    dec cx
    jnz up
mov res,bl
int 3h
code ends
end start'
    ],
    22 => [
        'title' => 'Sort array in ascending order',
        'code' => 'data segment

string1 db 99h,12h,56h,45h,36h
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
    mov ds,ax
    mov ch,04h

up2: mov cl,04h

    lea si,string1

    up1: mov al,[si]
    mov bl,[si+1]
    cmp al,bl
    jc down
    mov dl,[si+1]
    xchg [si],dl
    mov [si+1],dl
    down: inc si
    dec cl
    jnz up1
    dec ch
    jnz up2
    int 3h
    code ends
    end start'
    ],
    23 => [
        'title' => 'Sort array in descending order',
        'code' => 'data segment
string1 db 99h,12h,56h,45h,36h
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
    mov ds,ax
    mov ch,04h
    up2: mov cl,04h
    lea si,string1
up1: mov al,[si]
    mov bl,[si+1]
    cmp al,bl
    jnc down
    mov dl,[si+1]
    xchg [si],dl
    mov [si+1],dl

down: inc si
    dec cl
    jnz up1
    dec ch
    jnz up2
    int 3h
    code ends
    end start'
    ],
    24 => [
        'title' => 'Move string to another location',
        'code' => 'data segment  
STR1 DB 09H, "Admin",$\' ; STR1 is the given string to be transferred  
STR2 DB ? ; STR2 is the location for the transfer  
ST1 DB 09H, "STR1:$" ; To display STR1:  
ST2 DB 09H, "STR2:$" ; To display STR2:  
LEN DB 0AH ; Length of the String is loaded Here  
Assume: cs code segment, ds data segment  
code segment  
START: MOV AX,@DATA  
    MOV DS,AX  
    MOV ES,AX  
    LEA SI,STR1 ; Location of STR1 is loaded to SI  
    LEA DI,STR2 ; Location of STR2 is loaded to DI  

;To display STR1:  
    LEA DX,ST1  
    MOV AH,09H  
    INT 21H  

;To display contents of STR1  
    LEA DX,STR1  
    MOV AH,09H  
    INT 21H  

;To display STR2:  
    LEA DX,ST2  
    MOV AH,09H  
    INT 21H  

;Transferring Part  
    CLD ; Clear the contents of Direction Flag  
    MOV CH,00H ; Since CX should be 00xx  
    MOV CL,LEN  
    REP MOVSB ; Repeat the transfer until CL=0  

;To display the transferred contents of STR1 to STR2  
    LEA DX,STR2  
    MOV AH,09H  
    INT 21H  

;Program Termination  
    MOV AH,4CH  
    INT 21H  
    END START'
    ],
    25 => [
        'title' => 'Reverse a string',
        'code' => 'DATA SEGMENT  
STRINGA DB \'MICROPROCESSOR\',0,0  
STRINGB DB 0AH,0DH,"$","50 DUP(0)\',0AH,0DH,"$"  

DATA ENDS  
CODE SEGMENT  
ASSUME CS:CODE, DS:DATA, ES:DATA  
START: MOV AX,DATA  
    MOV DS,AX  
    MOV ES,AX  
    MOV BX,0000H  
    MOV CX,14  
    LEA SI,STRINGA  
    LEA DI,STRINGB+13  
GOBACK: MOV AL,[SI]  
    MOV [DI],AL  
    INC SI  
    DEC DI  
    LOOP GOBACK  
    JZ AHEAD  
    MOV DX,SI  
    MOV AH,09  
    INT 21H  
AHEAD: MOV DX,DI  
    MOV AH,09  
    INT 21H  
    INT 3H  
CODE ENDS  
END START'
    ],
    26 => [
        'title' => 'Check for palindrome',
        'code' => 'DATA SEGMENT  
BLOCK1 DB \'MALAYALAM\'  
MSG1 DB "IT IS PALINDROME $"  
MSG2 DB "IT IS NOT PALINDROME $"  
PAL DB 00H  
DATA ENDS  
PRINT MACRO MSG  
MOV AH,09H  
LEA DX,MSG  
INT 21H  
INT 3H
ENDM

EXTRA SEGMENT

BLOCK2 DB 9 DUP(?)

EXTRA ENDS

CODE SEGMENT

ASSUME CS:CODE,DS:DATA,ES:EXTRA

START: MOV AX,DATA

MOV DS,AX

MOV AX,EXTRA

MOV ES,AX

LEA SI,BLOCK1

LEA DI,BLOCK2+8

MOV CX,00009H

BACK: CLD

LODSB

STD

STOSB

LOOP BACK

LEA SI,BLOCK1

LEA DI,BLOCK2

MOV CX,0009H

CLD

REPZ CMPSB

JNZ SKIP

PRINT MSG1

SKIP: PRINT MSG2

CODE ENDS

END START'
    ],
    27 => [
        'title' => 'Find string length',
        'code' => 'DATA SEGMENT

STR1 DB \'STUDENT BOX OFFICE\',$\'

LENGTH DB ?

DATA ENDS

ASSUME CS : CODE, DS : DATA

CODE SEGMENT

START: MOV AX, DATA

MOV DS, AX

MOV AL, \'$\'

MOV CX, 00H

MOV SI, OFFSET STR1

BACK: CMP AL, [SI]

JE GO

INC CL

INC SI

JMP BACK

G0: MOV LENGTH, CL
int 3h
CODE ENDS
end start'
    ]
];

// Handle selection
$selected = isset($_GET['program']) ? (int)$_GET['program'] : 0;

// Display the selected program or the menu
if ($selected && isset($programs[$selected])) {
    $program = $programs[$selected];
    echo "<h1>Program {$selected}: {$program['title']}</h1>";
    echo "<pre>{$program['code']}</pre>";
    echo "<p><a href='?'>Back to menu</a></p>";
} else {
    echo "<h1>Assembly Language Programs</h1>";
    echo "<p>Select a program to view:</p>";
    echo "<ol>";
    foreach ($programs as $num => $prog) {
        echo "<li><a href='?program=$num'>{$prog['title']}</a></li>";
    }
    echo "</ol>";
}
?>

<style>
body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    margin: 20px;
    background-color: #f5f5f5;
}
pre {
    background-color: #f0f0f0;
    padding: 15px;
    border-radius: 5px;
    overflow-x: auto;
    white-space: pre-wrap;
    word-wrap: break-word;
}
h1 {
    color: #2c3e50;
}
a {
    color: #3498db;
    text-decoration: none;
}
a:hover {
    text-decoration: underline;
}
ol {
    column-count: 2;
    column-gap: 20px;
}
@media (max-width: 768px) {
    ol {
        column-count: 1;
    }
}
</style>