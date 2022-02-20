;adding two numbers
extern printf
%define s_exit   60
%define s_print  1
%define newline  10

section .data
    message db "We are going to add 5 + 10", newline
    message_length equ $-message
    result  db "The result is %d", newline
    result_length equ $-result

section .text
    global main

main:
    mov rax, s_print
    mov rdi, 1
    mov rsi, message
    mov rdx, message_length
    syscall

    mov rdi, 10
    mov rsi, 5
    add rsi, rdi
    mov rdi, result
    mov al, 0
    call printf WRT ..plt
    ret
    
    mov rax, s_exit
    mov rdi, 0
    syscall

