# 1 "ftp_session.c"
# 1 "/home/pxw172/Workspace/babel-eval/src/oftpd/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "ftp_session.c"




# 1 "./config.h" 1
# 6 "ftp_session.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 25 "/usr/include/string.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 365 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 402 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 403 "/usr/include/sys/cdefs.h" 2 3 4
# 366 "/usr/include/features.h" 2 3 4
# 389 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 390 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/string.h" 2 3 4






# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 216 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 3 4

# 216 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 33 "/usr/include/string.h" 2 3 4
# 44 "/usr/include/string.h" 3 4


extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 96 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 127 "/usr/include/string.h" 3 4


extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));






# 1 "/usr/include/xlocale.h" 1 3 4
# 27 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 164 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));




extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 210 "/usr/include/string.h" 3 4

# 235 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 262 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 281 "/usr/include/string.h" 3 4



extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 314 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 341 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 396 "/usr/include/string.h" 3 4


extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 426 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 444 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 488 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 516 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 533 "/usr/include/string.h" 3 4
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 556 "/usr/include/string.h" 3 4
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 631 "/usr/include/string.h" 3 4
# 1 "/usr/include/bits/string.h" 1 3 4
# 632 "/usr/include/string.h" 2 3 4


# 1 "/usr/include/bits/string2.h" 1 3 4
# 51 "/usr/include/bits/string2.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 27 "/usr/include/bits/byteswap.h" 3 4
# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 122 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 28 "/usr/include/bits/byteswap.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/byteswap.h" 2 3 4






# 1 "/usr/include/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/bits/byteswap.h" 2 3 4
# 44 "/usr/include/bits/byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 108 "/usr/include/bits/byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "/usr/include/endian.h" 2 3 4
# 52 "/usr/include/bits/string2.h" 2 3 4
# 393 "/usr/include/bits/string2.h" 3 4
extern void *__rawmemchr (const void *__s, int __c);
# 945 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c1 (const char *__s, int __reject);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c1 (const char *__s, int __reject)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c2 (const char *__s, int __reject1,
         int __reject2);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c2 (const char *__s, int __reject1, int __reject2)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
  && __s[__result] != __reject2)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strcspn_c3 (const char *__s, int __reject1,
         int __reject2, int __reject3);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strcspn_c3 (const char *__s, int __reject1, int __reject2,
       int __reject3)
{
  size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
  && __s[__result] != __reject2 && __s[__result] != __reject3)
    ++__result;
  return __result;
}
# 1021 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c1 (const char *__s, int __accept);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c1 (const char *__s, int __accept)
{
  size_t __result = 0;

  while (__s[__result] == __accept)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c2 (const char *__s, int __accept1,
        int __accept2);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c2 (const char *__s, int __accept1, int __accept2)
{
  size_t __result = 0;

  while (__s[__result] == __accept1 || __s[__result] == __accept2)
    ++__result;
  return __result;
}

extern __inline __attribute__ ((__gnu_inline__)) size_t __strspn_c3 (const char *__s, int __accept1,
        int __accept2, int __accept3);
extern __inline __attribute__ ((__gnu_inline__)) size_t
__strspn_c3 (const char *__s, int __accept1, int __accept2, int __accept3)
{
  size_t __result = 0;

  while (__s[__result] == __accept1 || __s[__result] == __accept2
  || __s[__result] == __accept3)
    ++__result;
  return __result;
}
# 1097 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strpbrk_c2 (const char *__s, int __accept1,
        int __accept2);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strpbrk_c2 (const char *__s, int __accept1, int __accept2)
{

  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2)
    ++__s;
  return *__s == '\0' ? ((void *)0) : (char *) (size_t) __s;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strpbrk_c3 (const char *__s, int __accept1,
        int __accept2, int __accept3);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strpbrk_c3 (const char *__s, int __accept1, int __accept2, int __accept3)
{

  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2
  && *__s != __accept3)
    ++__s;
  return *__s == '\0' ? ((void *)0) : (char *) (size_t) __s;
}
# 1147 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strtok_r_1c (char *__s, char __sep, char **__nextp);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strtok_r_1c (char *__s, char __sep, char **__nextp)
{
  char *__result;
  if (__s == ((void *)0))
    __s = *__nextp;
  while (*__s == __sep)
    ++__s;
  __result = ((void *)0);
  if (*__s != '\0')
    {
      __result = __s++;
      while (*__s != '\0')
 if (*__s++ == __sep)
   {
     __s[-1] = '\0';
     break;
   }
    }
  *__nextp = __s;
  return __result;
}
# 1179 "/usr/include/bits/string2.h" 3 4
extern char *__strsep_g (char **__stringp, const char *__delim);
# 1197 "/usr/include/bits/string2.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_1c (char **__s, char __reject);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_1c (char **__s, char __reject)
{
  char *__retval = *__s;
  if (__retval != ((void *)0) && (*__s = (__extension__ (__builtin_constant_p (__reject) && !__builtin_constant_p (__retval) && (__reject) == '\0' ? (char *) __rawmemchr (__retval, __reject) : __builtin_strchr (__retval, __reject)))) != ((void *)0))
    *(*__s)++ = '\0';
  return __retval;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_2c (char **__s, char __reject1, char __reject2);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_2c (char **__s, char __reject1, char __reject2)
{
  char *__retval = *__s;
  if (__retval != ((void *)0))
    {
      char *__cp = __retval;
      while (1)
 {
   if (*__cp == '\0')
     {
       __cp = ((void *)0);
   break;
     }
   if (*__cp == __reject1 || *__cp == __reject2)
     {
       *__cp++ = '\0';
       break;
     }
   ++__cp;
 }
      *__s = __cp;
    }
  return __retval;
}

extern __inline __attribute__ ((__gnu_inline__)) char *__strsep_3c (char **__s, char __reject1, char __reject2,
       char __reject3);
extern __inline __attribute__ ((__gnu_inline__)) char *
__strsep_3c (char **__s, char __reject1, char __reject2, char __reject3)
{
  char *__retval = *__s;
  if (__retval != ((void *)0))
    {
      char *__cp = __retval;
      while (1)
 {
   if (*__cp == '\0')
     {
       __cp = ((void *)0);
   break;
     }
   if (*__cp == __reject1 || *__cp == __reject2 || *__cp == __reject3)
     {
       *__cp++ = '\0';
       break;
     }
   ++__cp;
 }
      *__s = __cp;
    }
  return __retval;
}
# 1273 "/usr/include/bits/string2.h" 3 4
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 33 "/usr/include/stdlib.h" 2 3 4


# 464 "/usr/include/stdlib.h" 3 4


extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

# 967 "/usr/include/stdlib.h" 3 4

# 1274 "/usr/include/bits/string2.h" 2 3 4




extern char *__strdup (const char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__));
# 1297 "/usr/include/bits/string2.h" 3 4
extern char *__strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__));
# 635 "/usr/include/string.h" 2 3 4
# 643 "/usr/include/string.h" 3 4

# 7 "ftp_session.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 49 "/usr/include/libio.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 50 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 154 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 177 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 245 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 293 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 302 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 338 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);
# 390 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 434 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 464 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 102 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;




# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) ;
# 209 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 252 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 266 "/usr/include/stdio.h" 3 4






extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 295 "/usr/include/stdio.h" 3 4

# 306 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 319 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

# 412 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 443 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 463 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 494 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 522 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 594 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 640 "/usr/include/stdio.h" 3 4

# 665 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 737 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 773 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 792 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "/usr/include/stdio.h" 3 4

# 824 "/usr/include/stdio.h" 3 4


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;








extern void perror (const char *__s);






# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 872 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 912 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 933 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio.h" 1 3 4
# 35 "/usr/include/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __arg)
{
  return vfprintf (stdout, __fmt, __arg);
}



extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return _IO_getc (stdin);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}





extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}


extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}




extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return _IO_putc (__c, stdout);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}





extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}


extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
# 124 "/usr/include/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x10) != 0);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x20) != 0);
}
# 934 "/usr/include/stdio.h" 2 3 4
# 942 "/usr/include/stdio.h" 3 4

# 8 "ftp_session.c" 2
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stdarg.h" 1 3 4
# 9 "ftp_session.c" 2
# 1 "/usr/include/sys/stat.h" 1 3 4
# 36 "/usr/include/sys/stat.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 37 "/usr/include/sys/stat.h" 2 3 4






typedef __dev_t dev_t;




typedef __gid_t gid_t;





typedef __ino_t ino_t;







typedef __mode_t mode_t;




typedef __nlink_t nlink_t;
# 81 "/usr/include/sys/stat.h" 3 4
typedef __uid_t uid_t;
# 102 "/usr/include/sys/stat.h" 3 4


# 1 "/usr/include/bits/stat.h" 1 3 4
# 46 "/usr/include/bits/stat.h" 3 4
struct stat
  {
    __dev_t st_dev;




    __ino_t st_ino;







    __nlink_t st_nlink;
    __mode_t st_mode;

    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;

    __dev_t st_rdev;




    __off_t st_size;



    __blksize_t st_blksize;

    __blkcnt_t st_blocks;
# 91 "/usr/include/bits/stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 106 "/usr/include/bits/stat.h" 3 4
    __syscall_slong_t __glibc_reserved[3];
# 115 "/usr/include/bits/stat.h" 3 4
  };
# 105 "/usr/include/sys/stat.h" 2 3 4
# 208 "/usr/include/sys/stat.h" 3 4
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 237 "/usr/include/sys/stat.h" 3 4
extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 262 "/usr/include/sys/stat.h" 3 4
extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 283 "/usr/include/sys/stat.h" 3 4
extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__));





extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;






extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ , __leaf__));
# 320 "/usr/include/sys/stat.h" 3 4
extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));






extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));





extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));





extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ , __leaf__));
# 398 "/usr/include/sys/stat.h" 3 4
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename,
      struct stat *__stat_buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename,
       struct stat *__stat_buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename,
         struct stat *__stat_buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4)));
# 441 "/usr/include/sys/stat.h" 3 4
extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 5)));




extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) stat (const char *__path, struct stat *__statbuf)
{
  return __xstat (1, __path, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) lstat (const char *__path, struct stat *__statbuf)
{
  return __lxstat (1, __path, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) fstat (int __fd, struct stat *__statbuf)
{
  return __fxstat (1, __fd, __statbuf);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) fstatat (int __fd, const char *__filename, struct stat *__statbuf, int __flag)

{
  return __fxstatat (1, __fd, __filename, __statbuf, __flag);
}



extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) mknod (const char *__path, __mode_t __mode, __dev_t __dev)
{
  return __xmknod (0, __path, __mode, &__dev);
}



extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) mknodat (int __fd, const char *__path, __mode_t __mode, __dev_t __dev)

{
  return __xmknodat (0, __fd, __path, __mode, &__dev);
}
# 533 "/usr/include/sys/stat.h" 3 4

# 10 "ftp_session.c" 2
# 1 "/usr/include/unistd.h" 1 3 4
# 27 "/usr/include/unistd.h" 3 4

# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/bits/environments.h" 1 3 4
# 22 "/usr/include/bits/environments.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 226 "/usr/include/unistd.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 227 "/usr/include/unistd.h" 2 3 4
# 255 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;




typedef __pid_t pid_t;






typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 287 "/usr/include/unistd.h" 3 4
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 304 "/usr/include/unistd.h" 3 4
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
# 334 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
# 353 "/usr/include/unistd.h" 3 4
extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
# 376 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 417 "/usr/include/unistd.h" 3 4
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 432 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
# 444 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);







extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));






extern int usleep (__useconds_t __useconds);
# 469 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
# 511 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
# 525 "/usr/include/unistd.h" 3 4
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
# 543 "/usr/include/unistd.h" 3 4
extern char **__environ;







extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 598 "/usr/include/unistd.h" 3 4
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));





# 1 "/usr/include/bits/confname.h" 1 3 4
# 24 "/usr/include/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));


extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));


extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
# 660 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));






extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));



extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;
# 700 "/usr/include/unistd.h" 3 4
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
# 756 "/usr/include/unistd.h" 3 4
extern __pid_t fork (void) __attribute__ ((__nothrow__));







extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));





extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));




extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 871 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/getopt.h" 1 3 4
# 57 "/usr/include/getopt.h" 3 4
extern char *optarg;
# 71 "/usr/include/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 150 "/usr/include/getopt.h" 3 4
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
# 872 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));


extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));



extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));







extern int fsync (int __fd);
# 969 "/usr/include/unistd.h" 3 4
extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));





extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
# 993 "/usr/include/unistd.h" 3 4
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 1016 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) ;
# 1037 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
# 1058 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
# 1081 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1112 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes);
# 1151 "/usr/include/unistd.h" 3 4

# 11 "ftp_session.c" 2
# 1 "/usr/include/sys/types.h" 1 3 4
# 27 "/usr/include/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;
# 104 "/usr/include/sys/types.h" 3 4
typedef __id_t id_t;
# 115 "/usr/include/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 133 "/usr/include/sys/types.h" 2 3 4
# 146 "/usr/include/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 147 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 194 "/usr/include/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 219 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 22 "/usr/include/bits/select.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/select.h" 2 3 4
# 31 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 22 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "/usr/include/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 44 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 30 "/usr/include/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 64 "/usr/include/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 96 "/usr/include/sys/select.h" 3 4

# 106 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 131 "/usr/include/sys/select.h" 3 4

# 220 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/sysmacros.h" 1 3 4
# 24 "/usr/include/sys/sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_major (unsigned long long int __dev)
{
  return ((__dev >> 8) & 0xfff) | ((unsigned int) (__dev >> 32) & ~0xfff);
}

__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_minor (unsigned long long int __dev)
{
  return (__dev & 0xff) | ((unsigned int) (__dev >> 12) & ~0xff);
}

__extension__ extern __inline __attribute__ ((__gnu_inline__)) __attribute__ ((__const__)) unsigned long long int
__attribute__ ((__nothrow__ , __leaf__)) gnu_dev_makedev (unsigned int __major, unsigned int __minor)
{
  return ((__minor & 0xff) | ((__major & 0xfff) << 8)
   | (((unsigned long long int) (__minor & ~0xff)) << 12)
   | (((unsigned long long int) (__major & ~0xfff)) << 32));
}


# 223 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 270 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 22 "/usr/include/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;





typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    short __spins;
    short __elision;
    __pthread_list_t __list;
# 125 "/usr/include/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    signed char __rwelision;




    unsigned char __pad1[7];


    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 220 "/usr/include/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/sys/types.h" 2 3 4



