SECTION .data
    msg1 db '       _    _        ', 0xA
    msg2 db '     //**\_/**\\     ', 0xA
    msg3 db '    //         \\    ', 0xA
    msg4 db '   //           \\   ', 0xA
    msg5 db '   \\           //   ', 0xA
    msg6 db '    \\         //    ', 0xA
    msg7 db '     \\       //     ', 0xA
    msg8 db '       \\    //      ', 0xA
    msg9 db '         \\//        ', 0xA
    msg10 db 'RESPECT YOUR PARENTS ', 0xA

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

; =======>> 2
    mov ebx, msg2    
    mov eax, ebx    

nextchar2:
    cmp byte[eax], 0      
    jz  finished2          
    inc eax               
    jmp nextchar2


finished2:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg2   
    mov ebx, 1
    mov eax, 4
    int 80h

 
; =======>>3
    mov ebx, msg3    
    mov eax, ebx    

nextchar3:
    cmp byte[eax], 0      
    jz  finished3          
    inc eax               
    jmp nextchar3


finished3:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg3   
    mov ebx, 1
    mov eax, 4
    int 80h


;=======>>4
    mov ebx, msg4    
    mov eax, ebx    

nextchar4:
    cmp byte[eax], 0      
    jz  finished4          
    inc eax               
    jmp nextchar4


finished4:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg4   
    mov ebx, 1
    mov eax, 4
    int 80h

;=======>>5
    mov ebx, msg5    
    mov eax, ebx    

nextchar5:
    cmp byte[eax], 0      
    jz  finished5          
    inc eax               
    jmp nextchar5


finished5:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg5   
    mov ebx, 1
    mov eax, 4
    int 80h


;=======>>6
    mov ebx, msg6    
    mov eax, ebx    

nextchar6:
    cmp byte[eax], 0      
    jz  finished6          
    inc eax               
    jmp nextchar6


finished6:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg6   
    mov ebx, 1
    mov eax, 4
    int 80h


;=======>>7
    mov ebx, msg7    
    mov eax, ebx    

nextchar7:
    cmp byte[eax], 0      
    jz  finished7          
    inc eax               
    jmp nextchar7


finished7:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg7   
    mov ebx, 1
    mov eax, 4
    int 80h


;=======>>8
    mov ebx, msg8    
    mov eax, ebx    

nextchar8:
    cmp byte[eax], 0      
    jz  finished8          
    inc eax               
    jmp nextchar8


finished8:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg8   
    mov ebx, 1
    mov eax, 4
    int 80h


;=======>>9
    mov ebx, msg9    
    mov eax, ebx    

nextchar9:
    cmp byte[eax], 0      
    jz  finished9          
    inc eax               
    jmp nextchar9


finished9:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg9   
    mov ebx, 1
    mov eax, 4
    int 80h


;=======>>10
    mov ebx, msg10    
    mov eax, ebx    

nextchar10:
    cmp byte[eax], 0      
    jz  finished10          
    inc eax               
    jmp nextchar10


finished10:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg10   
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0
    mov eax, 1
    int 80h





    ; nasm -f elf asciiArt-calculatingLength.asm
    ; ld -m elf_i386 asciiArt-calculatingLength.o -o asciiArt-calculatingLength
    ; ./asciiArt-calculatingLength