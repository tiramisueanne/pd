#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#did we get into actuals
#did we get into actuals
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
    .global a
a:
#got into state
#5:a:0
    ld 15, x@toc(2)
    blr
    blr
    .global b
b:
#got into state
#5:b:0
    ld 15, y0@toc(2)
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
    addi 27, 27, 100
    add 15, 15, 27
    xor 27, 27, 27
    std  15, x@toc(2)
#got into state
#0:main:0
#hello is there anybody in there
#got into case 1 with an eARRAY
#this is the length of the array 2
#wtf where am I 0
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
    addi 27, 27, 30
    add 15, 15, 27
    xor 27, 27, 27
    std 15, y0@toc(2)
#wtf where am I 1
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
    std 15, y1@toc(2)
#got into state
#1:main:0
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
    addi 27, 27, 20
    add 15, 15, 27
    xor 27, 27, 27
    std 15, v@toc(2)
    mfspr 17, 8
    push 17
    bl a
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#1:main:0
    ld 15, y@toc(2)
    std 15, x@toc(2)
    mfspr 17, 8
    push 17
    bl b
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
v:    .quad 0
x:    .quad 0
y:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