# 12 "ftp_session.c" 2
# 1 "/usr/include/fcntl.h" 1 3 4
# 28 "/usr/include/fcntl.h" 3 4







# 1 "/usr/include/bits/fcntl.h" 1 3 4
# 35 "/usr/include/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };
# 61 "/usr/include/bits/fcntl.h" 3 4
# 1 "/usr/include/bits/fcntl-linux.h" 1 3 4
# 345 "/usr/include/bits/fcntl-linux.h" 3 4

# 419 "/usr/include/bits/fcntl-linux.h" 3 4

# 61 "/usr/include/bits/fcntl.h" 2 3 4
# 36 "/usr/include/fcntl.h" 2 3 4
# 67 "/usr/include/fcntl.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 68 "/usr/include/fcntl.h" 2 3 4
# 1 "/usr/include/bits/stat.h" 1 3 4
# 69 "/usr/include/fcntl.h" 2 3 4
# 160 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 169 "/usr/include/fcntl.h" 3 4
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 193 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 215 "/usr/include/fcntl.h" 3 4
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 261 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 283 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
# 305 "/usr/include/fcntl.h" 3 4

# 13 "ftp_session.c" 2
# 1 "/usr/include/sys/socket.h" 1 3 4
# 24 "/usr/include/sys/socket.h" 3 4


# 1 "/usr/include/sys/uio.h" 1 3 4
# 25 "/usr/include/sys/uio.h" 3 4



# 1 "/usr/include/bits/uio.h" 1 3 4
# 43 "/usr/include/bits/uio.h" 3 4
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
# 29 "/usr/include/sys/uio.h" 2 3 4
# 39 "/usr/include/sys/uio.h" 3 4
extern ssize_t readv (int __fd, const struct iovec *__iovec, int __count)
  ;
# 50 "/usr/include/sys/uio.h" 3 4
extern ssize_t writev (int __fd, const struct iovec *__iovec, int __count)
  ;
# 65 "/usr/include/sys/uio.h" 3 4
extern ssize_t preadv (int __fd, const struct iovec *__iovec, int __count,
         __off_t __offset) ;
# 77 "/usr/include/sys/uio.h" 3 4
extern ssize_t pwritev (int __fd, const struct iovec *__iovec, int __count,
   __off_t __offset) ;
# 120 "/usr/include/sys/uio.h" 3 4

# 27 "/usr/include/sys/socket.h" 2 3 4

# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 29 "/usr/include/sys/socket.h" 2 3 4
# 38 "/usr/include/sys/socket.h" 3 4
# 1 "/usr/include/bits/socket.h" 1 3 4
# 27 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 28 "/usr/include/bits/socket.h" 2 3 4
# 38 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/bits/socket_type.h" 1 3 4
# 24 "/usr/include/bits/socket_type.h" 3 4
enum __socket_type
{
  SOCK_STREAM = 1,


  SOCK_DGRAM = 2,


  SOCK_RAW = 3,

  SOCK_RDM = 4,

  SOCK_SEQPACKET = 5,


  SOCK_DCCP = 6,

  SOCK_PACKET = 10,







  SOCK_CLOEXEC = 02000000,


  SOCK_NONBLOCK = 00004000


};
# 39 "/usr/include/bits/socket.h" 2 3 4
# 146 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/bits/sockaddr.h" 1 3 4
# 28 "/usr/include/bits/sockaddr.h" 3 4
typedef unsigned short int sa_family_t;
# 147 "/usr/include/bits/socket.h" 2 3 4


struct sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
# 162 "/usr/include/bits/socket.h" 3 4
struct sockaddr_storage
  {
    sa_family_t ss_family;
    unsigned long int __ss_align;
    char __ss_padding[(128 - (2 * sizeof (unsigned long int)))];
  };



enum
  {
    MSG_OOB = 0x01,

    MSG_PEEK = 0x02,

    MSG_DONTROUTE = 0x04,






    MSG_CTRUNC = 0x08,

    MSG_PROXY = 0x10,

    MSG_TRUNC = 0x20,

    MSG_DONTWAIT = 0x40,

    MSG_EOR = 0x80,

    MSG_WAITALL = 0x100,

    MSG_FIN = 0x200,

    MSG_SYN = 0x400,

    MSG_CONFIRM = 0x800,

    MSG_RST = 0x1000,

    MSG_ERRQUEUE = 0x2000,

    MSG_NOSIGNAL = 0x4000,

    MSG_MORE = 0x8000,

    MSG_WAITFORONE = 0x10000,

    MSG_FASTOPEN = 0x20000000,


    MSG_CMSG_CLOEXEC = 0x40000000



  };




struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;

    struct iovec *msg_iov;
    size_t msg_iovlen;

    void *msg_control;
    size_t msg_controllen;




    int msg_flags;
  };


struct cmsghdr
  {
    size_t cmsg_len;




    int cmsg_level;
    int cmsg_type;

    __extension__ unsigned char __cmsg_data [];

  };
# 272 "/usr/include/bits/socket.h" 3 4
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__ , __leaf__));




extern __inline __attribute__ ((__gnu_inline__)) struct cmsghdr *
__attribute__ ((__nothrow__ , __leaf__)) __cmsg_nxthdr (struct msghdr *__mhdr, struct cmsghdr *__cmsg)
{
  if ((size_t) __cmsg->cmsg_len < sizeof (struct cmsghdr))

    return (struct cmsghdr *) 0;

  __cmsg = (struct cmsghdr *) ((unsigned char *) __cmsg
          + (((__cmsg->cmsg_len) + sizeof (size_t) - 1) & (size_t) ~(sizeof (size_t) - 1)));
  if ((unsigned char *) (__cmsg + 1) > ((unsigned char *) __mhdr->msg_control
     + __mhdr->msg_controllen)
      || ((unsigned char *) __cmsg + (((__cmsg->cmsg_len) + sizeof (size_t) - 1) & (size_t) ~(sizeof (size_t) - 1))
   > ((unsigned char *) __mhdr->msg_control + __mhdr->msg_controllen)))

    return (struct cmsghdr *) 0;
  return __cmsg;
}




enum
  {
    SCM_RIGHTS = 0x01





  };
# 345 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/asm/socket.h" 1 3 4
# 1 "/usr/include/asm-generic/socket.h" 1 3 4



# 1 "/usr/include/asm/sockios.h" 1 3 4
# 1 "/usr/include/asm-generic/sockios.h" 1 3 4
# 1 "/usr/include/asm/sockios.h" 2 3 4
# 5 "/usr/include/asm-generic/socket.h" 2 3 4
# 1 "/usr/include/asm/socket.h" 2 3 4
# 346 "/usr/include/bits/socket.h" 2 3 4
# 379 "/usr/include/bits/socket.h" 3 4
struct linger
  {
    int l_onoff;
    int l_linger;
  };
# 39 "/usr/include/sys/socket.h" 2 3 4




struct osockaddr
  {
    unsigned short int sa_family;
    unsigned char sa_data[14];
  };




enum
{
  SHUT_RD = 0,

  SHUT_WR,

  SHUT_RDWR

};
# 113 "/usr/include/sys/socket.h" 3 4
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__ , __leaf__));





extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__ , __leaf__));


extern int bind (int __fd, const struct sockaddr * __addr, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));


extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
# 137 "/usr/include/sys/socket.h" 3 4
extern int connect (int __fd, const struct sockaddr * __addr, socklen_t __len);



extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));






extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);






extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);






extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, const struct sockaddr * __addr,
         socklen_t __addr_len);
# 174 "/usr/include/sys/socket.h" 3 4
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);







extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);
# 202 "/usr/include/sys/socket.h" 3 4
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
# 219 "/usr/include/sys/socket.h" 3 4
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__ , __leaf__));




extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__ , __leaf__));





extern int listen (int __fd, int __n) __attribute__ ((__nothrow__ , __leaf__));
# 243 "/usr/include/sys/socket.h" 3 4
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
# 261 "/usr/include/sys/socket.h" 3 4
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__ , __leaf__));




extern int sockatmark (int __fd) __attribute__ ((__nothrow__ , __leaf__));







extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__ , __leaf__));
# 283 "/usr/include/sys/socket.h" 3 4

# 14 "ftp_session.c" 2
# 1 "/usr/include/errno.h" 1 3 4
# 31 "/usr/include/errno.h" 3 4




# 1 "/usr/include/bits/errno.h" 1 3 4
# 24 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 1 "/usr/include/asm/errno.h" 2 3 4
# 1 "/usr/include/linux/errno.h" 2 3 4
# 25 "/usr/include/bits/errno.h" 2 3 4
# 50 "/usr/include/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 36 "/usr/include/errno.h" 2 3 4
# 58 "/usr/include/errno.h" 3 4

# 15 "ftp_session.c" 2
# 1 "/usr/include/pthread.h" 1 3 4
# 23 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 28 "/usr/include/sched.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 29 "/usr/include/sched.h" 2 3 4





# 1 "/usr/include/time.h" 1 3 4
# 35 "/usr/include/sched.h" 2 3 4
# 43 "/usr/include/sched.h" 3 4
# 1 "/usr/include/bits/sched.h" 1 3 4
# 72 "/usr/include/bits/sched.h" 3 4
struct sched_param
  {
    int __sched_priority;
  };


# 95 "/usr/include/bits/sched.h" 3 4








struct __sched_param
  {
    int __sched_priority;
  };
# 118 "/usr/include/bits/sched.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 201 "/usr/include/bits/sched.h" 3 4


extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));


# 44 "/usr/include/sched.h" 2 3 4







extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
# 126 "/usr/include/sched.h" 3 4

# 24 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 42 "/usr/include/time.h" 2 3 4
# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 186 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));

# 223 "/usr/include/time.h" 3 4
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
# 236 "/usr/include/time.h" 3 4



extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ , __leaf__));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));





extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 430 "/usr/include/time.h" 3 4

# 25 "/usr/include/pthread.h" 2 3 4


# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4



enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL





};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 116 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 157 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 192 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 230 "/usr/include/pthread.h" 3 4





extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);
# 273 "/usr/include/pthread.h" 3 4
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 431 "/usr/include/pthread.h" 3 4
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));
# 496 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 508 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 542 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 682 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
     ;
# 694 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
  ;
# 735 "/usr/include/pthread.h" 3 4
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
     __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 808 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));







extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 890 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 1002 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1046 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1113 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 1147 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));




extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) pthread_equal (pthread_t __thread1, pthread_t __thread2)
{
  return __thread1 == __thread2;
}



# 16 "ftp_session.c" 2
# 1 "/usr/include/sys/utsname.h" 1 3 4
# 27 "/usr/include/sys/utsname.h" 3 4


# 1 "/usr/include/bits/utsname.h" 1 3 4
# 30 "/usr/include/sys/utsname.h" 2 3 4
# 48 "/usr/include/sys/utsname.h" 3 4
struct utsname
  {

    char sysname[65];


    char nodename[65];


    char release[65];

    char version[65];


    char machine[65];






    char __domainname[65];


  };
# 81 "/usr/include/sys/utsname.h" 3 4
extern int uname (struct utsname *__name) __attribute__ ((__nothrow__ , __leaf__));



# 17 "ftp_session.c" 2
# 1 "/usr/include/netdb.h" 1 3 4
# 27 "/usr/include/netdb.h" 3 4
# 1 "/usr/include/netinet/in.h" 1 3 4
# 22 "/usr/include/netinet/in.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 48 "/usr/include/stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 122 "/usr/include/stdint.h" 3 4
typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 10 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stdint.h" 2 3 4
# 23 "/usr/include/netinet/in.h" 2 3 4







typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };


# 1 "/usr/include/bits/in.h" 1 3 4
# 138 "/usr/include/bits/in.h" 3 4
struct ip_opts
  {
    struct in_addr ip_dst;
    char ip_opts[40];
  };


struct ip_mreqn
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_address;
    int imr_ifindex;
  };


struct in_pktinfo
  {
    int ipi_ifindex;
    struct in_addr ipi_spec_dst;
    struct in_addr ipi_addr;
  };
# 38 "/usr/include/netinet/in.h" 2 3 4


enum
  {
    IPPROTO_IP = 0,

    IPPROTO_ICMP = 1,

    IPPROTO_IGMP = 2,

    IPPROTO_IPIP = 4,

    IPPROTO_TCP = 6,

    IPPROTO_EGP = 8,

    IPPROTO_PUP = 12,

    IPPROTO_UDP = 17,

    IPPROTO_IDP = 22,

    IPPROTO_TP = 29,

    IPPROTO_DCCP = 33,

    IPPROTO_IPV6 = 41,

    IPPROTO_RSVP = 46,

    IPPROTO_GRE = 47,

    IPPROTO_ESP = 50,

    IPPROTO_AH = 51,

    IPPROTO_MTP = 92,

    IPPROTO_BEETPH = 94,

    IPPROTO_ENCAP = 98,

    IPPROTO_PIM = 103,

    IPPROTO_COMP = 108,

    IPPROTO_SCTP = 132,

    IPPROTO_UDPLITE = 136,

    IPPROTO_RAW = 255,

    IPPROTO_MAX
  };





enum
  {
    IPPROTO_HOPOPTS = 0,

    IPPROTO_ROUTING = 43,

    IPPROTO_FRAGMENT = 44,

    IPPROTO_ICMPV6 = 58,

    IPPROTO_NONE = 59,

    IPPROTO_DSTOPTS = 60,

    IPPROTO_MH = 135

  };



typedef uint16_t in_port_t;


enum
  {
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,

    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,


    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,


    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,


    IPPORT_RESERVED = 1024,


    IPPORT_USERRESERVED = 5000
  };
# 209 "/usr/include/netinet/in.h" 3 4
struct in6_addr
  {
    union
      {
 uint8_t __u6_addr8[16];

 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];

      } __in6_u;





  };


extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
# 237 "/usr/include/netinet/in.h" 3 4
struct sockaddr_in
  {
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;


    unsigned char sin_zero[sizeof (struct sockaddr) -
      (sizeof (unsigned short int)) -
      sizeof (in_port_t) -
      sizeof (struct in_addr)];
  };



struct sockaddr_in6
  {
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };




struct ip_mreq
  {

    struct in_addr imr_multiaddr;


    struct in_addr imr_interface;
  };

struct ip_mreq_source
  {

    struct in_addr imr_multiaddr;


    struct in_addr imr_interface;


    struct in_addr imr_sourceaddr;
  };




struct ipv6_mreq
  {

    struct in6_addr ipv6mr_multiaddr;


    unsigned int ipv6mr_interface;
  };




struct group_req
  {

    uint32_t gr_interface;


    struct sockaddr_storage gr_group;
  };

