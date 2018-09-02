#include <stdio.h>
#include "ylib/std.h"

int main(int argc, char *argv[])
{

    size_t size = 2;
    
    printf("%f\n", (float)size / 3);
        
    while(size = size * 2)
        xmalloc(size);
}