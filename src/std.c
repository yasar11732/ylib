#include "ylib/std.h"
#include <stdio.h>
#include <stdarg.h>

void die(const char *fmt, ...)
{
    va_list params;
    va_start(params, fmt);
    vfprintf(stderr, fmt, params);
    exit(EXIT_FAILURE);
    va_end(params);
}

void *xmalloc(size_t size)
{
    void *p = malloc(size);
    if(!p)
        die("Failed to allocate %lu bytes of memory.\n", (unsigned long)size);
    return p;
}

void *xrealloc(void *ptr, size_t size)
{
    void *p = realloc(ptr, size);
    if(!p)
        die("Failed to reallocate %lu bytes of memory.\n", (unsigned long)size);
    return p;
}

void *xcalloc(size_t nitems, size_t size)
{
    void *p = calloc(nitems, size);
    if(!p)
        die("Failed to allocate clean memory for %lu items of size %lu bytes.\n", (unsigned long)nitems, (unsigned long)size);
    return p;
}