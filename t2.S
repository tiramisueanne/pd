#in formals
#we have found a formal without a tilde instead
#in formals
#we have found a formal without a tilde instead
#in formals
#we have found a formal without a tilde instead
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#in formals
#we have found a formal without a tilde instead
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#before we get the ID in isID
#after consume in is Id 
#in formals
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
    .text
    .global f
f:
#got into state
#1:f:0
    ld 15, a@toc(2)
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
    bc 0x4, 2,  nEquals6
    xor 15, 15, 15
    addi 15, 15, 1
    b endExp6
nEquals6:
    xor 15, 15, 15
endExp6:
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
# The first call Actuals kind is 3
    ld 15, a@toc(2)
    push 15
    ld 15, i@toc(2)
    pop 16
    mulld 15, 15, 16
    std 15, a@toc(2)
# The first call Actuals kind is 2
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
# The first call Actuals kind is 0
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
# The first call Actuals kind is 1
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
    std 15, a@toc(2)
# The first call Actuals kind is 1
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
# The first call Actuals kind is 0
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
#1:main:0
# The first call Actuals kind is 1
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
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
a:    .quad 0
i:    .quad 0
n:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
