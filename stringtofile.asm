section .data
    filename db "output.txt",0
    msg      db "Hello, file!", 10  ; string with newline
    len      equ $-msg

section .text
global _start
_start:

    ; --- open file for writing ---
    mov rax, 2          ; syscall number for open
    mov rdi, filename   ; pointer to filename
    mov rsi, 1+64+512   ; O_WRONLY|O_CREAT|O_TRUNC
    mov rdx, 0644       ; file permissions
    syscall
    mov r12, rax        ; save file descriptor

    cmp r12, 0
    jl .exit            ; exit if error

    ; --- write string to file ---
    mov rax, 1          ; syscall number for write
    mov rdi, r12        ; file descriptor
    mov rsi, msg        ; address of string
    mov rdx, len        ; number of bytes
    syscall

    ; --- close file ---
    mov rax, 3          ; syscall number for close
    mov rdi, r12
    syscall

.exit:
    mov rax, 60
    xor rdi, rdi
    syscall
