
; ----------------------------------------------
; This program prints Hello World.
; For x86 only (not arm)
;
; By: Huzaifa Khalid
; Version: 1.0
; Since: 2022-11-22
; ----------------------------------------------

section .bss
  ; variables

section .data
  ; constants
  hello: db "Hello World!", 10 ; string to print
  helloLen: equ $-hello        ; length of string

section .text
  global_start

  _start:
    mov  rax,1        ; sys_write
    mov  rdi,1        ; stdout
    mov  rsi,hello    ; message to write
    mov  rdx,helloLen ; message length
    syscall           ; call kernal

    ; end program
    mov  rax,60       ; sys_exit
    mov  rdi,0        ; error_code 0 (success)
    syscall           ; call kernal