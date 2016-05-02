#ifndef _PARSER_H_
#define _PARSER_H_

#include <stdint.h>

struct Expression;
typedef struct Expression Expression;

struct Statement;
typedef struct Statement Statement;

typedef struct Actuals {
    int n;
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
    eARRAY
};

//we could add the array to the different
//types of expressions
struct Expression {
    enum EKind kind;
    union {
        /* EVAR */ char* varName;
        /* EVAL */ uint64_t val;
        //this should be the array struct
        struct{
                //I don't know how to make it so that 
                //it's not expression pointers lol
                Expression *firstBit;
                ArrayBits *restBit;
                uint32_t length;
        };
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
    sReturn
};

struct Statement {
    enum SKind kind;
    union {
        struct {
            char* assignName;
            Expression *assignValue;
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