struct group_source_req
  {

    uint32_t gsr_interface;


    struct sockaddr_storage gsr_group;


    struct sockaddr_storage gsr_source;
  };



struct ip_msfilter
  {

    struct in_addr imsf_multiaddr;


    struct in_addr imsf_interface;


    uint32_t imsf_fmode;


    uint32_t imsf_numsrc;

    struct in_addr imsf_slist[1];
  };





struct group_filter
  {

    uint32_t gf_interface;


    struct sockaddr_storage gf_group;


    uint32_t gf_fmode;


    uint32_t gf_numsrc;

    struct sockaddr_storage gf_slist[1];
};
# 374 "/usr/include/netinet/in.h" 3 4
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 386 "/usr/include/netinet/in.h" 2 3 4
# 501 "/usr/include/netinet/in.h" 3 4
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) __attribute__ ((__nothrow__ , __leaf__));


extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     __attribute__ ((__nothrow__ , __leaf__));
# 628 "/usr/include/netinet/in.h" 3 4

# 28 "/usr/include/netdb.h" 2 3 4




# 1 "/usr/include/rpc/netdb.h" 1 3 4
# 42 "/usr/include/rpc/netdb.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 43 "/usr/include/rpc/netdb.h" 2 3 4



struct rpcent
{
  char *r_name;
  char **r_aliases;
  int r_number;
};

extern void setrpcent (int __stayopen) __attribute__ ((__nothrow__ , __leaf__));
extern void endrpcent (void) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcbyname (const char *__name) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcbynumber (int __number) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcent (void) __attribute__ ((__nothrow__ , __leaf__));


extern int getrpcbyname_r (const char *__name, struct rpcent *__result_buf,
      char *__buffer, size_t __buflen,
      struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));

extern int getrpcbynumber_r (int __number, struct rpcent *__result_buf,
        char *__buffer, size_t __buflen,
        struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));

extern int getrpcent_r (struct rpcent *__result_buf, char *__buffer,
   size_t __buflen, struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));



# 33 "/usr/include/netdb.h" 2 3 4
# 42 "/usr/include/netdb.h" 3 4
# 1 "/usr/include/bits/netdb.h" 1 3 4
# 26 "/usr/include/bits/netdb.h" 3 4
struct netent
{
  char *n_name;
  char **n_aliases;
  int n_addrtype;
  uint32_t n_net;
};
# 43 "/usr/include/netdb.h" 2 3 4
# 53 "/usr/include/netdb.h" 3 4








extern int *__h_errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 92 "/usr/include/netdb.h" 3 4
extern void herror (const char *__str) __attribute__ ((__nothrow__ , __leaf__));


extern const char *hstrerror (int __err_num) __attribute__ ((__nothrow__ , __leaf__));




struct hostent
{
  char *h_name;
  char **h_aliases;
  int h_addrtype;
  int h_length;
  char **h_addr_list;



};






extern void sethostent (int __stay_open);





extern void endhostent (void);






extern struct hostent *gethostent (void);






extern struct hostent *gethostbyaddr (const void *__addr, __socklen_t __len,
          int __type);





extern struct hostent *gethostbyname (const char *__name);
# 155 "/usr/include/netdb.h" 3 4
extern struct hostent *gethostbyname2 (const char *__name, int __af);
# 167 "/usr/include/netdb.h" 3 4
extern int gethostent_r (struct hostent *__restrict __result_buf,
    char *__restrict __buf, size_t __buflen,
    struct hostent **__restrict __result,
    int *__restrict __h_errnop);

extern int gethostbyaddr_r (const void *__restrict __addr, __socklen_t __len,
       int __type,
       struct hostent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct hostent **__restrict __result,
       int *__restrict __h_errnop);

extern int gethostbyname_r (const char *__restrict __name,
       struct hostent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct hostent **__restrict __result,
       int *__restrict __h_errnop);

extern int gethostbyname2_r (const char *__restrict __name, int __af,
        struct hostent *__restrict __result_buf,
        char *__restrict __buf, size_t __buflen,
        struct hostent **__restrict __result,
        int *__restrict __h_errnop);
# 198 "/usr/include/netdb.h" 3 4
extern void setnetent (int __stay_open);





extern void endnetent (void);






extern struct netent *getnetent (void);






extern struct netent *getnetbyaddr (uint32_t __net, int __type);





extern struct netent *getnetbyname (const char *__name);
# 237 "/usr/include/netdb.h" 3 4
extern int getnetent_r (struct netent *__restrict __result_buf,
   char *__restrict __buf, size_t __buflen,
   struct netent **__restrict __result,
   int *__restrict __h_errnop);

extern int getnetbyaddr_r (uint32_t __net, int __type,
      struct netent *__restrict __result_buf,
      char *__restrict __buf, size_t __buflen,
      struct netent **__restrict __result,
      int *__restrict __h_errnop);

extern int getnetbyname_r (const char *__restrict __name,
      struct netent *__restrict __result_buf,
      char *__restrict __buf, size_t __buflen,
      struct netent **__restrict __result,
      int *__restrict __h_errnop);




struct servent
{
  char *s_name;
  char **s_aliases;
  int s_port;
  char *s_proto;
};






extern void setservent (int __stay_open);





extern void endservent (void);






extern struct servent *getservent (void);






extern struct servent *getservbyname (const char *__name, const char *__proto);






extern struct servent *getservbyport (int __port, const char *__proto);
# 308 "/usr/include/netdb.h" 3 4
extern int getservent_r (struct servent *__restrict __result_buf,
    char *__restrict __buf, size_t __buflen,
    struct servent **__restrict __result);

extern int getservbyname_r (const char *__restrict __name,
       const char *__restrict __proto,
       struct servent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct servent **__restrict __result);

extern int getservbyport_r (int __port, const char *__restrict __proto,
       struct servent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct servent **__restrict __result);




struct protoent
{
  char *p_name;
  char **p_aliases;
  int p_proto;
};






extern void setprotoent (int __stay_open);





extern void endprotoent (void);






extern struct protoent *getprotoent (void);





extern struct protoent *getprotobyname (const char *__name);





extern struct protoent *getprotobynumber (int __proto);
# 374 "/usr/include/netdb.h" 3 4
extern int getprotoent_r (struct protoent *__restrict __result_buf,
     char *__restrict __buf, size_t __buflen,
     struct protoent **__restrict __result);

extern int getprotobyname_r (const char *__restrict __name,
        struct protoent *__restrict __result_buf,
        char *__restrict __buf, size_t __buflen,
        struct protoent **__restrict __result);

extern int getprotobynumber_r (int __proto,
          struct protoent *__restrict __result_buf,
          char *__restrict __buf, size_t __buflen,
          struct protoent **__restrict __result);
# 395 "/usr/include/netdb.h" 3 4
extern int setnetgrent (const char *__netgroup);







extern void endnetgrent (void);
# 412 "/usr/include/netdb.h" 3 4
extern int getnetgrent (char **__restrict __hostp,
   char **__restrict __userp,
   char **__restrict __domainp);
# 423 "/usr/include/netdb.h" 3 4
extern int innetgr (const char *__netgroup, const char *__host,
      const char *__user, const char *__domain);







extern int getnetgrent_r (char **__restrict __hostp,
     char **__restrict __userp,
     char **__restrict __domainp,
     char *__restrict __buffer, size_t __buflen);
# 451 "/usr/include/netdb.h" 3 4
extern int rcmd (char **__restrict __ahost, unsigned short int __rport,
   const char *__restrict __locuser,
   const char *__restrict __remuser,
   const char *__restrict __cmd, int *__restrict __fd2p);
# 463 "/usr/include/netdb.h" 3 4
extern int rcmd_af (char **__restrict __ahost, unsigned short int __rport,
      const char *__restrict __locuser,
      const char *__restrict __remuser,
      const char *__restrict __cmd, int *__restrict __fd2p,
      sa_family_t __af);
# 479 "/usr/include/netdb.h" 3 4
extern int rexec (char **__restrict __ahost, int __rport,
    const char *__restrict __name,
    const char *__restrict __pass,
    const char *__restrict __cmd, int *__restrict __fd2p);
# 491 "/usr/include/netdb.h" 3 4
extern int rexec_af (char **__restrict __ahost, int __rport,
       const char *__restrict __name,
       const char *__restrict __pass,
       const char *__restrict __cmd, int *__restrict __fd2p,
       sa_family_t __af);
# 505 "/usr/include/netdb.h" 3 4
extern int ruserok (const char *__rhost, int __suser,
      const char *__remuser, const char *__locuser);
# 515 "/usr/include/netdb.h" 3 4
extern int ruserok_af (const char *__rhost, int __suser,
         const char *__remuser, const char *__locuser,
         sa_family_t __af);
# 528 "/usr/include/netdb.h" 3 4
extern int iruserok (uint32_t __raddr, int __suser,
       const char *__remuser, const char *__locuser);
# 539 "/usr/include/netdb.h" 3 4
extern int iruserok_af (const void *__raddr, int __suser,
   const char *__remuser, const char *__locuser,
   sa_family_t __af);
# 551 "/usr/include/netdb.h" 3 4
extern int rresvport (int *__alport);
# 560 "/usr/include/netdb.h" 3 4
extern int rresvport_af (int *__alport, sa_family_t __af);






struct addrinfo
{
  int ai_flags;
  int ai_family;
  int ai_socktype;
  int ai_protocol;
  socklen_t ai_addrlen;
  struct sockaddr *ai_addr;
  char *ai_canonname;
  struct addrinfo *ai_next;
};
# 662 "/usr/include/netdb.h" 3 4
extern int getaddrinfo (const char *__restrict __name,
   const char *__restrict __service,
   const struct addrinfo *__restrict __req,
   struct addrinfo **__restrict __pai);


extern void freeaddrinfo (struct addrinfo *__ai) __attribute__ ((__nothrow__ , __leaf__));


extern const char *gai_strerror (int __ecode) __attribute__ ((__nothrow__ , __leaf__));





extern int getnameinfo (const struct sockaddr *__restrict __sa,
   socklen_t __salen, char *__restrict __host,
   socklen_t __hostlen, char *__restrict __serv,
   socklen_t __servlen, int __flags);
# 713 "/usr/include/netdb.h" 3 4

# 18 "ftp_session.c" 2
# 1 "/usr/include/syslog.h" 1 3 4
# 1 "/usr/include/sys/syslog.h" 1 3 4
# 40 "/usr/include/sys/syslog.h" 3 4
# 1 "/usr/include/bits/syslog-path.h" 1 3 4
# 41 "/usr/include/sys/syslog.h" 2 3 4
# 169 "/usr/include/sys/syslog.h" 3 4






extern void closelog (void);





extern void openlog (const char *__ident, int __option, int __facility);


extern int setlogmask (int __mask) __attribute__ ((__nothrow__ , __leaf__));





extern void syslog (int __pri, const char *__fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
# 200 "/usr/include/sys/syslog.h" 3 4
extern void vsyslog (int __pri, const char *__fmt, __gnuc_va_list __ap)
     __attribute__ ((__format__ (__printf__, 2, 0)));
# 213 "/usr/include/sys/syslog.h" 3 4

# 1 "/usr/include/syslog.h" 2 3 4
# 19 "ftp_session.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 328 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 66 "/usr/include/bits/waitstatus.h" 3 4
union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 43 "/usr/include/stdlib.h" 2 3 4
# 67 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 95 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 276 "/usr/include/stdlib.h" 3 4

extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ , __leaf__)) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}




__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ , __leaf__)) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void *)0), 10);
}

# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
# 321 "/usr/include/stdlib.h" 3 4
extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 474 "/usr/include/stdlib.h" 3 4






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 493 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;




extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));







extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

# 578 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 606 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 619 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 641 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 662 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 711 "/usr/include/stdlib.h" 3 4





extern int system (const char *__command) ;

# 733 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 751 "/usr/include/stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;


# 1 "/usr/include/bits/stdlib-bsearch.h" 1 3 4
# 19 "/usr/include/bits/stdlib-bsearch.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;

  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 return (void *) __p;
    }

  return ((void *)0);
}
# 760 "/usr/include/stdlib.h" 2 3 4




extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 774 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 811 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));






extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 898 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 950 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 24 "/usr/include/bits/stdlib-float.h" 3 4

extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ , __leaf__)) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}

# 955 "/usr/include/stdlib.h" 2 3 4
# 967 "/usr/include/stdlib.h" 3 4

# 20 "ftp_session.c" 2

# 1 "/usr/include/arpa/inet.h" 1 3 4
# 30 "/usr/include/arpa/inet.h" 3 4




extern in_addr_t inet_addr (const char *__cp) __attribute__ ((__nothrow__ , __leaf__));


extern in_addr_t inet_lnaof (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));



extern struct in_addr inet_makeaddr (in_addr_t __net, in_addr_t __host)
     __attribute__ ((__nothrow__ , __leaf__));


extern in_addr_t inet_netof (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));



extern in_addr_t inet_network (const char *__cp) __attribute__ ((__nothrow__ , __leaf__));



extern char *inet_ntoa (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));




extern int inet_pton (int __af, const char *__restrict __cp,
        void *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern const char *inet_ntop (int __af, const void *__restrict __cp,
         char *__restrict __buf, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));






extern int inet_aton (const char *__cp, struct in_addr *__inp) __attribute__ ((__nothrow__ , __leaf__));



