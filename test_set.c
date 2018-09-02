#include <stdio.h>
#include <stdarg.h>
#include <ctype.h>
#include "ylib/set.h"

#define between(c,start,end) ((c) >= (start) && (c) <= (end))
#define islower(c) between(c,'a','z')
#define isupper(c) between(c,'A','Z')
#define isalpha(c) (islower(c) || isupper(c))
#define isnum(c)   between(c,'0','9')
#define isalnum(c) (isalpha(c) || isnum(c))

#define isspace(c) ((c) == ' ' || (c) == '\t' || (c) == '\r' || (c) == '\n')

static inline void println(const char *str, ...)
{
    va_list params;
    va_start(params, str);
    
    vprintf(str,params);
    putchar('\n');
}

int main(int argc, char *argv[])
{
    FILE *f;
    int c;
    char **elems;
    char buffer[0x100];
    const char *elem;
    size_t count = 0;
    size_t i = 0;
    
    struct set_head s;
    
    if(argc < 2)
        exit(EXIT_FAILURE);
    

    
    f = fopen(argv[1],"rb");
    
    set_init(&s);
    
    while((c = fgetc(f)) != EOF) {
        if(isalnum(c)) {
            buffer[i++] = c;
        } else {
            /* skip consequtive space */
            while(!isalnum(c) && c != EOF)
                c = fgetc(f);
            ungetc(c, f);
            buffer[i] = 0;
            i = 0;
            set_add(&s, buffer);
            count++;
        }
  
    }
    buffer[i] = 0;
    set_add(&s, buffer);
    
    set_loop(&s, elem, i)
        println("%s",elem);
    end_set_loop
    
    println("%d unique words, %d total words.", s.len, count);
    return 0;
}