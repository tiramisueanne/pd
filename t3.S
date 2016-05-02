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
    .global factorial
factorial:
    ld 15, n@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    std  15, i@toc(2)
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
    std  15, v@toc(2)
whelpfactorial:
    ld 15, i@toc(2)
    push 15
    ld 15, n@toc(2)
    pop 16
    cmp 0, 1, 16, 15
    bc 0x4,0,  nLess6
    xor 15, 15, 15
    addi 15, 15, 1
    b endExp6
nLess6:
    xor 15, 15, 15
endExp6:
    add. 15, 15, 15
    bc 0xC, 2,  endwhelpfactorial
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
    std  15, i@toc(2)
    ld 15, v@toc(2)
    push 15
    ld 15, i@toc(2)
    pop 16
    mulld 15, 15, 16
    std  15, v@toc(2)
    b whelpfactorial
endwhelpfactorial:
    ld 15, v@toc(2)
#WHAT HAVE I DONE WRONG
#main
    blr
    blr
    .global main
main:
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
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
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
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
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
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
    addi 27, 27, 3
    add 15, 15, 27
    xor 27, 27, 27
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
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
    addi 27, 27, 4
    add 15, 15, 27
    xor 27, 27, 27
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
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
    mfspr 17, 8
    bl print
    mtspr 8, 17
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
    addi 27, 27, 6
    add 15, 15, 27
    xor 27, 27, 27
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
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
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    mfspr 17, 8
    bl print
    mtspr 8, 17
    b exit
    .data
     .fill 8000
.section ".toc", "aw"
n:    .quad 0
i:    .quad 0
v:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