extern char *inet_neta (in_addr_t __net, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern char *inet_net_ntop (int __af, const void *__cp, int __bits,
       char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern int inet_net_pton (int __af, const char *__cp,
     void *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern unsigned int inet_nsap_addr (const char *__cp,
        unsigned char *__buf, int __len) __attribute__ ((__nothrow__ , __leaf__));



extern char *inet_nsap_ntoa (int __len, const unsigned char *__cp,
        char *__buf) __attribute__ ((__nothrow__ , __leaf__));



# 22 "ftp_session.c" 2


# 1 "/usr/include/sys/time.h" 1 3 4
# 27 "/usr/include/sys/time.h" 3 4
# 1 "/usr/include/bits/time.h" 1 3 4
# 28 "/usr/include/sys/time.h" 2 3 4
# 37 "/usr/include/sys/time.h" 3 4

# 55 "/usr/include/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 71 "/usr/include/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };






typedef int __itimer_which_t;




extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
# 189 "/usr/include/sys/time.h" 3 4

# 25 "ftp_session.c" 2
# 34 "ftp_session.c"
# 1 "daemon_assert.h" 1
# 10 "daemon_assert.h"

# 10 "daemon_assert.h"
void daemon_assert_fail(const char *assertion,
                        const char *file,
                        int line,
                        const char *function);
# 35 "ftp_session.c" 2
# 1 "telnet_session.h" 1
# 12 "telnet_session.h"
typedef struct {
    int in_fd;
    int in_errno;
    int in_eof;
    int in_take;
    int in_add;
    char in_buf[2048];
    int in_buflen;

    int in_status;

    int out_fd;
    int out_errno;
    int out_eof;
    int out_take;
    int out_add;
    char out_buf[2048];
    int out_buflen;
} telnet_session_t;


void telnet_session_init(telnet_session_t *t, int in, int out);
int telnet_session_print(telnet_session_t *t, const char *s);
int telnet_session_println(telnet_session_t *t, const char *s);
int telnet_session_readln(telnet_session_t *t, char *buf, int buflen);
void telnet_session_destroy(telnet_session_t *t);
# 36 "ftp_session.c" 2
# 1 "ftp_command.h" 1
# 35 "ftp_command.h"
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/limits.h" 1 3 4
# 168 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 143 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 160 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 2 3 4
# 144 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 148 "/usr/include/limits.h" 2 3 4
# 169 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/limits.h" 2 3 4
# 36 "ftp_command.h" 2

# 1 "af_portability.h" 1
# 49 "af_portability.h"
typedef struct sockaddr_in sockaddr_storage_t;
# 38 "ftp_command.h" 2
# 48 "ftp_command.h"
typedef struct {
    char command[5];
    int num_arg;
    union {
        char string[
# 52 "ftp_command.h" 3 4
                   4096
# 52 "ftp_command.h"
                                 +1];
        sockaddr_storage_t host_port;
        int num;
 off_t offset;
    } arg[2];
} ftp_command_t;


int ftp_command_parse(const char *input, ftp_command_t *cmd);
# 37 "ftp_session.c" 2
# 1 "file_list.h" 1







int file_nlst(int out, const char *cur_dir, const char *filespec);
int file_list(int out, const char *cur_dir, const char *filespec);
# 38 "ftp_session.c" 2
# 1 "ftp_session.h" 1
# 14 "ftp_session.h"
# 1 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/limits.h" 1 3 4
# 15 "ftp_session.h" 2

# 1 "watchdog.h" 1
# 21 "watchdog.h"
# 1 "error.h" 1







typedef struct {
    int error_code;
    char desc[128];
} error_t;


void error_init(error_t *err, int error_code, const char *desc_fmt, ...);
int error_get_error_code(const error_t *err);
const char *error_get_desc(const error_t *err);
# 22 "watchdog.h" 2


typedef struct watched {

    pthread_t watched_thread;


    int in_list;


    time_t alarm_time;


    struct watched *older;
    struct watched *newer;


    void *watchdog;
} watched_t;


typedef struct {
    pthread_mutex_t mutex;
    int inactivity_timeout;


    watched_t *oldest;
    watched_t *newest;
} watchdog_t;

int watchdog_init(watchdog_t *w, int inactivity_timeout, error_t *err);
void watchdog_add_watched(watchdog_t *w, watched_t *watched);
void watchdog_defer_watched(watched_t *watched);
void watchdog_remove_watched(watched_t *watched);
# 17 "ftp_session.h" 2
# 37 "ftp_session.h"
typedef struct {

    int session_active;


    unsigned long command_number;


    int data_type;
    int file_structure;


    off_t file_offset;
    unsigned long file_offset_command_number;



    int epsv_all_set;


    sockaddr_storage_t client_addr;
    char client_addr_str[58];


    sockaddr_storage_t server_addr;
    struct sockaddr_in server_ipv4_addr;


    telnet_session_t *telnet_session;


    char dir[
# 68 "ftp_session.h" 3 4
            4096
# 68 "ftp_session.h"
                    +1];



    int data_channel;
    sockaddr_storage_t data_port;
    int server_fd;


    watched_t *watched;
} ftp_session_t;

int ftp_session_init(ftp_session_t *f,
                     const sockaddr_storage_t *client_addr,
                     const sockaddr_storage_t *server_addr,
                     telnet_session_t *t,
                     const char *dir,
                     error_t *err);
void ftp_session_drop(ftp_session_t *f, const char *reason);
void ftp_session_run(ftp_session_t *f, watched_t *watched);
void ftp_session_destroy(ftp_session_t *f);
# 39 "ftp_session.c" 2

# 1 "oftpd.h" 1
# 41 "ftp_session.c" 2






static int invariant(const ftp_session_t *f);
static void reply(ftp_session_t *f, int code, const char *fmt, ...);
static void change_dir(ftp_session_t *f, const char *new_dir);
static int open_connection(ftp_session_t *f);
static int write_fully(int fd, const char *buf, int buflen);
static void init_passive_port();
static int get_passive_port();
static int convert_newlines(char *dst, const char *src, int srclen);
static void get_addr_str(const sockaddr_storage_t *s, char *buf, int bufsiz);
static void send_readme(const ftp_session_t *f, int code);
static void netscape_hack(int fd);
static void set_port(ftp_session_t *f, const sockaddr_storage_t *host_port);
static int set_pasv(ftp_session_t *f, sockaddr_storage_t *host_port);
static int ip_equal(const sockaddr_storage_t *a, const sockaddr_storage_t *b);
static void get_absolute_fname(char *fname,
                               int fname_len,
                               const char *dir,
                               const char *file);


static void do_user(ftp_session_t *f, const ftp_command_t *cmd);
static void do_pass(ftp_session_t *f, const ftp_command_t *cmd);
static void do_cwd(ftp_session_t *f, const ftp_command_t *cmd);
static void do_cdup(ftp_session_t *f, const ftp_command_t *cmd);
static void do_quit(ftp_session_t *f, const ftp_command_t *cmd);
static void do_port(ftp_session_t *f, const ftp_command_t *cmd);
static void do_pasv(ftp_session_t *f, const ftp_command_t *cmd);
static void do_type(ftp_session_t *f, const ftp_command_t *cmd);
static void do_stru(ftp_session_t *f, const ftp_command_t *cmd);
static void do_mode(ftp_session_t *f, const ftp_command_t *cmd);
static void do_retr(ftp_session_t *f, const ftp_command_t *cmd);
static void do_stor(ftp_session_t *f, const ftp_command_t *cmd);
static void do_pwd(ftp_session_t *f, const ftp_command_t *cmd);
static void do_nlst(ftp_session_t *f, const ftp_command_t *cmd);
static void do_list(ftp_session_t *f, const ftp_command_t *cmd);
static void do_syst(ftp_session_t *f, const ftp_command_t *cmd);
static void do_noop(ftp_session_t *f, const ftp_command_t *cmd);
static void do_rest(ftp_session_t *f, const ftp_command_t *cmd);
static void do_lprt(ftp_session_t *f, const ftp_command_t *cmd);
static void do_lpsv(ftp_session_t *f, const ftp_command_t *cmd);
static void do_eprt(ftp_session_t *f, const ftp_command_t *cmd);
static void do_epsv(ftp_session_t *f, const ftp_command_t *cmd);
static void do_size(ftp_session_t *f, const ftp_command_t *cmd);
static void do_mdtm(ftp_session_t *f, const ftp_command_t *cmd);

static struct {
    char *name;
    void (*func)(ftp_session_t *f, const ftp_command_t *cmd);
} command_func[] = {
    { "USER", do_user },
    { "PASS", do_pass },
    { "CWD", do_cwd },
    { "CDUP", do_cdup },
    { "QUIT", do_quit },
    { "PORT", do_port },
    { "PASV", do_pasv },
    { "LPRT", do_lprt },
    { "LPSV", do_lpsv },
    { "EPRT", do_eprt },
    { "EPSV", do_epsv },
    { "TYPE", do_type },
    { "STRU", do_stru },
    { "MODE", do_mode },
    { "RETR", do_retr },
    { "STOR", do_stor },
    { "PWD", do_pwd },
    { "NLST", do_nlst },
    { "LIST", do_list },
    { "SYST", do_syst },
    { "NOOP", do_noop },
    { "REST", do_rest },
    { "SIZE", do_size },
    { "MDTM", do_mdtm }
};




int ftp_session_init(ftp_session_t *f,
                     const sockaddr_storage_t *client_addr,
                     const sockaddr_storage_t *server_addr,
                     telnet_session_t *t,
                     const char *dir,
                error_t *err)
{
    ((f != 
# 132 "ftp_session.c" 3 4
   ((void *)0)
# 132 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("f != ((void *)0)", "ftp_session.c", 132, __func__)));
    ((client_addr != 
# 133 "ftp_session.c" 3 4
   ((void *)0)
# 133 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("client_addr != ((void *)0)", "ftp_session.c", 133, __func__)));
    ((server_addr != 
# 134 "ftp_session.c" 3 4
   ((void *)0)
# 134 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("server_addr != ((void *)0)", "ftp_session.c", 134, __func__)));
    ((t != 
# 135 "ftp_session.c" 3 4
   ((void *)0)
# 135 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("t != ((void *)0)", "ftp_session.c", 135, __func__)));
    ((dir != 
# 136 "ftp_session.c" 3 4
   ((void *)0)
# 136 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("dir != ((void *)0)", "ftp_session.c", 136, __func__)));
    ((strlen(dir) <= 
# 137 "ftp_session.c" 3 4
   4096
# 137 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("strlen(dir) <= 4096", "ftp_session.c", 137, __func__)));
    ((err != 
# 138 "ftp_session.c" 3 4
   ((void *)0)
# 138 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("err != ((void *)0)", "ftp_session.c", 138, __func__)));
# 171 "ftp_session.c"
    f->server_ipv4_addr = *server_addr;


    f->session_active = 1;
    f->command_number = 0;

    f->data_type = 0;
    f->file_structure = 0;

    f->file_offset = 0;
    f->file_offset_command_number = 
# 181 "ftp_session.c" 3 4
                                   (0x7fffffffffffffffL * 2UL + 1UL)
# 181 "ftp_session.c"
                                            ;

    f->epsv_all_set = 0;

    f->client_addr = *client_addr;
    get_addr_str(client_addr, f->client_addr_str, sizeof(f->client_addr_str));

    f->server_addr = *server_addr;

    f->telnet_session = t;
    ((strlen(dir) < sizeof(f->dir)) ? 0 : (daemon_assert_fail("strlen(dir) < sizeof(f->dir)", "ftp_session.c", 191, __func__)));
    strcpy(f->dir, dir);

    f->data_channel = 0;
    f->data_port = *client_addr;
    f->server_fd = -1;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 198, __func__)));

    return 1;
}

void ftp_session_drop(ftp_session_t *f, const char *reason)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 205, __func__)));
    ((reason != 
# 206 "ftp_session.c" 3 4
   ((void *)0)
# 206 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("reason != ((void *)0)", "ftp_session.c", 206, __func__)));


    reply(f, 421, "%s.", reason);

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 211, __func__)));
}

void ftp_session_run(ftp_session_t *f, watched_t *watched)
{
    char buf[2048];
    int len;
    ftp_command_t cmd;
    int i;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 221, __func__)));
    ((watched != 
# 222 "ftp_session.c" 3 4
   ((void *)0)
# 222 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("watched != ((void *)0)", "ftp_session.c", 222, __func__)));


    f->watched = watched;


    send_readme(f, 220);
    reply(f, 220, "Service ready for new user.");


    while (f->session_active &&
        telnet_session_readln(f->telnet_session, buf, sizeof(buf)))
    {


 watchdog_defer_watched(f->watched);


 if (f->command_number == 
# 240 "ftp_session.c" 3 4
                         (0x7fffffffffffffffL * 2UL + 1UL)
# 240 "ftp_session.c"
                                  ) {
     f->command_number = 0;
 } else {
     f->command_number++;
 }


        len = strlen(buf);
 if (buf[len-1] != '\n') {
            reply(f, 500, "Command line too long.");
            while (telnet_session_readln(f->telnet_session, buf, sizeof(buf))) {
                len = strlen(buf);
  if (buf[len-1] == '\n') {
      break;
  }
            }
     goto next_command;
 }

        syslog(
# 259 "ftp_session.c" 3 4
              7
# 259 "ftp_session.c"
                       , "%s %s", f->client_addr_str, buf);


 if (!ftp_command_parse(buf, &cmd)) {
     reply(f, 500, "Syntax error, command unrecognized.");
     goto next_command;
 }


 for (i=0; i<(sizeof(command_func) / sizeof(command_func[0])); i++) {
     if (
# 269 "ftp_session.c" 3 4
        __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) && __builtin_constant_p (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) && (__s1_len = strlen (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ), __s2_len = strlen (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ), (!((size_t)(const void *)((
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) + 1) - (size_t)(const void *)(
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) + 1) - (size_t)(const void *)(
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) == 1) || __s2_len >= 4)) ? __builtin_strcmp (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        , 
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) : (__builtin_constant_p (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) && ((size_t)(const void *)((
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) + 1) - (size_t)(const void *)(
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) == 1) && (__s1_len = strlen (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ), __s1_len < 4) ? (__builtin_constant_p (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) && ((size_t)(const void *)((
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) + 1) - (size_t)(const void *)(
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) == 1) ? __builtin_strcmp (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        , 
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ); int __result = (((const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) && ((size_t)(const void *)((
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) + 1) - (size_t)(const void *)(
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) == 1) && (__s2_len = strlen (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ), __s2_len < 4) ? (__builtin_constant_p (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) && ((size_t)(const void *)((
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) + 1) - (size_t)(const void *)(
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ) == 1) ? __builtin_strcmp (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        , 
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ) : (- (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        ); int __result = (((const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ))[0] - __s2[0]); if (__s2_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ))[1] - __s2[1]); if (__s2_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ))[2] - __s2[2]); if (__s2_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        ))[3] - __s2[3]); } } __result; })))) : __builtin_strcmp (
# 269 "ftp_session.c"
        cmd.command
# 269 "ftp_session.c" 3 4
        , 
# 269 "ftp_session.c"
        command_func[i].name
# 269 "ftp_session.c" 3 4
        )))); }) 
# 269 "ftp_session.c"
                                                  == 0) {
         (command_func[i].func)(f, &cmd);
         goto next_command;
     }
 }


 reply(f, 502, "Command not implemented.");

next_command: {}
    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 281, __func__)));
}

void ftp_session_destroy(ftp_session_t *f)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 286, __func__)));

    if (f->server_fd != -1) {
        close(f->server_fd);
 f->server_fd = -1;
    }
}


