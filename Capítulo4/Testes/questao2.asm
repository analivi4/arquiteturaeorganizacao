;
;   Building Instructions:
;   ml /Cx /coff CompleteProgram.asm /link /SUBSYSTEM:console /out:CompleteProgram.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf   PROTO   arg2:Ptr Byte, inputlist:VARARG
        .data
a   stdword ?
b   stdword ?
c   stdword ?
d   stdword ?
        .code
main    proc
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


main    endp
        end