section .data
    array dq 10, 20, 30, 40

section .text
global _start
_start:
    mov rsi, array
    mov rax, [rsi+8] ; load 2nd element (20)

    mov rax, 60
    xor rdi, rdi
    syscall