static int invariant(const ftp_session_t *f)
{
    int len;

    if (f == 
# 299 "ftp_session.c" 3 4
            ((void *)0)
# 299 "ftp_session.c"
                ) {
        return 0;
    }
    if ((f->session_active != 0) && (f->session_active != 1)) {
        return 0;
    }
    if ((f->data_type != 0) && (f->data_type != 1)) {
        return 0;
    }
    if ((f->file_structure != 0) && (f->file_structure != 1)){
        return 0;
    }
    if (f->file_offset < 0) {
        return 0;
    }
    if ((f->epsv_all_set != 0) && (f->epsv_all_set != 1)) {
        return 0;
    }
    len = strlen(f->client_addr_str);
    if ((len <= 0) || (len >= 58)) {
        return 0;
    }
    if (f->telnet_session == 
# 321 "ftp_session.c" 3 4
                            ((void *)0)
# 321 "ftp_session.c"
                                ) {
        return 0;
    }
    switch (f->data_channel) {
 case 0:



     if (!ip_equal(&f->client_addr, &f->data_port)) {
         return 0;
     }
     if (f->server_fd != -1) {
         return 0;
     }
     break;
 case 1:
     if (f->server_fd < 0) {
         return 0;
     }
     break;
        default:
     return 0;
    }
    return 1;
}


static void reply(ftp_session_t *f, int code, const char *fmt, ...)
{
    char buf[256];
    va_list ap;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 353, __func__)));
    ((code >= 100) ? 0 : (daemon_assert_fail("code >= 100", "ftp_session.c", 354, __func__)));
    ((code <= 559) ? 0 : (daemon_assert_fail("code <= 559", "ftp_session.c", 355, __func__)));
    ((fmt != 
# 356 "ftp_session.c" 3 4
   ((void *)0)
# 356 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("fmt != ((void *)0)", "ftp_session.c", 356, __func__)));


    sprintf(buf, "%d", code);
    buf[3] = ' ';


    
# 363 "ftp_session.c" 3 4
   __builtin_va_start(
# 363 "ftp_session.c"
   ap
# 363 "ftp_session.c" 3 4
   ,
# 363 "ftp_session.c"
   fmt
# 363 "ftp_session.c" 3 4
   )
# 363 "ftp_session.c"
                    ;
    vsnprintf(buf+4, sizeof(buf)-4, fmt, ap);
    
# 365 "ftp_session.c" 3 4
   __builtin_va_end(
# 365 "ftp_session.c"
   ap
# 365 "ftp_session.c" 3 4
   )
# 365 "ftp_session.c"
             ;


    syslog(
# 368 "ftp_session.c" 3 4
          7
# 368 "ftp_session.c"
                   , "%s %s", f->client_addr_str, buf);


    telnet_session_println(f->telnet_session, buf);

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 373, __func__)));
}

static void do_user(ftp_session_t *f, const ftp_command_t *cmd)
{
    const char *user;
    char addr_port[58];

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 381, __func__)));
    ((cmd != 
# 382 "ftp_session.c" 3 4
   ((void *)0)
# 382 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 382, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 383, __func__)));

    user = cmd->arg[0].string;
    if (strcasecmp(user, "ftp") && strcasecmp(user, "anonymous")) {
 syslog(
# 387 "ftp_session.c" 3 4
       4
# 387 "ftp_session.c"
                  , "%s attempted to log in as \"%s\"",
            f->client_addr_str, user);
        reply(f, 530, "Only anonymous FTP supported.");
    } else {
        reply(f, 331, "Send e-mail address as password.");
    }
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 393, __func__)));
}


static void do_pass(ftp_session_t *f, const ftp_command_t *cmd)
{
    const char *password;
    char addr_port[58];

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 402, __func__)));
    ((cmd != 
# 403 "ftp_session.c" 3 4
   ((void *)0)
# 403 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 403, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 404, __func__)));

    password = cmd->arg[0].string;
    syslog(
# 407 "ftp_session.c" 3 4
          6
# 407 "ftp_session.c"
                  , "%s reports e-mail address \"%s\"",
        f->client_addr_str, password);
    reply(f, 230, "User logged in, proceed.");

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 411, __func__)));
}
# 439 "ftp_session.c"
static void get_addr_str(const sockaddr_storage_t *s, char *buf, int bufsiz)
{
    unsigned int addr;
    int port;

    ((s != 
# 444 "ftp_session.c" 3 4
   ((void *)0)
# 444 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("s != ((void *)0)", "ftp_session.c", 444, __func__)));
    ((buf != 
# 445 "ftp_session.c" 3 4
   ((void *)0)
# 445 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("buf != ((void *)0)", "ftp_session.c", 445, __func__)));




    ((bufsiz >= (
# 450 "ftp_session.c" 3 4
   16 
# 450 "ftp_session.c"
   + 12)) ? 0 : (daemon_assert_fail("bufsiz >= (16 + 12)", "ftp_session.c", 450, __func__)));

    addr = 
# 452 "ftp_session.c" 3 4
          __bswap_32 (
# 452 "ftp_session.c"
          s->sin_addr.s_addr
# 452 "ftp_session.c" 3 4
          )
# 452 "ftp_session.c"
                                   ;
    port = 
# 453 "ftp_session.c" 3 4
          (__extension__ ({ unsigned short int __v, __x = (unsigned short int) (
# 453 "ftp_session.c"
          s->sin_port
# 453 "ftp_session.c" 3 4
          ); if (__builtin_constant_p (__x)) __v = ((unsigned short int) ((((__x) >> 8) & 0xff) | (((__x) & 0xff) << 8))); else __asm__ ("rorw $8, %w0" : "=r" (__v) : "0" (__x) : "cc"); __v; }))
# 453 "ftp_session.c"
                            ;
    snprintf(buf, bufsiz, "%d.%d.%d.%d port %d",
        (addr >> 24) & 0xff,
 (addr >> 16) & 0xff,
 (addr >> 8) & 0xff,
 addr & 0xff,
        port);
}


static void do_cwd(ftp_session_t *f, const ftp_command_t *cmd)
{
    const char *new_dir;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 467, __func__)));
    ((cmd != 
# 468 "ftp_session.c" 3 4
   ((void *)0)
# 468 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 468, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 469, __func__)));

    new_dir = cmd->arg[0].string;
    change_dir(f, new_dir);

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 474, __func__)));
}

static void do_cdup(ftp_session_t *f, const ftp_command_t *cmd)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 479, __func__)));
    ((cmd != 
# 480 "ftp_session.c" 3 4
   ((void *)0)
# 480 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 480, __func__)));
    ((cmd->num_arg == 0) ? 0 : (daemon_assert_fail("cmd->num_arg == 0", "ftp_session.c", 481, __func__)));

    change_dir(f, "..");

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 485, __func__)));
}

static void change_dir(ftp_session_t *f, const char *new_dir)
{
    char target[
# 490 "ftp_session.c" 3 4
               4096
# 490 "ftp_session.c"
                       +1];
    const char *p, *n;
    int len;
    char *prev_dir;
    char *target_end;

    struct stat stat_buf;
    int dir_okay;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 499, __func__)));
    ((new_dir != 
# 500 "ftp_session.c" 3 4
   ((void *)0)
# 500 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("new_dir != ((void *)0)", "ftp_session.c", 500, __func__)));
    ((strlen(new_dir) <= 
# 501 "ftp_session.c" 3 4
   4096
# 501 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("strlen(new_dir) <= 4096", "ftp_session.c", 501, __func__)));


    p = new_dir;
    if (*p == '/') {

        strcpy(target, "/");
 do {
     p++;
 } while (*p == '/');
    } else {

 ((strlen(f->dir) < sizeof(target)) ? 0 : (daemon_assert_fail("strlen(f->dir) < sizeof(target)", "ftp_session.c", 513, __func__)));
 strcpy(target, f->dir);
    }


    while (*p != '\0') {


        n = 
# 521 "ftp_session.c" 3 4
           (__extension__ (__builtin_constant_p (
# 521 "ftp_session.c"
           '/'
# 521 "ftp_session.c" 3 4
           ) && !__builtin_constant_p (
# 521 "ftp_session.c"
           p
# 521 "ftp_session.c" 3 4
           ) && (
# 521 "ftp_session.c"
           '/'
# 521 "ftp_session.c" 3 4
           ) == '\0' ? (char *) __rawmemchr (
# 521 "ftp_session.c"
           p
# 521 "ftp_session.c" 3 4
           , 
# 521 "ftp_session.c"
           '/'
# 521 "ftp_session.c" 3 4
           ) : __builtin_strchr (
# 521 "ftp_session.c"
           p
# 521 "ftp_session.c" 3 4
           , 
# 521 "ftp_session.c"
           '/'
# 521 "ftp_session.c" 3 4
           )))
# 521 "ftp_session.c"
                         ;
 if (n == 
# 522 "ftp_session.c" 3 4
         ((void *)0)
# 522 "ftp_session.c"
             ) {
     n = 
# 523 "ftp_session.c" 3 4
        (__extension__ (__builtin_constant_p (
# 523 "ftp_session.c"
        '\0'
# 523 "ftp_session.c" 3 4
        ) && !__builtin_constant_p (
# 523 "ftp_session.c"
        p
# 523 "ftp_session.c" 3 4
        ) && (
# 523 "ftp_session.c"
        '\0'
# 523 "ftp_session.c" 3 4
        ) == '\0' ? (char *) __rawmemchr (
# 523 "ftp_session.c"
        p
# 523 "ftp_session.c" 3 4
        , 
# 523 "ftp_session.c"
        '\0'
# 523 "ftp_session.c" 3 4
        ) : __builtin_strchr (
# 523 "ftp_session.c"
        p
# 523 "ftp_session.c" 3 4
        , 
# 523 "ftp_session.c"
        '\0'
# 523 "ftp_session.c" 3 4
        )))
# 523 "ftp_session.c"
                       ;
 }
 len = n - p;

        if ((len == 1) && (p[0] == '.')) {



 } else if ((len == 2) && (p[0] == '.') && (p[1] == '.')) {


            prev_dir = strrchr(target, '/');
     ((prev_dir != 
# 535 "ftp_session.c" 3 4
    ((void *)0)
# 535 "ftp_session.c"
    ) ? 0 : (daemon_assert_fail("prev_dir != ((void *)0)", "ftp_session.c", 535, __func__)));
     *prev_dir = '\0';
     if (prev_dir == target) {
                strcpy(target, "/");
     }

 } else {


     if ((strlen(target) + 1 + len) > 
# 544 "ftp_session.c" 3 4
                                     4096
# 544 "ftp_session.c"
                                             ) {
         reply(f, 550, "Error changing directory; path is too long.");
  return;
     }


     target_end = 
# 550 "ftp_session.c" 3 4
                 (__extension__ (__builtin_constant_p (
# 550 "ftp_session.c"
                 '\0'
# 550 "ftp_session.c" 3 4
                 ) && !__builtin_constant_p (
# 550 "ftp_session.c"
                 target
# 550 "ftp_session.c" 3 4
                 ) && (
# 550 "ftp_session.c"
                 '\0'
# 550 "ftp_session.c" 3 4
                 ) == '\0' ? (char *) __rawmemchr (
# 550 "ftp_session.c"
                 target
# 550 "ftp_session.c" 3 4
                 , 
# 550 "ftp_session.c"
                 '\0'
# 550 "ftp_session.c" 3 4
                 ) : __builtin_strchr (
# 550 "ftp_session.c"
                 target
# 550 "ftp_session.c" 3 4
                 , 
# 550 "ftp_session.c"
                 '\0'
# 550 "ftp_session.c" 3 4
                 )))
# 550 "ftp_session.c"
                                     ;
     if (target_end != target+1) {
         *target_end++ = '/';
     }


     while (p != n) {
         *target_end++ = *p++;
     }
     *target_end = '\0';

 }


 p = n;


        while (*p == '/') {
     p++;
 }
    }


    dir_okay = 0;
    if (stat(target, &stat_buf) == 0) {

        if (!
# 576 "ftp_session.c" 3 4
            ((((
# 576 "ftp_session.c"
            stat_buf.st_mode
# 576 "ftp_session.c" 3 4
            )) & 0170000) == (0040000))
# 576 "ftp_session.c"
                                     ) {



     reply(f, 550,"Directory change failed; target is not a directory.");
 } else {
     if (
# 582 "ftp_session.c" 3 4
        ((0100 >> 3) >> 3) 
# 582 "ftp_session.c"
                & stat_buf.st_mode) {
         dir_okay = 1;
     } else if ((stat_buf.st_gid == getegid()) &&
         (
# 585 "ftp_session.c" 3 4
         (0100 >> 3) 
# 585 "ftp_session.c"
                 & stat_buf.st_mode))
     {
         dir_okay = 1;
     } else if ((stat_buf.st_uid == geteuid()) &&
         (
# 589 "ftp_session.c" 3 4
         0100 
# 589 "ftp_session.c"
                 & stat_buf.st_mode))
     {
         dir_okay = 1;
     } else {
         reply(f, 550, "Directory change failed; permission denied.");
     }
 }
    } else {
        reply(f, 550, "Directory change failed; directory does not exist.");
    }


    if (dir_okay) {
 ((strlen(target) < sizeof(f->dir)) ? 0 : (daemon_assert_fail("strlen(target) < sizeof(f->dir)", "ftp_session.c", 602, __func__)));

 if (
# 604 "ftp_session.c" 3 4
    __extension__ ({ size_t __s1_len, __s2_len; (__builtin_constant_p (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) && __builtin_constant_p (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) && (__s1_len = strlen (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ), __s2_len = strlen (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ), (!((size_t)(const void *)((
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) + 1) - (size_t)(const void *)(
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) == 1) || __s1_len >= 4) && (!((size_t)(const void *)((
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) + 1) - (size_t)(const void *)(
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) == 1) || __s2_len >= 4)) ? __builtin_strcmp (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    , 
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) : (__builtin_constant_p (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) && ((size_t)(const void *)((
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) + 1) - (size_t)(const void *)(
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) == 1) && (__s1_len = strlen (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ), __s1_len < 4) ? (__builtin_constant_p (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) && ((size_t)(const void *)((
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) + 1) - (size_t)(const void *)(
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) == 1) ? __builtin_strcmp (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    , 
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) : (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ); int __result = (((const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ))[0] - __s2[0]); if (__s1_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ))[1] - __s2[1]); if (__s1_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ))[2] - __s2[2]); if (__s1_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ))[3] - __s2[3]); } } __result; }))) : (__builtin_constant_p (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) && ((size_t)(const void *)((
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) + 1) - (size_t)(const void *)(
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) == 1) && (__s2_len = strlen (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ), __s2_len < 4) ? (__builtin_constant_p (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) && ((size_t)(const void *)((
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) + 1) - (size_t)(const void *)(
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ) == 1) ? __builtin_strcmp (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    , 
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ) : (- (__extension__ ({ const unsigned char *__s2 = (const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    ); int __result = (((const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ))[0] - __s2[0]); if (__s2_len > 0 && __result == 0) { __result = (((const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ))[1] - __s2[1]); if (__s2_len > 1 && __result == 0) { __result = (((const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ))[2] - __s2[2]); if (__s2_len > 2 && __result == 0) __result = (((const unsigned char *) (const char *) (
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    ))[3] - __s2[3]); } } __result; })))) : __builtin_strcmp (
# 604 "ftp_session.c"
    f->dir
# 604 "ftp_session.c" 3 4
    , 
# 604 "ftp_session.c"
    target
# 604 "ftp_session.c" 3 4
    )))); }) 
