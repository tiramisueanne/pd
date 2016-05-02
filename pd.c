#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "parser.h"
#include <string.h>
int howManyBytes = 2000;
int off;
extern void genExp();
int blo;
//this holds all of the args given
typedef struct args{
    char *nam;
    struct args *next;
    struct args *behind;
} args;
//this holds what the local variables
typedef struct local{
    char *var;
    //this is what we call the variable
    char *varCalled;
    int length;
    struct local *next;
    int offset;
} local;

//this is a function and who calls it and whatnot
typedef struct funk{
    struct local *locals;
    int callTimes;
    char *namefunk;
    int form;
    struct args *parm;
    struct funk *next;
} funk;

funk *header;
//this will tell us what statement we are using
void state(Statement *p, char *Stringnamer, char *funkN) {
    /*printf("got into state");
      printf("%d:%s:%d", p->kind, Stringnamer, blo);*/
    char *namr = malloc(sizeof(char *));
    //this is remnants of my locality code
    strcpy(namr, Stringnamer);
    funk *temp = header;
    temp = temp->next;
    //while 
    while(strcmp(temp->namefunk, funkN) != 0) {
        temp = temp->next;
    }
    //remember to change the name of the character so that it reflects where it is at 
    //( could reintroduce locality)
    switch(p->kind) {
        //this is an assignment
        case 0: {
            //gets us the local variables
            local *tmp = temp->locals;
            //this is making sure that 
            while(tmp->next != 0  && strcmp(tmp->var, p->assignName) != 0) {
                tmp= tmp->next;
            }
            //this is what I also used to create unique names
            asprintf(&namr, "%s%s", p->assignName, Stringnamer);
            //I changed up a couple things in here to get rid of locality
            while(strcmp(tmp->var, p->assignName) == 0 && strcmp(tmp->varCalled,namr) != 0) {
                /*printf("%s:%s", "old namr was", namr);
                  printf("%s:%d", "this is the length of the namr", (int) strlen(namr)); */
                namr[strlen(namr) -1] = '\0';
                /*printf("%s:%s", "this is the new namr", namr);*/
                if((int) strlen(namr) == 0) {
                    asprintf(&namr, "%s%s", p->assignName, Stringnamer);
                    break;
                }
            }
            //we need to put this all at the end
            if(strcmp(tmp->var, p->assignName) != 0) {
                //printf(".data\n");
                //printf("%s%s:   .quad 0\n", p->assignName, Stringnamer);
                //printf(".text\n");

                local *newLoc = malloc(sizeof(local));
                newLoc->var = p->assignName;
                newLoc->next = 0;
                newLoc->length = 1;
                asprintf(&newLoc->varCalled, "%s%s", p->assignName, Stringnamer);
                tmp->offset = off;
                off += 64;
                tmp->next = newLoc;
            }
            genExp(p->assignValue, funkN);
            //printf("this is the assignment we are giving");
            //printf("%s:%s", "this is namr here", namr);
            //this is where we would store whatever is in our result register
            printf("    std  15, %s@toc(2)\n",p->assignName);
            break;
        }
        //this is to handle printing
        case 1: {
         //printf("hey we got into the first case");
         genExp(p->printValue, funkN);
         printf("    mfspr 17, 8\n");
         printf("    bl print\n");
         printf("    mtspr 8, 17\n");
         break;
        }
        //this handles if statements
        //which will have an expression, a statement, and then an else statement
        case 2: {
            genExp(p->ifCondition, funkN);
            if(blo != 0) {
                asprintf(&namr, "%s%c", Stringnamer, blo);
            }
            printf("    add. 15, 15, 15\n");
            printf("    bc 0xC ,2, else%s\n", namr);
            state(p->ifThen, namr,funkN);
            printf("    b endstate%s\n", namr);
            printf("else%s:\n", namr);
            if(p->ifElse != 0) {
                state(p->ifElse, namr, funkN);
            }
            printf("endstate%s:\n", namr);
            break;
        }
        //this takes care of while statements
        case 3: {
            if(blo != 0) {
                asprintf(&namr, "%s%c", Stringnamer, blo);
            }
            printf("whelp%s:\n", namr);
            genExp(p->whileCondition, funkN);
            printf("    add. 15, 15, 15\n");
            printf("    bc 0xC, 2,  endwhelp%s\n", namr);
            state(p->whileBody, namr,funkN);
            printf("    b whelp%s\n", namr);
            printf("endwhelp%s:\n", namr);
            break;
        }
        //handle blocks
        case 4: {
            if(p->block->first== 0) {
                break;
            } 
            if(blo == 0) {
                blo = 65;
            }
            if(blo != 0) {
                blo++;
                //printf("we got into block, and made a new name\n");
                asprintf(&namr, "%s%c", Stringnamer, (char) blo);
                //printf("%s", namr);
            }
            state(p->block->first, namr,funkN);
            int numOfStatements = p->block->n;
            for(int x = 1; x<numOfStatements; x++) {
                Block *curr = p->block->rest;
                state(curr->first, namr, funkN);
            }
            blo--;
            break;
        }
        //the return value
        case 5: {
            /*printf("got into the return value");*/
            genExp(p->returnValue, Stringnamer, funkN);
            if(strcmp(funkN, "main") != 0) {
                printf("    blr\n");
            }
            else {
                printf("    b exit\n");
            }
            break;
        }
        default: {
            printf("%s%d","default of state", p->kind);
            break;
        }   
    }
}
int expNum = 0;
void genExp(Expression *p, char *stringNamer, char *funkN) {
    //printf("got into genExp");
    expNum++;
   // printf("got into genExp\n");
   // printf("%d\n", p->kind);
    funk *temp = header;
    temp = temp->next;
    char *namr = malloc(sizeof(char *));
    while(strcmp(temp->namefunk, funkN) != 0) {
        temp = temp->next;
    }
    local *tmp = temp->locals;
    //printf("%s:%s", "this is the hdr for this function", tmp->var);
    switch(p->kind) {
        //this is the variable getting portion
        case 0: {
            //printf("we are looking through all of the arguments");
            if(tmp->next == 0) {
                //printf("the header doesn't have any pointerss");
            }
            //printf("%s:%s\n", "this is the var we are looking for", p->varName);
            while(strcmp(tmp->var, p->varName) != 0 && tmp->next != 0 ) {
                tmp = tmp->next;
                //printf("%s\n", tmp->var);
            }
            asprintf(&namr, "%s%s", p->varName, stringNamer);
            while(strcmp(tmp->var, p->varName) == 0 && strcmp(tmp->varCalled, namr) != 0 ) {
                namr[strlen(namr)-2] =  '\0';
                //printf("%s\n", namr);
            }
	   
            /*
	    temp = header;
            temp = temp->next;
	    while(temp != 0) {
                printf("%s:%s", "this is the name of the funk", temp->namefunk);
                tmp = temp->locals;
                tmp = tmp->next; 
	      i*  while(tmp != 0) {
	            if(strcmp(tmp->var, p->varName) == 0) {
                        printf("%s", "this is the var at the moment");
			printf("    ld 15, %s@toc(2)\n",tmp-> varCalled);
                    }
                    tmp = tmp->next; 
                
            }*/

            if(tmp->next == 0 && strcmp(tmp->var, p->varName) != 0) {
	        local *newLoc = malloc(sizeof(local));
                newLoc->var = p->varName;
                asprintf(&newLoc->varCalled, "%s%s", p->varName, funkN);
                newLoc->next = 0;
                tmp->next = newLoc;
                tmp = tmp->next;
                printf("    ld 15, %s@toc(2)\n",  newLoc->var);
                break;
            }
            //printf("prints from the case 0 of genexp");i
            printf("    ld 15, %s@toc(2)\n", tmp->var);
            break;
        }
        //evaluations which I'm guessing is just integer stuff
        case 1: {
            //printf("    li 15, %d\n", (int) p->val);
            printf("    xor 15, 15, 15\n");
            printf("    xor 8, 8, 8\n");
            printf("    li 8, 8\n");
            unsigned long x = 0;
            int count = 0;
            do {
                x = p->val & 0xFF00000000000000;
                x = x>>56;
                printf("    sld 27, 27, 8\n");
                printf("    addi 27, 27, %lu\n", x);
                count ++;
                p->val = p->val << 8;
                //printf("the new value of p->val %li", (long) p->val);
            }while(p->val != 0);
            printf("    add 15, 15, 27\n");
            printf("    xor 27, 27, 27\n");
            break;
        }
        //addition
        case 2: {
            genExp(p->left, stringNamer, funkN);
            printf("    push 15\n");
            genExp(p->right, stringNamer, funkN);
            printf("    pop 16\n");
            printf("    add 15, 15, 16\n");
            break;
        }
        //multiplication
        case 3: {
            genExp(p->left, stringNamer, funkN);
            printf("    push 15\n");
            genExp(p->right, stringNamer, funkN);
            printf("    pop 16\n");
            printf("    mulld 15, 15, 16\n");
            break;
        }
        //whether or not things are equal
        case 4: {
            genExp(p->left, stringNamer, funkN);
            printf("    push 15\n");
            genExp(p->right, stringNamer, funkN);
            printf("    pop 16\n");
            printf("    cmp 0, 1, 15, 16\n");
            printf("    bc 0x4, 2,  nEquals%d\n", expNum);
            printf("    xor 15, 15, 15\n");
            printf("    addi 15, 15, 1\n");
            printf("    b endExp%d\n", expNum);
            printf("nEquals%d:\n", expNum);
            printf("    xor 15, 15, 15\n");
            printf("endExp%d:\n", expNum);
            break;
        }
        //whether or not things are not equal
        case 5: {
            genExp(p->left, stringNamer, funkN);
            printf("    push 15\n");
            genExp(p->right, stringNamer, funkN);
            printf("    pop 16\n");
            printf("    cmp 0, 1, 15, 16\n");
            printf("    bc 0xC, 2,  eQuals%d\n", expNum);
            printf("    xor 15, 15, 15\n");
            printf("    addi 15, 15, 1\n");
            printf("    b endExp%d\n", expNum);
            printf("eQuals%d:\n", expNum);
            printf("    xor 15, 15, 15\n");
            printf("endExp%d:\n", expNum);
            break;
        }
        //whether or not things are less than
        case 6: {
            genExp(p->left, stringNamer, funkN);
            printf("    push 15\n");
            genExp(p->right, stringNamer, funkN);
            printf("    pop 16\n");
            printf("    cmp 0, 1, 16, 15\n");
            printf("    bc 0x4,0,  nLess%d\n", expNum);
            printf("    xor 15, 15, 15\n");
            printf("    addi 15, 15, 1\n");
            printf("    b endExp%d\n", expNum);
            printf("nLess%d:\n", expNum);
            printf("    xor 15, 15, 15\n");
            printf("endExp%d:\n", expNum);
            //printf("    cmp %%rcx, %%rax\n");
            break;
        }
        //whether or not things are greater than
        case 7: {
            genExp(p->left, stringNamer, funkN);
            printf("    push 15\n");
            genExp(p->right, stringNamer, funkN);
            printf("    pop 16\n");
            printf("    cmp 0, 1, 16, 15\n");
            printf("    bc 0x4, 1, nGreater%d\n", expNum);
            printf("    xor 15, 15, 15\n");
            printf("    addi 15, 15, 1\n");
            printf("    b endExp%d\n", expNum);
            printf("nGreater%d:\n", expNum);
            printf("    xor 15, 15, 15\n");
            printf("endExp%d:\n", expNum);
            break;
        }
        //the call function
        case 8: {
            /*printf("I got into case 8 in function");*/
            funk *temp = header;
            temp = temp->next;
            /*printf("%s:%s", "this is the name of the function that we're trying to call", p->callName);
              printf("%s:%s", "this is the name of the function", temp->namefunk);*/
            while(strcmp(temp->namefunk, p->callName) != 0) {
                //might cause bugs if the function isn't there
                temp = temp->next;

            }
            /*printf("%s%s", "this is the function that we are looking at right now", temp->namefunk);*/
            int numOfArgs = temp->form;
            /*printf("%s:%d", "this is the number of arguments this function takes", numOfArgs);*/
            args *tempArgs = temp->parm;

            /*temp->callTimes = temp->callTimes +1;*/
            for(int x = 1; x<=numOfArgs; x++) {
                tempArgs = tempArgs->next;
                genExp(p->callActuals->first, stringNamer, funkN);
                //printf("%s:%s", "this is the name of the function that we are looking at", temp->namefunk);
                printf("    std 15, %s@toc(2)\n", tempArgs->nam );
                p->callActuals = p->callActuals->rest;
            }
            //if(strcmp(funkN, p->callName) != 0) {
            printf("    mfspr 17, 8\n");
            printf("    push 17\n");
            printf("    bl %s\n", p->callName);
            printf("    pop 17\n");
            printf("    mtspr 8, 17\n");
            break;
        }

        //this is the case in which it is an array
        case 9: {
            //I would say that the length and the name of the array should be kept
            //by the program

            //we could put down the length in the data section
            /*while(p->first != 0) {
                genExp(p->first, stringNamer, funkN);

            }*/


        }
        default: {
            printf("%s%d", "this is the default of Genexp", p->kind);
            break;
        }
    }
}
//generate the different functions
void genFun(Fun * p) {
    printf("    .global %s\n", p->name);
    printf("%s:\n", p->name);
    /*if(strcmp(p->name, "main")==0) {
        printf("    push %%r15\n");
        printf("    push %%r14\n");
        printf("    push %%r13\n");
    }*/
    
        //I think this is backwards, as when we read in the actuals, we will be taking in the variable
        /*for(int x = p->formals->n; x>=1; x--) {
            if(x==6) {
                printf("    movq %s%s, %%r9", temP->nameFunk, );
            }
            if(x==5) {
                printf("    movq %s%s, %%r8", temP->nameFunk);
            }
            if(x==4) {
                printf("    movq %s%s, %%rcx", temP->nameFunk);
            }
            if(x==3) {
                printf("    movq %s%s, %%rdx", temP->nameFunk);
            }
            if(x==2) {
                printf("    movq %s%s, %%rsi", temp->nameFunk);
            }
            if(x==1) {
                printf("    movq %s%s, %%rdi", temp->nameFunk);
            }
            if(x> 6) {
                printf("    pop %%rax");
            }
        }

    
    printf("f    mov $0,%%rax\n");
      printf("%s:%d", "this is the case for genFun", p->body->kind);
      printf("%s:%d", "this is the case for genFun", p->body->kind);
      printf("%s:%d", "this is the case for genFun", p->body->kind);
      printf("%s:%d", "this is the case for genFun", p->body->kind); */
    switch(p->body->kind) {
        //remember to change the name of the character so that it reflects where it is at
        case 0: {
            printf("    .data\n");
            printf("%s%s:    .quad 0\n", p->body->assignName,p->name);
            printf("    .text\n");
            //printf("    what the fuck dude this is in genFun");
            break;
        }
        //this is to handle printing
        case 1: {
            //printf("hey we got into the first case");
            genExp(p->body->printValue, p->name, p->name);
            printf("    mov %%rax, %%rsi\n");
            printf("    mov formatting, %%rdi\n");
            printf("    mov $0, %%rax\n");
            printf("    call printf\n");
            break;
        }
        //
        case 2: {
            break;
        }
        case 3: {
            break;
        }
        case 4: {
            if(p->body->block->first== 0) {
                break;
            }
            //printf("it's getting into the block");
            char *stringNamer = malloc(sizeof(char *));
            //blockNum++;
            //printf("%s", stringNamer);
            blo = 0;
            stringNamer = p->name;
            state(p->body->block->first, stringNamer, p->name);
            int numOfStatements = p->body->block->n;
            //printf("%d", numOfStatements);
            Block *curr = 0;
            if(p->body->block->rest != 0) {
                curr = p->body->block->rest;
                //printf("%d", curr->n);
            }
            for(int x = 1; x<numOfStatements; x++) {
                state(curr->first, stringNamer, p->name);
                curr = curr->rest; 
            } 
            break;

        }
        case 5: {
            genExp(p->body->returnValue, p->name, p->name);
            printf("    blr\n");
            break;
        }
        default: {
            printf("%s%d","default of genFun", p->body->kind);
            break;
        }
    }

    if(strcmp(p->name, "main") == 0) {
        printf("    b exit\n");
    }
    else {
        printf("    blr\n");
    }
    
}
//this is called first to go through all of the functions and properly document them
void firstGo(Fun *p) {
    //I actually think this should be size of local lol
    local *hdr = malloc(sizeof(header));
    hdr->var = "";
    hdr->next = 0;
    local *tmp = hdr;
    funk* temp = header;
    /*printf("%s\n", p->name);*/
    while(temp->next != 0) {
        temp = temp->next;
    }
    //this is a new funk entry
    funk *newEnt = malloc(sizeof(funk));
    newEnt->form = 0;
    newEnt->namefunk = p->name;
    newEnt->next= 0;
    newEnt->locals = hdr;
    newEnt->callTimes = 0;
    //adds the new entry to the list of funks
    temp->next = newEnt;
    args *headr = malloc(sizeof( args));
    //header of the args
    args *temP = headr;
    //this puts all of the arguments into the 
    if(p->formals != 0) {
        /*printf("%s:%d\n", "this is the number of arguments that this function takes", p->formals->n);
          printf("    .data\n"); */
        //this stores all of the formal arguments
        int numOfForm = p->formals->n;
        for(int x = 1; x<=numOfForm; x++) {
            /*printf("%s:%s", "this is the function that we are in ", p->name);*/
            //this is setting up the arguments for the funk
            args *newP = malloc(sizeof(args ));
            temP->next = newP;
            newP->behind = temP;
            newP->nam = p->formals->first;
            p->formals = p->formals->rest;
            temP = newP;
            /*printf("%s%s:   .quad 0\n", newP->nam, newEnt->namefunk);*/
            local *newLoc = malloc(sizeof(local));
            newLoc->var = newP->nam;
            asprintf(&newLoc->varCalled, "%s%s", newP->nam, newEnt->namefunk);
            newLoc->next = 0;
            tmp->next = newLoc;
            tmp = tmp->next;
        }
        /*printf("%s:%s", "this is the header of our args", newEnt->locals->var );*/
        printf("    .text\n");
        newEnt->form = numOfForm;
        newEnt->parm = headr;
    }
    /*printf("it gets to the end of first go");*/
}
//
void firstGoes(Funs *p) {
    if(p == 0) {
        return;
    }
    firstGo(p->first);
    firstGoes(p->rest);
}
//this goes through all of the functions recursively
void genFuns(Funs * p) {
    //if there are no more functions, then we stop the recursion
    if (p == 0)
        return;
    //this goes through all of the functions first to properly document
    firstGoes(p);
    genFun(p->first);
    genFuns(p->rest);
}

