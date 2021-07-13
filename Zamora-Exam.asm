;ASCII - ASM

SECTION .data
    topBorder db '╔══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══╡˚✧✬✧˚╞══✩✬══✩✬══✩✬══✩✬══✩✬══✬✩══✬✩══✬✩══✬✩══✬✩══╗', 0xA
    topSpace1 db '║                                                                                           ║', 0xA
    topSpace2 db '║                                                                                           ║', 0xA
    topSpace3 db '║                                                                                           ║', 0xA
    msg1 db '║                                                        ██████                             ║', 0xA
    msg2 db '║                                             ▓▓▓▓    █████████                             ║', 0xA
    msg3 db '║                                       Ƹ̵̡Ӝ̵̨̄Ʒ▓▓▓▓▓=▓    ▓=▓▓▓▓▓                               ║', 0xA
    msg4 db '║                                       ▓▓▓_▓▓▓▓░●    ●░░▓▓▓▓                               ║', 0xA
    msg5 db '║                                     ▓▓▓▓_▓▓▓▓▓░░  ░░░░▓▓▓▓                                ║', 0xA
    msg6 db '║                                      ▓▓▓▓ ▓▓▓▓░░♥  ♥░░░▓▓▓                                ║', 0xA ;test
    msg7 db '║                                       ▓▓▓   ▓▓░░     ░░░▓▓                                ║', 0xA
    msg8 db '║  ▀█║            ▄▄            ▄  ▄   ▓▓▓▓▓    ▓░░     ░░▓                                 ║', 0xA
    msg9 db '║  █║       ▄ ▄ █▄▄█║      ▄▄  ​█║ █║     ▓▓     ▒▓▒▓▒    ████                               ║', 0xA    
    msg10 db '║ █║   ▄▄  █║█║█║ ▄║▄  ▄║█║ █║​█║▄█║         ▒▓▒▓▒▓▒  ██████                                 ║', 0xA
    msg11 db '║ █║  █║ █║█║█║ ▀▀  █║ █║█║ █║ ▀ ▀         ▒▓▒▓▒▓▒ ████████                                 ║', 0xA
    msg12 db '║ █║▄║█║ █║ ▀       █║▄█║ ▀▀              ▒▓▒▓▒▓▒ ██████ ███                                ║', 0xA
    msg13 db '║ ▀▀▀  ▀▀            ▀ █║                ▒▓▒▓▒▓▒  ██████  ███                               ║', 0xA
    msg14 db '║      ▄▄ ▄▄▀▀▄▀▀▄  ▀▄▄▀             ▓▓X▓▓▓▓▓▓▓  ██████  ███                                ║', 0xA
    msg15 db '║     ███████   ▄▀                  ▓▓ ██████▓▓  ██████  ███                                ║', 0xA
    msg16 db '║     ▀█████▀▀▄▀                    ▓ ███████▓▓  ██████  ███                                ║', 0xA
    msg17 db '║       ▀█▀                          ████████▓▓  ██████  ███                                ║', 0xA
    msg18 db '║                                    ████████▓▓  ▓▓▓▓▓▓ ▒▒                                  ║', 0xA
    msg19 db '║                                    ████████▓▓  ▓▓▓▓▓▓                                     ║', 0xA
    msg20 db '║                                    ████████▓▓  ▓▓▓▓▓▓                                     ║', 0xA
    msg21 db '║                                     ████████▓   ▓▓▓▓▓▓                                    ║', 0xA
    msg22 db '║                                          ▒▒▒▒▒    ▓▓▓▓▓▓                                  ║', 0xA
    msg23 db '║                                          ▒▒▒▒▒      ▓▓▓▓▓                                 ║', 0xA
    msg24 db '║                                          ▒▒▒▒▒      ▓▓▓▓▓                                 ║', 0xA
    msg25 db '║                                          ▒▒▒▒▒      ▓▓▓▓▓                                 ║', 0xA
    msg26 db '║                                           ▒▒▒▒▒      ▓▓▓▓                                 ║', 0xA
    msg27 db '║                                           █████    █████                                  ║', 0xA
    quotesL1 db '║                                  “I saw that you were perfect,                            ║', 0xA
    quotesL2 db '║                                       and so I loved you.                                 ║', 0xA
    quotesL3 db '║                              Then I saw that you were not perfect                         ║', 0xA
    quotesL4 db '║                                  and I loved you even more.”                              ║', 0xA
    quotesL5 db '║                                        – Angelita Lim                                     ║', 0xA 
    bottomBorder db '╚══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══╡˚✧✬✧˚╞══✩✬══✩✬══✩✬══✩✬══✩✬══✬✩══✬✩══✬✩══✬✩══✬✩══╝', 0xA