# 604 "ftp_session.c"
                           != 0) {
     strcpy(f->dir, target);
            send_readme(f, 250);
        } else {
     strcpy(f->dir, target);
 }
        reply(f, 250, "Directory change successful.");
    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 613, __func__)));
}

static void do_quit(ftp_session_t *f, const ftp_command_t *cmd)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 618, __func__)));
    ((cmd != 
# 619 "ftp_session.c" 3 4
   ((void *)0)
# 619 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 619, __func__)));
    ((cmd->num_arg == 0) ? 0 : (daemon_assert_fail("cmd->num_arg == 0", "ftp_session.c", 620, __func__)));

    reply(f, 221, "Service closing control connection.");
    f->session_active = 0;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 625, __func__)));
}


static void set_port(ftp_session_t *f, const sockaddr_storage_t *host_port)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 631, __func__)));
    ((host_port != 
# 632 "ftp_session.c" 3 4
   ((void *)0)
# 632 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("host_port != ((void *)0)", "ftp_session.c", 632, __func__)));

    if (f->epsv_all_set) {
        reply(f, 500, "After EPSV ALL, only EPSV allowed.");
    } else if (!ip_equal(&f->client_addr, host_port)) {
        reply(f, 500, "Port must be on command channel IP.");
    } else if (
# 638 "ftp_session.c" 3 4
              (__extension__ ({ unsigned short int __v, __x = (unsigned short int) (
# 638 "ftp_session.c"
              (((struct sockaddr_in *)(host_port))->sin_port)
# 638 "ftp_session.c" 3 4
              ); if (__builtin_constant_p (__x)) __v = ((unsigned short int) ((((__x) >> 8) & 0xff) | (((__x) & 0xff) << 8))); else __asm__ ("rorw $8, %w0" : "=r" (__v) : "0" (__x) : "cc"); __v; })) 
# 638 "ftp_session.c"
                                        < 
# 638 "ftp_session.c" 3 4
                                          1024
# 638 "ftp_session.c"
                                                         ) {
        reply(f, 500, "Port may not be less than 1024, which is reserved.");
    } else {

        if (f->data_channel == 1) {
            close(f->server_fd);
     f->server_fd = -1;
        }

        f->data_channel = 0;
 f->data_port = *host_port;
 reply(f, 200, "Command okay.");
    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 652, __func__)));
}


static void do_port(ftp_session_t *f, const ftp_command_t *cmd)
{
    const sockaddr_storage_t *host_port;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 660, __func__)));
    ((cmd != 
# 661 "ftp_session.c" 3 4
   ((void *)0)
# 661 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 661, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 662, __func__)));

    host_port = &cmd->arg[0].host_port;
    (((((struct sockaddr_storage *)(host_port))->ss_family) == 
# 665 "ftp_session.c" 3 4
   2
# 665 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("(((struct sockaddr_storage *)(host_port))->ss_family) == 2", "ftp_session.c", 665, __func__)));

    set_port(f, host_port);

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 669, __func__)));
}


static void do_lprt(ftp_session_t *f, const ftp_command_t *cmd)
{
    const sockaddr_storage_t *host_port;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 677, __func__)));
    ((cmd != 
# 678 "ftp_session.c" 3 4
   ((void *)0)
# 678 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 678, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 679, __func__)));

    host_port = &cmd->arg[0].host_port;






    if ((((struct sockaddr_storage *)(host_port))->ss_family) != 
# 688 "ftp_session.c" 3 4
                           2
# 688 "ftp_session.c"
                                  ) {
        reply(f, 521, "Only IPv4 supported, address family (4)");
    }


    set_port(f, host_port);

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 695, __func__)));
}







static void do_eprt(ftp_session_t *f, const ftp_command_t *cmd)
{
    const sockaddr_storage_t *host_port;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 708, __func__)));
    ((cmd != 
# 709 "ftp_session.c" 3 4
   ((void *)0)
# 709 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 709, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 710, __func__)));

    reply(f, 500, "EPRT not supported, use EPSV.");

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 714, __func__)));
}




static int set_pasv(ftp_session_t *f, sockaddr_storage_t *bind_addr)
{
    int socket_fd;
    int port;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 725, __func__)));
    ((bind_addr != 
# 726 "ftp_session.c" 3 4
   ((void *)0)
# 726 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("bind_addr != ((void *)0)", "ftp_session.c", 726, __func__)));

    socket_fd = socket((((struct sockaddr_storage *)(bind_addr))->ss_family), 
# 728 "ftp_session.c" 3 4
                                        SOCK_STREAM
# 728 "ftp_session.c"
                                                   , 0);
    if (socket_fd == -1) {
        reply(f, 500, "Error creating server socket; %s.", strerror(
# 730 "ftp_session.c" 3 4
                                                                   (*__errno_location ())
# 730 "ftp_session.c"
                                                                        ));
 return -1;
    }

    for (;;) {
        port = get_passive_port();
        (((struct sockaddr_in *)(bind_addr))->sin_port) = 
# 736 "ftp_session.c" 3 4
                            (__extension__ ({ unsigned short int __v, __x = (unsigned short int) (
# 736 "ftp_session.c"
                            port
# 736 "ftp_session.c" 3 4
                            ); if (__builtin_constant_p (__x)) __v = ((unsigned short int) ((((__x) >> 8) & 0xff) | (((__x) & 0xff) << 8))); else __asm__ ("rorw $8, %w0" : "=r" (__v) : "0" (__x) : "cc"); __v; }))
# 736 "ftp_session.c"
                                       ;
 if (bind(socket_fd, (struct sockaddr *)bind_addr,
     sizeof(struct sockaddr)) == 0)
 {
     break;
 }
 if (
# 742 "ftp_session.c" 3 4
    (*__errno_location ()) 
# 742 "ftp_session.c"
          != 
# 742 "ftp_session.c" 3 4
             98
# 742 "ftp_session.c"
                       ) {
            reply(f, 500, "Error binding server port; %s.", strerror(
# 743 "ftp_session.c" 3 4
                                                                    (*__errno_location ())
# 743 "ftp_session.c"
                                                                         ));
            close(socket_fd);
            return -1;
 }
    }

    if (listen(socket_fd, 1) != 0) {
        reply(f, 500, "Error listening on server port; %s.", strerror(
# 750 "ftp_session.c" 3 4
                                                                     (*__errno_location ())
# 750 "ftp_session.c"
                                                                          ));
        close(socket_fd);
 return -1;
    }

    return socket_fd;
}


static void do_pasv(ftp_session_t *f, const ftp_command_t *cmd)
{
    int socket_fd;
    unsigned int addr;
    int port;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 765, __func__)));
    ((cmd != 
# 766 "ftp_session.c" 3 4
   ((void *)0)
# 766 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 766, __func__)));
    ((cmd->num_arg == 0) ? 0 : (daemon_assert_fail("cmd->num_arg == 0", "ftp_session.c", 767, __func__)));

    if (f->epsv_all_set) {
        reply(f, 500, "After EPSV ALL, only EPSV allowed.");
        goto exit_pasv;
    }

    socket_fd = set_pasv(f, &f->server_ipv4_addr);
    if (socket_fd == -1) {
        goto exit_pasv;
    }


    addr = 
# 780 "ftp_session.c" 3 4
          __bswap_32 (
# 780 "ftp_session.c"
          f->server_ipv4_addr.sin_addr.s_addr
# 780 "ftp_session.c" 3 4
          )
# 780 "ftp_session.c"
                                                    ;
    port = 
# 781 "ftp_session.c" 3 4
          (__extension__ ({ unsigned short int __v, __x = (unsigned short int) (
# 781 "ftp_session.c"
          f->server_ipv4_addr.sin_port
# 781 "ftp_session.c" 3 4
          ); if (__builtin_constant_p (__x)) __v = ((unsigned short int) ((((__x) >> 8) & 0xff) | (((__x) & 0xff) << 8))); else __asm__ ("rorw $8, %w0" : "=r" (__v) : "0" (__x) : "cc"); __v; }))
# 781 "ftp_session.c"
                                             ;
    reply(f, 227, "Entering Passive Mode (%d,%d,%d,%d,%d,%d).",
        addr >> 24,
 (addr >> 16) & 0xff,
 (addr >> 8) & 0xff,
 addr & 0xff,
        port >> 8,
 port & 0xff);


   if (f->data_channel == 1) {
       close(f->server_fd);
   }
   f->data_channel = 1;
   f->server_fd = socket_fd;

exit_pasv:
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 798, __func__)));
}


static void do_lpsv(ftp_session_t *f, const ftp_command_t *cmd)
{
    int socket_fd;
    char addr[80];
    uint8_t *a;
    uint8_t *p;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 809, __func__)));
    ((cmd != 
# 810 "ftp_session.c" 3 4
   ((void *)0)
# 810 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 810, __func__)));
    ((cmd->num_arg == 0) ? 0 : (daemon_assert_fail("cmd->num_arg == 0", "ftp_session.c", 811, __func__)));

    if (f->epsv_all_set) {
        reply(f, 500, "After EPSV ALL, only EPSV allowed.");
        goto exit_lpsv;
    }

    socket_fd = set_pasv(f, &f->server_addr);
    if (socket_fd == -1) {
        goto exit_lpsv;
    }
# 834 "ftp_session.c"
    {
        a = (uint8_t *)&(((struct sockaddr_in *)(&f->server_addr))->sin_addr);
        p = (uint8_t *)&(((struct sockaddr_in *)(&f->server_addr))->sin_port);
 snprintf(addr, sizeof(addr), "(4,4,%d,%d,%d,%d,2,%d,%d)",
     a[0], a[1], a[2], a[3], p[0], p[1]);
    }

    reply(f, 228, "Entering Long Passive Mode %s", addr);


   if (f->data_channel == 1) {
       close(f->server_fd);
   }
   f->data_channel = 1;
   f->server_fd = socket_fd;

exit_lpsv:
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 851, __func__)));
}


static void do_epsv(ftp_session_t *f, const ftp_command_t *cmd)
{
    int socket_fd;
    sockaddr_storage_t *addr;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 860, __func__)));
    ((cmd != 
# 861 "ftp_session.c" 3 4
   ((void *)0)
# 861 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 861, __func__)));
    (((cmd->num_arg == 0) || (cmd->num_arg == 1)) ? 0 : (daemon_assert_fail("(cmd->num_arg == 0) || (cmd->num_arg == 1)", "ftp_session.c", 862, __func__)));


    if (cmd->num_arg == 0) {
        addr = &f->server_addr;
    } else {
        switch (cmd->arg[0].num) {




     case (-1):
                f->epsv_all_set = 1;
  reply(f, 200, "EPSV ALL command successful.");
  goto exit_epsv;
     case 1:
         addr = (sockaddr_storage_t *)&f->server_ipv4_addr;
  break;
# 888 "ftp_session.c"
     default:
         reply(f, 522, "Only IPv4 supported, use (1)");
         goto exit_epsv;

        }
    }


    socket_fd = set_pasv(f, addr);
    if (socket_fd == -1) {
        goto exit_epsv;
    }


    reply(f, 229, "Entering Extended Passive Mode (|||%d|)",
        
# 903 "ftp_session.c" 3 4
       (__extension__ ({ unsigned short int __v, __x = (unsigned short int) (
# 903 "ftp_session.c"
       (((struct sockaddr_in *)(&f->server_addr))->sin_port)
# 903 "ftp_session.c" 3 4
       ); if (__builtin_constant_p (__x)) __v = ((unsigned short int) ((((__x) >> 8) & 0xff) | (((__x) & 0xff) << 8))); else __asm__ ("rorw $8, %w0" : "=r" (__v) : "0" (__x) : "cc"); __v; }))
# 903 "ftp_session.c"
                                      );


    if (f->data_channel == 1) {
        close(f->server_fd);
    }
    f->data_channel = 1;
    f->server_fd = socket_fd;

exit_epsv:
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 913, __func__)));
}


static void init_passive_port()
{
    struct timeval tv;
    unsigned short int seed[3];

    gettimeofday(&tv, 
# 922 "ftp_session.c" 3 4
                     ((void *)0)
# 922 "ftp_session.c"
                         );
    seed[0] = (tv.tv_sec >> 16) & 0xFFFF;
    seed[1] = tv.tv_sec & 0xFFFF;
    seed[2] = tv.tv_usec & 0xFFFF;
    seed48(seed);
}


static int get_passive_port()
{
    static pthread_once_t once_control = 
# 932 "ftp_session.c" 3 4
                                        0
# 932 "ftp_session.c"
                                                         ;
    static pthread_mutex_t mutex = 
# 933 "ftp_session.c" 3 4
                                  { { 0, 0, 0, 0, 0, 0, 0, { 0, 0 } } }
# 933 "ftp_session.c"
                                                           ;
    int port;


    pthread_once(&once_control, init_passive_port);


    pthread_mutex_lock(&mutex);
    port = (lrand48() % 64512) + 1024;
    pthread_mutex_unlock(&mutex);

    return port;
}

static void do_type(ftp_session_t *f, const ftp_command_t *cmd)
{
    char type;
    char form;
    int cmd_okay;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 953, __func__)));
    ((cmd != 
# 954 "ftp_session.c" 3 4
   ((void *)0)
# 954 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 954, __func__)));
    ((cmd->num_arg >= 1) ? 0 : (daemon_assert_fail("cmd->num_arg >= 1", "ftp_session.c", 955, __func__)));
    ((cmd->num_arg <= 2) ? 0 : (daemon_assert_fail("cmd->num_arg <= 2", "ftp_session.c", 956, __func__)));

    type = cmd->arg[0].string[0];
    if (cmd->num_arg == 2) {
        form = cmd->arg[1].string[0];
    } else {
        form = 0;
    }

    cmd_okay = 0;
    if (type == 'A') {
        if ((cmd->num_arg == 1) || ((cmd->num_arg == 2) && (form == 'N'))) {
            f->data_type = 0;
     cmd_okay = 1;
 }
    } else if (type == 'I') {
        f->data_type = 1;
 cmd_okay = 1;
    }

    if (cmd_okay) {
        reply(f, 200, "Command okay.");
    } else {
        reply(f, 504, "Command not implemented for that parameter.");
    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 982, __func__)));
}

