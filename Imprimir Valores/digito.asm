;Programa que imprime un digito del 0 al 9, en este caso es 5.
section .data
    salto db 0xA
section .bss
    imprimir resb 1
section .text
    global _start

_start:

    mov al,5
    add al,48

    mov [imprimir],al

    mov rax,1
    mov rdi,1
    mov rsi,imprimir
    mov rdx,1
    syscall

    mov rax,1
    mov rdi,1
    mov rsi,salto
    mov rdx,1
    syscall

    call end

end:

    mov rax,60
    xor rdi,rdi
    syscall
