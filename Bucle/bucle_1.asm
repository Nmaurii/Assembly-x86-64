;Programa que genera un bucle, este va de 0 a n, por cada iteracion  (hasta n) se printea el valor en pantalla e incrementa en uno.

;se define un valor global correspondiente al salto de linea, servira a la hora de printear cada valor, se define como valor de 1 byte
section .data 
	salto db 10

;se define la variable valor que contendra cada valor a imprimir, se reserva 1 byte, ya que se usaran valores de 0 a 5
section .bss
	valor resb 1

section .text
	global _start

_start:
;se inicia el bucle con el valor 0 con un registro de de 16 bits
	mov bx,0	
	
;etiqueta que contiene el bucler, se compara el valor bx con 5 y si es igual termina el programa, de lo contrario se imprime en pantalla e  incrementa
while:

	cmp bx,5
	je terminar

	call imprimir
	inc bx
	jmp while
	
imprimir:
	
	push bx

	add bx,48
	mov [valor],bx

	mov rax,1
	mov rdi,1
	mov rsi,valor
	mov rdx,1
	syscall

	mov rax,1
	mov rdi,1
	mov rsi,salto
	mov rdx,1
	syscall
	
	pop bx

	ret

terminar:
	
	mov rax,60
	xor rdi,rdi
	syscall