static void do_stru(ftp_session_t *f, const ftp_command_t *cmd)
{
    char structure;
    int cmd_okay;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 990, __func__)));
    ((cmd != 
# 991 "ftp_session.c" 3 4
   ((void *)0)
# 991 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 991, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 992, __func__)));

    structure = cmd->arg[0].string[0];
    cmd_okay = 0;
    if (structure == 'F') {
        f->file_structure = 0;
        cmd_okay = 1;
    } else if (structure == 'R') {
        f->file_structure = 1;
        cmd_okay = 1;
    }

    if (cmd_okay) {
        reply(f, 200, "Command okay.");
    } else {
        reply(f, 504, "Command not implemented for that parameter.");
    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1010, __func__)));
}

static void do_mode(ftp_session_t *f, const ftp_command_t *cmd)
{
    char mode;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1017, __func__)));
    ((cmd != 
# 1018 "ftp_session.c" 3 4
   ((void *)0)
# 1018 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1018, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 1019, __func__)));

    mode = cmd->arg[0].string[0];
    if (mode == 'S') {
        reply(f, 200, "Command okay.");
    } else {
        reply(f, 504, "Command not implemented for that parameter.");
    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1028, __func__)));
}


static void get_absolute_fname(char *fname,
                               int fname_len,
                               const char *dir,
                               const char *file)
{
    ((fname != 
# 1037 "ftp_session.c" 3 4
   ((void *)0)
# 1037 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("fname != ((void *)0)", "ftp_session.c", 1037, __func__)));
    ((dir != 
# 1038 "ftp_session.c" 3 4
   ((void *)0)
# 1038 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("dir != ((void *)0)", "ftp_session.c", 1038, __func__)));
    ((file != 
# 1039 "ftp_session.c" 3 4
   ((void *)0)
# 1039 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("file != ((void *)0)", "ftp_session.c", 1039, __func__)));

    if (*file == '/') {


        ((strlen(file) < fname_len) ? 0 : (daemon_assert_fail("strlen(file) < fname_len", "ftp_session.c", 1044, __func__)));
 strcpy(fname, file);

    } else {


        ((strlen(dir) + 1 + strlen(file) < fname_len) ? 0 : (daemon_assert_fail("strlen(dir) + 1 + strlen(file) < fname_len", "ftp_session.c", 1050, __func__)));
        strcpy(fname, dir);


 if (fname[1] != '\0') {
            strcat(fname, "/");
 }


        strcat(fname, file);

    }
}

static void do_retr(ftp_session_t *f, const ftp_command_t *cmd)
{
    const char *file_name;
    char full_path[
# 1067 "ftp_session.c" 3 4
                  4096
# 1067 "ftp_session.c"
                          +1+
# 1067 "ftp_session.c" 3 4
                             4096
# 1067 "ftp_session.c"
                                           ];
    int file_fd;
    struct stat stat_buf;
    int socket_fd;
    int read_ret;
    char buf[4096];
    char converted_buf[8192];
    int converted_buflen;
    char addr_port[58];
    struct timeval start_timestamp;
    struct timeval end_timestamp;
    struct timeval transfer_time;
    off_t file_size;
    off_t offset;
    off_t amt_to_send;
    int sendfile_ret;
    off_t amt_sent;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1085, __func__)));
    ((cmd != 
# 1086 "ftp_session.c" 3 4
   ((void *)0)
# 1086 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1086, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 1087, __func__)));


    file_fd = -1;
    socket_fd = -1;


    file_name = cmd->arg[0].string;
    get_absolute_fname(full_path, sizeof(full_path), f->dir, file_name);


    file_fd = open(full_path, 
# 1098 "ftp_session.c" 3 4
                             00
# 1098 "ftp_session.c"
                                     );
    if (file_fd == -1) {
        reply(f, 550, "Error opening file; %s.", strerror(
# 1100 "ftp_session.c" 3 4
                                                         (*__errno_location ())
# 1100 "ftp_session.c"
                                                              ));
 goto exit_retr;
    }
    if (fstat(file_fd, &stat_buf) != 0) {
        reply(f, 550, "Error getting file information; %s.", strerror(
# 1104 "ftp_session.c" 3 4
                                                                     (*__errno_location ())
# 1104 "ftp_session.c"
                                                                          ));
 goto exit_retr;
    }

    if (
# 1108 "ftp_session.c" 3 4
       ((((
# 1108 "ftp_session.c"
       stat_buf.st_mode
# 1108 "ftp_session.c" 3 4
       )) & 0170000) == (0040000))
# 1108 "ftp_session.c"
                                ) {



        reply(f, 550, "Error, file is a directory.");
 goto exit_retr;
    }



    if ((f->file_offset_command_number == (f->command_number - 1)) &&
        (f->file_offset > 0))
    {
 if (lseek(file_fd, f->file_offset, 
# 1121 "ftp_session.c" 3 4
                                   0
# 1121 "ftp_session.c"
                                           ) == -1) {
     reply(f, 550, "Error seeking to restart position; %s.",
         strerror(
# 1123 "ftp_session.c" 3 4
                 (*__errno_location ())
# 1123 "ftp_session.c"
                      ));
            goto exit_retr;
 }
    }


    reply(f, 150, "About to open data connection.");


    gettimeofday(&start_timestamp, 
# 1132 "ftp_session.c" 3 4
                                  ((void *)0)
# 1132 "ftp_session.c"
                                      );


    socket_fd = open_connection(f);
    if (socket_fd == -1) {
 goto exit_retr;
    }


    file_size = 0;
    if (f->data_type == 0) {
        for (;;) {
            read_ret = read(file_fd, buf, sizeof(buf));
     if (read_ret == -1) {
         reply(f, 550, "Error reading from file; %s.", strerror(
# 1146 "ftp_session.c" 3 4
                                                               (*__errno_location ())
# 1146 "ftp_session.c"
                                                                    ));
         goto exit_retr;
     }
     if (read_ret == 0) {
         break;
     }
     converted_buflen = convert_newlines(converted_buf, buf, read_ret);

            if (write_fully(socket_fd, converted_buf, converted_buflen) == -1) {
                reply(f, 550, "Error writing to data connection; %s.",
           strerror(
# 1156 "ftp_session.c" 3 4
                   (*__errno_location ())
# 1156 "ftp_session.c"
                        ));
                goto exit_retr;
            }

            file_size += converted_buflen;
 }
    } else {
        ((f->data_type == 1) ? 0 : (daemon_assert_fail("f->data_type == 1", "ftp_session.c", 1163, __func__)));





        offset = f->file_offset;
        file_size = stat_buf.st_size - offset;
        while (offset < stat_buf.st_size) {

            amt_to_send = stat_buf.st_size - offset;
            if (amt_to_send > 65536) {
                amt_to_send = 65536;
            }

            sendfile_ret = sendfile(socket_fd,
                                    file_fd,
                                    &offset,
                                    amt_to_send);
            if (sendfile_ret != amt_to_send) {
                reply(f, 550, "Error sending file; %s.", strerror(
# 1183 "ftp_session.c" 3 4
                                                                 (*__errno_location ())
# 1183 "ftp_session.c"
                                                                      ));
                goto exit_retr;
            }
# 1201 "ftp_session.c"
     watchdog_defer_watched(f->watched);
        }
# 1223 "ftp_session.c"
    }


    close(socket_fd);
    socket_fd = -1;


    reply(f, 226, "File transfer complete.");


    gettimeofday(&end_timestamp, 
# 1233 "ftp_session.c" 3 4
                                ((void *)0)
# 1233 "ftp_session.c"
                                    );


    transfer_time.tv_sec = end_timestamp.tv_sec - start_timestamp.tv_sec;
    transfer_time.tv_usec = end_timestamp.tv_usec - start_timestamp.tv_usec;
    while (transfer_time.tv_usec >= 1000000) {
        transfer_time.tv_sec++;
        transfer_time.tv_usec -= 1000000;
    }
    while (transfer_time.tv_usec < 0) {
        transfer_time.tv_sec--;
        transfer_time.tv_usec += 1000000;
    }


    syslog(
# 1248 "ftp_session.c" 3 4
          6
# 1248 "ftp_session.c"
                  ,
      "%s retrieved \"%s\", %ld bytes in %d.%06d seconds",
      f->client_addr_str,
      full_path,
      file_size,
      transfer_time.tv_sec,
      transfer_time.tv_usec);

exit_retr:
    f->file_offset = 0;
    if (socket_fd != -1) {
        close(socket_fd);
    }
    if (file_fd != -1) {
        close(file_fd);
    }
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1264, __func__)));
}

static void do_stor(ftp_session_t *f, const ftp_command_t *cmd)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1269, __func__)));
    ((cmd != 
# 1270 "ftp_session.c" 3 4
   ((void *)0)
# 1270 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1270, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 1271, __func__)));

    reply(f, 553, "Server will not store files.");

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1275, __func__)));
}

static int open_connection(ftp_session_t *f)
{
    int socket_fd;
    struct sockaddr_in addr;
    unsigned addr_len;

    (((f->data_channel == 0) || (f->data_channel == 1)) ? 0 : (daemon_assert_fail("(f->data_channel == 0) || (f->data_channel == 1)",
                                                   "ftp_session.c"
# 1284 "ftp_session.c"
    ,
                                                   1285
# 1284 "ftp_session.c"
    , __func__)))
                                                    ;

    if (f->data_channel == 0) {
        socket_fd = socket((((struct sockaddr_storage *)(&f->data_port))->ss_family), 
# 1288 "ftp_session.c" 3 4
                                                SOCK_STREAM
# 1288 "ftp_session.c"
                                                           , 0);
 if (socket_fd == -1) {
     reply(f, 425, "Error creating socket; %s.", strerror(
# 1290 "ftp_session.c" 3 4
                                                         (*__errno_location ())
# 1290 "ftp_session.c"
                                                              ));
     return -1;
 }
 if (connect(socket_fd, (struct sockaddr *)&f->data_port,
     sizeof(sockaddr_storage_t)) != 0)
 {
     reply(f, 425, "Error connecting; %s.", strerror(
# 1296 "ftp_session.c" 3 4
                                                    (*__errno_location ())
# 1296 "ftp_session.c"
                                                         ));
     close(socket_fd);
     return -1;
 }
    } else {
        ((f->data_channel == 1) ? 0 : (daemon_assert_fail("f->data_channel == 1", "ftp_session.c", 1301, __func__)));

        addr_len = sizeof(struct sockaddr_in);
        socket_fd = accept(f->server_fd, (struct sockaddr *)&addr, &addr_len);
 if (socket_fd == -1) {
     reply(f, 425, "Error accepting connection; %s.", strerror(
# 1306 "ftp_session.c" 3 4
                                                              (*__errno_location ())
# 1306 "ftp_session.c"
                                                                   ));
     return -1;
 }
# 1324 "ftp_session.c"
 if (memcmp(&f->client_addr.sin_addr,
     &addr.sin_addr, sizeof(struct in_addr)))
 {
     reply(f, 425,
       "Error accepting connection; connection from invalid IP.");
     close(socket_fd);
     return -1;
 }

    }

    return socket_fd;
}



static int convert_newlines(char *dst, const char *src, int srclen)
{
    int i;
    int dstlen;

    ((dst != 
# 1345 "ftp_session.c" 3 4
   ((void *)0)
# 1345 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("dst != ((void *)0)", "ftp_session.c", 1345, __func__)));
    ((src != 
# 1346 "ftp_session.c" 3 4
   ((void *)0)
# 1346 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("src != ((void *)0)", "ftp_session.c", 1346, __func__)));

    dstlen = 0;
    for (i=0; i<srclen; i++) {
        if (src[i] == '\n') {
     dst[dstlen++] = '\r';
 }
 dst[dstlen++] = src[i];
    }
    return dstlen;
}

static int write_fully(int fd, const char *buf, int buflen)
{
    int amt_written;
    int write_ret;

    amt_written = 0;
    while (amt_written < buflen) {
        write_ret = write(fd, buf+amt_written, buflen-amt_written);
 if (write_ret <= 0) {
     return -1;
 }
 amt_written += write_ret;
    }
    return amt_written;
}

static void do_pwd(ftp_session_t *f, const ftp_command_t *cmd)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1376, __func__)));
    ((cmd != 
# 1377 "ftp_session.c" 3 4
   ((void *)0)
# 1377 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1377, __func__)));
    ((cmd->num_arg == 0) ? 0 : (daemon_assert_fail("cmd->num_arg == 0", "ftp_session.c", 1378, __func__)));

    reply(f, 257, "\"%s\" is current directory.", f->dir);

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1382, __func__)));
}
# 1398 "ftp_session.c"
static int filespec_has_wildcard(const char *filespec)
{
    ((filespec != 
# 1400 "ftp_session.c" 3 4
   ((void *)0)
# 1400 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("filespec != ((void *)0)", "ftp_session.c", 1400, __func__)));


    while (*filespec != '\0') {
        switch (*filespec) {

     case '*':
     case '?':
     case '[':
         return 1;


            case '\\':
         if (*(filespec+1) != '\0') {
             filespec++;
  }
  break;
 }
 filespec++;
    }

    return 0;
}


static int filespec_has_path_separator(const char *filespec)
{
    ((filespec != 
# 1427 "ftp_session.c" 3 4
   ((void *)0)
# 1427 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("filespec != ((void *)0)", "ftp_session.c", 1427, __func__)));


    if (
# 1430 "ftp_session.c" 3 4
       (__extension__ (__builtin_constant_p (
# 1430 "ftp_session.c"
       '/'
# 1430 "ftp_session.c" 3 4
       ) && !__builtin_constant_p (
# 1430 "ftp_session.c"
       filespec
# 1430 "ftp_session.c" 3 4
       ) && (
# 1430 "ftp_session.c"
       '/'
# 1430 "ftp_session.c" 3 4
       ) == '\0' ? (char *) __rawmemchr (
# 1430 "ftp_session.c"
       filespec
# 1430 "ftp_session.c" 3 4
       , 
# 1430 "ftp_session.c"
       '/'
# 1430 "ftp_session.c" 3 4
       ) : __builtin_strchr (
# 1430 "ftp_session.c"
       filespec
# 1430 "ftp_session.c" 3 4
       , 
# 1430 "ftp_session.c"
       '/'
# 1430 "ftp_session.c" 3 4
       ))) 
# 1430 "ftp_session.c"
                             != 
# 1430 "ftp_session.c" 3 4
                                ((void *)0)
# 1430 "ftp_session.c"
                                    ) {
        return 1;
    } else {
        return 0;
    }
}


static int filespec_is_legal(const char *filespec)
{
    ((filespec != 
# 1440 "ftp_session.c" 3 4
   ((void *)0)
# 1440 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("filespec != ((void *)0)", "ftp_session.c", 1440, __func__)));

    if (filespec_has_wildcard(filespec)) {
        if (filespec_has_path_separator(filespec)) {
     return 0;
 }
    }
    return 1;
}

static void do_nlst(ftp_session_t *f, const ftp_command_t *cmd)
{
    int fd;
    const char *param;
    int send_ok;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1456, __func__)));
    ((cmd != 
# 1457 "ftp_session.c" 3 4
   ((void *)0)
# 1457 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1457, __func__)));
    (((cmd->num_arg == 0) || (cmd->num_arg == 1)) ? 0 : (daemon_assert_fail("(cmd->num_arg == 0) || (cmd->num_arg == 1)", "ftp_session.c", 1458, __func__)));


    fd = -1;


    if (cmd->num_arg == 0) {
        param = "*";
    } else {
        ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 1467, __func__)));


 if (cmd->arg[0].string[0] == '-') {
            param = "*";
 } else {
            param = cmd->arg[0].string;
 }
    }


    if (!filespec_is_legal(param)) {
        reply(f, 550, "Illegal filename passed.");
 goto exit_nlst;
    }


    reply(f, 150, "About to send name list.");


    fd = open_connection(f);
    if (fd == -1) {
        goto exit_nlst;
    }


    send_ok = file_nlst(fd, f->dir, param);


    netscape_hack(fd);

    if (send_ok) {
        reply(f, 226, "Transfer complete.");
    } else {
        reply(f, 451, "Error sending name list.");
    }


exit_nlst:
    if (fd != -1) {
        close(fd);
    }
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1509, __func__)));
}

