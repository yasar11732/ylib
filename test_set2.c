#include <stdio.h>
#include "ylib/set.h"

void main()
{
    struct set_head s;
    char *yasar = "yasar";
    
    set_init(&s);
    set_add(&s, yasar);
    if(in_set(&s, yasar))
        printf("yasar in set.\n");
    else
        printf("yasar is not in set.\n");
    
    if(in_set(&s, "arabaci"))
        printf("arabaci in set.\n");
    else
        printf("arabaci is not in set.\n");
    
    set_remove(&s, yasar);
    
    if(in_set(&s, yasar))
        printf("yasar in set.\n");
    else
        printf("yasar is not in set.\n");
}