SECTION .text
    global _start

_start:


; Top Border

    mov ebx, topBorder    
    mov eax, ebx    

nextcharTop:
    cmp byte[eax], 0      
    jz  finishedTop          
    inc eax               
    jmp nextcharTop


finishedTop:
    sub eax, ebx

    mov edx, eax    
    mov ecx, topBorder   
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0      
    mov eax, 1 
    int 80h  

; Bottom Border

    mov ebx, bottomBorder    
    mov eax, ebx    

nextcharBottom:
    cmp byte[eax], 0      
    jz  finishedBottom          
    inc eax               
    jmp nextcharBottom


finishedBottom:
    sub eax, ebx

    mov edx, eax    
    mov ecx, bottomBorder   
    mov ebx, 1
    mov eax, 4
    int 80h

; Top Space - 1

    mov ebx, topSpace1    
    mov eax, ebx    

nextcharSpaceTop1:
    cmp byte[eax], 0      
    jz  finishedSpaceTop1          
    inc eax               
    jmp nextcharSpaceTop1


finishedSpaceTop1:
    sub eax, ebx

    mov edx, eax    
    mov ecx, topSpace1   
    mov ebx, 1
    mov eax, 4
    int 80h

; Top Space - 2

    mov ebx, topSpace2    
    mov eax, ebx    

nextcharSpaceTop2:
    cmp byte[eax], 0      
    jz  finishedSpaceTop2         
    inc eax               
    jmp nextcharSpaceTop2


finishedSpaceTop2:
    sub eax, ebx

    mov edx, eax    
    mov ecx, topSpace1   
    mov ebx, 1
    mov eax, 4
    int 80h

; Top Space - 3

    mov ebx, topSpace1    
    mov eax, ebx    

nextcharSpaceTop3:
    cmp byte[eax], 0      
    jz  finishedSpaceTop3          
    inc eax               
    jmp nextcharSpaceTop3


finishedSpaceTop3:
    sub eax, ebx

    mov edx, eax    
    mov ecx, topSpace1   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 1

    mov ebx, msg1    
    mov eax, ebx    

nextcharLine1:
    cmp byte[eax], 0      
    jz  finishedLine1          
    inc eax               
    jmp nextcharLine1


finishedLine1:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg1   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 2

    mov ebx, msg2   
    mov eax, ebx    

nextcharLine2:
    cmp byte[eax], 0      
    jz  finishedLine2          
    inc eax               
    jmp nextcharLine2


finishedLine2:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg2   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 3

    mov ebx, msg3  
    mov eax, ebx    

nextcharLine3:
    cmp byte[eax], 0      
    jz  finishedLine3          
    inc eax               
    jmp nextcharLine3


finishedLine3:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg3   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 4

    mov ebx, msg4  
    mov eax, ebx    

nextcharLine4:
    cmp byte[eax], 0      
    jz  finishedLine4          
    inc eax               
    jmp nextcharLine4


finishedLine4:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg4   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 5

    mov ebx, msg5  
    mov eax, ebx    

nextcharLine5:
    cmp byte[eax], 0      
    jz  finishedLine5          
    inc eax               
    jmp nextcharLine5


