section .text
    global _print

_print:
    push rbp
    mov rbp, rsp

    mov rdx, rsi          
    mov rsi, rdi          
    mov rax, 0x2000004    ; syscall write
    mov rdi, 1            ; stdout
    syscall

    pop rbp
    ret
