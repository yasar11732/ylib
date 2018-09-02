#include <stdio.h>
#include "ylib/string.h"

void main()
{
    const char *test = "this-is-sparta-!";
    char **tokens;
    size_t numtokens;
    
    size_t i = 0;
    
    tokens = split(test, '-', &numtokens);
    
    printf("Found %d tokens", numtokens);
    
    for(i = 0; i<numtokens; i++) {
        printf("Token %zu: %s",i, tokens[i]);
    }
}