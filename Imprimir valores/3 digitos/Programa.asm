section .data
	salto db 0xA

;almacenar valor de 3 digitos como 144
section .bss
	buffer resb 4

section .text
	global _start


_start:

	mov eax,144
	mov ecx,10

	;apuntamos al ultimo lugar del buffer desde ahi se almcenaran los digitos del registro 144
	mov edi,buffer+2


programa:

	xor edx,edx
	div ecx

	add dl,48
	mov [edi],dl
	dec edi
	
	cmp eax,0
	jnz programa

	; culocamos en el ultimo lugar de buffer un valor nulo, para indicar que se termino el numero
	mov byte [buffer+3],0xA

terminar:
	
	mov rax,1
	mov rdi,1
	mov rsi,buffer
	mov rdx,3
	syscall

	mov rax,1
	mov rdi,1
	mov rsi,salto
	mov rdx,1
	syscall


	mov rax,60
	xor rdi,rdi
	syscall

