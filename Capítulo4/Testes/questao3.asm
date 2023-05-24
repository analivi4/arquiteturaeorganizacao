;
;   Building Instructions:
;   ml /Cx /coff questao3.asm /link /SUBSYSTEM:console /out:questao3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;
        .686
        .model  flat, c
        .stack  100h
printf  PROTO   arg1:Ptr Byte, printlist:VARARG
scanf   PROTO   arg2:Ptr Byte, inputlist:VARARG
        .data
msg1fmt byte    "%d",0
x sdword  2
w sdword  1
z sdword  10
y sdword  4
        .code
main     proc
if01: cmp a,1
      je end01
      cmp b,2
      jne endif01
and01: cmp c,3
      jg then01
      cmp d,4
      jg endif01
then01: dec e
endif01: nop
        INVOKE printf, ADDR msg1fmt, z
main endp
    end