section .data
    msg db "Hola !",0xA ;mensaje mas salto de linea en hexadecimal
    len equ $ - msg     ;largo del mensaje considerando salto de linea (automatico)

section .text
    global _start

_start:

    ;llamada al sistema para imprimir en pantalla, se usan registros para alamacenar la id de la syscall
    mov rax,1
    mov rdi,1
    mov rsi,msg
    mov rdx,len
    syscall

    ;llamada al sistena para terminar la ejecuacion
    mov rax,60
    xor rdi,rdi
    syscall

