;
;   Building Instructions:
;   ml /Cx /coff questao7.asm /link /SUBSYSTEM:console /out:questao7.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf   PROTO   arg2:Ptr Byte, inputlist:VARARG
        .data
msg1fmt byte    "%d",0Ah,0 
sun     sdword ?
i       sdword ?
        .code
main    proc
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
        INVOKE printf, ADDR msg1fmt, sun
        INVOKE printf, ADDR msg1fmt, i
main    endp
        end