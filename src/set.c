#include <stdio.h>
#include <stdarg.h>

#include "ylib/std.h"
#include "ylib/string.h"
#include "ylib/set.h"

#define next_mask(mask) mask = (2*mask+1)

static inline void println(const char *str, ...)
{
    va_list params;
    va_start(params, str);
    
    vprintf(str,params);
    putchar('\n');
}

#define println(str, ...) 

void set_init(struct set_head *s)
{
    s->mask = 7; /* must be 2**n - 1 */
    s->len = 0;
    s->table = xcalloc(s->mask+1, sizeof(*s->table));
}

/* Used when growing the underlying array, doesnt check if you are trying to reinsert element */
static void set_entry_move(struct set_entry *table, struct set_entry *entry, size_t mask)
{
    size_t i;
    for(i=entry->hash&mask; ;i=(5*i+1)&mask) {
        if (!table[i].active) {
            table[i] = *entry;
            break;
        }
            
    }
}

/* Used when adding new element */
static void set_entry_put(struct set_head *s, struct set_entry *entry, size_t mask)
{
    size_t i;
    for(i=entry->hash&mask; ;i=(5*i+1)&mask) {
        println("check slot %ul", (unsigned long)i);
        if (s->table[i].active) {
            /* check if same string */
            if(strcmp(entry->value, s->table[i].value) == 0)
                break; /* string already in set */
        } else {
            /* slot is empty */
            println("Putting element in slot %d", i);
            s->table[i] = *entry;
            s->table[i].value = xstrdup(entry->value);
            s->len++;
            break;
        }
    }
}

static void set_grow(struct set_head *s)
{
    println("Growing set: elems:%d, oldsize:%d, newsize:%d", s->len, s->mask+1, (2*s->mask)+2);
    size_t i;
    
    struct set_entry *new_table;
    size_t old_mask = s->mask;
        
    next_mask(s->mask);
    new_table = xcalloc(s->mask+1, sizeof(*s->table));
    
    for(i=0; i<=old_mask;i++) {
        if(s->table[i].active)
            set_entry_move(new_table, &s->table[i], s->mask);
    }
    
    free(s->table);
    s->table = new_table;
}

void set_add(struct set_head *set, char *key)
{
    println("Adding %s", key);
    struct set_entry e;
    e.hash = memhash(key, strlen(key));
    e.active = 1;
    
    /* Dont duplicate here in case this value is already in set */
    e.value = key;
    
    if ((float)set->len / set->mask > 0.65)
        set_grow(set);
    
    set_entry_put(set, &e, set->mask);
}

static struct set_entry *set_lookup(struct set_head *s, const char *key)
{
    size_t hash = memhash(key, strlen(key));
    size_t i;
    for(i=hash&s->mask; s->table[i].value ;i=(5*i+1)&s->mask) {
        if(s->table[i].active &&
           s->table[i].hash == hash &&
           !strcmp(key, s->table[i].value))
           return &s->table[i];
    }
    
    return NULL;
}

void set_remove(struct set_head *s, const char *key)
{
    struct set_entry *e = set_lookup(s, key);
    if(e) {
        free(e->value);
        e->active = 0;
        --s->len;
    }
}

const char *set_iter(struct set_head *s, size_t *i)
{
    for( ;(*i) <= s->mask;(*i)++) {
        if(s->table[*i].active)
            return s->table[*i].value;
    }
    
    return NULL;
}

int in_set(struct set_head *s, const char *key)
{
    if(set_lookup(s, key))
        return 1;
    else
        return 0;
}

/*
char **set_elems(struct set_head *set)
{
    char **keys = NULL;
    size_t nr, alloc, i;
    nr = alloc = 0;
    
    for(i=0;i<=set->mask;i++) {
        if (set->table[i].active) {
            println("Add %s to keys array", set->table[i].value);
            ALLOC_GROW(keys, nr + 2, alloc);
            keys[nr++] = xstrdup(set->table[i].value);
        }
    }
    println("Added %d keys in total", nr);
    keys[nr] = NULL;
    
    return keys;
}*/
/*
void set_print_elems(struct set_head *s)
{
    size_t i;
    for(i = 0; i<=s->mask;i++) {
        if(s->table[i].active)
            printf("%s\n", s->table[i].value);
    }
}*/

void set_release(struct set_head *s)
{
    size_t i;
    for(i=0; i<=s->mask;i++)
        if(s->table[i].active)
            free(s->table[i].value);
}