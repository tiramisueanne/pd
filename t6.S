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
    .text
    .global b
b:
#got into state
#1:b:0
    ld 15, x@toc(2)
    push 15
    ld 15, y@toc(2)
    pop 16
    add 15, 15, 16
    mfspr 17, 8
    bl print
    mtspr 8, 17
    blr
    .global c
c:
#got into state
#1:c:0
    ld 15, x@toc(2)
    push 15
    ld 15, y@toc(2)
    pop 16
    mulld 15, 15, 16
    mfspr 17, 8
    bl print
    mtspr 8, 17
    blr
    .global a
a:
#got into state
#2:a:0
    ld 15, x@toc(2)
    push 15
    ld 15, y@toc(2)
    pop 16
    cmp 0, 1, 16, 15
    bc 0x4, 1, nGreater9
    xor 15, 15, 15
    addi 15, 15, 1
    b endExp9
nGreater9:
    xor 15, 15, 15
endExp9:
    add. 15, 15, 15
    bc 0xC ,2, elsea
#got into state
#4:a:0
#got into state
#0:aB:66
#hello is there anybody in there
    ld 15, x@toc(2)
    std 15, x@toc(2)
    ld 15, y@toc(2)
    std 15, y@toc(2)
    mfspr 17, 8
    push 17
    bl b
    pop 17
    mtspr 8, 17
    std  15, z@toc(2)
    b endstatea
elsea:
#got into state
#4:a:65
#got into state
#0:aB:66
#hello is there anybody in there
    ld 15, x@toc(2)
    std 15, x@toc(2)
    ld 15, y@toc(2)
    std 15, y@toc(2)
    mfspr 17, 8
    push 17
    bl c
    pop 17
    mtspr 8, 17
    std  15, z@toc(2)
endstatea:
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
    addi 27, 27, 10
    add 15, 15, 27
    xor 27, 27, 27
    std 15, x@toc(2)
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
    std 15, y@toc(2)
    mfspr 17, 8
    push 17
    bl a
    pop 17
    mtspr 8, 17
    std  15, z@toc(2)
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
    addi 27, 27, 20
    add 15, 15, 27
    xor 27, 27, 27
    std 15, x@toc(2)
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
    std 15, y@toc(2)
    mfspr 17, 8
    push 17
    bl a
    pop 17
    mtspr 8, 17
    std  15, z@toc(2)
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
x:    .quad 0
y:    .quad 0
z:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
