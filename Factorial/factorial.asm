;Primera version de un programa que calcula el factorial de una valor

section .data
    salto db 0xA
section .bss
    resultado resb 8
section .text
    global _start

_start:
    ;colocar en registro rcx el valor a calcular, ocnsidernado que el resultado es de hasta 64 bits, es decir, 2*(64), un valor muy alto
    mov rcx,5
    mov rax,1

factorial:

    mul rcx
    dec rcx

    cmp rcx,1
    jnz factorial

    mov rbx,10
    mov rdi,resultado+7


    call convertir

    mov rax,1
    mov rdi,1
    mov rsi,resultado
    mov rdx,8
    syscall

    mov rax,1
    mov rdi,1
    mov rsi,salto
    mov rdx,1
    syscall

    mov rax,60
    xor rdi,rdi
    syscall

convertir:

    xor rdx,rdx
    div rbx

    add dl,48
    mov [rdi],dl

    dec edi

    cmp rax,0
    jnz convertir

    ret
