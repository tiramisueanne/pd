#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#did we get into actuals
#found the beginning of the array
#heyo found the end
#found the beginning of the array
#heyo found the end
#did we get into actuals
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
#did we get into actuals
#found the beginning of the array
#heyo found the end
#did we get into actuals
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
    .global main
main:
#got into state
#0:main:0
#hello is there anybody in there
#got into case 1 with an eARRAY
#this is the length of the array 4
#wtf where am I 0
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    std 15, a0@toc(2)
#wtf where am I 1
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    std 15, a1@toc(2)
#wtf where am I 2
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    std 15, a2@toc(2)
#wtf where am I 3
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    std 15, a3@toc(2)
#got into state
#6:main:0
    ld 15, a0@toc(2)
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
    addi 27, 27, 3
    add 15, 15, 27
    xor 27, 27, 27
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
    addi 27, 27, 4
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    mulld 15, 15, 16
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
    addi 27, 27, 5
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    add 15, 15, 16
    pop 16
    add 15, 15, 16
    std 15, x@toc(2)
    mfspr 17, 8
    push 17
    bl show
    pop 17
    mtspr 8, 17
    std 15, a0@toc(2)
#got into state
#6:main:0
    ld 15, a1@toc(2)
    push 15
    ld 15, a1@toc(2)
    pop 16
    add 15, 15, 16
    push 15
    ld 15, a1@toc(2)
    pop 16
    mulld 15, 15, 16
    push 15
    ld 15, a1@toc(2)
    pop 16
    add 15, 15, 16
    std 15, x@toc(2)
    mfspr 17, 8
    push 17
    bl show
    pop 17
    mtspr 8, 17
    std 15, a1@toc(2)
#got into state
#6:main:0
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
    addi 27, 27, 3
    add 15, 15, 27
    xor 27, 27, 27
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
    addi 27, 27, 4
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    mulld 15, 15, 16
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
    addi 27, 27, 5
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    add 15, 15, 16
    pop 16
    add 15, 15, 16
    std 15, x@toc(2)
    mfspr 17, 8
    push 17
    bl show
    pop 17
    mtspr 8, 17
    std 15, a2@toc(2)
#got into state
#6:main:0
    ld 15, a0@toc(2)
    push 15
    ld 15, a1@toc(2)
    push 15
    ld 15, a2@toc(2)
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
    addi 27, 27, 5
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    add 15, 15, 16
    pop 16
    mulld 15, 15, 16
    pop 16
    add 15, 15, 16
    std 15, x@toc(2)
    mfspr 17, 8
    push 17
    bl show
    pop 17
    mtspr 8, 17
    std 15, a3@toc(2)
    b exit
    .global show
show:
#got into state
#1:show:0
    ld 15, x@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#5:show:0
    ld 15, x@toc(2)
    blr
    blr
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
a0:   .quad 0
a1:   .quad 0
a2:   .quad 0
a3:   .quad 0
x:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
