; version

format ELF executable
entry _start

segment readable executable  ; start of code section

_start:
   mov eax, 4
   mov ebx, 1
   mov ecx, text
   mov edx, [length]
   int 80h
   mov eax, 1
   int 80h
  
segment readable writeable  ; start of code section
text  db "Hello", 0ah
length dd $ - text
