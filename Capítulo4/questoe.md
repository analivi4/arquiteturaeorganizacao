## Capítulo 4 ##

- 1
  - 1 - errado, usa == para coparar duas coisas.
  - 2 - errado, o uso do them esta errado.
  - 3 - correto.
  - 4 - correto.

- 2
  ```asm
    mov eax, b
    mov ebx, c
    .if  a > eax
    dec a
    .else
    .if eax >= ebc
    dec eax, 2
    .else 
    .if ebx > d
    add ebx,d
    .else
    mov edx, d
    imul 2
    .endif
    .endif
    .endif
    ```

- 3
  - 1
  ```asm
  if01: cmp w,1
      jne endif01
      cmp x, 2
      jne endif01
  then01: dec y
  endif01: nop
  ```
  - 2
  ```asm
  if01: cmp num,0
      jle then01
      cmp num, 3
      jle endif01
  then01: sub count,2
  endif01: nop
  ```

  - 3
  ```asm
  if01: cmp w,1
      je and01
      cmp x,2
      jne endif01
  and01:cmp y,3
      jne endif01
  then01: inc z
  endif01: nop
  ```

  - 4
  ```asm
  if01: cmp a,1
      je and01
      cmp b,2
      jne endif01
  and01: cmp k,3
      jg then01
      cmp d,4
      jg endif01
  then01: dec e
  endif01: nop
  ``` 

- 4

- 5
```asm
switch01: cmp w,0
          je case11
          cmp w,1
          je case11
          cmp w,2
          je case12
          cmp w, 3
          je case12
case11: add count,2
        jmp endswitch01
case12: sub count,2
endswitch01: nop
```
