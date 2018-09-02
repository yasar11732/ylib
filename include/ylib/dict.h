#ifndef _YLIB_DICT_H
#define _YLIB_DICT_H
#include <stdlib.h> /* size_t */

struct dict_entry {
    size_t hash;
    char *key;
    char *value;
};

struct dict_head {
    size_t mask;
    size_t len;
    struct dict_entry *table;
};

void dict_init(struct dict_head *);
void dict_add(struct dict_head *, const char *, const char *);
char *dict_get(struct dict_head *, const char *);
void dict_remove(struct dict_head *, const char *);
void dict_release(struct dict_head *);

#define dict_loop(d, key, value, i) for((i)=0;(i)<=(d)->mask;(i)++) { \
    if(!(d)->table[(i)].key) continue; \
    (key) = (d)->table[i].key; \
    (value) = (d)->table[i].value;
    
#define end_dict_loop }

#endif