finishedLine5:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg5   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 6

    mov ebx, msg6  
    mov eax, ebx    

nextcharLine6:
    cmp byte[eax], 0      
    jz  finishedLine6          
    inc eax               
    jmp nextcharLine6


finishedLine6:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg6   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 7

    mov ebx, msg7  
    mov eax, ebx    

nextcharLine7:
    cmp byte[eax], 0      
    jz  finishedLine7          
    inc eax               
    jmp nextcharLine7


finishedLine7:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg7   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 8

    mov ebx, msg8  
    mov eax, ebx    

nextcharLine8:
    cmp byte[eax], 0      
    jz  finishedLine8          
    inc eax               
    jmp nextcharLine8


finishedLine8:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg8   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 9

    mov ebx, msg9  
    mov eax, ebx    

nextcharLine9:
    cmp byte[eax], 0      
    jz  finishedLine9          
    inc eax               
    jmp nextcharLine9


finishedLine9:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg9   
    mov ebx, 1
    mov eax, 4
    int 80h


; Line -> 10

    mov ebx, msg10  
    mov eax, ebx    

nextcharLine10:
    cmp byte[eax], 0      
    jz  finishedLine10          
    inc eax               
    jmp nextcharLine10


finishedLine10:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg10   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 11

    mov ebx, msg11  
    mov eax, ebx    

nextcharLine11:
    cmp byte[eax], 0      
    jz  finishedLine11          
    inc eax               
    jmp nextcharLine11


finishedLine11:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg11   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 12

    mov ebx, msg12 
    mov eax, ebx    

nextcharLine12:
    cmp byte[eax], 0      
    jz  finishedLine12          
    inc eax               
    jmp nextcharLine12


finishedLine12:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg12   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 13

    mov ebx, msg13  
    mov eax, ebx    

nextcharLine13:
    cmp byte[eax], 0      
    jz  finishedLine13          
    inc eax               
    jmp nextcharLine13


finishedLine13:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg13   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 14

    mov ebx, msg14 
    mov eax, ebx    

nextcharLine14:
    cmp byte[eax], 0      
    jz  finishedLine14         
    inc eax               
    jmp nextcharLine14


finishedLine14:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg14  
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 15

    mov ebx, msg15  
    mov eax, ebx    

nextcharLine15:
    cmp byte[eax], 0      
    jz  finishedLine15         
    inc eax               
    jmp nextcharLine10


finishedLine15:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg15   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 16

    mov ebx, msg16 
    mov eax, ebx    

nextcharLine16:
    cmp byte[eax], 0      
    jz  finishedLine16          
    inc eax               
    jmp nextcharLine16


finishedLine16:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg16   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 17

    mov ebx, msg17  
    mov eax, ebx    

nextcharLine17:
    cmp byte[eax], 0      
    jz  finishedLine17          
    inc eax               
    jmp nextcharLine17


finishedLine17:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg17   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 18

    mov ebx, msg18  
    mov eax, ebx    

nextcharLine18:
    cmp byte[eax], 0      
    jz  finishedLine18          
    inc eax               
    jmp nextcharLine18


finishedLine18:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg18   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 19

    mov ebx, msg19  
    mov eax, ebx    

nextcharLine19:
    cmp byte[eax], 0      
    jz  finishedLine19          
    inc eax               
    jmp nextcharLine19


finishedLine19:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg19   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 20

    mov ebx, msg20  
    mov eax, ebx    

nextcharLine20:
    cmp byte[eax], 0      
    jz  finishedLine20          
    inc eax               
    jmp nextcharLine20


finishedLine20:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg20   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 21

    mov ebx, msg21  
    mov eax, ebx    

nextcharLine21:
    cmp byte[eax], 0      
    jz  finishedLine21          
    inc eax               
    jmp nextcharLine21


finishedLine21:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg21   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 22

    mov ebx, msg22  
    mov eax, ebx    

