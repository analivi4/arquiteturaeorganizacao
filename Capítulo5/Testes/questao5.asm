;
;   Building Instructions:
;   ml /Cx /coff questao5.asm /link /SUBSYSTEM:console /out:questao5.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf   PROTO   arg2:Ptr Byte, inputlist:VARARG
        .data
msg1fmt byte    "%d",0Ah,0 
x       sdword 2
y       sdword 10
i       sdword 0
        .code
main    proc
        mov ebx, x 
        mov eax, y
        mov edx, eax
        mov ecx, edx
        mov eax, 0
        .repeat
        sub edx, ebx
        mov ecx, edx
        inc eax
        .untilcxz
        mov i, eax
        INVOKE printf, ADDR msg1fmt, x
        INVOKE printf, ADDR msg1fmt, y
        INVOKE printf, ADDR msg1fmt, i


main    endp
        end