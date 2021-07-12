SECTION .data
    msg1 db '          ___     ___    ', 0xA, 0xD
    msg2 db '         /   \~~~/   \   ', 0xA, 0xD
    msg3 db '   ,----(      ..     )  ', 0xA, 0xD
    msg4 db '  /      \__        __/  ', 0xA, 0xD
    msg5 db ' /|         (\     |)    ', 0xA, 0xD
    msg6 db '^ \   /___\  /\    |     ', 0xA, 0xD
    msg7 db '   |__|   \__/ """"      ', 0xA, 0xD
    msg8 db '   WHEN ELEPHANT FIGHTS, ', 0xA, 0xD
    msg9 db 'IT IS THE GRASS THAT SUFFERS', 0xA, 0xD
    msg10 db '                         ', 0xA, 0xD
SECTION .text
    global _start

_start:
    
    mov edx, 27
    mov ecx, msg1
    mov ebx, 1
    mov eax, 4
    int 80h

    mov edx, 27
    mov ecx, msg2
    mov ebx, 1
    mov eax, 4
    int 80h
    
    mov edx, 27
    mov ecx, msg3
    mov ebx, 1
    mov eax, 4
    int 80h

    mov edx, 27
    mov ecx, msg4
    mov ebx, 1
    mov eax, 4
    int 80h

    mov edx, 27
    mov ecx, msg5
    mov ebx, 1
    mov eax, 4
    int 80h

    mov edx, 27
    mov ecx, msg6
    mov ebx, 1
    mov eax, 4
    int 80h

    mov edx, 27
    mov ecx, msg7
    mov ebx, 1
    mov eax, 4
    int 80h

    mov edx, 27
    mov ecx, msg8
    mov ebx, 1
    mov eax, 4
    int 80h

    mov edx, 30
    mov ecx, msg9
    mov ebx, 1
    mov eax, 4
    int 80h

    mov edx, 27
    mov ecx, msg10
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h


    ; nasm -f elf ascii.asm
    ; ld -m elf_i386 ascii.o -o ascii
    ; ./ascii