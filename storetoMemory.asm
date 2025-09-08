section .data
    my_value: dq 0

section .text
global _start
_start:
    mov rax, 123
    mov [my_value], rax ; store 123 into memory

    mov rax, 60
    xor rdi, rdi
    syscall