/*int main(int argc, char *argv[]) {
    Funs *p =parse();

    printf("    .data\n"); 
    char formatting[] = "%d\n";
    printf("formatting:\n");
    for(int x =0; x<sizeof(formatting); x++) {
        printf("    .byte %d\n", formatting[x]);
    }
    //printf("formatting:   .string \"%%d\\n\"\n");
    *return 0;
}*/
//a doubly linked list of used Local something or others
typedef struct usedLocs {
    char *usedN;
    struct usedLocs *next;
    struct usedLocs *bck;
} usedLocs;

//this starts off the program 
int main(int argc, char *argv[]) {
    usedLocs *lastr = malloc(sizeof(usedLocs));
    lastr->usedN = "";
    lastr->next =0;
    char * mainN = malloc(sizeof(10));
    strcpy(mainN, "main");
    //parses the Funs
    Funs *p = parse();
    off = 0;    
    //this is creating an empty funk
    header = malloc(sizeof(funk));
    header->namefunk = "header";
    header->form = 0;
    header->next = 0;
    //set up our macros
    printf(".macro push arg1\n");
    printf("    std \\arg1, 8(1)\n");
    printf("    addi 1, 1, 8\n");
    printf(".endm\n");
    printf(".macro pop arg1\n");
    printf("    ld \\arg1,  0(1)\n");
    printf("    subi 1,1, 8\n");
    printf(".endm\n");
    /*printf("we got into main");*/
    printf("    .text\n");
    //THE MEATS OF OUR PROGRAM
    genFuns(p);
    printf("    .data\n");
    printf("     .fill 8000\n");
    printf(".section \".toc\", \"aw\"\n");
    //insert a for loop that goes through all of the funcs and prints all of the datas for everything
    funk *temp = header;
    if(temp->next != 0) {
        /* printf("we have at least one function");*/
        temp = temp->next;
        //not actually super sure why this while loop is like this lol
        while(temp != 0) {
            //this gets us all of the local variables
            local *locs = temp->locals;
            //goes through all of the local variables
    	    if(locs->next != 0) {
                    locs = locs->next;
                    /*printf("%s:%s", "this is the name of a variable in the function", locs->varCalled);*/
                    while(locs != 0) {
                        //this gives us all of the variables that we have used already, 
                        //to help us get rid of our program trying to access two addresses with the same 
                        //reference
                        usedLocs *tmp = lastr;
                        //this goes through all of the variables we have already used
                        while(tmp->next != 0) {
                            //if it is already used, STAHPIT DON'T USE IT
                            if(strcmp(locs->var, tmp->usedN ) == 0) {
                                break;
                            }
                            tmp = tmp->next;
                        }
                        //however
                        //if it's not used
                        //u can use it u kno, it ain't got no address already
                        if(strcmp(locs->var, tmp->usedN ) != 0) {
                            
                            printf("%s:    .quad 0\n", locs->var);
                            //adding to the list of names we already used
                            usedLocs *newUse = malloc(sizeof(usedLocs));
                            //to reintroduce localization, we would make this varCalled
                            newUse->usedN = locs->var;
                            newUse->next = 0;
                            tmp->next = newUse;
                        }
                        //go on to the next local variable
                        locs = locs->next;
                    }
            }
            temp = temp->next;
        }
    }
    //this is just setting everything up
    printf("stackBase:\n");
    printf("stackBasePtr:\n");
    printf("    .quad stackBase\n");
    printf("    .global entry\n"); 
    //printf("    .data\n");
    printf("entry :\n");
    printf("    .quad main\n");
    printf("    .quad .TOC.@tocbase\n");
    printf("    .quad 0\n");

    return 0;
}
