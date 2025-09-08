section .data
    number: dq 42

section .text
global _start
_start:
    mov rax, [number] ; rax = 42

    mov rax, 60
    xor rdi, rdi
    syscall
