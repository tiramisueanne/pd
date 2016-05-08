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
    .global f1
f1:
    ld 15, zztop@toc(2)
    blr
    blr
    .global f2
f2:
#got into state
#0:f2:0
#hello is there anybody in there
    ld 15, x@toc(2)
    std  15, zztop@toc(2)
    blr
    .global main
main:
#got into state
#1:main:0
    mfspr 17, 8
    push 17
    bl f1
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
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
    addi 27, 27, 14
    add 15, 15, 27
    xor 27, 27, 27
    std 15, x@toc(2)
    mfspr 17, 8
    push 17
    bl f2
    pop 17
    mtspr 8, 17
    std  15, a@toc(2)
#got into state
#1:main:0
    mfspr 17, 8
    push 17
    bl f1
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#5:main:0
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    b exit
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
zztop:    .quad 0
x:    .quad 0
a:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
