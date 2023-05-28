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