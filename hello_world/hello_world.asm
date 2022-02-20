; hello _world
%define s_print  0x4
%define s_exit   0x1

%define syscall int 0x80
global _start

section .text:
_start:
    mov eax, s_print
    mov ecx, message
    mov edx, message_length
    syscall

    mov eax, s_exit
    mov ebx, 0
    syscall

section .data:
    message: db "Hello world from Nasm!", 0xA
    message_length equ $-message
