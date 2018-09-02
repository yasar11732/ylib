#ifndef _YLIB_SET_H
#define _YLIB_SET_H
#include <stdlib.h> /* size_t */

struct set_entry {
    size_t hash;
    int active;
    char *value;
};

struct set_head {
    size_t mask;
    size_t len;
    struct set_entry *table;
};

void set_init(struct set_head *);
void set_add(struct set_head *, char *);
int in_set(struct set_head *, const char *);
void set_remove(struct set_head *, const char *);
void set_release(struct set_head *);

/* Use this macros to loop over set elements */
/* Dont modify set during loop */
#define set_loop(s, elem, i) for((i)=0;(i)<=(s)->mask;(i)++) { if(!(s)->table[(i)].active) continue; (elem) = (s)->table[i].value;

#define end_set_loop }

#endif