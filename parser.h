#ifndef _PARSER_H_
#define _PARSER_H_

#include <stdint.h>

struct Expression;
typedef struct Expression Expression;

struct Statement;
typedef struct Statement Statement;
//to handle sending over arrays 
typedef struct Actuals {
    int n;
    //we make sure this sends over the arrayBits
    Expression *first;
    struct Actuals *rest;
} Actuals;

typedef struct ArrayBits {
    int n;
    Expression *first;
    struct ArrayBits *rest;
} ArrayBits;

enum EKind {
    eVAR,
    eVAL,
    ePLUS,
    eMUL,
    eEQ,
    eNE,
    eLT,
    eGT,
    eCALL,
    eARRAY,
    eINDEX,
    eFULLARRAY
};

//we could add the array to the different
//types of expressions
struct Expression {
    enum EKind kind;
    union {
        /* EVAR */ char* varName;
        /* EVAL */ uint64_t val;
        //this should be the array struct
        /* EINDEX */ struct{
            char* arrayName;
            uint64_t index;
        };
        /* EARRAY */ struct{
                //I don't know how to make it so that
                //it's not expression pointers lol
                //Expression *firstBit;
                ArrayBits *arrayBit;
                //uint32_t length;
        };
        char *fullName;
        /* EPLUS, EMUL, ... */ struct {
            Expression *left;
            Expression *right;
        };
        /* ECALL */ struct {
            char* callName;
            Actuals* callActuals;
        };
    };
};
    

typedef struct Block {
    int n;
    Statement *first;
    struct Block* rest;
} Block;

typedef struct While {
    Expression *condition;
    Statement *body;
} While;

typedef struct If {
    Expression *condition;
    Statement *thenPart;
    Statement *elsePart;
} If;

typedef struct Print {
    Expression *expression;
} Print;

enum SKind {
    sAssignment,
    sPrint,
    sIf,
    sWhile,
    sBlock,
    sReturn,
    sAssArray
};

struct Statement {
    enum SKind kind;
    union {
        struct {
            char* assignName;
            Expression *assignValue;
        };
        struct {
            char* arrayName;
            int index;
            Expression *value;
        };
        Expression *printValue;
        struct {
            Expression* ifCondition;
            Statement* ifThen;
            Statement* ifElse;
        };
        struct {
            Expression *whileCondition;
            Statement* whileBody;
        };
        Block *block;
        Expression* returnValue;
    };
};

typedef struct Statements {
    Statement *first;
    struct Statemens *rest;
} Statements;

typedef struct Formals {
    int n;
    char* first;
    int isArray;
    struct Formals *rest;
} Formals;

typedef struct Fun {
    char* name;
    Formals *formals;
    Statement *body;
} Fun;

typedef struct Funs {
    int n;
    Fun *first;
    struct Funs *rest;
} Funs;

extern Funs* parse();

#endif
