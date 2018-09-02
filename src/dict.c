#include "ylib/dict.h"
#include "ylib/std.h" /* xcalloc */
#include "ylib/string.h" /* memhash */

#define next_mask(mask) (mask = (2*mask+1))
#define calloc_table(dict) ((dict)->table = xcalloc((dict)->mask+1, sizeof(*(dict)->table)))

void dict_init(struct dict_head *d)
{
    d->mask = 7;
    d->len  = 0;
    calloc_table(d);
}

/* Used when growing table to copy elements to new table */
/* Doesnt alter len member, assumes it is already correct */
static void dict_copy(struct dict_head *dest, struct dict_head *src)
{
    size_t i, j;
    
    for(i=0; i<=src->mask; i++) {
        struct dict_entry e = src->table[i];
        
        if (e.key) {
            for(j=e.hash&dest->mask; ;j=(5*j+1)&dest->mask) {
                if(!dest->table[j].key) {
                    dest->table[j] = e;
                    break;
                }
                    
            }
        }
    }
}

static void dict_grow(struct dict_head *d)
{
    struct dict_head orig = *d;
    
    next_mask(d->mask);
    calloc_table(d);
    dict_copy(d, &orig);
    free(orig.table);
}
/* if key is null, this slot is not actively used */
/* if value is null, this slot was never used */

static int get_key_slot(struct dict_head *d, size_t hash, const char *key, struct dict_entry **target)
{
    size_t i;
    for(i=hash&d->mask; ;i=(5*i+1)&d->mask) {
        struct dict_entry e = d->table[i];
        if(!e.value) { /* search ended, we can store new key in this address */
            *target = &d->table[i];
            return 0;
        }
        
        if(e.key && e.hash == hash && !strcmp(key, e.key)) {/* key exist in dictionary */
            *target = &d->table[i];
            return 1;
        }
            
    }
}

void dict_add(struct dict_head *d, const char *key, const char *value)
{
    size_t slenkey = strlen(key);
    size_t slenvalue = strlen(value);
    
    size_t hash = memhash(key, slenkey);
    struct dict_entry *e;
    
    if ((float)d->len / d->mask > 0.65)
        dict_grow(d);
    
    if(!get_key_slot(d, hash, key, &e)) /* Adding new key */
        d->len++;
    else { /* Key already exists */
        if(strcmp(e->value, value) == 0)
            return; /* Nothing to do */
    }
    
    e->hash = hash;
    free(e->key);
    
    /* Share malloced memory to reduce malloc/free calls */
    e->key  = xmalloc(slenkey + slenvalue + 2);
    memcpy(e->key, key, slenkey+1);
    
    e->value = e->key + slenkey + 1;
    memcpy(e->value, value, slenvalue + 1);
    
}

char *dict_get(struct dict_head *d, const char *key)
{
    size_t hash = memhash(key, strlen(key));
    struct dict_entry *e;
    
    if(get_key_slot(d, hash, key, &e))
        return e->value;
    else
        return NULL;
}

void dict_remove(struct dict_head *d, const char *key)
{
    size_t hash = memhash(key, strlen(key));
    struct dict_entry *e;
    
    if(get_key_slot(d, hash, key, &e)) { /* key exists in dictionary */
        free(e->key);
        e->key = NULL;
        /* dont set value member to null. It allows us to check if this slot was previously occupied */
        
        d->len--;
    }
}

/* Free all allocated memory. Dictionary needs to be re-initialized for reuse. */
void dict_release(struct dict_head *d)
{
    size_t i;
    for(i=0;i<=d->mask;i++)
            free(d->table[i].key);
    
    free(d->table);
}
