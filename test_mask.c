#include <stdio.h>
#define incr_mask(mask) mask = (mask << 1) + 1
#define big_number (1 << 31)

void main()
{
    size_t mask = 1;
    while(mask < big_number) {
        printf("%lu\n",(unsigned long)mask);
        incr_mask(mask);
    }
        
}