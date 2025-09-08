section .text
global _start
_start:
    ; argc is at rsp, argv starts at rsp+8
    mov rbx, [rsp] ; argc
    mov rcx, [rsp+8] ; argv[0] (program name)

    mov rax, 60
    xor rdi, rdi
    syscall
