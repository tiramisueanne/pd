#in formals
#we have found a formal without a tilde instead
#before we get the ID in isID
#after consume in is Id 
#in formals
#I HAVE IDENTIFIED A TILDE
#I FOUND A FUCKING TILDE
#WE HAVE FOUND A FORMAL THAT IS SUPPOSED TO BE A FULL ARRAY
#we have found a formal without a tilde instead
#before we get the ID in isID
#after consume in is Id 
#found the beginning of the array
#heyo found the end
#in formals
#found the beginning of the array
#heyo found the end
#before we get the ID in isID
#after consume in is Id 
#passed the left smooth bracket
#before getting the expression in actuals
#after getting the expresssion in actuals
#the kind of expression you just got 1
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
#got past the genexp
    blr
    blr
    .global b
b:
#got into state
#5:b:0
#this is the arrayName y
# this is the tmp->var 
#this is the namefunk a
#this is the tmp's length 0
    ld 15, p0@toc(2)
#got past the genexp
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
# The first call Actuals kind is 11
#WE HAVE GONE FULL ARRAY RIGHT NOW
#the variable name I am looking for (p->callActuals->first->fullName) y
#the variable name I am looking for right now (tmp->var) x
#the variable name I am looking for right now (tmp->var) y
#the length of my array that I'm trying to pass 2
    ld 15, y0@toc(2)
    std 15, p0@toc(2)
    ld 15, y1@toc(2)
    std 15, p1@toc(2)
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
p:    .quad 0
y0:   .quad 0
y1:   .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
