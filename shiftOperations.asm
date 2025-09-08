section .data
    shifted dq 0

section .text
global _start
_start:
    mov rax, 4
    shl rax, 1  ; rax = rax * 2
    mov [shifted], rax

    mov rax, 60
    xor rdi, rdi
    syscall
