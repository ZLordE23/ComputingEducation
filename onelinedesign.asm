SECTION .data
    asciiArt db `╔══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══╡˚✧✬✧˚╞══✩✬══✩✬══✩✬══✩✬══✩✬══✬✩══✬✩══✬✩══✬✩══✬✩══╗\n║                                                                                           ║\n║                                                                                           ║\n║                                                                                           ║\n║                                                        ██████                             ║\n║                                             ▓▓▓▓    █████████                             ║\n║                                       Ƹ̵̡Ӝ̵̨̄Ʒ▓▓▓▓▓=▓    ▓=▓▓▓▓▓                               ║\n║                                       ▓▓▓_▓▓▓▓░●    ●░░▓▓▓▓                               ║\n║                                     ▓▓▓▓_▓▓▓▓▓░░  ░░░░▓▓▓▓                                ║\n║                                      ▓▓▓▓ ▓▓▓▓░░♥  ♥░░░▓▓▓                                ║\n║                                       ▓▓▓   ▓▓░░     ░░░▓▓                                ║\n║  ▀█║            ▄▄            ▄  ▄   ▓▓▓▓▓    ▓░░     ░░▓                                 ║\n║  █║       ▄ ▄ █▄▄█║      ▄▄  ​█║ █║     ▓▓     ▒▓▒▓▒    ████                               ║\n║ █║   ▄▄  █║█║█║ ▄║▄  ▄║█║ █║​█║▄█║         ▒▓▒▓▒▓▒  ██████                                 ║\n║ █║  █║ █║█║█║ ▀▀  █║ █║█║ █║ ▀ ▀         ▒▓▒▓▒▓▒ ████████                                 ║\n║ █║▄║█║ █║ ▀       █║▄█║ ▀▀              ▒▓▒▓▒▓▒ ██████ ███                                ║\n║ ▀▀▀  ▀▀            ▀ █║                ▒▓▒▓▒▓▒  ██████  ███                               ║\n║      ▄▄ ▄▄▀▀▄▀▀▄  ▀▄▄▀             ▓▓X▓▓▓▓▓▓▓  ██████  ███                                ║\n║     ███████   ▄▀                  ▓▓ ██████▓▓  ██████  ███                                ║\n║     ▀█████▀▀▄▀                    ▓ ███████▓▓  ██████  ███                                ║\n║       ▀█▀                          ████████▓▓  ██████  ███                                ║\n║                                    ████████▓▓  ▓▓▓▓▓▓ ▒▒                                  ║\n║                                    ████████▓▓  ▓▓▓▓▓▓                                     ║\n║                                    ████████▓▓  ▓▓▓▓▓▓                                     ║\n║                                     ████████▓   ▓▓▓▓▓▓                                    ║\n║                                          ▒▒▒▒▒    ▓▓▓▓▓▓                                  ║\n║                                          ▒▒▒▒▒      ▓▓▓▓▓                                 ║\n║                                          ▒▒▒▒▒      ▓▓▓▓▓                                 ║\n║                                          ▒▒▒▒▒      ▓▓▓▓▓                                 ║\n║                                           ▒▒▒▒▒      ▓▓▓▓                                 ║\n║                                           █████    █████                                  ║\n║                                  “I saw that you were perfect,                            ║\n║                                       and so I loved you.                                 ║\n║                              Then I saw that you were not perfect                         ║\n║                                  and I loved you even more.”                              ║\n║                                        – Angelita Lim                                     ║\n╚══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══✬✩══╡˚✧✬✧˚╞══✩✬══✩✬══✩✬══✩✬══✩✬══✬✩══✬✩══✬✩══✬✩══✬✩══╝`,0xA,0xD

SECTION .text
    global _start

_start:
    mov ebx, asciiArt    
    mov eax, ebx    

nextchar:
    cmp byte[eax], 0      
    jz  finished          
    inc eax               
    jmp nextchar


finished:
    sub eax, ebx

    mov edx, eax    
    mov ecx, asciiArt   
    mov ebx, 1
    mov eax, 4
    int 80h

    mov ebx, 0      
    mov eax, 1 
    int 80h

    ; nasm -f elf onelinedesign.asm
    ; ld -m elf_i386 onelinedesign.o -o onelinedesign
    ; ./onelinedesign