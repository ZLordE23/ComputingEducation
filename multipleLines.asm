SECTION .data
    msg1 db `          ___     ___     \n         /   \\~~~/   \\   \n   ,----(      ..     )  \n  /      \\__        __/  \n /|         (\\     |)    \n^ \\   /___\\  /\\    |     \n   |__|   \\__/ """"      \n`, 0xA, 0xD
    
SECTION .text
    global _start

_start:
    mov ebx, msg1    
    mov eax, ebx    

nextchar:
    cmp byte[eax], 0      
    jz  finished          
    inc eax               
    jmp nextchar


finished:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg1   
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0      
    mov eax, 1 
    int 80h

    ; nasm -f elf multipleLines.asm
    ; ld -m elf_i386 multipleLines.o -o multipleLines
    ; ./multipleLines