section .data
    lista db 1,2,3,4,5
    len equ $ - lista
    salto db 10

section .bss
    imprimir resb 1

section .text
    global _start

_start:

    mov r8,lista ;apunta hacia el comienzo de la lista, en este caso a la posicion del valor "1"
    mov r9,len

bucle:

    mov al,[r8]
    add al,48

    mov [imprimir],al

    ;imprimir en pantalla

    mov rax,1
    mov rdi,1
    mov rsi,imprimir
    mov rdx,1 ;corresponde al largo, en este caso de 1 byte (8 bits)
    syscall   ;llamada al sistema con sus parametros

    mov rax,1
    mov rdi,1
    mov rsi,salto
    mov rdx,1
    syscall 

    inc r8
    dec r9

    cmp r9,0
    je final
    jmp bucle

final:

    mov rax,60
    xor rdi,rdi
    syscall 
