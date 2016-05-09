#in formals
#before we get the ID in isID
#after consume in is Id 
#found the beginning of the array
#heyo found the end
#in formals
#we have found a formal without a tilde instead
#before we get the ID in isID
#after consume in is Id 
#in formals
#found the beginning of the array
#heyo found the end
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
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
    ld 15, 404
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
#0:main:0
#hello is there anybody in there
#got into case 1 with an eARRAY
#this is the length of the array 3
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
    addi 27, 27, 2
    add 15, 15, 27
    xor 27, 27, 27
    std 15, array0@toc(2)
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
    addi 27, 27, 1
    add 15, 15, 27
    xor 27, 27, 27
    std 15, array1@toc(2)
#wtf where am I 2
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
    std 15, array2@toc(2)
#got into state
#0:main:0
#hello is there anybody in there
# The first call Actuals kind is 0
    ld 15, array@toc(2)
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
array0:   .quad 0
array1:   .quad 0
array2:   .quad 0
a:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
