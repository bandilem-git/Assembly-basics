section .data
    msg db "hello", 0
    length dq 0

section .text
global _start
_start:
    mov rsi, msg
    xor rcx, rcx

.loop:
    mov al, [rsi]
    cmp al, 0
    je .done
    inc rcx
    inc rsi
    jmp .loop

.done:
    mov [length], rcx

    mov rax, 60
    xor rdi, rdi
    syscall
