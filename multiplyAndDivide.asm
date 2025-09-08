section .data
    result_mul: dq 0
    result_div: dq 0

section .text
global _start
_start:
    mov rax, 6
    mov rbx, 4

    ; MUL: unsigned multiply rax*rbx → result in rdx:rax
    mul rbx
    mov [result_mul], rax

    ; DIV: divide rax by 2 (just to show division)
    mov rbx, 2
    xor rdx, rdx     ; Clear remainder before div
    div rbx
    mov [result_div], rax

    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall
