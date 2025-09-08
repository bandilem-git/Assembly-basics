section .text
global _start
_start:
    mov rax, 0x1234     ; Load value 0x1234 into rax
    mov rbx, rax        ; Copy rax into rbx
    mov rcx, rax        ; Copy rax into rcx
    mov rdx, rax        ; Copy rax into rdx

    ; Exit
    mov rax, 60
    xor rdi, rdi
    syscall