static void do_list(ftp_session_t *f, const ftp_command_t *cmd)
{
    int fd;
    const char *param;
    int send_ok;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1518, __func__)));
    ((cmd != 
# 1519 "ftp_session.c" 3 4
   ((void *)0)
# 1519 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1519, __func__)));
    (((cmd->num_arg == 0) || (cmd->num_arg == 1)) ? 0 : (daemon_assert_fail("(cmd->num_arg == 0) || (cmd->num_arg == 1)", "ftp_session.c", 1520, __func__)));


    fd = -1;


    if (cmd->num_arg == 0) {
        param = "*";
    } else {
        ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 1529, __func__)));


 if (cmd->arg[0].string[0] == '-') {
            param = "*";
 } else {
            param = cmd->arg[0].string;
 }
    }


    if (!filespec_is_legal(param)) {
        reply(f, 550, "Illegal filename passed.");
 goto exit_list;
    }


    reply(f, 150, "About to send file list.");


    fd = open_connection(f);
    if (fd == -1) {
        goto exit_list;
    }


    send_ok = file_list(fd, f->dir, param);


    netscape_hack(fd);

    if (send_ok) {
        reply(f, 226, "Transfer complete.");
    } else {
        reply(f, 451, "Error sending file list.");
    }


exit_list:
    if (fd != -1) {
        close(fd);
    }
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1571, __func__)));
}

static void do_syst(ftp_session_t *f, const ftp_command_t *cmd)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1576, __func__)));
    ((cmd != 
# 1577 "ftp_session.c" 3 4
   ((void *)0)
# 1577 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1577, __func__)));
    ((cmd->num_arg == 0) ? 0 : (daemon_assert_fail("cmd->num_arg == 0", "ftp_session.c", 1578, __func__)));

    reply(f, 215, "UNIX");

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1582, __func__)));
}


static void do_noop(ftp_session_t *f, const ftp_command_t *cmd)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1588, __func__)));
    ((cmd != 
# 1589 "ftp_session.c" 3 4
   ((void *)0)
# 1589 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1589, __func__)));
    ((cmd->num_arg == 0) ? 0 : (daemon_assert_fail("cmd->num_arg == 0", "ftp_session.c", 1590, __func__)));

    reply(f, 200, "Command okay.");

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1594, __func__)));
}

static void do_rest(ftp_session_t *f, const ftp_command_t *cmd)
{
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1599, __func__)));
    ((cmd != 
# 1600 "ftp_session.c" 3 4
   ((void *)0)
# 1600 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1600, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 1601, __func__)));

    if (f->data_type != 1) {
        reply(f, 555, "Restart not possible in ASCII mode.");
    } else if (f->file_structure != 0) {
        reply(f, 555, "Restart only possible with FILE structure.");
    } else {
        f->file_offset = cmd->arg[0].offset;
        f->file_offset_command_number = f->command_number;
        reply(f, 350, "Restart okay, awaiting file retrieval request.");
    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1613, __func__)));
}

static void do_size(ftp_session_t *f, const ftp_command_t *cmd)
{
    const char *file_name;
    char full_path[
# 1619 "ftp_session.c" 3 4
                  4096
# 1619 "ftp_session.c"
                          +1+
# 1619 "ftp_session.c" 3 4
                             4096
# 1619 "ftp_session.c"
                                           ];
    struct stat stat_buf;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1622, __func__)));
    ((cmd != 
# 1623 "ftp_session.c" 3 4
   ((void *)0)
# 1623 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1623, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 1624, __func__)));

    if (f->data_type != 1) {
        reply(f, 550, "Size cannot be determined in ASCII mode.");
    } else if (f->file_structure != 0) {
        reply(f, 550, "Size cannot be determined with FILE structure.");
    } else {


        file_name = cmd->arg[0].string;
        get_absolute_fname(full_path, sizeof(full_path), f->dir, file_name);


        if (stat(full_path, &stat_buf) != 0) {
            reply(f, 550, "Error getting file status; %s.", strerror(
# 1638 "ftp_session.c" 3 4
                                                                    (*__errno_location ())
# 1638 "ftp_session.c"
                                                                         ));
        } else {


            if (
# 1642 "ftp_session.c" 3 4
               ((((
# 1642 "ftp_session.c"
               stat_buf.st_mode
# 1642 "ftp_session.c" 3 4
               )) & 0170000) == (0040000))
# 1642 "ftp_session.c"
                                        ) {
                reply(f, 550, "File is a directory, SIZE command not valid.");
            } else {


                if (sizeof(off_t) == 8) {
                    reply(f, 213, "%llu", stat_buf.st_size);
                } else {
                    reply(f, 213, "%lu", stat_buf.st_size);
                }
            }

        }

    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1658, __func__)));
}
# 1674 "ftp_session.c"
static void do_mdtm(ftp_session_t *f, const ftp_command_t *cmd)
{
    const char *file_name;
    char full_path[
# 1677 "ftp_session.c" 3 4
                  4096
# 1677 "ftp_session.c"
                          +1+
# 1677 "ftp_session.c" 3 4
                             4096
# 1677 "ftp_session.c"
                                           ];
    struct stat stat_buf;
    struct tm mtime;
    char time_buf[16];

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1682, __func__)));
    ((cmd != 
# 1683 "ftp_session.c" 3 4
   ((void *)0)
# 1683 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("cmd != ((void *)0)", "ftp_session.c", 1683, __func__)));
    ((cmd->num_arg == 1) ? 0 : (daemon_assert_fail("cmd->num_arg == 1", "ftp_session.c", 1684, __func__)));


    file_name = cmd->arg[0].string;
    get_absolute_fname(full_path, sizeof(full_path), f->dir, file_name);


    if (stat(full_path, &stat_buf) != 0) {
        reply(f, 550, "Error getting file status; %s.", strerror(
# 1692 "ftp_session.c" 3 4
                                                                (*__errno_location ())
# 1692 "ftp_session.c"
                                                                     ));
    } else {
        gmtime_r(&stat_buf.
# 1694 "ftp_session.c" 3 4
                          st_mtim.tv_sec
# 1694 "ftp_session.c"
                                  , &mtime);
        strftime(time_buf, sizeof(time_buf), "%Y%m%d%H%M%S", &mtime);
        reply(f, 213, time_buf);
    }

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1699, __func__)));
}


static void send_readme(const ftp_session_t *f, int code)
{
    char file_name[
# 1705 "ftp_session.c" 3 4
                  4096
# 1705 "ftp_session.c"
                          +1];
    int dir_len;
    struct stat stat_buf;
    int fd;
    int read_ret;
    char buf[4096];
    char code_str[8];
    char *p;
    int len;
    char *nl;
    int line_len;

    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1717, __func__)));
    ((code >= 100) ? 0 : (daemon_assert_fail("code >= 100", "ftp_session.c", 1718, __func__)));
    ((code <= 559) ? 0 : (daemon_assert_fail("code <= 559", "ftp_session.c", 1719, __func__)));


    fd = -1;


    dir_len = strlen(f->dir);
    if ((dir_len + 1 + sizeof("README")) > sizeof(file_name)) {
        goto exit_send_readme;
    }


    strcpy(file_name, f->dir);
    strcat(file_name, "/");
    strcat(file_name, "README");


    fd = open(file_name, 
# 1736 "ftp_session.c" 3 4
                        00
# 1736 "ftp_session.c"
                                );
    if (fd == -1) {
        goto exit_send_readme;
    }


    if (fstat(fd, &stat_buf) != 0) {
        goto exit_send_readme;
    }

    if (
# 1746 "ftp_session.c" 3 4
       ((((
# 1746 "ftp_session.c"
       stat_buf.st_mode
# 1746 "ftp_session.c" 3 4
       )) & 0170000) == (0040000))
# 1746 "ftp_session.c"
                                ) {



 goto exit_send_readme;
    }


    ((code >= 100) ? 0 : (daemon_assert_fail("code >= 100", "ftp_session.c", 1754, __func__)));
    ((code <= 999) ? 0 : (daemon_assert_fail("code <= 999", "ftp_session.c", 1755, __func__)));
    sprintf(code_str, "%03d-", code);


    read_ret = read(fd, buf, sizeof(buf));
    if (read_ret > 0) {
        telnet_session_print(f->telnet_session, code_str);
        while (read_ret > 0) {
            p = buf;
     len = read_ret;
            nl = memchr(p, '\n', len);
     while ((len > 0) && (nl != 
# 1766 "ftp_session.c" 3 4
                               ((void *)0)
# 1766 "ftp_session.c"
                                   )) {
         *nl = '\0';
         telnet_session_println(f->telnet_session, p);
         line_len = nl - p;
         len -= line_len + 1;
         if (len > 0) {
             telnet_session_print(f->telnet_session, code_str);
                }
  p = nl+1;
                nl = memchr(p, '\n', len);
     }
     if (len > 0) {
         telnet_session_print(f->telnet_session, p);
     }

            read_ret = read(fd, buf, sizeof(buf));
        }
    }


exit_send_readme:
    if (fd != -1) {
        close(fd);
    }
    ((invariant(f)) ? 0 : (daemon_assert_fail("invariant(f)", "ftp_session.c", 1790, __func__)));
}


static void netscape_hack(int fd)
{
    fd_set readfds;
    struct timeval timeout;
    int select_ret;
    char c;

    ((fd >= 0) ? 0 : (daemon_assert_fail("fd >= 0", "ftp_session.c", 1801, __func__)));

    shutdown(fd, 1);
    
# 1804 "ftp_session.c" 3 4
   do { int __d0, __d1; __asm__ __volatile__ ("cld; rep; " "stosq" : "=c" (__d0), "=D" (__d1) : "a" (0), "0" (sizeof (fd_set) / sizeof (__fd_mask)), "1" (&((
# 1804 "ftp_session.c"
   &readfds
# 1804 "ftp_session.c" 3 4
   )->__fds_bits)[0]) : "memory"); } while (0)
# 1804 "ftp_session.c"
                    ;
    
# 1805 "ftp_session.c" 3 4
   ((void) (((
# 1805 "ftp_session.c"
   &readfds
# 1805 "ftp_session.c" 3 4
   )->__fds_bits)[((
# 1805 "ftp_session.c"
   fd
# 1805 "ftp_session.c" 3 4
   ) / (8 * (int) sizeof (__fd_mask)))] |= ((__fd_mask) (1UL << ((
# 1805 "ftp_session.c"
   fd
# 1805 "ftp_session.c" 3 4
   ) % (8 * (int) sizeof (__fd_mask)))))))
# 1805 "ftp_session.c"
                       ;
    timeout.tv_sec = 15;
    timeout.tv_usec = 0;
    select_ret = select(fd+1, &readfds, 
# 1808 "ftp_session.c" 3 4
                                       ((void *)0)
# 1808 "ftp_session.c"
                                           , 
# 1808 "ftp_session.c" 3 4
                                             ((void *)0)
# 1808 "ftp_session.c"
                                                 , &timeout);
    if (select_ret > 0) {
        read(fd, &c, 1);
    }
}


static int ip_equal(const sockaddr_storage_t *a, const sockaddr_storage_t *b)
{
    ((a != 
# 1817 "ftp_session.c" 3 4
   ((void *)0)
# 1817 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("a != ((void *)0)", "ftp_session.c", 1817, __func__)));
    ((b != 
# 1818 "ftp_session.c" 3 4
   ((void *)0)
# 1818 "ftp_session.c"
   ) ? 0 : (daemon_assert_fail("b != ((void *)0)", "ftp_session.c", 1818, __func__)));
    ((((((struct sockaddr_storage *)(a))->ss_family) == 
# 1819 "ftp_session.c" 3 4
   2
# 1819 "ftp_session.c"
   ) || ((((struct sockaddr_storage *)(a))->ss_family) == 
# 1819 "ftp_session.c" 3 4
   10
# 1819 "ftp_session.c"
   )) ? 0 : (daemon_assert_fail("((((struct sockaddr_storage *)(a))->ss_family) == 2) || ((((struct sockaddr_storage *)(a))->ss_family) == 10)", "ftp_session.c", 1819, __func__)));
    ((((((struct sockaddr_storage *)(b))->ss_family) == 
# 1820 "ftp_session.c" 3 4
   2
# 1820 "ftp_session.c"
   ) || ((((struct sockaddr_storage *)(b))->ss_family) == 
# 1820 "ftp_session.c" 3 4
   10
# 1820 "ftp_session.c"
   )) ? 0 : (daemon_assert_fail("((((struct sockaddr_storage *)(b))->ss_family) == 2) || ((((struct sockaddr_storage *)(b))->ss_family) == 10)", "ftp_session.c", 1820, __func__)));

    if ((((struct sockaddr_storage *)(a))->ss_family) != (((struct sockaddr_storage *)(b))->ss_family)) {
        return 0;
    }
    if (memcmp(&(((struct sockaddr_in *)(a))->sin_addr), &(((struct sockaddr_in *)(b))->sin_addr), sizeof((((struct sockaddr_in *)(a))->sin_addr))) != 0) {
        return 0;
    }
    return 1;
}
