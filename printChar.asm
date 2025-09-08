section .data
    char db "A"

section .text
global _start
_start:
    mov rax, 1          ; syscall write
    mov rdi, 1          ; fd = stdout
    mov rsi, char       ; address
    mov rdx, 1          ; length = 1
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
