#in formals
#I HAVE IDENTIFIED A TILDE
#I FOUND A FUCKING TILDE
#WE HAVE FOUND A FORMAL THAT IS SUPPOSED TO BE A FULL ARRAY
#we have found a formal without a tilde instead
#in formals
#we have found a formal without a tilde instead
#in formals
#we have found a formal without a tilde instead
#before we get the ID in isID
#after consume in is Id 
#found the beginning of the array
#heyo found the end
#before we get the ID in isID
#after consume in is Id 
#found the beginning of the array
#heyo found the end
#before we get the ID in isID
#after consume in is Id 
#found the beginning of the array
#heyo found the end
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
#found the beginning of the array
#heyo found the end
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#I HAVE IDENTIFIED A TILDE
#before getting the expression in actuals
#I FOUND A FUCKING TILDE
#HEYO WE HAVE FOUND AN EXPRESSION WHICH IS SUPPOSED TO BE A FULL ARRAY
#woop woop new expression made
#it is saying that the next one is an id
#hey do u get the id in fullarray
#I have consumed the id in fullarray
#after getting the expresssion in actuals
#the kind of expression you just got 11
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 2
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 0
#in formals
#we have found a formal without a tilde instead
#found the beginning of the array
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#before we get the ID in isID
#after consume in is Id 
#heyo found the end
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#I HAVE IDENTIFIED A TILDE
#before getting the expression in actuals
#I FOUND A FUCKING TILDE
#HEYO WE HAVE FOUND AN EXPRESSION WHICH IS SUPPOSED TO BE A FULL ARRAY
#woop woop new expression made
#it is saying that the next one is an id
#hey do u get the id in fullarray
#I have consumed the id in fullarray
#after getting the expresssion in actuals
#the kind of expression you just got 11
#before getting the expression in actuals
#after getting the expresssion in actuals
#the kind of expression you just got 1
#before getting the expression in actuals
#before we get the ID in isID
#after consume in is Id 
#after getting the expresssion in actuals
#the kind of expression you just got 0
#in formals
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#before getting the expression in actuals
#after getting the expresssion in actuals
#the kind of expression you just got 1
#before we get the ID in isID
#after consume in is Id 
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
#this is the arrayName a
# this is the tmp->var 
#this is the tmp's length 0
    ld 15, a0@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#1:f:0
#this is the arrayName a
# this is the tmp->var 
#this is the tmp's length 0
    ld 15, a1@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
#got into state
#1:f:0
#this is the arrayName a
# this is the tmp->var 
#this is the tmp's length 0
    ld 15, a2@toc(2)
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
    bc 0x4, 2,  nEquals8
    xor 15, 15, 15
    addi 15, 15, 1
    b endExp8
nEquals8:
    xor 15, 15, 15
endExp8:
    add. 15, 15, 15
    bc 0xC ,2, elsef
#got into state
#5:f:0
#this is the arrayName a
# this is the tmp->var 
#this is the tmp's length 0
    ld 15, a0@toc(2)
#got past the genexp
    blr
    b endstatef
elsef:
endstatef:
#got into state
#5:f:0
# The first call Actuals kind is 11
#WE HAVE GONE FULL ARRAY RIGHT NOW
#the variable name I am looking for (p->callActuals->first->fullName) a
#the variable name I am looking for right now (tmp->var) a
#the length of my array that I'm trying to pass 0
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
#got past the genexp
    blr
    blr
    .global factorial
factorial:
#got into state
#0:factorial:0
#hello is there anybody in there
#got into case 1 with an eARRAY
#this is the length of the array 3
#wtf where am I 0
    ld 15, n@toc(2)
    std 15, a0@toc(2)
#wtf where am I 1
    ld 15, n@toc(2)
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
    std 15, a1@toc(2)
#wtf where am I 2
    ld 15, n@toc(2)
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
    addi 27, 27, 2
    add 15, 15, 27
    xor 27, 27, 27
    pop 16
    add 15, 15, 16
    std 15, a2@toc(2)
#got into state
#5:factorial:0
# The first call Actuals kind is 11
#WE HAVE GONE FULL ARRAY RIGHT NOW
#the variable name I am looking for (p->callActuals->first->fullName) a
#the variable name I am looking for right now (tmp->var) n
#the variable name I am looking for right now (tmp->var) a
#the length of my array that I'm trying to pass 3
    ld 15, a0@toc(2)
    std 15, a0@toc(2)
    ld 15, a1@toc(2)
    std 15, a1@toc(2)
    ld 15, a2@toc(2)
    std 15, a2@toc(2)
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
#got past the genexp
    blr
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
    addi 27, 27, 5
    add 15, 15, 27
    xor 27, 27, 27
    std 15, n@toc(2)
    mfspr 17, 8
    push 17
    bl factorial
    pop 17
    mtspr 8, 17
    std  15, z@toc(2)
#got into state
#1:main:0
    ld 15, z@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
a0:   .quad 0
a1:   .quad 0
a2:   .quad 0
i:    .quad 0
n:    .quad 0
z:    .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
