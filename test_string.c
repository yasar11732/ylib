#include "ylib/string.h"
#include <stdio.h>

#define test_hash(str, len) printf("hash of %s is %lu\n", (str), (unsigned long)memhash((str), len))
#define test_bucket(str, len, mask) printf("%s is in bucket %lu\n", (str), (unsigned long)(memhash(str, len)&mask))

int main(int argc, char *argv[])
{
    size_t i;
    const char *s1 = "yasar";
    const char *s2 = "arabaci";
    const char *s3 = "osman";
    
    test_hash(s1, strlen(s1));
    test_hash(s2, strlen(s2));
    
    test_bucket(s1, strlen(s1), 7);
    test_bucket(s2, strlen(s2), 7);
    test_bucket(s3, strlen(s3), 7);
    
    for(i=1;i!=0;i=(5*i+1)&31)
        printf("%d\n",i);
}