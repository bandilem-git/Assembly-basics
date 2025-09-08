section .data
    result_add: dq 0
    result_sub: dq 0

section .text
global _start
_start:
    mov rax, 10
    mov rbx, 3

    ; ADD
    mov rcx, rax
    add rcx, rbx
    mov [result_add], rcx ; store 13

    ; SUB
    sub rax, rbx
    mov [result_sub], rax ; store 7

    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall
