section .data
    text db 0

section .text
    global _start

_start:
    mov rax, 0 ;sys_read
    mov rdi, 0 ; default input 
    mov rsi, text 
    mov rdx, 13 
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 13
    syscall

    mov rax, 60
    mov rdi, 0
    syscall    
