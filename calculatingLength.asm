    ; nasm -f elf calculatingLength.asm
    ; ld -m elf_i386 calculatingLength.o -o calculatingLength
    ; ./calculatingLength

    ; to calculate the length of the string - we will use a "pointer arithmetic" technique. EAX for each character
    ; "Hello!" 
    ; EAX : H, then increment by 1
    ; EAX : e, + 1
    ; EAX : l, + 1
    ; EAX : l, + 1
    ; EAX : o, + 1
    ; EAX : !, + 1
    ; EAX : 0
    ; EAX = 6
    ; mov edx, eax instead mov edx, 6


SECTION .data
    msg db 'Hello!', 0xA
    msg2 db 'World', 0xA

SECTION .text
    global _start

_start:
    ;jmp lenmsg1


;lenmsg1:
    mov ebx, msg    ; move the address of our message string into ebx | EBX = 1001
    mov eax, ebx    ; move the address in EBX into EAX as well ( both now point to the same segment in memory) | EAX = 1001


nextChar:
    cmp byte[eax], 0 ;compare the byte pointer to by EAX at this address against zero ( Zero is an end of string delimeter)
    jz finished      ; jump (if the zero flagged has been set) to the point in the code labeled
    inc eax          ; increment the address in EAX by on byte 
    jmp nextChar     ; jump to the point in the code labeled as nextChar

; eax = 1001, 1002, 1003, 1004, 1005, 1006, 1007


finished:
    sub eax, ebx    ; eax = eax - ebx : eax = 1007 - 1001 = 6

    mov edx, eax 
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 80h

; label for msg2
    mov ebx, msg2    ; move the address of our message string into ebx | EBX = 1001
    mov eax, ebx    ; move the address in EBX into EAX as well ( both now point to the same segment in memory) | EAX = 1001

nextChar2:
    cmp byte[eax], 0 ;compare the byte pointer to by EAX at this address against zero ( Zero is an end of string delimeter)
    jz finished2      ; jump (if the zero flagged has been set) to the point in the code labeled
    inc eax          ; increment the address in EAX by on byte 
    jmp nextChar2     ; jump to the point in the code labeled as nextChar

finished2:
    sub eax, ebx    ; eax = eax - ebx : eax = 1007 - 1001 = 6


    mov edx, eax 
    mov ecx, msg2
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h










; cmp byte[eax], 0
; | H | e | l | l | o | ! | end of the string
; | 72 | 101 | 108 | 108 | 111 | 33 | 0
; address | 1001 | 1002 | 1003 | 1005 | 1006 | 1007 : human readable - an example
; eax = 1001
; byte[eax] = 72

; ==== notes ====

; 0 base 10 -> 0000 0000 base 2 in a byte
; ax - accumulater, bx - base, cx - counter , dx - data
; ax - accumulater register - size of 2 bytes -  16-bits - 0000 0000 0000 0000
; mov ax, 1; 0000 0000 0000 0001
; is also equivalent to 
; mov ah, 0
; mov al, 1
;-----------------------------------
; mov bx, 34 ; 0000 0000 0010 0010
; is al equivalent to
; mov bh, 0
; mov bl, 34
; ------------------------
; extended registers: eax, ebx, edx,
; 0000 0000 0000 0000 0000 0000 0000 0000 -> 32 bits = 4,294,967,296 patterns
; mov ebx, 0
; is also equivalent to
; mov bh, 0
; mov bl, 0