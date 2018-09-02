#include <stdio.h>
#include <stdarg.h>
#include <ctype.h>
#include "ylib/dict.h"

#define between(c,start,end) ((c) >= (start) && (c) <= (end))
#define islower(c) between(c,'a','z')
#define isupper(c) between(c,'A','Z')
#define isalpha(c) (islower(c) || isupper(c))
#define isnum(c)   between(c,'0','9')
#define isalnum(c) (isalpha(c) || isnum(c))

#define isspace(c) ((c) == ' ' || (c) == '\t' || (c) == '\r' || (c) == '\n' || (c) == '\v')

static inline void println(const char *str, ...)
{
    va_list params;
    va_start(params, str);
    
    vprintf(str,params);
    putchar('\n');
}

int main(int argc, char *argv[])
{
    
    struct dict_head s;
    
    dict_init(&s);
    dict_add(&s, "yasar","arabaci");
    dict_add(&s, "muhammed","arabaci");
    dict_remove(&s, "yasar");
    
    println("%s", dict_get(&s, "yasar"));
    println("%s", dict_get(&s, "muhammed"));
    println("%s", dict_get(&s, "osman"));
    return 0;
}