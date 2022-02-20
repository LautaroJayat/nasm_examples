%define s_exit      60
%define s_read      0
%define s_print     1
%define newline     10

section .data
    askInfo db "Please enter something to print: "
    askInfoL equ $-askInfo
    
    prefixToUserInput db "Your provided string was --> "
    prefixToUserInputL equ $-prefixToUserInput

section .bss
    buff resb 100

section .text
global main

main: 
    call printAskInfo
    call getUserInput
    call printPrefixToUserInput
    call printUserInput
    call exit

exit:
    mov rax, s_exit
    mov rdi, 0
    syscall
    ret

printAskInfo:
    mov rax, s_print
    mov rdi, 1
    mov rsi, askInfo
    mov rdx, askInfoL
    syscall
    ret

getUserInput:
    mov rax, s_read
    mov rdi, 0
    mov rsi, buff
    mov rdx, 100
    syscall
    ret
    
printPrefixToUserInput:
    mov rax, s_print
    mov rdi, 1
    mov rsi, prefixToUserInput
    mov rdx, prefixToUserInputL
    syscall
    ret

printUserInput:
    mov rax, s_print
    mov rdi, 1
    mov rsi, buff
    mov rdx, 100
    syscall
    ret