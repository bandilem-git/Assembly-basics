section .text
global _start
_start:
    mov rax, 123
    push rax        ; save rax on stack
    mov rax, 0
    pop rax         ; restore rax (rax = 123)

    mov rax, 60
    xor rdi, rdi
    syscall
