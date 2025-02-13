.global main  @ Объявляем символ 'main' глобальным (видимым для линковщика)

hello_string:
  .asciz "Hello, World!\n"  @ Определяем строку "Hello, World!\n" с завершающим нулевым байтом
```assembly
.section .data
msg:
    .ascii "Hello, World!\n"
len = . - msg

.section .text
.global _start
_start:
    mov $1, %rax        # Системный вызов write (номер 1)
    mov $1, %rdi        # Описатель файла stdout (1)
    mov $msg, %rsi      # Адрес строки
    mov $len, %rdx      # Длина строки
    syscall             # Вызов системного вызова

    mov $60, %rax       # Системный вызов exit (номер 60)
    xor %rdi, %rdi      # Код завершения 0
    syscall             # Вызов системного вызова
```
