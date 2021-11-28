; version

format ELF64 executable
entry _start

segment readable executable  ; start of code section

_start:
   mov rax, 1
   mov rdi, 1
   ;mov rsi, info
   ;mov rdx, [info_length]
   mov rsi, text
   mov rdx, [length]
   syscall
   mov rax, 1
   mov rdi, 1
   mov rsi, info
   mov rdx, info_length
   syscall
   mov rax, 60
   mov rdi, 0
   syscall
  
segment readable writeable  ; start of code section
info  db "QWERT", 00, 01, 02, 07, 10, 13, 10, 13, 10, 13
info_length = $ - info
text  db "Hello", 0ah
length dq $ - text






