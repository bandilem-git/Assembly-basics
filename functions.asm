section .text
global _start
_start:
    call my_func
    mov rax, 60
    xor rdi, rdi
    syscall

my_func:
    mov rax, 42
    ret
