section .data
    result dq 1

section .text
global _start
_start:
    mov rax, 5
    mov rcx, rax
    mov rax, 1

.loop:
    mul rcx
    loop .loop

    mov [result], rax
    mov rax, 60
    xor rdi, rdi
    syscall
