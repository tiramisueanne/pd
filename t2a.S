#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#did we get into actuals
#found the beginning of the array
#heyo found the end
#did we get into actuals
#did we get into actuals
#found the beginning of the array
#heyo found the end
.macro push arg1
    std \arg1, 8(1)
    addi 1, 1, 8
.endm
.macro pop arg1
    ld \arg1,  0(1)
    subi 1,1, 8
.endm
    .text
    .text
    .text
    .global f
f:
#got into state
#1:f:0
    ld 15, a0@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#1:f:0
    ld 15, a1@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#1:f:0
    ld 15, a2@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#1:f:0
    ld 15, i@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#1:f:0
    ld 15, n@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#2:f:0
    ld 15, i@toc(2)
    push 15
    ld 15, n@toc(2)
    pop 16
    cmp 0, 1, 15, 16
    bc 0x4, 2,  nEquals8
    xor 15, 15, 15
    addi 15, 15, 1
    b endExp8
nEquals8:
    xor 15, 15, 15
endExp8:
    add. 15, 15, 15
    bc 0xC ,2, elsef
#got into state
#5:f:0
    ld 15, a@toc(2)
    blr
    b endstatef
elsef:
endstatef:
#got into state
#5:f:0
    ld 15, a@toc(2)
    std 15, a@toc(2)
    ld 15, i@toc(2)
    push 15
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 1
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    add 15, 15, 16
    std 15, i@toc(2)
    ld 15, n@toc(2)
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl f
    pop 17
    mtspr 8, 17
    blr
    blr
    .global factorial
factorial:
#got into state
#0:factorial:0
#hello is there anybody in there
#got into case 1 with an eARRAY
#this is the length of the array 3
#wtf where am I 0
    ld 15, n@toc(2)
    std 15, a0@toc(2)
#wtf where am I 1
    ld 15, n@toc(2)
    push 15
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 1
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    add 15, 15, 16
    std 15, a1@toc(2)
#wtf where am I 2
    ld 15, n@toc(2)
    push 15
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 2
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    add 15, 15, 16
    std 15, a2@toc(2)
#got into state
#5:factorial:0
    ld 15, a@toc(2)
    std 15, a@toc(2)
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 1
    add 15, 15, 27
    xor 27, 27, 27
    std 15, i@toc(2)
    ld 15, n@toc(2)
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl f
    pop 17
    mtspr 8, 17
    blr
    blr
    .global main
main:
#got into state
#0:main:0
#hello is there anybody in there
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 0
    sld 27, 27, 8
    addi 27, 27, 5
    add 15, 15, 27
    xor 27, 27, 27
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    std  15, z@toc(2)
#got into state
#1:main:0
    ld 15, z2@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
a:    .quad 0
i:    .quad 0
n:    .quad 0
z:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
