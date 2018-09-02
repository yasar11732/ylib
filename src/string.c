#include "ylib/string.h"
#include <ctype.h>

char *_empty_string = "";

size_t memhash(const void *mem, size_t size)
{
    size_t hash, i;
    
    hash = 2166136261;
    
    for(i=0 ; i < size; i++) {
        hash *= 16777619;
        hash ^= ((char *)mem)[i];
    }
    
    return hash;
}

char *xstrdup(const char *str)
{
    char *str2 = strdup(str);
    if(!str2)
        die("Couldnt duplicate %s\n",str);
    return str2;
}

char *strip(char *str)
{
    char *c;
    char *start;
    char *end;
    
    start = str;
    
    while(*start && !isgraph(*start))
        start++;
        
    
    if(*start == '\0') {/* There is no printable chracters in string */
        str[0] = '\0';
        return str;
    }
    
    // start points to first printable character
    end = c = start;
    while(*c) {
        if(isgraph(*c))
            end = c;
        c++;
    }
    
    // start points to first printable chracter, end points to last printable character
    // it is possible that start = end
    
    memmove(str, start, end - start + 1);
    
    str[end - start + 1] = 0; // Terminating null character
    
    return str;
}

char **split_replace(char *str, const char delim, size_t *numtokens)
{
    char **tokens = xmalloc(8 * sizeof(char *));
    size_t nr = 0;
    size_t alloc = 8;
    char *c;
    
    tokens[nr++] = str;
    
    for(c=str; *c; c++) {
        if(*c == delim) {
            *c = 0;
            ALLOC_GROW(tokens, nr+1, alloc);
            tokens[nr++] = c+1;
        }
    }
    
    if(numtokens)
        *numtokens = nr;
    
    ALLOC_GROW(tokens, nr+1, alloc);
    tokens[nr] = 0;
    
    return tokens;
}

char **split(const char *str, const char *delim, size_t *numtokens)
{
    char *copy = xstrdup(str);
    return split_replace(copy, delim, numtokens);
}

/* before
void string_appendc(struct string *s, char c)
{
    printf("Appending %c to %s\n", s->str, c);
    string_grow(s, s->len+1);
    s->str[s->len++] = c;
    s->len = 0;
    printf("New string: %s\n", s->str);
} */

void string_appendc(struct string *s, char c)
{
    string_grow(s, s->len+1);
    s->str[s->len++] = c;
    s->str[s->len] = 0;
}

void string_grow(struct string *str, size_t size)
{
    if(!str->alloc) { /* first allocation */
        str->alloc = size;
        str->str = xmalloc(size+1); /* +1 for null */
        str->str[0] = 0;
    } else {
        ALLOC_GROW(str->str, size + 1, str->alloc);
    }
}

struct string *string_cat(struct string *dest, const struct string *src)
{
    string_grow(dest, dest->len + src->len);
    memcpy(dest->str + dest->len, src->str, src->len + 1);
    dest->len += src->len;
    
    return dest;
}


struct string *string_cpy(struct string *dest, const struct string *src)
{
    string_grow(dest, src->len);
    memcpy(dest->str, src->str, src->len + 1);
    dest->len = src->len;
    return dest;
}

struct string *string_dup(struct string *src)
{
    NEW(dest, struct string);
    *dest = *src;
    dest->str = xmalloc(dest->alloc);
    memcpy(dest->str, src->str, src->len + 1);
    return dest;
}

void string_free(struct string *s)
{
    if(s->alloc) {
        free(s->str);
        s->str = _empty_string;
        s->alloc = 0;
        s->len = 0;
    }
}