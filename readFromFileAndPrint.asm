section .data
    filename db "input.txt",0   ; file to read
    buf      times 128 db 0     ; buffer to store data

section .text
global _start
_start:

    ; --- open file ---
    mov rax, 2          ; syscall number for open
    mov rdi, filename   ; pointer to filename
    mov rsi, 0          ; flags = O_RDONLY
    xor rdx, rdx        ; mode = 0 (ignored for read)
    syscall
    mov r12, rax        ; save file descriptor in r12

    ; check if file opened successfully
    cmp r12, 0
    jl .exit            ; if fd < 0, exit

    ; --- read file ---
    mov rax, 0          ; syscall number for read
    mov rdi, r12        ; file descriptor
    mov rsi, buf        ; buffer
    mov rdx, 128        ; number of bytes to read
    syscall
    mov r13, rax        ; save number of bytes read

    ; --- write to stdout ---
    mov rax, 1          ; syscall number for write
    mov rdi, 1          ; stdout
    mov rsi, buf        ; buffer
    mov rdx, r13        ; number of bytes read
    syscall

    ; --- close file ---
    mov rax, 3          ; syscall number for close
    mov rdi, r12        ; file descriptor
    syscall

.exit:
    mov rax, 60         ; syscall exit
    xor rdi, rdi
    syscall
