section .bss
    buffer resb 16

section .text
global _start
_start:
    mov rax, 0     ; syscall read
    mov rdi, 0     ; stdin
    mov rsi, buffer
    mov rdx, 16
    syscall

    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall
