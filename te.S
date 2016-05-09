#in formals
#we have found a formal without a tilde instead
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
#passed the left smooth bracket
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 0
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 0
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 0
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 2
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
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
#passed the left smooth bracket
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 0
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 0
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 2
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#in formals
#we have found a formal without a tilde instead
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 0
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 2
#before we get the ID in isID
#after consume in is Id 
#in formals
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#before getting the expression in actuals
#after getting the expresssion in actuals
#the kind of expression you just got 1
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
    .text
    .global f4
f4:
#got into state
#1:f4:0
    ld 15, a@toc(2)
    push 15
    ld 15, b@toc(2)
    push 15
    ld 15, c@toc(2)
    push 15
    ld 15, d@toc(2)
    pop 16
    add 15, 15, 16
    pop 16
    add 15, 15, 16
    pop 16
    add 15, 15, 16
    mfspr 17, 8
    bl print
    mtspr 8, 17
    blr
    .global f3
f3:
#got into state
#1:f3:0
    ld 15, a@toc(2)
    push 15
    ld 15, b@toc(2)
    push 15
    ld 15, c@toc(2)
    pop 16
    add 15, 15, 16
    pop 16
    add 15, 15, 16
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#0:f3:0
#hello is there anybody in there
# The first call Actuals kind is 0
    ld 15, a@toc(2)
    std 15, a@toc(2)
# The first call Actuals kind is 0
    ld 15, b@toc(2)
    std 15, b@toc(2)
# The first call Actuals kind is 0
    ld 15, c@toc(2)
    std 15, c@toc(2)
# The first call Actuals kind is 2
    ld 15, c@toc(2)
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
    std 15, d@toc(2)
    mfspr 17, 8
    push 17
    bl f4
    pop 17
    mtspr 8, 17
    std  15, x@toc(2)
#got into state
#1:f3:0
    ld 15, a@toc(2)
    push 15
    ld 15, b@toc(2)
    push 15
    ld 15, c@toc(2)
    pop 16
    add 15, 15, 16
    pop 16
    add 15, 15, 16
    mfspr 17, 8
    bl print
    mtspr 8, 17
    blr
    .global f2
f2:
#got into state
#1:f2:0
    ld 15, a@toc(2)
    push 15
    ld 15, b@toc(2)
    pop 16
    add 15, 15, 16
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#0:f2:0
#hello is there anybody in there
# The first call Actuals kind is 0
    ld 15, a@toc(2)
    std 15, a@toc(2)
# The first call Actuals kind is 0
    ld 15, b@toc(2)
    std 15, b@toc(2)
# The first call Actuals kind is 2
    ld 15, b@toc(2)
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
    std 15, c@toc(2)
    mfspr 17, 8
    push 17
    bl f3
    pop 17
    mtspr 8, 17
    std  15, x@toc(2)
#got into state
#1:f2:0
    ld 15, a@toc(2)
    push 15
    ld 15, b@toc(2)
    pop 16
    add 15, 15, 16
    mfspr 17, 8
    bl print
    mtspr 8, 17
    blr
    .global f1
f1:
#got into state
#1:f1:0
    ld 15, a@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#0:f1:0
#hello is there anybody in there
# The first call Actuals kind is 0
    ld 15, a@toc(2)
    std 15, a@toc(2)
# The first call Actuals kind is 2
    ld 15, a@toc(2)
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
    std 15, b@toc(2)
    mfspr 17, 8
    push 17
    bl f2
    pop 17
    mtspr 8, 17
    std  15, x@toc(2)
#got into state
#1:f1:0
    ld 15, a@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
    blr
    .global main
main:
#got into state
#0:main:0
#hello is there anybody in there
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
    addi 27, 27, 2
    add 15, 15, 27
    xor 27, 27, 27
    std 15, a@toc(2)
    mfspr 17, 8
    push 17
    bl f1
    pop 17
    mtspr 8, 17
    std  15, x@toc(2)
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
a:    .quad 0
b:    .quad 0
c:    .quad 0
d:    .quad 0
x:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