nextcharLine22:
    cmp byte[eax], 0      
    jz  finishedLine22          
    inc eax               
    jmp nextcharLine22


finishedLine22:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg22   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 23

    mov ebx, msg23  
    mov eax, ebx    

nextcharLine23:
    cmp byte[eax], 0      
    jz  finishedLine23          
    inc eax               
    jmp nextcharLine23


finishedLine23:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg23   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 24

    mov ebx, msg24  
    mov eax, ebx    

nextcharLine24:
    cmp byte[eax], 0      
    jz  finishedLine24          
    inc eax               
    jmp nextcharLine24


finishedLine24:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg24   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 25

    mov ebx, msg25  
    mov eax, ebx    

nextcharLine25:
    cmp byte[eax], 0      
    jz  finishedLine25          
    inc eax               
    jmp nextcharLine25


finishedLine25:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg25   
    mov ebx, 1
    mov eax, 4
    int 80h

; Line -> 26

    mov ebx, msg26  
    mov eax, ebx    

nextcharLine26:
    cmp byte[eax], 0      
    jz  finishedLine26          
    inc eax               
    jmp nextcharLine26


finishedLine26:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg26   
    mov ebx, 1
    mov eax, 4
    int 80h


; Line -> 27

    mov ebx, msg27  
    mov eax, ebx    

nextcharLine27:
    cmp byte[eax], 0      
    jz  finishedLine27          
    inc eax               
    jmp nextcharLine27


finishedLine27:
    sub eax, ebx

    mov edx, eax    
    mov ecx, msg27   
    mov ebx, 1
    mov eax, 4
    int 80h

; Quotes -> first line 

    mov ebx, quotesL1  
    mov eax, ebx    

nextcharquotes1:
    cmp byte[eax], 0      
    jz  finishedquotes1          
    inc eax               
    jmp nextcharquotes1


finishedquotes1:
    sub eax, ebx

    mov edx, eax    
    mov ecx, quotesL1   
    mov ebx, 1
    mov eax, 4
    int 80h

; Quotes -> second line 

    mov ebx, quotesL2  
    mov eax, ebx    

nextcharquotes2:
    cmp byte[eax], 0      
    jz  finishedquotes2          
    inc eax               
    jmp nextcharquotes2


finishedquotes2:
    sub eax, ebx

    mov edx, eax    
    mov ecx, quotesL2   
    mov ebx, 1
    mov eax, 4
    int 80h

; Quotes -> third line 

    mov ebx, quotesL3  
    mov eax, ebx    

nextcharquotes3:
    cmp byte[eax], 0      
    jz  finishedquotes3          
    inc eax               
    jmp nextcharquotes3


finishedquotes3:
    sub eax, ebx

    mov edx, eax    
    mov ecx, quotesL3   
    mov ebx, 1
    mov eax, 4
    int 80h

; Quotes -> fourth line 

    mov ebx, quotesL4  
    mov eax, ebx    

nextcharquotes4:
    cmp byte[eax], 0      
    jz  finishedquotes4          
    inc eax               
    jmp nextcharquotes4


finishedquotes4:
    sub eax, ebx

    mov edx, eax    
    mov ecx, quotesL4   
    mov ebx, 1
    mov eax, 4
    int 80h

; Quotes -> fifth line 

    mov ebx, quotesL5  
    mov eax, ebx    

nextcharquotes5:
    cmp byte[eax], 0      
    jz  finishedquotes5          
    inc eax               
    jmp nextcharquotes5


finishedquotes5:
    sub eax, ebx

    mov edx, eax    
    mov ecx, quotesL5   
    mov ebx, 1
    mov eax, 4
    int 80h



; quit program
    mov ebx, 0      
    mov eax, 1 
    int 80h  




    ; nasm -f elf testtest.asm
    ; ld -m elf_i386 testtest.o -o testtest
    ; ./testtest


