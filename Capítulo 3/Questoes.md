# **Capítulo 3** #



### **Questão 18** ###

- **a )** incorreto, inc é um operador unário 

- **b )** correto

- **c )** incorreto, dois acessos a memória

- **d )** incorreto, não pode ser usado um valor constante

- **e )** incorreto, não pode subtrair de um valor constante

- **f )** correto

### **Questão 2** ###

- **a )**
```asm
    mov eax, 3
    imul number
    mov product, eax
```
- **b )**
```asm
    mov eax, number
    cdq
    idiv amount
    mov result, edx
```   
- **c )** 
```asm
    mov eax, number
    cdq
    mov ebx, 2
    idiv ebx
    mov answer, eax
```        
- **d )** 
```asm
    mov eax, 4
    mov ebx, number
    sub eax, ebx  
    mov difference, eax         
```

### **Questão 3** ###

- **a )**
```asm
    mov eax, y
    imul x
    mov ebx, eax
    mov eax, z
    mov ecx, 2
    imul ecx
    add ebx, eax
    mov x, ebx
    inc b
    mov eax, b
    sub eax, c
    mov a, eax
    inc c
```
- **e )**
```asm
    mov eax, y
    neg eax
    add eax, z
    mov x, eax
    inc z
```