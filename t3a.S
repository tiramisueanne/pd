#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
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
    .global factorial
factorial:
#got into state
#1:factorial:0
    ld 15, n@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#0:factorial:0
#hello is there anybody in there
#got into case 1 with an eARRAY
#this is the length of the array 1
#wtf where am I 0
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    std 15, i0@toc(2)
#got into state
#0:factorial:0
#hello is there anybody in there
#got into case 1 with an eARRAY
#this is the length of the array 1
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
    addi 27, 27, 1
    add 15, 15, 27
    xor 27, 27, 27
    std 15, v0@toc(2)
#got into state
#3:factorial:0
whelpfactorial:
    ld 15, i0@toc(2)
    push 15
    ld 15, n0@toc(2)
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
#got into state
#4:factorial:0
#got into state
#6:factorialB:66
    ld 15, i0@toc(2)
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
    std 15, i0@toc(2)#got into state
#6:factorialB:66
    ld 15, v0@toc(2)
    push 15
    ld 15, i0@toc(2)
    pop 16
    mulld 15, 15, 16
    std 15, v0@toc(2)    b whelpfactorial
endwhelpfactorial:
#got into state
#5:factorial:65
    ld 15, v@toc(2)
    blr
    blr
    .global main
main:
#got into state
#1:main:0
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
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
n:    .quad 0
i0:   .quad 0
v0:   .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
