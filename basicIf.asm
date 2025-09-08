section .data
    is_equal: dq 0

section .text
global _start
_start:
    mov rax, 5
    mov rbx, 5
    cmp rax, rbx      ; compare
    jne .not_equal    ; jump if not equal
    mov qword [is_equal], 1
.not_equal:

    mov rax, 60
    xor rdi, rdi
    syscall
