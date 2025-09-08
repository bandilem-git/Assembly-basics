section .data
    counter: dq 0

section .text
global _start
_start:
    mov rcx, 5
.loop:
    add qword [counter], 1  ; increment memory value
    loop .loop              ; rcx--, jump if rcx != 0

    mov rax, 60
    xor rdi, rdi
    syscall
