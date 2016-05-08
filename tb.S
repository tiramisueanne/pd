.macro push arg1
    std \arg1, 8(1)
    addi 1, 1, 8
.endm
.macro pop arg1
    ld \arg1,  0(1)
    subi 1,1, 8
.endm
    .text
    .global main
main:
#got into state
#1:main:0
    ld 15, x@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#2:main:0
    ld 15, x@toc(2)
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
    addi 27, 27, 10
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    cmp 0, 1, 15, 16
    bc 0x4, 2,  nEquals4
    xor 15, 15, 15
    addi 15, 15, 1
    b endExp4
nEquals4:
    xor 15, 15, 15
endExp4:
    add. 15, 15, 15
    bc 0xC ,2, elsemain
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
    b endstatemain
elsemain:
endstatemain:
#got into state
#0:main:0
#hello is there anybody in there
    ld 15, x@toc(2)
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
    std  15, x@toc(2)
#got into state
#0:main:0
#hello is there anybody in there
    mfspr 17, 8
    push 17
    bl main
    pop 17
    mtspr 8, 17
    std  15, z@toc(2)
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
x:    .quad 0
z:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
