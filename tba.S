#in formals
#found the beginning of the array
#heyo found the end
#before we get the ID in isID
#after consume in is Id 
#found the beginning of the array
#heyo found the end
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
    addi 27, 27, 3
    add 15, 15, 27
    xor 27, 27, 27
    std 15, x0@toc(2)
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
    addi 27, 27, 5
    add 15, 15, 27
    xor 27, 27, 27
    std 15, x1@toc(2)
#wtf where am I 2
    xor 15, 15, 15
    xor 8, 8, 8
    li 8, 8
    sld 27, 27, 8
    addi 27, 27, 0
    add 15, 15, 27
    xor 27, 27, 27
    std 15, x2@toc(2)
#got into state
#2:main:0
#this is the arrayName x
# this is the tmp->var 
#this is the namefunk main
#this is the tmp's length 3
    ld 15, x2@toc(2)
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
    bc 0x4, 2,  nEquals6
    xor 15, 15, 15
    addi 15, 15, 1
    b endExp6
nEquals6:
    xor 15, 15, 15
endExp6:
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
#got past the genexp
    b exit
    b endstatemain
elsemain:
endstatemain:
#got into state
#6:main:0
#this is the arrayName x
# this is the tmp->var 
#this is the namefunk main
#this is the tmp's length 3
    ld 15, x2@toc(2)
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
    std 15, x2@toc(2)
#got into state
#1:main:0
#this is the arrayName x
# this is the tmp->var 
#this is the namefunk main
#this is the tmp's length 3
    ld 15, x2@toc(2)
    mfspr 17, 8
    bl print
    mtspr 8, 17
    b exit
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
x0:   .quad 0
x1:   .quad 0
x2:   .quad 0
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
