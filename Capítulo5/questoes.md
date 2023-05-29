# Capítulo 5

- 1
  - a - incorreta, não existe essas diretivas em MASM
  - b - incorreta, falta o . na frente do while
  - c - correta
  - d - correta
  - e - incorreta, as diretivas estão erradas

-  2
   ```asm
    mov ebx, i
    if01:   cmp x,0
            je endif01
    while01: cmp ebx, y
            jg endw01
            mov eax, ans
            add eax, x
            mov ans, eax
            inc i
            mov ebx, i
            jmp while01
    endw01: nop
    endif01:nop
    ```
-  3
   - a - 3
   - b - 1
   - c - 0

-  4
   ```asm
        mov ans,0
    if01:   cmp y, 0
        je endif01
        mov i,1
        mov ebx,i
    repeat01: nop
        mov eax, ans
        add eax, x
        mov ans, eax
        inc i
        mov ebx,i
        cmp ebx,y
        jle repeat01
    endrpt01:nop
    endif01: nop
   ```
-  5
   - a 
   ```asm
   ;com diretiva

            mov edx,eax
            mov eax,0
            .while( edx >= ebx)
            sub edx, ebx
            inc eax
            .endw

   ;sem diretiva

            mov edx, eax
            mov eax, 0
    while01: cmp edx, ebx
            jl endw01
            sub edx, ebx
            inc eax
            jmp while01
    endw01: nop
   ```
   - b 
   ```asm
   ;com diretiva
            mov edx, eax
            mov eax, 0
            .repeat
            sub edx, ebx
            inc eax
            .until edx < ebx
            mov i, eax

    ;sem diretiva
            mov edx, eax
            mov eax, 0
    repeat01: nop
            sub edx, ebx
            inc eax
            cmp edx, ebx
            jge repeat01
    endrpt01:nop
   ```
   - c
   ```asm
   ;com diretiva

   ```
- 6
- 7
  ```asm
  ; com diretiva

        mov i, 10
        mov sun, 0
        .repeat
        mov eax, sun
        add eax, i
        mov sun,eax
        mov eax, i
        sub eax, 2
        mov i, eax
        .until i <= 0

  ; sem diretiva

        mov i, 10
        mov sun, 0
  repeat01: nop
        mov eax, sun
        add eax, i
        mov sun,eax
        mov eax, i
        sub eax, 2
        mov i, eax
        cmp i,0
        jg repeat01
  endrpt01:nop
  ```

- 8
  ```asm
        mov ecx, 2
  for01:  nop
        mov tempecx, ecx
        mov ecx, 3
  for02:  nop
        ; body of nested loop
        loop for1
  endfor02: nop
        mov ecx, tempecx
  endfor01: nop
  ```