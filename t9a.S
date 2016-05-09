#in formals
#found the beginning of the array
undefined char 45
#===> error at 2:10 <===
.macro push arg1
    std \arg1, 8(1)
    addi 1, 1, 8
.endm
.macro pop arg1
    ld \arg1,  0(1)
    subi 1,1, 8
.endm
    .text
#but why tho
    .data
     .fill 8000
.section ".toc", "aw"
stackBase:
stackBasePtr:
    .quad stackBase
    .global entry
entry :
    .quad main
    .quad .TOC.@tocbase
    .quad 0
