#ifndef _YLIB_STD_H
#define _YLIB_STD_H
#include <stdlib.h>

#if defined(__HP_cc) && (__HP_cc >= 61000)
#define NORETURN __attribute__((noreturn))
#define NORETURN_PTR
#elif defined(__GNUC__) && !defined(NO_NORETURN)
#define NORETURN __attribute__((__noreturn__))
#define NORETURN_PTR __attribute__((__noreturn__))
#elif defined(_MSC_VER)
#define NORETURN __declspec(noreturn)
#define NORETURN_PTR
#else
#define NORETURN
#define NORETURN_PTR
#ifndef __GNUC__
#ifndef __attribute__
#define __attribute__(x)
#endif
#endif
#endif

#define ARRAY_SIZE(x) (sizeof(x)/sizeof(x[0]))

#define REALLOC_ARRAY(x, alloc) (x) = xrealloc((x), (alloc) * sizeof(*(x)))

#define alloc_nr(x) (((x)+16)*3/2)

#define NEW(ptr, type) type *ptr = xmalloc(sizeof(type))

/*
 * Realloc the buffer pointed at by variable 'x' so that it can hold
 * at least 'nr' entries; the number of entries currently allocated
 * is 'alloc', using the standard growing factor alloc_nr() macro.
 *
 * DO NOT USE any expression with side-effect for 'x', 'nr', or 'alloc'.
 */
#define ALLOC_GROW(x, nr, alloc) \
	do { \
		if ((nr) > alloc) { \
			if (alloc_nr(alloc) < (nr)) \
				alloc = (nr); \
			else \
				alloc = alloc_nr(alloc); \
			REALLOC_ARRAY(x, alloc); \
		} \
	} while (0)
        
extern void NORETURN die(const char *, ...);
extern void *xmalloc(size_t);
extern void *xrealloc(void *, size_t);
extern void *xcalloc(size_t, size_t);

#endif