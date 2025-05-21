section .data
    formato db "%f", 0xA
    f1 dq 2.5
    f2 dq 5.5

section .text
    global main
    extern printf

main:

    push rbp
    mov rbp, rsp

    movsd xmm0,[f1]
    movsd xmm1,[f2]
    mulsd xmm0,xmm1

    mov rdi, formato
    mov rax, 1

    call printf

    mov rsp, rbp
    pop rbp

    mov rax,60
    xor rdi,rdi
    syscall
