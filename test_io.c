#include "ylib/io.h"
#include "ylib/dict.h"
#include "ylib/string.h"

void main(void)
{
    FILE *f;
    size_t i;
    size_t numlines;
    char **lines;
    struct dict_head tc_adres;
    
    dict_init(&tc_adres);
    
    f = fopen("sonuclar.csv","rb");

	if (!f) {
		die("Couldnt open sonuclar.csv");
	}
    
    lines = fgetlines(f, &numlines);
    
    for(i=0;i<numlines;i++) {
        size_t numtokens;
        char **tokens;
        
        tokens = split_replace(lines[i], ';', &numtokens);
        
        if(numtokens > 2) {
            dict_add(&tc_adres, strip(tokens[0]), strip(tokens[2]));
        }
        
        free(tokens);
    }
    
    free(lines[0]); /* Free data */
    free(lines);    /* Free dynamic array */
    
    printf("There are %d values in dictionary.\n", tc_adres.len);
    
    while(1) {
#define buffer_size 0x100
        char key[buffer_size];
        char *value;
        
        printf("TC gir:");
        fgets(key, buffer_size, stdin);
        
        if(!*key)
            break;
        
        if(value = dict_get(&tc_adres, strip(key)))
            printf("%s\n", value);
        else
            printf("Not found\n");
#undef buffer_size
    }
}