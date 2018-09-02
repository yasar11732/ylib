#include "ylib/string.h"
#include <stdio.h>

void main()
{
    char *test1 = "\ttest     ";
    
    printf("\"%s\"", strip(test1));
}