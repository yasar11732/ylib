#ifndef _YLIB_STRING_H
#define _YLIB_STRING_H
#include "ylib/std.h"
#include <string.h>

extern char *_empty_string;
typedef unsigned long hash_t;
#define STRING_INIT {0,0,_empty_string}

struct string {
    size_t alloc;
    size_t len;
    char *str;
};

void string_grow(struct string *, size_t);
void string_appendc(struct string *, char);
struct string *string_cat(struct string *dest, const struct string *src);

size_t memhash(const void *, size_t);
char *xstrdup(const char *);

char **split(const char *, const char, size_t *);
char **split_replace(char *, const char, size_t *);

char *strip(char *);

inline void string_reset(struct string *s)
{
    s->len = 0;
    s->str[0] = 0;
}

void string_free(struct string *);

#endif