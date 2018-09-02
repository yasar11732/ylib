#include "ylib/std.h"
#include "ylib/io.h"
#include "ylib/string.h"

char **fgetlines(FILE *f, size_t *numlines)
{
    /* Will be used to save file position and file size */
    size_t sz, sz_save;
    size_t nread;
    
    /* Actual data will be stored here */
    char *buffer;
    
    /* For string array */
    char **lines = xmalloc(8 * sizeof(char *));
    size_t alloc = 8; /* Allocated number of lines */
    size_t nr = 0;    /* Used number of lines */
    
    /* Save current position, size and seek to start of the file */
    sz_save = ftell(f);
    fseek(f, 0, SEEK_END);
    sz = ftell(f);
    fseek(f, 0, SEEK_SET);
    
    /* read whole file */
    buffer = xmalloc(sz+1);
    
    if((nread = fread(buffer, 1, sz, f)) < sz)
        die("fgetlines: Tried to read %d bytes, but read %d bytes instead.\n", sz, nread);
    
    lines[nr++] = buffer;
    
    while(*buffer) {
        if (*buffer == '\n'){
            *buffer = 0;
            ALLOC_GROW(lines, nr+1, alloc);
            lines[nr++] = buffer+1;
        }
        buffer++;
    }
    
    if(numlines)
        *numlines = nr;
    
    ALLOC_GROW(lines, nr+1, alloc);
    lines[nr] = NULL;
    
    fseek(f, sz_save, SEEK_SET);
    
    return lines;
}