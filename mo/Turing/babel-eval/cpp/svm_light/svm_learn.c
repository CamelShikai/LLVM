# 1 "svm_learn.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "svm_learn.c"
# 20 "svm_learn.c"
# 1 "svm_common.h" 1
# 22 "svm_common.h"
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 374 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 385 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 386 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 375 "/usr/include/features.h" 2 3 4
# 398 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 399 "/usr/include/features.h" 2 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


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
# 121 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


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
# 36 "/usr/include/stdio.h" 2 3 4
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
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
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
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h" 3 4
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
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
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
# 638 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));


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






# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 873 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 913 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 943 "/usr/include/stdio.h" 3 4

# 23 "svm_common.h" 2
# 1 "/usr/include/ctype.h" 1 3 4
# 28 "/usr/include/ctype.h" 3 4

# 39 "/usr/include/ctype.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 108 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "/usr/include/endian.h" 2 3 4
# 40 "/usr/include/ctype.h" 2 3 4






enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 79 "/usr/include/ctype.h" 3 4
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 104 "/usr/include/ctype.h" 3 4






extern int isalnum (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha (int) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int islower (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint (int) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit (int) __attribute__ ((__nothrow__ , __leaf__));



extern int tolower (int __c) __attribute__ ((__nothrow__ , __leaf__));


extern int toupper (int __c) __attribute__ ((__nothrow__ , __leaf__));








extern int isblank (int) __attribute__ ((__nothrow__ , __leaf__));


# 150 "/usr/include/ctype.h" 3 4
extern int isascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int toascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int _toupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int _tolower (int) __attribute__ ((__nothrow__ , __leaf__));
# 257 "/usr/include/ctype.h" 3 4
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
# 258 "/usr/include/ctype.h" 2 3 4
# 271 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int islower_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));

extern int isblank_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));



extern int __tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));


extern int __toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
# 347 "/usr/include/ctype.h" 3 4

# 24 "svm_common.h" 2
# 1 "/usr/include/math.h" 1 3 4
# 28 "/usr/include/math.h" 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/huge_val.h" 1 3 4
# 33 "/usr/include/math.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/huge_valf.h" 1 3 4
# 35 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/huge_vall.h" 1 3 4
# 36 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/inf.h" 1 3 4
# 39 "/usr/include/math.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/nan.h" 1 3 4
# 42 "/usr/include/math.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/mathdef.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/mathdef.h" 3 4
typedef float float_t;
typedef double double_t;
# 46 "/usr/include/math.h" 2 3 4
# 69 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double acos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double asin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double cos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cos (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sin (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tan (double __x) __attribute__ ((__nothrow__ , __leaf__));




extern double cosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cosh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double sinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sinh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double tanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tanh (double __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double acosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acosh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double asinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asinh (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double atanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atanh (double __x) __attribute__ ((__nothrow__ , __leaf__));







extern double exp (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern double log (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log10 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log10 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern double expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log1p (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log1p (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double logb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __logb (double __x) __attribute__ ((__nothrow__ , __leaf__));






extern double exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double log2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log2 (double __x) __attribute__ ((__nothrow__ , __leaf__));








extern double pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__));





extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));






extern double cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__));








extern double ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));



extern double significand (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __significand (double __x) __attribute__ ((__nothrow__ , __leaf__));





extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern double nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double j0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double j1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double jn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __jn (int, double) __attribute__ ((__nothrow__ , __leaf__));
extern double y0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double y1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double yn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __yn (int, double) __attribute__ ((__nothrow__ , __leaf__));






extern double erf (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erf (double) __attribute__ ((__nothrow__ , __leaf__));
extern double erfc (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erfc (double) __attribute__ ((__nothrow__ , __leaf__));
extern double lgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma (double) __attribute__ ((__nothrow__ , __leaf__));






extern double tgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __tgamma (double) __attribute__ ((__nothrow__ , __leaf__));





extern double gamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __gamma (double) __attribute__ ((__nothrow__ , __leaf__));






extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern double rint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __rint (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));



extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__));




extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern double nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern double round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern double trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrint (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lround (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llround (double __x) __attribute__ ((__nothrow__ , __leaf__));



extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassify (double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbit (double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__)); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__));
# 70 "/usr/include/math.h" 2 3 4
# 88 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float acosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acosf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float asinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float cosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cosf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float sinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float tanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanf (float __x) __attribute__ ((__nothrow__ , __leaf__));




extern float coshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __coshf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));







extern float expf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern float logf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log10f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log10f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern float expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float logbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logbf (float __x) __attribute__ ((__nothrow__ , __leaf__));






extern float exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float log2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log2f (float __x) __attribute__ ((__nothrow__ , __leaf__));








extern float powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));


extern float sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));





extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));






extern float cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));








extern float ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinff (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finitef (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinff (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finitef (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));



extern float significandf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __significandf (float __x) __attribute__ ((__nothrow__ , __leaf__));





extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float j0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float j1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float jnf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __jnf (int, float) __attribute__ ((__nothrow__ , __leaf__));
extern float y0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float y1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float ynf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __ynf (int, float) __attribute__ ((__nothrow__ , __leaf__));






extern float erff (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erff (float) __attribute__ ((__nothrow__ , __leaf__));
extern float erfcf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erfcf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float lgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf (float) __attribute__ ((__nothrow__ , __leaf__));






extern float tgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __tgammaf (float) __attribute__ ((__nothrow__ , __leaf__));





extern float gammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __gammaf (float) __attribute__ ((__nothrow__ , __leaf__));






extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern float rintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __rintf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));



extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__));




extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern float nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern float roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern float truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));



extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));


extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassifyf (float __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbitf (float __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__));
# 89 "/usr/include/math.h" 2 3 4
# 132 "/usr/include/math.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));




extern long double coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

# 86 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));







extern long double expl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));


extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));


extern long double logl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 126 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4


extern long double expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));






extern long double exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));








extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));


extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));





extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));






extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));








extern long double ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));




extern int __isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int __finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));



extern long double significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__));





extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));






extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int __isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double j0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double j1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double erfl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double erfcl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfcl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double lgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal (long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double tgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tgammal (long double) __attribute__ ((__nothrow__ , __leaf__));





extern long double gammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __gammal (long double) __attribute__ ((__nothrow__ , __leaf__));






extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));







extern long double rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));



extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));



extern int ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));




extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));



extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long double roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern long double truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));






extern long int lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long int lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));



extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));


extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int __fpclassifyl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));


extern int __signbitl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));



extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__));




# 371 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h" 3 4
extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__));
# 133 "/usr/include/math.h" 2 3 4
# 148 "/usr/include/math.h" 3 4
extern int signgam;
# 189 "/usr/include/math.h" 3 4
enum
  {
    FP_NAN =

      0,
    FP_INFINITE =

      1,
    FP_ZERO =

      2,
    FP_SUBNORMAL =

      3,
    FP_NORMAL =

      4
  };
# 301 "/usr/include/math.h" 3 4
typedef enum
{
  _IEEE_ = -1,
  _SVID_,
  _XOPEN_,
  _POSIX_,
  _ISOC_
} _LIB_VERSION_TYPE;




extern _LIB_VERSION_TYPE _LIB_VERSION;
# 326 "/usr/include/math.h" 3 4
struct exception

  {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
  };




extern int matherr (struct exception *__exc);
# 488 "/usr/include/math.h" 3 4

# 25 "svm_common.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 27 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
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

# 166 "/usr/include/string.h" 3 4
extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 211 "/usr/include/string.h" 3 4

# 236 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 263 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 282 "/usr/include/string.h" 3 4



extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 315 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 342 "/usr/include/string.h" 3 4
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
# 397 "/usr/include/string.h" 3 4


extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 427 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 445 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 489 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 517 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 534 "/usr/include/string.h" 3 4
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 557 "/usr/include/string.h" 3 4
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
# 644 "/usr/include/string.h" 3 4

# 26 "svm_common.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 324 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 66 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 3 4
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

# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
# 60 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;
# 98 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 115 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 133 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 146 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 147 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 194 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 219 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 44 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 64 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 96 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 106 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 131 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 220 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4


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
# 58 "/usr/include/x86_64-linux-gnu/sys/sysmacros.h" 3 4

# 223 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 270 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
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
# 90 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
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
# 124 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
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
    unsigned long int __pad1;
    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 211 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
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
# 271 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 315 "/usr/include/stdlib.h" 2 3 4






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









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 493 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 513 "/usr/include/stdlib.h" 3 4


extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 530 "/usr/include/stdlib.h" 3 4





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));













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
# 620 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 642 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 663 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 712 "/usr/include/stdlib.h" 3 4





extern int system (const char *__command) ;

# 734 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 752 "/usr/include/stdlib.h" 3 4



extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 775 "/usr/include/stdlib.h" 3 4
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

# 812 "/usr/include/stdlib.h" 3 4
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
# 899 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 951 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 956 "/usr/include/stdlib.h" 2 3 4
# 968 "/usr/include/stdlib.h" 3 4

# 27 "svm_common.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
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
# 430 "/usr/include/time.h" 3 4

# 28 "svm_common.h" 2
# 1 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/float.h" 1 3 4
# 29 "svm_common.h" 2
# 53 "svm_common.h"
typedef struct word {
  long wnum;
  float weight;
} WORD;

typedef struct svector {
  WORD *words;



  double twonorm_sq;

  char *userdefined;
# 74 "svm_common.h"
  long kernel_id;







  struct svector *next;




  double factor;

} SVECTOR;

typedef struct doc {
  long docnum;

  long queryid;


  double costfactor;





  long slackid;





  SVECTOR *fvec;
# 119 "svm_common.h"
} DOC;

typedef struct learn_parm {
  long type;

  double svm_c;
  double eps;

  double svm_costratio;
  double transduction_posratio;

  long biased_hyperplane;

  long sharedslack;




  long svm_maxqpsize;
  long svm_newvarsinqp;

  long kernel_cache_size;
  double epsilon_crit;

  double epsilon_shrink;

  long svm_iter_to_shrink;

  long maxiter;


  long remove_inconsistent;

  long skip_final_opt_check;



  long compute_loo;

  double rho;

  long xa_depth;


  char predfile[200];

  char alphafile[200];




  double epsilon_const;
  double epsilon_a;
  double opt_precision;



  long svm_c_steps;
  double svm_c_factor;
  double svm_costratio_unlab;
  double svm_unlabbound;
  double *svm_cost;
  long totwords;
} LEARN_PARM;

typedef struct kernel_parm {
  long kernel_type;
  long poly_degree;
  double rbf_gamma;
  double coef_lin;
  double coef_const;
  char custom[50];
} KERNEL_PARM;

typedef struct model {
  long sv_num;
  long at_upper_bound;
  double b;
  DOC **supvec;
  double *alpha;
  long *index;
  long totwords;
  long totdoc;
  KERNEL_PARM kernel_parm;


  double loo_error,loo_recall,loo_precision;
  double xa_error,xa_recall,xa_precision;
  double *lin_weights;

  double maxdiff;

} MODEL;

typedef struct quadratic_program {
  long opt_n;
  long opt_m;
  double *opt_ce,*opt_ce0;
  double *opt_g;
  double *opt_g0;
  double *opt_xinit;
  double *opt_low,*opt_up;
} QP;

typedef struct kernel_cache {
  long *index;
  float *buffer;
  long *invindex;
  long *active2totdoc;
  long *totdoc2active;
  long *lru;
  long *occu;
  long elems;
  long max_elems;
  long time;
  long activenum;
  long buffsize;
} KERNEL_CACHE;


typedef struct timing_profile {
  long time_kernel;
  long time_opti;
  long time_shrink;
  long time_update;
  long time_model;
  long time_check;
  long time_select;
} TIMING;

typedef struct shrink_state {
  long *active;
  long *inactive_since;
  long deactnum;
  double **a_history;
  long maxhistory;
  double *last_a;
  double *last_lin;
} SHRINK_STATE;

double classify_example(MODEL *, DOC *);
double classify_example_linear(MODEL *, DOC *);
double kernel(KERNEL_PARM *, DOC *, DOC *);
double single_kernel(KERNEL_PARM *, SVECTOR *, SVECTOR *);
double custom_kernel(KERNEL_PARM *, SVECTOR *, SVECTOR *);
SVECTOR *create_svector(WORD *, char *, double);
SVECTOR *copy_svector(SVECTOR *);
void free_svector(SVECTOR *);
double sprod_ss(SVECTOR *, SVECTOR *);
SVECTOR* sub_ss(SVECTOR *, SVECTOR *);
SVECTOR* add_ss(SVECTOR *, SVECTOR *);
SVECTOR* add_list_ss(SVECTOR *);
void append_svector_list(SVECTOR *a, SVECTOR *b);
SVECTOR* smult_s(SVECTOR *, double);
int featvec_eq(SVECTOR *, SVECTOR *);
double model_length_s(MODEL *, KERNEL_PARM *);
void clear_vector_n(double *, long);
void add_vector_ns(double *, SVECTOR *, double);
double sprod_ns(double *, SVECTOR *);
void add_weight_vector_to_linear_model(MODEL *);
DOC *create_example(long, long, long, double, SVECTOR *);
void free_example(DOC *, long);
MODEL *read_model(char *);
MODEL *copy_model(MODEL *);
void free_model(MODEL *, int);
void read_documents(char *, DOC ***, double **, long *, long *);
int parse_document(char *, WORD *, double *, long *, long *, double *, long *, long, char **);
double *read_alphas(char *,long);
void nol_ll(char *, long *, long *, long *);
long minl(long, long);
long maxl(long, long);
long get_runtime(void);
int space_or_null(int);
void *my_malloc(size_t);
void copyright_notice(void);




extern long verbosity;
extern long kernel_cache_statistic;
# 21 "svm_learn.c" 2
# 1 "svm_learn.h" 1
# 22 "svm_learn.h"
void svm_learn_classification(DOC **, double *, long, long, LEARN_PARM *,
    KERNEL_PARM *, KERNEL_CACHE *, MODEL *,
    double *);
void svm_learn_regression(DOC **, double *, long, long, LEARN_PARM *,
       KERNEL_PARM *, KERNEL_CACHE **, MODEL *);
void svm_learn_ranking(DOC **, double *, long, long, LEARN_PARM *,
    KERNEL_PARM *, KERNEL_CACHE **, MODEL *);
void svm_learn_optimization(DOC **, double *, long, long, LEARN_PARM *,
         KERNEL_PARM *, KERNEL_CACHE *, MODEL *,
         double *);
long optimize_to_convergence(DOC **, long *, long, long, LEARN_PARM *,
          KERNEL_PARM *, KERNEL_CACHE *, SHRINK_STATE *,
          MODEL *, long *, long *, double *,
          double *, double *,
          TIMING *, double *, long, long);
long optimize_to_convergence_sharedslack(DOC **, long *, long, long,
          LEARN_PARM *,
          KERNEL_PARM *, KERNEL_CACHE *, SHRINK_STATE *,
          MODEL *, double *, double *, double *,
          TIMING *, double *);
double compute_objective_function(double *, double *, double *, double,
      long *, long *);
void clear_index(long *);
void add_to_index(long *, long);
long compute_index(long *,long, long *);
void optimize_svm(DOC **, long *, long *, long *, double, long *, long *,
      MODEL *,
      long, long *, long, double *, double *, double *,
      LEARN_PARM *, float *, KERNEL_PARM *, QP *, double *);
void compute_matrices_for_optimization(DOC **, long *, long *, long *, double,
      long *,
      long *, long *, MODEL *, double *,
      double *, double *, long, long, LEARN_PARM *,
      float *, KERNEL_PARM *, QP *);
long calculate_svm_model(DOC **, long *, long *, double *, double *,
      double *, double *, LEARN_PARM *, long *,
      long *, MODEL *);
long check_optimality(MODEL *, long *, long *, double *, double *,
   double *, long,
   LEARN_PARM *,double *, double, long *, long *, long *,
   long *, long, KERNEL_PARM *);
long check_optimality_sharedslack(DOC **docs, MODEL *model, long int *label,
        double *a, double *lin, double *c, double *slack,
        double *alphaslack, long int totdoc,
        LEARN_PARM *learn_parm, double *maxdiff,
        double epsilon_crit_org, long int *misclassified,
        long int *active2dnum,
        long int *last_suboptimal_at,
        long int iteration, KERNEL_PARM *kernel_parm);
void compute_shared_slacks(DOC **docs, long int *label, double *a,
        double *lin, double *c, long int *active2dnum,
        LEARN_PARM *learn_parm,
        double *slack, double *alphaslack);
long identify_inconsistent(double *, long *, long *, long, LEARN_PARM *,
        long *, long *);
long identify_misclassified(double *, long *, long *, long,
         MODEL *, long *, long *);
long identify_one_misclassified(double *, long *, long *, long,
      MODEL *, long *, long *);
long incorporate_unlabeled_examples(MODEL *, long *,long *, long *,
          double *, double *, long, double *,
          long *, long *, long, KERNEL_PARM *,
          LEARN_PARM *);
void update_linear_component(DOC **, long *, long *, double *, double *,
          long *, long, long, KERNEL_PARM *,
          KERNEL_CACHE *, double *,
          float *, double *);
long select_next_qp_subproblem_grad(long *, long *, double *,
          double *, double *, long,
          long, LEARN_PARM *, long *, long *,
          long *, double *, long *, KERNEL_CACHE *,
          long, long *, long *);
long select_next_qp_subproblem_rand(long *, long *, double *,
          double *, double *, long,
          long, LEARN_PARM *, long *, long *,
          long *, double *, long *, KERNEL_CACHE *,
          long *, long *, long);
long select_next_qp_slackset(DOC **docs, long int *label, double *a,
          double *lin, double *slack, double *alphaslack,
          double *c, LEARN_PARM *learn_parm,
          long int *active2dnum, double *maxviol);
void select_top_n(double *, long, long *, long);
void init_shrink_state(SHRINK_STATE *, long, long);
void shrink_state_cleanup(SHRINK_STATE *);
long shrink_problem(DOC **, LEARN_PARM *, SHRINK_STATE *, KERNEL_PARM *,
        long *, long *, long, long, long, double *, long *);
void reactivate_inactive_examples(long *, long *, double *, SHRINK_STATE *,
        double *, double*, long, long, long, LEARN_PARM *,
        long *, DOC **, KERNEL_PARM *,
        KERNEL_CACHE *, MODEL *, float *,
        double *, double *);


KERNEL_CACHE *kernel_cache_init(long, long);
void kernel_cache_cleanup(KERNEL_CACHE *);
void get_kernel_row(KERNEL_CACHE *,DOC **, long, long, long *, float *,
        KERNEL_PARM *);
void cache_kernel_row(KERNEL_CACHE *,DOC **, long, KERNEL_PARM *);
void cache_multiple_kernel_rows(KERNEL_CACHE *,DOC **, long *, long,
      KERNEL_PARM *);
void kernel_cache_shrink(KERNEL_CACHE *,long, long, long *);
void kernel_cache_reset_lru(KERNEL_CACHE *);
long kernel_cache_malloc(KERNEL_CACHE *);
void kernel_cache_free(KERNEL_CACHE *,long);
long kernel_cache_free_lru(KERNEL_CACHE *);
float *kernel_cache_clean_and_malloc(KERNEL_CACHE *,long);
long kernel_cache_touch(KERNEL_CACHE *,long);
long kernel_cache_check(KERNEL_CACHE *,long);
long kernel_cache_space_available(KERNEL_CACHE *);

void compute_xa_estimates(MODEL *, long *, long *, long, DOC **,
     double *, double *, KERNEL_PARM *,
     LEARN_PARM *, double *, double *, double *);
double xa_estimate_error(MODEL *, long *, long *, long, DOC **,
    double *, double *, KERNEL_PARM *,
    LEARN_PARM *);
double xa_estimate_recall(MODEL *, long *, long *, long, DOC **,
     double *, double *, KERNEL_PARM *,
     LEARN_PARM *);
double xa_estimate_precision(MODEL *, long *, long *, long, DOC **,
        double *, double *, KERNEL_PARM *,
        LEARN_PARM *);
void avg_similarity_of_sv_of_one_class(MODEL *, DOC **, double *, long *, KERNEL_PARM *, double *, double *);
double most_similar_sv_of_same_class(MODEL *, DOC **, double *, long, long *, KERNEL_PARM *, LEARN_PARM *);
double distribute_alpha_t_greedily(long *, long, DOC **, double *, long, long *, KERNEL_PARM *, LEARN_PARM *, double);
double distribute_alpha_t_greedily_noindex(MODEL *, DOC **, double *, long, long *, KERNEL_PARM *, LEARN_PARM *, double);
void estimate_transduction_quality(MODEL *, long *, long *, long, DOC **, double *);
double estimate_margin_vcdim(MODEL *, double, double, KERNEL_PARM *);
double estimate_sphere(MODEL *, KERNEL_PARM *);
double estimate_r_delta_average(DOC **, long, KERNEL_PARM *);
double estimate_r_delta(DOC **, long, KERNEL_PARM *);
double length_of_longest_document_vector(DOC **, long, KERNEL_PARM *);

void write_model(char *, MODEL *);
void write_prediction(char *, MODEL *, double *, double *, long *, long *,
   long, LEARN_PARM *);
void write_alphas(char *, double *, long *, long);

typedef struct cache_parm_s {
  KERNEL_CACHE *kernel_cache;
  float *cache;
  DOC **docs;
  long m;
  KERNEL_PARM *kernel_parm;
  long offset,stepsize;
} cache_parm_t;
# 22 "svm_learn.c" 2



double *optimize_qp(QP *, double *, long, double *, LEARN_PARM *);







void svm_learn_classification(DOC **docs, double *class, long int
         totdoc, long int totwords,
         LEARN_PARM *learn_parm,
         KERNEL_PARM *kernel_parm,
         KERNEL_CACHE *kernel_cache,
         MODEL *model,
         double *alpha)
# 53 "svm_learn.c"
{
  long *inconsistent,i,*label;
  long inconsistentnum;
  long misclassified,upsupvecnum;
  double loss,model_length,example_length;
  double maxdiff,*lin,*a,*c;
  long runtime_start,runtime_end;
  long iterations;
  long *unlabeled,transduction;
  long heldout;
  long loo_count=0,loo_count_pos=0,loo_count_neg=0,trainpos=0,trainneg=0;
  long loocomputed=0,runtime_start_loo=0,runtime_start_xa=0;
  double heldout_c=0,r_delta_sq=0,r_delta,r_delta_avg;
  long *index,*index2dnum;
  double *weights;
  float *aicache;

  double *xi_fullset;
  double *a_fullset;
  TIMING timing_profile;
  SHRINK_STATE shrink_state;

  runtime_start=get_runtime();
  timing_profile.time_kernel=0;
  timing_profile.time_opti=0;
  timing_profile.time_shrink=0;
  timing_profile.time_update=0;
  timing_profile.time_model=0;
  timing_profile.time_check=0;
  timing_profile.time_select=0;
  kernel_cache_statistic=0;

  learn_parm->totwords=totwords;


  if((learn_parm->svm_newvarsinqp < 2)
     || (learn_parm->svm_newvarsinqp > learn_parm->svm_maxqpsize)) {
    learn_parm->svm_newvarsinqp=learn_parm->svm_maxqpsize;
  }

  init_shrink_state(&shrink_state,totdoc,(long)50000);

  label = (long *)my_malloc(sizeof(long)*totdoc);
  inconsistent = (long *)my_malloc(sizeof(long)*totdoc);
  unlabeled = (long *)my_malloc(sizeof(long)*totdoc);
  c = (double *)my_malloc(sizeof(double)*totdoc);
  a = (double *)my_malloc(sizeof(double)*totdoc);
  a_fullset = (double *)my_malloc(sizeof(double)*totdoc);
  xi_fullset = (double *)my_malloc(sizeof(double)*totdoc);
  lin = (double *)my_malloc(sizeof(double)*totdoc);
  learn_parm->svm_cost = (double *)my_malloc(sizeof(double)*totdoc);
  model->supvec = (DOC **)my_malloc(sizeof(DOC *)*(totdoc+2));
  model->alpha = (double *)my_malloc(sizeof(double)*(totdoc+2));
  model->index = (long *)my_malloc(sizeof(long)*(totdoc+2));

  model->at_upper_bound=0;
  model->b=0;
  model->supvec[0]=0;
  model->alpha[0]=0;
  model->lin_weights=((void *)0);
  model->totwords=totwords;
  model->totdoc=totdoc;
  model->kernel_parm=(*kernel_parm);
  model->sv_num=1;
  model->loo_error=-1;
  model->loo_recall=-1;
  model->loo_precision=-1;
  model->xa_error=-1;
  model->xa_recall=-1;
  model->xa_precision=-1;
  inconsistentnum=0;
  transduction=0;

  r_delta=estimate_r_delta(docs,totdoc,kernel_parm);
  r_delta_sq=r_delta*r_delta;

  r_delta_avg=estimate_r_delta_average(docs,totdoc,kernel_parm);
  if(learn_parm->svm_c == 0.0) {
    learn_parm->svm_c=1.0/(r_delta_avg*r_delta_avg);
    if(verbosity>=1)
      printf("Setting default regularization parameter C=%.4f\n",
      learn_parm->svm_c);
  }

  learn_parm->eps=-1.0;


  for(i=0;i<totdoc;i++) {
    docs[i]->docnum=i;
    inconsistent[i]=0;
    a[i]=0;
    lin[i]=0;
    c[i]=0.0;
    unlabeled[i]=0;
    if(class[i] == 0) {
      unlabeled[i]=1;
      label[i]=0;
      transduction=1;
    }
    if(class[i] > 0) {
      learn_parm->svm_cost[i]=learn_parm->svm_c*learn_parm->svm_costratio*
 docs[i]->costfactor;
      label[i]=1;
      trainpos++;
    }
    else if(class[i] < 0) {
      learn_parm->svm_cost[i]=learn_parm->svm_c*docs[i]->costfactor;
      label[i]=-1;
      trainneg++;
    }
    else {
      learn_parm->svm_cost[i]=0;
    }
  }
  if(verbosity>=2) {
    printf("%ld positive, %ld negative, and %ld unlabeled examples.\n",trainpos,trainneg,totdoc-trainpos-trainneg); fflush(stdout);
  }


  if(kernel_parm->kernel_type == 0) {
    kernel_cache = ((void *)0);
  }


  if(alpha) {
    if(verbosity>=1) {
      printf("Computing starting state..."); fflush(stdout);
    }
    index = (long *)my_malloc(sizeof(long)*totdoc);
    index2dnum = (long *)my_malloc(sizeof(long)*(totdoc+11));
    weights=(double *)my_malloc(sizeof(double)*(totwords+1));
    aicache = (float *)my_malloc(sizeof(float)*totdoc);
    for(i=0;i<totdoc;i++) {
      index[i]=1;
      alpha[i]=fabs(alpha[i]);
      if(alpha[i]<0) alpha[i]=0;
      if(alpha[i]>learn_parm->svm_cost[i]) alpha[i]=learn_parm->svm_cost[i];
    }
    if(kernel_parm->kernel_type != 0) {
      for(i=0;i<totdoc;i++)
 if((alpha[i]>0) && (alpha[i]<learn_parm->svm_cost[i])
    && (kernel_cache_space_available(kernel_cache)))
   cache_kernel_row(kernel_cache,docs,i,kernel_parm);
      for(i=0;i<totdoc;i++)
 if((alpha[i]==learn_parm->svm_cost[i])
    && (kernel_cache_space_available(kernel_cache)))
   cache_kernel_row(kernel_cache,docs,i,kernel_parm);
    }
    (void)compute_index(index,totdoc,index2dnum);
    update_linear_component(docs,label,index2dnum,alpha,a,index2dnum,totdoc,
       totwords,kernel_parm,kernel_cache,lin,aicache,
       weights);
    (void)calculate_svm_model(docs,label,unlabeled,lin,alpha,a,c,
         learn_parm,index2dnum,index2dnum,model);
    for(i=0;i<totdoc;i++) {
      a[i]=alpha[i];
    }
    free(index);
    free(index2dnum);
    free(weights);
    free(aicache);
    if(verbosity>=1) {
      printf("done.\n"); fflush(stdout);
    }
  }

  if(transduction) {
    learn_parm->svm_iter_to_shrink=99999999;
    if(verbosity >= 1)
      printf("\nDeactivating Shrinking due to an incompatibility with the transductive \nlearner in the current version.\n\n");
  }

  if(transduction && learn_parm->compute_loo) {
    learn_parm->compute_loo=0;
    if(verbosity >= 1)
      printf("\nCannot compute leave-one-out estimates for transductive learner.\n\n");
  }

  if(learn_parm->remove_inconsistent && learn_parm->compute_loo) {
    learn_parm->compute_loo=0;
    printf("\nCannot compute leave-one-out estimates when removing inconsistent examples.\n\n");
  }

  if(learn_parm->compute_loo && ((trainpos == 1) || (trainneg == 1))) {
    learn_parm->compute_loo=0;
    printf("\nCannot compute leave-one-out with only one example in one class.\n\n");
  }


  if(verbosity==1) {
    printf("Optimizing"); fflush(stdout);
  }


  iterations=optimize_to_convergence(docs,label,totdoc,totwords,learn_parm,
         kernel_parm,kernel_cache,&shrink_state,model,
         inconsistent,unlabeled,a,lin,
         c,&timing_profile,
         &maxdiff,(long)-1,
         (long)1);

  if(verbosity>=1) {
    if(verbosity==1) printf("done. (%ld iterations)\n",iterations);

    misclassified=0;
    for(i=0;(i<totdoc);i++) {
      if((lin[i]-model->b)*(double)label[i] <= 0.0)
 misclassified++;
    }

    printf("Optimization finished (%ld misclassified, maxdiff=%.5f).\n",
    misclassified,maxdiff);

    runtime_end=get_runtime();
    if(verbosity>=2) {
      printf("Runtime in cpu-seconds: %.2f (%.2f%% for kernel/%.2f%% for optimizer/%.2f%% for final/%.2f%% for update/%.2f%% for model/%.2f%% for check/%.2f%% for select)\n",
        ((float)runtime_end-(float)runtime_start)/100.0,
        (100.0*timing_profile.time_kernel)/(float)(runtime_end-runtime_start),
 (100.0*timing_profile.time_opti)/(float)(runtime_end-runtime_start),
 (100.0*timing_profile.time_shrink)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_update)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_model)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_check)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_select)/(float)(runtime_end-runtime_start));
    }
    else {
      printf("Runtime in cpu-seconds: %.2f\n",
      (runtime_end-runtime_start)/100.0);
    }

    if(learn_parm->remove_inconsistent) {
      inconsistentnum=0;
      for(i=0;i<totdoc;i++)
 if(inconsistent[i])
   inconsistentnum++;
      printf("Number of SV: %ld (plus %ld inconsistent examples)\n",
      model->sv_num-1,inconsistentnum);
    }
    else {
      upsupvecnum=0;
      for(i=1;i<model->sv_num;i++) {
 if(fabs(model->alpha[i]) >=
    (learn_parm->svm_cost[(model->supvec[i])->docnum]-
     learn_parm->epsilon_a))
   upsupvecnum++;
      }
      printf("Number of SV: %ld (including %ld at upper bound)\n",
      model->sv_num-1,upsupvecnum);
    }

    if((verbosity>=1) && (!learn_parm->skip_final_opt_check)) {
      loss=0;
      model_length=0;
      for(i=0;i<totdoc;i++) {
 if((lin[i]-model->b)*(double)label[i] < 1.0-learn_parm->epsilon_crit)
   loss+=1.0-(lin[i]-model->b)*(double)label[i];
 model_length+=a[i]*label[i]*lin[i];
      }
      model_length=sqrt(model_length);
      fprintf(stdout,"L1 loss: loss=%.5f\n",loss);
      fprintf(stdout,"Norm of weight vector: |w|=%.5f\n",model_length);
      example_length=estimate_sphere(model,kernel_parm);
      fprintf(stdout,"Norm of longest example vector: |x|=%.5f\n",
       length_of_longest_document_vector(docs,totdoc,kernel_parm));
      fprintf(stdout,"Estimated VCdim of classifier: VCdim<=%.5f\n",
       estimate_margin_vcdim(model,model_length,example_length,
        kernel_parm));
      if((!learn_parm->remove_inconsistent) && (!transduction)) {
 runtime_start_xa=get_runtime();
 if(verbosity>=1) {
   printf("Computing XiAlpha-estimates..."); fflush(stdout);
 }
 compute_xa_estimates(model,label,unlabeled,totdoc,docs,lin,a,
        kernel_parm,learn_parm,&(model->xa_error),
        &(model->xa_recall),&(model->xa_precision));
 if(verbosity>=1) {
   printf("done\n");
 }
 printf("Runtime for XiAlpha-estimates in cpu-seconds: %.2f\n",
        (get_runtime()-runtime_start_xa)/100.0);

 fprintf(stdout,"XiAlpha-estimate of the error: error<=%.2f%% (rho=%.2f,depth=%ld)\n",
  model->xa_error,learn_parm->rho,learn_parm->xa_depth);
 fprintf(stdout,"XiAlpha-estimate of the recall: recall=>%.2f%% (rho=%.2f,depth=%ld)\n",
  model->xa_recall,learn_parm->rho,learn_parm->xa_depth);
 fprintf(stdout,"XiAlpha-estimate of the precision: precision=>%.2f%% (rho=%.2f,depth=%ld)\n",
  model->xa_precision,learn_parm->rho,learn_parm->xa_depth);
      }
      else if(!learn_parm->remove_inconsistent) {
 estimate_transduction_quality(model,label,unlabeled,totdoc,docs,lin);
      }
    }
    if(verbosity>=1) {
      printf("Number of kernel evaluations: %ld\n",kernel_cache_statistic);
    }
  }



  if(learn_parm->compute_loo) {

    runtime_start_loo=get_runtime();
    for(i=0;i<totdoc;i++) {
      xi_fullset[i]=1.0-((lin[i]-model->b)*(double)label[i]);
      if(xi_fullset[i]<0) xi_fullset[i]=0;
      a_fullset[i]=a[i];
    }
    if(verbosity>=1) {
      printf("Computing leave-one-out");
    }


    for(heldout=0;(heldout<totdoc);heldout++) {
      if(learn_parm->rho*a_fullset[heldout]*r_delta_sq+xi_fullset[heldout]
  < 1.0) {

 if(verbosity==1) {
   printf("+"); fflush(stdout);
 }
      }
      else if(xi_fullset[heldout] > 1.0) {

 loo_count++;
 if(label[heldout] > 0) loo_count_pos++; else loo_count_neg++;
 if(verbosity==1) {
   printf("-"); fflush(stdout);
 }
      }
      else {
 loocomputed++;
 heldout_c=learn_parm->svm_cost[heldout];
 learn_parm->svm_cost[heldout]=0;


 shrink_state.active[heldout]=1;
 if(verbosity>=2)
   printf("\nLeave-One-Out test on example %ld\n",heldout);
 if(verbosity>=1) {
   printf("(?[%ld]",heldout); fflush(stdout);
 }

 optimize_to_convergence(docs,label,totdoc,totwords,learn_parm,
    kernel_parm,
    kernel_cache,&shrink_state,model,inconsistent,unlabeled,
    a,lin,c,&timing_profile,
    &maxdiff,heldout,(long)2);



 if(((lin[heldout]-model->b)*(double)label[heldout]) <= 0.0) {
   loo_count++;
   if(label[heldout] > 0) loo_count_pos++; else loo_count_neg++;
   if(verbosity>=1) {
     printf("-)"); fflush(stdout);
   }
 }
 else {
   if(verbosity>=1) {
     printf("+)"); fflush(stdout);
   }
 }

 learn_parm->svm_cost[heldout]=heldout_c;
      }
    }


    if(verbosity>=1) {
      printf("\nRetrain on full problem"); fflush(stdout);
    }
    optimize_to_convergence(docs,label,totdoc,totwords,learn_parm,
       kernel_parm,
       kernel_cache,&shrink_state,model,inconsistent,unlabeled,
       a,lin,c,&timing_profile,
       &maxdiff,(long)-1,(long)1);
    if(verbosity >= 1)
      printf("done.\n");



    model->loo_error=100.0*loo_count/(double)totdoc;
    model->loo_recall=(1.0-(double)loo_count_pos/(double)trainpos)*100.0;
    model->loo_precision=(trainpos-loo_count_pos)/
      (double)(trainpos-loo_count_pos+loo_count_neg)*100.0;
    if(verbosity >= 1) {
      fprintf(stdout,"Leave-one-out estimate of the error: error=%.2f%%\n",
       model->loo_error);
      fprintf(stdout,"Leave-one-out estimate of the recall: recall=%.2f%%\n",
       model->loo_recall);
      fprintf(stdout,"Leave-one-out estimate of the precision: precision=%.2f%%\n",
       model->loo_precision);
      fprintf(stdout,"Actual leave-one-outs computed:  %ld (rho=%.2f)\n",
       loocomputed,learn_parm->rho);
      printf("Runtime for leave-one-out in cpu-seconds: %.2f\n",
      (double)(get_runtime()-runtime_start_loo)/100.0);
    }
  }

  if(learn_parm->alphafile[0])
    write_alphas(learn_parm->alphafile,a,label,totdoc);

  shrink_state_cleanup(&shrink_state);
  free(label);
  free(inconsistent);
  free(unlabeled);
  free(c);
  free(a);
  free(a_fullset);
  free(xi_fullset);
  free(lin);
  free(learn_parm->svm_cost);
}






void svm_learn_regression(DOC **docs, double *value, long int totdoc,
     long int totwords, LEARN_PARM *learn_parm,
     KERNEL_PARM *kernel_parm,
     KERNEL_CACHE **kernel_cache, MODEL *model)
# 484 "svm_learn.c"
{
  long *inconsistent,i,j;
  long inconsistentnum;
  long upsupvecnum;
  double loss,model_length,example_length;
  double maxdiff,*lin,*a,*c;
  long runtime_start,runtime_end;
  long iterations,kernel_cache_size;
  long *unlabeled;
  double r_delta_sq=0,r_delta,r_delta_avg;
  double *xi_fullset;
  double *a_fullset;
  TIMING timing_profile;
  SHRINK_STATE shrink_state;
  DOC **docs_org;
  long *label;


  docs_org=docs;
  docs = (DOC **)my_malloc(sizeof(DOC)*2*totdoc);
  label = (long *)my_malloc(sizeof(long)*2*totdoc);
  c = (double *)my_malloc(sizeof(double)*2*totdoc);
  for(i=0;i<totdoc;i++) {
    j=2*totdoc-1-i;
    docs[i]=create_example(i,0,0,docs_org[i]->costfactor,docs_org[i]->fvec);
    label[i]=+1;
    c[i]=value[i];
    docs[j]=create_example(j,0,0,docs_org[i]->costfactor,docs_org[i]->fvec);
    label[j]=-1;
    c[j]=value[i];
  }
  totdoc*=2;


  if(*kernel_cache) {
    kernel_cache_size=(*kernel_cache)->buffsize*sizeof(float)/(1024*1024);
    kernel_cache_cleanup(*kernel_cache);
    (*kernel_cache)=kernel_cache_init(totdoc,kernel_cache_size);
  }

  runtime_start=get_runtime();
  timing_profile.time_kernel=0;
  timing_profile.time_opti=0;
  timing_profile.time_shrink=0;
  timing_profile.time_update=0;
  timing_profile.time_model=0;
  timing_profile.time_check=0;
  timing_profile.time_select=0;
  kernel_cache_statistic=0;

  learn_parm->totwords=totwords;


  if((learn_parm->svm_newvarsinqp < 2)
     || (learn_parm->svm_newvarsinqp > learn_parm->svm_maxqpsize)) {
    learn_parm->svm_newvarsinqp=learn_parm->svm_maxqpsize;
  }

  init_shrink_state(&shrink_state,totdoc,(long)50000);

  inconsistent = (long *)my_malloc(sizeof(long)*totdoc);
  unlabeled = (long *)my_malloc(sizeof(long)*totdoc);
  a = (double *)my_malloc(sizeof(double)*totdoc);
  a_fullset = (double *)my_malloc(sizeof(double)*totdoc);
  xi_fullset = (double *)my_malloc(sizeof(double)*totdoc);
  lin = (double *)my_malloc(sizeof(double)*totdoc);
  learn_parm->svm_cost = (double *)my_malloc(sizeof(double)*totdoc);
  model->supvec = (DOC **)my_malloc(sizeof(DOC *)*(totdoc+2));
  model->alpha = (double *)my_malloc(sizeof(double)*(totdoc+2));
  model->index = (long *)my_malloc(sizeof(long)*(totdoc+2));

  model->at_upper_bound=0;
  model->b=0;
  model->supvec[0]=0;
  model->alpha[0]=0;
  model->lin_weights=((void *)0);
  model->totwords=totwords;
  model->totdoc=totdoc;
  model->kernel_parm=(*kernel_parm);
  model->sv_num=1;
  model->loo_error=-1;
  model->loo_recall=-1;
  model->loo_precision=-1;
  model->xa_error=-1;
  model->xa_recall=-1;
  model->xa_precision=-1;
  inconsistentnum=0;

  r_delta=estimate_r_delta(docs,totdoc,kernel_parm);
  r_delta_sq=r_delta*r_delta;

  r_delta_avg=estimate_r_delta_average(docs,totdoc,kernel_parm);
  if(learn_parm->svm_c == 0.0) {
    learn_parm->svm_c=1.0/(r_delta_avg*r_delta_avg);
    if(verbosity>=1)
      printf("Setting default regularization parameter C=%.4f\n",
      learn_parm->svm_c);
  }

  for(i=0;i<totdoc;i++) {
    inconsistent[i]=0;
    a[i]=0;
    lin[i]=0;
    unlabeled[i]=0;
    if(label[i] > 0) {
      learn_parm->svm_cost[i]=learn_parm->svm_c*learn_parm->svm_costratio*
 docs[i]->costfactor;
    }
    else if(label[i] < 0) {
      learn_parm->svm_cost[i]=learn_parm->svm_c*docs[i]->costfactor;
    }
  }


  if((kernel_parm->kernel_type == 0) && (*kernel_cache)) {
    printf("WARNING: Using a kernel cache for linear case will slow optimization down!\n");
  }

  if(verbosity==1) {
    printf("Optimizing"); fflush(stdout);
  }


  iterations=optimize_to_convergence(docs,label,totdoc,totwords,learn_parm,
         kernel_parm,*kernel_cache,&shrink_state,
         model,inconsistent,unlabeled,a,lin,c,
         &timing_profile,&maxdiff,(long)-1,
         (long)1);

  if(verbosity>=1) {
    if(verbosity==1) printf("done. (%ld iterations)\n",iterations);

    printf("Optimization finished (maxdiff=%.5f).\n",maxdiff);

    runtime_end=get_runtime();
    if(verbosity>=2) {
      printf("Runtime in cpu-seconds: %.2f (%.2f%% for kernel/%.2f%% for optimizer/%.2f%% for final/%.2f%% for update/%.2f%% for model/%.2f%% for check/%.2f%% for select)\n",
        ((float)runtime_end-(float)runtime_start)/100.0,
        (100.0*timing_profile.time_kernel)/(float)(runtime_end-runtime_start),
 (100.0*timing_profile.time_opti)/(float)(runtime_end-runtime_start),
 (100.0*timing_profile.time_shrink)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_update)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_model)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_check)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_select)/(float)(runtime_end-runtime_start));
    }
    else {
      printf("Runtime in cpu-seconds: %.2f\n",
      (runtime_end-runtime_start)/100.0);
    }

    if(learn_parm->remove_inconsistent) {
      inconsistentnum=0;
      for(i=0;i<totdoc;i++)
 if(inconsistent[i])
   inconsistentnum++;
      printf("Number of SV: %ld (plus %ld inconsistent examples)\n",
      model->sv_num-1,inconsistentnum);
    }
    else {
      upsupvecnum=0;
      for(i=1;i<model->sv_num;i++) {
 if(fabs(model->alpha[i]) >=
    (learn_parm->svm_cost[(model->supvec[i])->docnum]-
     learn_parm->epsilon_a))
   upsupvecnum++;
      }
      printf("Number of SV: %ld (including %ld at upper bound)\n",
      model->sv_num-1,upsupvecnum);
    }

    if((verbosity>=1) && (!learn_parm->skip_final_opt_check)) {
      loss=0;
      model_length=0;
      for(i=0;i<totdoc;i++) {
 if((lin[i]-model->b)*(double)label[i] < (-learn_parm->eps+(double)label[i]*c[i])-learn_parm->epsilon_crit)
   loss+=-learn_parm->eps+(double)label[i]*c[i]-(lin[i]-model->b)*(double)label[i];
 model_length+=a[i]*label[i]*lin[i];
      }
      model_length=sqrt(model_length);
      fprintf(stdout,"L1 loss: loss=%.5f\n",loss);
      fprintf(stdout,"Norm of weight vector: |w|=%.5f\n",model_length);
      example_length=estimate_sphere(model,kernel_parm);
      fprintf(stdout,"Norm of longest example vector: |x|=%.5f\n",
       length_of_longest_document_vector(docs,totdoc,kernel_parm));
    }
    if(verbosity>=1) {
      printf("Number of kernel evaluations: %ld\n",kernel_cache_statistic);
    }
  }

  if(learn_parm->alphafile[0])
    write_alphas(learn_parm->alphafile,a,label,totdoc);



  for(i=1;i<model->sv_num;i++) {
    j=model->supvec[i]->docnum;
    if(j >= (totdoc/2)) {
      j=totdoc-j-1;
    }
    model->supvec[i]=docs_org[j];
  }

  shrink_state_cleanup(&shrink_state);
  for(i=0;i<totdoc;i++)
    free_example(docs[i],0);
  free(docs);
  free(label);
  free(inconsistent);
  free(unlabeled);
  free(c);
  free(a);
  free(a_fullset);
  free(xi_fullset);
  free(lin);
  free(learn_parm->svm_cost);
}

void svm_learn_ranking(DOC **docs, double *rankvalue, long int totdoc,
         long int totwords, LEARN_PARM *learn_parm,
         KERNEL_PARM *kernel_parm, KERNEL_CACHE **kernel_cache,
         MODEL *model)
# 717 "svm_learn.c"
{
  DOC **docdiff;
  long i,j,k,totpair,kernel_cache_size;
  double *target,*alpha,cost;
  long *greater,*lesser;
  MODEL *pairmodel;
  SVECTOR *flow,*fhigh;

  totpair=0;
  for(i=0;i<totdoc;i++) {
    for(j=i+1;j<totdoc;j++) {
      if((docs[i]->queryid==docs[j]->queryid) && (rankvalue[i] != rankvalue[j])) {
 totpair++;
      }
    }
  }

  printf("Constructing %ld rank constraints...",totpair); fflush(stdout);
  docdiff=(DOC **)my_malloc(sizeof(DOC)*totpair);
  target=(double *)my_malloc(sizeof(double)*totpair);
  greater=(long *)my_malloc(sizeof(long)*totpair);
  lesser=(long *)my_malloc(sizeof(long)*totpair);

  k=0;
  for(i=0;i<totdoc;i++) {
    for(j=i+1;j<totdoc;j++) {
      if(docs[i]->queryid == docs[j]->queryid) {
 cost=(docs[i]->costfactor+docs[j]->costfactor)/2.0;
 if(rankvalue[i] > rankvalue[j]) {
   if(kernel_parm->kernel_type == 0)
     docdiff[k]=create_example(k,0,0,cost,
          sub_ss(docs[i]->fvec,docs[j]->fvec));
   else {
     flow=copy_svector(docs[j]->fvec);
     flow->factor=-1.0;
     flow->next=((void *)0);
     fhigh=copy_svector(docs[i]->fvec);
     fhigh->factor=1.0;
     fhigh->next=flow;
     docdiff[k]=create_example(k,0,0,cost,fhigh);
   }
   target[k]=1;
   greater[k]=i;
   lesser[k]=j;
   k++;
 }
 else if(rankvalue[i] < rankvalue[j]) {
   if(kernel_parm->kernel_type == 0)
     docdiff[k]=create_example(k,0,0,cost,
          sub_ss(docs[i]->fvec,docs[j]->fvec));
   else {
     flow=copy_svector(docs[j]->fvec);
     flow->factor=-1.0;
     flow->next=((void *)0);
     fhigh=copy_svector(docs[i]->fvec);
     fhigh->factor=1.0;
     fhigh->next=flow;
     docdiff[k]=create_example(k,0,0,cost,fhigh);
   }
   target[k]=-1;
   greater[k]=i;
   lesser[k]=j;
   k++;
 }
      }
    }
  }
  printf("done.\n"); fflush(stdout);


  if(*kernel_cache) {
    kernel_cache_size=(*kernel_cache)->buffsize*sizeof(float)/(1024*1024);
    kernel_cache_cleanup(*kernel_cache);
    (*kernel_cache)=kernel_cache_init(totpair,kernel_cache_size);
  }


  learn_parm->biased_hyperplane=0;
  pairmodel=(MODEL *)my_malloc(sizeof(MODEL));
  svm_learn_classification(docdiff,target,totpair,totwords,learn_parm,
      kernel_parm,(*kernel_cache),pairmodel,((void *)0));



  alpha=(double *)my_malloc(sizeof(double)*totdoc);
  for(i=0;i<totdoc;i++) {
    alpha[i]=0;
  }
  for(i=1;i<pairmodel->sv_num;i++) {
    alpha[lesser[(pairmodel->supvec[i])->docnum]]-=pairmodel->alpha[i];
    alpha[greater[(pairmodel->supvec[i])->docnum]]+=pairmodel->alpha[i];
  }
  model->supvec = (DOC **)my_malloc(sizeof(DOC *)*(totdoc+2));
  model->alpha = (double *)my_malloc(sizeof(double)*(totdoc+2));
  model->index = (long *)my_malloc(sizeof(long)*(totdoc+2));
  model->supvec[0]=0;
  model->alpha[0]=0;
  model->sv_num=1;
  for(i=0;i<totdoc;i++) {
    if(alpha[i]) {
      model->supvec[model->sv_num]=docs[i];
      model->alpha[model->sv_num]=alpha[i];
      model->index[i]=model->sv_num;
      model->sv_num++;
    }
    else {
      model->index[i]=-1;
    }
  }
  model->at_upper_bound=0;
  model->b=0;
  model->lin_weights=((void *)0);
  model->totwords=totwords;
  model->totdoc=totdoc;
  model->kernel_parm=(*kernel_parm);
  model->loo_error=-1;
  model->loo_recall=-1;
  model->loo_precision=-1;
  model->xa_error=-1;
  model->xa_recall=-1;
  model->xa_precision=-1;

  free(alpha);
  free(greater);
  free(lesser);
  free(target);



  for(i=0;i<totpair;i++)
    free_example(docdiff[i],1);
  free(docdiff);
  free_model(pairmodel,0);
}
# 861 "svm_learn.c"
void svm_learn_optimization(DOC **docs, double *rhs, long int
       totdoc, long int totwords,
       LEARN_PARM *learn_parm,
       KERNEL_PARM *kernel_parm,
       KERNEL_CACHE *kernel_cache, MODEL *model,
       double *alpha)
# 879 "svm_learn.c"
{
  long i,*label;
  long misclassified,upsupvecnum;
  double loss,model_length,example_length;
  double maxdiff,*lin,*a,*c;
  long runtime_start,runtime_end;
  long iterations,maxslackid,svsetnum;
  long *unlabeled,*inconsistent;
  double r_delta_sq=0,r_delta,r_delta_avg;
  long *index,*index2dnum;
  double *weights,*slack,*alphaslack;
  float *aicache;

  TIMING timing_profile;
  SHRINK_STATE shrink_state;

  runtime_start=get_runtime();
  timing_profile.time_kernel=0;
  timing_profile.time_opti=0;
  timing_profile.time_shrink=0;
  timing_profile.time_update=0;
  timing_profile.time_model=0;
  timing_profile.time_check=0;
  timing_profile.time_select=0;
  kernel_cache_statistic=0;

  learn_parm->totwords=totwords;


  if((learn_parm->svm_newvarsinqp < 2)
     || (learn_parm->svm_newvarsinqp > learn_parm->svm_maxqpsize)) {
    learn_parm->svm_newvarsinqp=learn_parm->svm_maxqpsize;
  }

  init_shrink_state(&shrink_state,totdoc,(long)50000);

  label = (long *)my_malloc(sizeof(long)*totdoc);
  unlabeled = (long *)my_malloc(sizeof(long)*totdoc);
  inconsistent = (long *)my_malloc(sizeof(long)*totdoc);
  c = (double *)my_malloc(sizeof(double)*totdoc);
  a = (double *)my_malloc(sizeof(double)*totdoc);
  lin = (double *)my_malloc(sizeof(double)*totdoc);
  learn_parm->svm_cost = (double *)my_malloc(sizeof(double)*totdoc);
  model->supvec = (DOC **)my_malloc(sizeof(DOC *)*(totdoc+2));
  model->alpha = (double *)my_malloc(sizeof(double)*(totdoc+2));
  model->index = (long *)my_malloc(sizeof(long)*(totdoc+2));

  model->at_upper_bound=0;
  model->b=0;
  model->supvec[0]=0;
  model->alpha[0]=0;
  model->lin_weights=((void *)0);
  model->totwords=totwords;
  model->totdoc=totdoc;
  model->kernel_parm=(*kernel_parm);
  model->sv_num=1;
  model->loo_error=-1;
  model->loo_recall=-1;
  model->loo_precision=-1;
  model->xa_error=-1;
  model->xa_recall=-1;
  model->xa_precision=-1;

  r_delta=estimate_r_delta(docs,totdoc,kernel_parm);
  r_delta_sq=r_delta*r_delta;

  r_delta_avg=estimate_r_delta_average(docs,totdoc,kernel_parm);
  if(learn_parm->svm_c == 0.0) {
    learn_parm->svm_c=1.0/(r_delta_avg*r_delta_avg);
    if(verbosity>=1)
      printf("Setting default regularization parameter C=%.4f\n",
      learn_parm->svm_c);
  }

  learn_parm->biased_hyperplane=0;

  learn_parm->eps=0.0;



  for(i=0;i<totdoc;i++) {
    docs[i]->docnum=i;
    a[i]=0;
    lin[i]=0;
    c[i]=rhs[i];
    unlabeled[i]=0;
    inconsistent[i]=0;
    learn_parm->svm_cost[i]=learn_parm->svm_c*learn_parm->svm_costratio*
      docs[i]->costfactor;
    label[i]=1;
  }
  if(learn_parm->sharedslack)
    for(i=0;i<totdoc;i++)
      if(!docs[i]->slackid) {
 perror("Error: Missing shared slacks definitions in some of the examples.");
 exit(0);
      }


  if(alpha) {
    if(verbosity>=1) {
      printf("Computing starting state..."); fflush(stdout);
    }
    index = (long *)my_malloc(sizeof(long)*totdoc);
    index2dnum = (long *)my_malloc(sizeof(long)*(totdoc+11));
    weights=(double *)my_malloc(sizeof(double)*(totwords+1));
    aicache = (float *)my_malloc(sizeof(float)*totdoc);
    for(i=0;i<totdoc;i++) {
      index[i]=1;
      alpha[i]=fabs(alpha[i]);
      if(alpha[i]<0) alpha[i]=0;
      if(alpha[i]>learn_parm->svm_cost[i]) alpha[i]=learn_parm->svm_cost[i];
    }
    if(kernel_parm->kernel_type != 0) {
      for(i=0;i<totdoc;i++)
 if((alpha[i]>0) && (alpha[i]<learn_parm->svm_cost[i])
    && (kernel_cache_space_available(kernel_cache)))
   cache_kernel_row(kernel_cache,docs,i,kernel_parm);
      for(i=0;i<totdoc;i++)
 if((alpha[i]==learn_parm->svm_cost[i])
    && (kernel_cache_space_available(kernel_cache)))
   cache_kernel_row(kernel_cache,docs,i,kernel_parm);
    }
    (void)compute_index(index,totdoc,index2dnum);
    update_linear_component(docs,label,index2dnum,alpha,a,index2dnum,totdoc,
       totwords,kernel_parm,kernel_cache,lin,aicache,
       weights);
    (void)calculate_svm_model(docs,label,unlabeled,lin,alpha,a,c,
         learn_parm,index2dnum,index2dnum,model);
    for(i=0;i<totdoc;i++) {
      a[i]=alpha[i];
    }
    free(index);
    free(index2dnum);
    free(weights);
    free(aicache);
    if(verbosity>=1) {
      printf("done.\n"); fflush(stdout);
    }
  }


  if(learn_parm->remove_inconsistent) {
    learn_parm->remove_inconsistent = 0;
    printf("'remove inconsistent' not available in this mode. Switching option off!"); fflush(stdout);
  }


  if(kernel_parm->kernel_type == 0) {
    kernel_cache = ((void *)0);
  }

  if(verbosity==1) {
    printf("Optimizing"); fflush(stdout);
  }


  if(learn_parm->sharedslack)
    iterations=optimize_to_convergence_sharedslack(docs,label,totdoc,
         totwords,learn_parm,kernel_parm,
         kernel_cache,&shrink_state,model,
         a,lin,c,&timing_profile,
         &maxdiff);
  else
    iterations=optimize_to_convergence(docs,label,totdoc,
         totwords,learn_parm,kernel_parm,
         kernel_cache,&shrink_state,model,
         inconsistent,unlabeled,
         a,lin,c,&timing_profile,
         &maxdiff,(long)-1,(long)1);

  if(verbosity>=1) {
    if(verbosity==1) printf("done. (%ld iterations)\n",iterations);

    misclassified=0;
    for(i=0;(i<totdoc);i++) {
      if((lin[i]-model->b)*(double)label[i] <= 0.0)
 misclassified++;
    }

    printf("Optimization finished (maxdiff=%.5f).\n",maxdiff);

    runtime_end=get_runtime();
    if(verbosity>=2) {
      printf("Runtime in cpu-seconds: %.2f (%.2f%% for kernel/%.2f%% for optimizer/%.2f%% for final/%.2f%% for update/%.2f%% for model/%.2f%% for check/%.2f%% for select)\n",
        ((float)runtime_end-(float)runtime_start)/100.0,
        (100.0*timing_profile.time_kernel)/(float)(runtime_end-runtime_start),
 (100.0*timing_profile.time_opti)/(float)(runtime_end-runtime_start),
 (100.0*timing_profile.time_shrink)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_update)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_model)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_check)/(float)(runtime_end-runtime_start),
        (100.0*timing_profile.time_select)/(float)(runtime_end-runtime_start));
    }
    else {
      printf("Runtime in cpu-seconds: %.2f\n",
      (runtime_end-runtime_start)/100.0);
    }
  }
  if((verbosity>=1) && (!learn_parm->skip_final_opt_check)) {
    loss=0;
    model_length=0;
    for(i=0;i<totdoc;i++) {
      if((lin[i]-model->b)*(double)label[i] < c[i]-learn_parm->epsilon_crit)
 loss+=c[i]-(lin[i]-model->b)*(double)label[i];
      model_length+=a[i]*label[i]*lin[i];
    }
    model_length=sqrt(model_length);
    fprintf(stdout,"Norm of weight vector: |w|=%.5f\n",model_length);
  }

  if(learn_parm->sharedslack) {
    index = (long *)my_malloc(sizeof(long)*totdoc);
    index2dnum = (long *)my_malloc(sizeof(long)*(totdoc+11));
    maxslackid=0;
    for(i=0;i<totdoc;i++) {
      index[i]=1;
      if(maxslackid<docs[i]->slackid)
 maxslackid=docs[i]->slackid;
    }
    (void)compute_index(index,totdoc,index2dnum);
    slack=(double *)my_malloc(sizeof(double)*(maxslackid+1));
    alphaslack=(double *)my_malloc(sizeof(double)*(maxslackid+1));
    for(i=0;i<=maxslackid;i++) {
      slack[i]=0;
      alphaslack[i]=0;
    }
    compute_shared_slacks(docs,label,a,lin,c,index2dnum,learn_parm,
     slack,alphaslack);
    loss=0;
    model->at_upper_bound=0;
    svsetnum=0;
    for(i=0;i<=maxslackid;i++) {
      loss+=slack[i];
      if(alphaslack[i] > (learn_parm->svm_c - learn_parm->epsilon_a))
 model->at_upper_bound++;
      if(alphaslack[i] > learn_parm->epsilon_a)
 svsetnum++;
    }
    free(index);
    free(index2dnum);
    free(slack);
    free(alphaslack);
  }

  if((verbosity>=1) && (!learn_parm->skip_final_opt_check)) {
    if(learn_parm->sharedslack) {
      printf("Number of SV: %ld\n",
      model->sv_num-1);
      printf("Number of non-zero slack variables: %ld (out of %ld)\n",
      model->at_upper_bound,svsetnum);
      fprintf(stdout,"L1 loss: loss=%.5f\n",loss);
    }
    else {
      upsupvecnum=0;
      for(i=1;i<model->sv_num;i++) {
 if(fabs(model->alpha[i]) >=
    (learn_parm->svm_cost[(model->supvec[i])->docnum]-
     learn_parm->epsilon_a))
   upsupvecnum++;
      }
      printf("Number of SV: %ld (including %ld at upper bound)\n",
      model->sv_num-1,upsupvecnum);
      fprintf(stdout,"L1 loss: loss=%.5f\n",loss);
    }
    example_length=estimate_sphere(model,kernel_parm);
    fprintf(stdout,"Norm of longest example vector: |x|=%.5f\n",
     length_of_longest_document_vector(docs,totdoc,kernel_parm));
  }
  if(verbosity>=1) {
    printf("Number of kernel evaluations: %ld\n",kernel_cache_statistic);
  }

  if(alpha) {
    for(i=0;i<totdoc;i++) {
      alpha[i]=a[i];
    }
  }

  if(learn_parm->alphafile[0])
    write_alphas(learn_parm->alphafile,a,label,totdoc);

  shrink_state_cleanup(&shrink_state);
  free(label);
  free(unlabeled);
  free(inconsistent);
  free(c);
  free(a);
  free(lin);
  free(learn_parm->svm_cost);
}


long optimize_to_convergence(DOC **docs, long int *label, long int totdoc,
        long int totwords, LEARN_PARM *learn_parm,
        KERNEL_PARM *kernel_parm,
        KERNEL_CACHE *kernel_cache,
        SHRINK_STATE *shrink_state, MODEL *model,
        long int *inconsistent, long int *unlabeled,
        double *a, double *lin, double *c,
        TIMING *timing_profile, double *maxdiff,
        long int heldout, long int retrain)
# 1200 "svm_learn.c"
{
  long *chosen,*key,i,j,jj,*last_suboptimal_at,noshrink;
  long inconsistentnum,choosenum,already_chosen=0,iteration;
  long misclassified,supvecnum=0,*active2dnum,inactivenum;
  long *working2dnum,*selexam;
  long activenum;
  double criterion,eq;
  double *a_old;
  long t0=0,t1=0,t2=0,t3=0,t4=0,t5=0,t6=0;
  long transductcycle;
  long transduction;
  double epsilon_crit_org;
  double bestmaxdiff;
  long bestmaxdiffiter,terminate;

  double *selcrit;
  float *aicache;
  double *weights;
  QP qp;

  epsilon_crit_org=learn_parm->epsilon_crit;
  if(kernel_parm->kernel_type == 0) {
    learn_parm->epsilon_crit=2.0;
    kernel_cache=((void *)0);
  }
  learn_parm->epsilon_shrink=2;
  (*maxdiff)=1;

  learn_parm->totwords=totwords;

  chosen = (long *)my_malloc(sizeof(long)*totdoc);
  last_suboptimal_at = (long *)my_malloc(sizeof(long)*totdoc);
  key = (long *)my_malloc(sizeof(long)*(totdoc+11));
  selcrit = (double *)my_malloc(sizeof(double)*totdoc);
  selexam = (long *)my_malloc(sizeof(long)*totdoc);
  a_old = (double *)my_malloc(sizeof(double)*totdoc);
  aicache = (float *)my_malloc(sizeof(float)*totdoc);
  working2dnum = (long *)my_malloc(sizeof(long)*(totdoc+11));
  active2dnum = (long *)my_malloc(sizeof(long)*(totdoc+11));
  qp.opt_ce = (double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  qp.opt_ce0 = (double *)my_malloc(sizeof(double));
  qp.opt_g = (double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize
     *learn_parm->svm_maxqpsize);
  qp.opt_g0 = (double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  qp.opt_xinit = (double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  qp.opt_low=(double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  qp.opt_up=(double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  weights=(double *)my_malloc(sizeof(double)*(totwords+1));

  choosenum=0;
  inconsistentnum=0;
  transductcycle=0;
  transduction=0;
  if(!retrain) retrain=1;
  iteration=1;
  bestmaxdiffiter=1;
  bestmaxdiff=999999999;
  terminate=0;

  if(kernel_cache) {
    kernel_cache->time=iteration;
    kernel_cache_reset_lru(kernel_cache);
  }

  for(i=0;i<totdoc;i++) {
    chosen[i]=0;
    a_old[i]=a[i];
    last_suboptimal_at[i]=1;
    if(inconsistent[i])
      inconsistentnum++;
    if(unlabeled[i]) {
      transduction=1;
    }
  }
  activenum=compute_index(shrink_state->active,totdoc,active2dnum);
  inactivenum=totdoc-activenum;
  clear_index(working2dnum);


  for(;retrain && (!terminate);iteration++) {

    if(kernel_cache)
      kernel_cache->time=iteration;
    if(verbosity>=2) {
      printf(
 "Iteration %ld: ",iteration); fflush(stdout);
    }
    else if(verbosity==1) {
      printf("."); fflush(stdout);
    }

    if(verbosity>=2) t0=get_runtime();
    if(verbosity>=3) {
      printf("\nSelecting working set... "); fflush(stdout);
    }

    if(learn_parm->svm_newvarsinqp>learn_parm->svm_maxqpsize)
      learn_parm->svm_newvarsinqp=learn_parm->svm_maxqpsize;

    i=0;
    for(jj=0;(j=working2dnum[jj])>=0;jj++) {
      if((chosen[j]>=(learn_parm->svm_maxqpsize/
        minl(learn_parm->svm_maxqpsize,
      learn_parm->svm_newvarsinqp)))
  || (inconsistent[j])
  || (j == heldout)) {
 chosen[j]=0;
 choosenum--;
      }
      else {
 chosen[j]++;
 working2dnum[i++]=j;
      }
    }
    working2dnum[i]=-1;

    if(retrain == 2) {
      choosenum=0;
      for(jj=0;(j=working2dnum[jj])>=0;jj++) {
 chosen[j]=0;
      }
      clear_index(working2dnum);
      for(i=0;i<totdoc;i++) {
 if((inconsistent[i] || (heldout==i)) && (a[i] != 0.0)) {
   chosen[i]=99999;
   choosenum++;
   a[i]=0;
 }
      }
      if(learn_parm->biased_hyperplane) {
 eq=0;
 for(i=0;i<totdoc;i++) {
   eq+=a[i]*label[i];
 }
 for(i=0;(i<totdoc) && (fabs(eq) > learn_parm->epsilon_a);i++) {
   if((eq*label[i] > 0) && (a[i] > 0)) {
     chosen[i]=88888;
     choosenum++;
     if((eq*label[i]) > a[i]) {
       eq-=(a[i]*label[i]);
       a[i]=0;
     }
     else {
       a[i]-=(eq*label[i]);
       eq=0;
     }
   }
 }
      }
      compute_index(chosen,totdoc,working2dnum);
    }
    else {
      if(iteration % 101) {
        already_chosen=0;
 if((minl(learn_parm->svm_newvarsinqp,
   learn_parm->svm_maxqpsize-choosenum)>=4)
    && (kernel_parm->kernel_type != 0)) {

   already_chosen=select_next_qp_subproblem_grad(
         label,unlabeled,a,lin,c,totdoc,
         (long)(minl(learn_parm->svm_maxqpsize-choosenum,
       learn_parm->svm_newvarsinqp)
         /2),
         learn_parm,inconsistent,active2dnum,
         working2dnum,selcrit,selexam,kernel_cache,1,
         key,chosen);
   choosenum+=already_chosen;
 }
 choosenum+=select_next_qp_subproblem_grad(
                              label,unlabeled,a,lin,c,totdoc,
                              minl(learn_parm->svm_maxqpsize-choosenum,
       learn_parm->svm_newvarsinqp-already_chosen),
                              learn_parm,inconsistent,active2dnum,
         working2dnum,selcrit,selexam,kernel_cache,0,key,
         chosen);
      }
      else {


 choosenum+=select_next_qp_subproblem_rand(
                              label,unlabeled,a,lin,c,totdoc,
                              minl(learn_parm->svm_maxqpsize-choosenum,
       learn_parm->svm_newvarsinqp),
                              learn_parm,inconsistent,active2dnum,
         working2dnum,selcrit,selexam,kernel_cache,key,
         chosen,iteration);
      }
    }

    if(verbosity>=2) {
      printf(" %ld vectors chosen\n",choosenum); fflush(stdout);
    }

    if(verbosity>=2) t1=get_runtime();

    if(kernel_cache)
      cache_multiple_kernel_rows(kernel_cache,docs,working2dnum,
     choosenum,kernel_parm);

    if(verbosity>=2) t2=get_runtime();
    if(retrain != 2) {
      optimize_svm(docs,label,unlabeled,inconsistent,0.0,chosen,active2dnum,
     model,totdoc,working2dnum,choosenum,a,lin,c,learn_parm,
     aicache,kernel_parm,&qp,&epsilon_crit_org);
    }

    if(verbosity>=2) t3=get_runtime();
    update_linear_component(docs,label,active2dnum,a,a_old,working2dnum,totdoc,
       totwords,kernel_parm,kernel_cache,lin,aicache,
       weights);

    if(verbosity>=2) t4=get_runtime();
    supvecnum=calculate_svm_model(docs,label,unlabeled,lin,a,a_old,c,
                    learn_parm,working2dnum,active2dnum,model);

    if(verbosity>=2) t5=get_runtime();



    if(verbosity>=3) {
      criterion=compute_objective_function(a,lin,c,learn_parm->eps,label,
                             active2dnum);
      printf("Objective function (over active variables): %.16f\n",criterion);
      fflush(stdout);
    }

    for(jj=0;(i=working2dnum[jj])>=0;jj++) {
      a_old[i]=a[i];
    }

    if(retrain == 2) {
      for(i=0;(i<totdoc);i++) {
 if(inconsistent[i] && unlabeled[i]) {
   inconsistent[i]=0;
   label[i]=0;
 }
      }
    }

    retrain=check_optimality(model,label,unlabeled,a,lin,c,totdoc,learn_parm,
        maxdiff,epsilon_crit_org,&misclassified,
        inconsistent,active2dnum,last_suboptimal_at,
        iteration,kernel_parm);

    if(verbosity>=2) {
      t6=get_runtime();
      timing_profile->time_select+=t1-t0;
      timing_profile->time_kernel+=t2-t1;
      timing_profile->time_opti+=t3-t2;
      timing_profile->time_update+=t4-t3;
      timing_profile->time_model+=t5-t4;
      timing_profile->time_check+=t6-t5;
    }


    if((*maxdiff) < bestmaxdiff) {
      bestmaxdiff=(*maxdiff);
      bestmaxdiffiter=iteration;
    }
    if(iteration > (bestmaxdiffiter+learn_parm->maxiter)) {

      terminate=1;
      retrain=0;
      if(verbosity>=1)
 printf("\nWARNING: Relaxing KT-Conditions due to slow progress! Terminating!\n");
    }

    noshrink=0;
    if((!retrain) && (inactivenum>0)
       && ((!learn_parm->skip_final_opt_check)
    || (kernel_parm->kernel_type == 0))) {
      if(((verbosity>=1) && (kernel_parm->kernel_type != 0))
  || (verbosity>=2)) {
 if(verbosity==1) {
   printf("\n");
 }
 printf(" Checking optimality of inactive variables...");
 fflush(stdout);
      }
      t1=get_runtime();
      reactivate_inactive_examples(label,unlabeled,a,shrink_state,lin,c,totdoc,
       totwords,iteration,learn_parm,inconsistent,
       docs,kernel_parm,kernel_cache,model,aicache,
       weights,maxdiff);

      activenum=compute_index(shrink_state->active,totdoc,active2dnum);
      inactivenum=totdoc-activenum;

      bestmaxdiff=(*maxdiff);
      bestmaxdiffiter=iteration;

      noshrink=1;
      retrain=0;
      if((*maxdiff) > learn_parm->epsilon_crit)
 retrain=1;
      timing_profile->time_shrink+=get_runtime()-t1;
      if(((verbosity>=1) && (kernel_parm->kernel_type != 0))
  || (verbosity>=2)) {
 printf("done.\n"); fflush(stdout);
        printf(" Number of inactive variables = %ld\n",inactivenum);
      }
    }

    if((!retrain) && (learn_parm->epsilon_crit>(*maxdiff)))
      learn_parm->epsilon_crit=(*maxdiff);
    if((!retrain) && (learn_parm->epsilon_crit>epsilon_crit_org)) {
      learn_parm->epsilon_crit/=2.0;
      retrain=1;
      noshrink=1;
    }
    if(learn_parm->epsilon_crit<epsilon_crit_org)
      learn_parm->epsilon_crit=epsilon_crit_org;

    if(verbosity>=2) {
      printf(" => (%ld SV (incl. %ld SV at u-bound), max violation=%.5f)\n",
      supvecnum,model->at_upper_bound,(*maxdiff));
      fflush(stdout);
    }
    if(verbosity>=3) {
      printf("\n");
    }

    if((!retrain) && (transduction)) {
      for(i=0;(i<totdoc);i++) {
 shrink_state->active[i]=1;
      }
      activenum=compute_index(shrink_state->active,totdoc,active2dnum);
      inactivenum=0;
      if(verbosity==1) printf("done\n");
      retrain=incorporate_unlabeled_examples(model,label,inconsistent,
          unlabeled,a,lin,totdoc,
          selcrit,selexam,key,
          transductcycle,kernel_parm,
          learn_parm);
      epsilon_crit_org=learn_parm->epsilon_crit;
      if(kernel_parm->kernel_type == 0)
 learn_parm->epsilon_crit=1;
      transductcycle++;

      bestmaxdiff=(*maxdiff);
      bestmaxdiffiter=iteration;
    }
    else if(((iteration % 10) == 0) && (!noshrink)) {
      activenum=shrink_problem(docs,learn_parm,shrink_state,kernel_parm,
          active2dnum,last_suboptimal_at,iteration,totdoc,
          maxl((long)(activenum/10),
        maxl((long)(totdoc/500),100)),
          a,inconsistent);
      inactivenum=totdoc-activenum;
      if((kernel_cache)
  && (supvecnum>kernel_cache->max_elems)
  && ((kernel_cache->activenum-activenum)>maxl((long)(activenum/10),500))) {
 kernel_cache_shrink(kernel_cache,totdoc,
       minl((kernel_cache->activenum-activenum),
     (kernel_cache->activenum-supvecnum)),
       shrink_state->active);
      }
    }

    if((!retrain) && learn_parm->remove_inconsistent) {
      if(verbosity>=1) {
 printf(" Moving training errors to inconsistent examples...");
 fflush(stdout);
      }
      if(learn_parm->remove_inconsistent == 1) {
 retrain=identify_inconsistent(a,label,unlabeled,totdoc,learn_parm,
          &inconsistentnum,inconsistent);
      }
      else if(learn_parm->remove_inconsistent == 2) {
 retrain=identify_misclassified(lin,label,unlabeled,totdoc,
           model,&inconsistentnum,inconsistent);
      }
      else if(learn_parm->remove_inconsistent == 3) {
 retrain=identify_one_misclassified(lin,label,unlabeled,totdoc,
       model,&inconsistentnum,inconsistent);
      }
      if(retrain) {
 if(kernel_parm->kernel_type == 0) {
   learn_parm->epsilon_crit=2.0;
 }
      }
      if(verbosity>=1) {
 printf("done.\n");
 if(retrain) {
   printf(" Now %ld inconsistent examples.\n",inconsistentnum);
 }
      }
    }
  }

  free(chosen);
  free(last_suboptimal_at);
  free(key);
  free(selcrit);
  free(selexam);
  free(a_old);
  free(aicache);
  free(working2dnum);
  free(active2dnum);
  free(qp.opt_ce);
  free(qp.opt_ce0);
  free(qp.opt_g);
  free(qp.opt_g0);
  free(qp.opt_xinit);
  free(qp.opt_low);
  free(qp.opt_up);
  free(weights);

  learn_parm->epsilon_crit=epsilon_crit_org;
  model->maxdiff=(*maxdiff);

  return(iteration);
}

long optimize_to_convergence_sharedslack(DOC **docs, long int *label,
        long int totdoc,
        long int totwords, LEARN_PARM *learn_parm,
        KERNEL_PARM *kernel_parm,
        KERNEL_CACHE *kernel_cache,
        SHRINK_STATE *shrink_state, MODEL *model,
        double *a, double *lin, double *c,
        TIMING *timing_profile, double *maxdiff)
# 1637 "svm_learn.c"
{
  long *chosen,*key,i,j,jj,*last_suboptimal_at,noshrink,*unlabeled;
  long *inconsistent,choosenum,already_chosen=0,iteration;
  long misclassified,supvecnum=0,*active2dnum,inactivenum;
  long *working2dnum,*selexam,*ignore;
  long activenum,retrain,maxslackid,slackset,jointstep;
  double criterion,eq_target;
  double *a_old,*alphaslack;
  long t0=0,t1=0,t2=0,t3=0,t4=0,t5=0,t6=0;
  double epsilon_crit_org,maxsharedviol;
  double bestmaxdiff;
  long bestmaxdiffiter,terminate;

  double *selcrit;
  float *aicache;
  double *weights;
  QP qp;
  double *slack;


  epsilon_crit_org=learn_parm->epsilon_crit;
  if(kernel_parm->kernel_type == 0) {
    learn_parm->epsilon_crit=2.0;
    kernel_cache=((void *)0);
  }
  learn_parm->epsilon_shrink=2;
  (*maxdiff)=1;

  learn_parm->totwords=totwords;

  chosen = (long *)my_malloc(sizeof(long)*totdoc);
  unlabeled = (long *)my_malloc(sizeof(long)*totdoc);
  inconsistent = (long *)my_malloc(sizeof(long)*totdoc);
  ignore = (long *)my_malloc(sizeof(long)*totdoc);
  key = (long *)my_malloc(sizeof(long)*(totdoc+11));
  selcrit = (double *)my_malloc(sizeof(double)*totdoc);
  selexam = (long *)my_malloc(sizeof(long)*totdoc);
  a_old = (double *)my_malloc(sizeof(double)*totdoc);
  aicache = (float *)my_malloc(sizeof(float)*totdoc);
  working2dnum = (long *)my_malloc(sizeof(long)*(totdoc+11));
  active2dnum = (long *)my_malloc(sizeof(long)*(totdoc+11));
  qp.opt_ce = (double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  qp.opt_ce0 = (double *)my_malloc(sizeof(double));
  qp.opt_g = (double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize
     *learn_parm->svm_maxqpsize);
  qp.opt_g0 = (double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  qp.opt_xinit = (double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  qp.opt_low=(double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  qp.opt_up=(double *)my_malloc(sizeof(double)*learn_parm->svm_maxqpsize);
  weights=(double *)my_malloc(sizeof(double)*(totwords+1));
  maxslackid=0;
  for(i=0;i<totdoc;i++) {
    if(maxslackid<docs[i]->slackid)
      maxslackid=docs[i]->slackid;
  }
  slack=(double *)my_malloc(sizeof(double)*(maxslackid+1));
  alphaslack=(double *)my_malloc(sizeof(double)*(maxslackid+1));
  last_suboptimal_at = (long *)my_malloc(sizeof(long)*(maxslackid+1));
  for(i=0;i<=maxslackid;i++) {
    slack[i]=0;
    alphaslack[i]=0;
    last_suboptimal_at[i]=1;
  }

  choosenum=0;
  retrain=1;
  iteration=1;
  bestmaxdiffiter=1;
  bestmaxdiff=999999999;
  terminate=0;

  if(kernel_cache) {
    kernel_cache->time=iteration;
    kernel_cache_reset_lru(kernel_cache);
  }

  for(i=0;i<totdoc;i++) {
    chosen[i]=0;
    unlabeled[i]=0;
    inconsistent[i]=0;
    ignore[i]=0;
    a_old[i]=a[i];
  }
  activenum=compute_index(shrink_state->active,totdoc,active2dnum);
  inactivenum=totdoc-activenum;
  clear_index(working2dnum);


  compute_shared_slacks(docs,label,a,lin,c,active2dnum,learn_parm,
   slack,alphaslack);


  for(;retrain && (!terminate);iteration++) {

    if(kernel_cache)
      kernel_cache->time=iteration;
    if(verbosity>=2) {
      printf(
 "Iteration %ld: ",iteration); fflush(stdout);
    }
    else if(verbosity==1) {
      printf("."); fflush(stdout);
    }

    if(verbosity>=2) t0=get_runtime();
    if(verbosity>=3) {
      printf("\nSelecting working set... "); fflush(stdout);
    }

    if(learn_parm->svm_newvarsinqp>learn_parm->svm_maxqpsize)
      learn_parm->svm_newvarsinqp=learn_parm->svm_maxqpsize;


    jointstep=0;
    eq_target=0;
    if(iteration % 101) {
      slackset=select_next_qp_slackset(docs,label,a,lin,slack,alphaslack,c,
           learn_parm,active2dnum,&maxsharedviol);
      if((iteration % 2)
  || (!slackset) || (maxsharedviol<learn_parm->epsilon_crit)){

 if(verbosity >= 2) {
   printf("(i-step)"); fflush(stdout);
 }
 i=0;
 for(jj=0;(j=working2dnum[jj])>=0;jj++) {
   if((chosen[j]>=(learn_parm->svm_maxqpsize/
     minl(learn_parm->svm_maxqpsize,
          learn_parm->svm_newvarsinqp)))) {
     chosen[j]=0;
     choosenum--;
   }
   else {
     chosen[j]++;
     working2dnum[i++]=j;
   }
 }
 working2dnum[i]=-1;

 already_chosen=0;
 if((minl(learn_parm->svm_newvarsinqp,
   learn_parm->svm_maxqpsize-choosenum)>=4)
    && (kernel_parm->kernel_type != 0)) {

   already_chosen=select_next_qp_subproblem_grad(
         label,unlabeled,a,lin,c,totdoc,
         (long)(minl(learn_parm->svm_maxqpsize-choosenum,
       learn_parm->svm_newvarsinqp)
         /2),
         learn_parm,inconsistent,active2dnum,
         working2dnum,selcrit,selexam,kernel_cache,
         (long)1,key,chosen);
   choosenum+=already_chosen;
 }
 choosenum+=select_next_qp_subproblem_grad(
                              label,unlabeled,a,lin,c,totdoc,
                              minl(learn_parm->svm_maxqpsize-choosenum,
       learn_parm->svm_newvarsinqp-already_chosen),
                              learn_parm,inconsistent,active2dnum,
         working2dnum,selcrit,selexam,kernel_cache,
         (long)0,key,chosen);
      }
      else {
 if(verbosity >= 2) {
   printf("(j-step on %ld)",slackset); fflush(stdout);
 }
 jointstep=1;
 for(jj=0;(j=working2dnum[jj])>=0;jj++) {
     chosen[j]=0;
 }
 working2dnum[0]=-1;
 eq_target=alphaslack[slackset];
 for(j=0;j<totdoc;j++) {

   if(docs[j]->slackid != slackset)
     ignore[j]=1;
   else {
     ignore[j]=0;
     learn_parm->svm_cost[j]=learn_parm->svm_c;

   }
 }
 learn_parm->biased_hyperplane=1;
 choosenum=select_next_qp_subproblem_grad(
                              label,unlabeled,a,lin,c,totdoc,
                              learn_parm->svm_maxqpsize,
                              learn_parm,ignore,active2dnum,
         working2dnum,selcrit,selexam,kernel_cache,
         (long)0,key,chosen);
 learn_parm->biased_hyperplane=0;
      }
    }
    else {


      choosenum+=select_next_qp_subproblem_rand(
                              label,unlabeled,a,lin,c,totdoc,
                              minl(learn_parm->svm_maxqpsize-choosenum,
       learn_parm->svm_newvarsinqp),
                              learn_parm,inconsistent,active2dnum,
         working2dnum,selcrit,selexam,kernel_cache,key,
         chosen,iteration);
    }

    if(verbosity>=2) {
      printf(" %ld vectors chosen\n",choosenum); fflush(stdout);
    }

    if(verbosity>=2) t1=get_runtime();

    if(kernel_cache)
      cache_multiple_kernel_rows(kernel_cache,docs,working2dnum,
     choosenum,kernel_parm);

    if(verbosity>=2) t2=get_runtime();
    if(jointstep) learn_parm->biased_hyperplane=1;
    optimize_svm(docs,label,unlabeled,ignore,eq_target,chosen,active2dnum,
   model,totdoc,working2dnum,choosenum,a,lin,c,learn_parm,
   aicache,kernel_parm,&qp,&epsilon_crit_org);
    learn_parm->biased_hyperplane=0;

    for(jj=0;(i=working2dnum[jj])>=0;jj++)
      alphaslack[docs[i]->slackid]+=(a[i]-a_old[i]);
    for(jj=0;(i=working2dnum[jj])>=0;jj++) {

      if(alphaslack[docs[i]->slackid] > learn_parm->svm_c) {
 if(a[i] < (alphaslack[docs[i]->slackid]-learn_parm->svm_c)) {
   alphaslack[docs[i]->slackid]-=a[i];
   a[i]=0;
 }
 else {
   a[i]-=(alphaslack[docs[i]->slackid]-learn_parm->svm_c);
   alphaslack[docs[i]->slackid]=learn_parm->svm_c;
 }
      }
    }
    for(jj=0;(i=active2dnum[jj])>=0;jj++)
      learn_parm->svm_cost[i]=a[i]+(learn_parm->svm_c
        -alphaslack[docs[i]->slackid]);

    if(verbosity>=2) t3=get_runtime();
    update_linear_component(docs,label,active2dnum,a,a_old,working2dnum,totdoc,
       totwords,kernel_parm,kernel_cache,lin,aicache,
       weights);
    compute_shared_slacks(docs,label,a,lin,c,active2dnum,learn_parm,
     slack,alphaslack);

    if(verbosity>=2) t4=get_runtime();
    supvecnum=calculate_svm_model(docs,label,unlabeled,lin,a,a_old,c,
                    learn_parm,working2dnum,active2dnum,model);

    if(verbosity>=2) t5=get_runtime();



    if(verbosity>=3) {
      criterion=compute_objective_function(a,lin,c,learn_parm->eps,label,
                             active2dnum);
      printf("Objective function (over active variables): %.16f\n",criterion);
      fflush(stdout);
    }

    for(jj=0;(i=working2dnum[jj])>=0;jj++) {
      a_old[i]=a[i];
    }

    retrain=check_optimality_sharedslack(docs,model,label,a,lin,c,
                             slack,alphaslack,totdoc,learn_parm,
        maxdiff,epsilon_crit_org,&misclassified,
        active2dnum,last_suboptimal_at,
        iteration,kernel_parm);

    if(verbosity>=2) {
      t6=get_runtime();
      timing_profile->time_select+=t1-t0;
      timing_profile->time_kernel+=t2-t1;
      timing_profile->time_opti+=t3-t2;
      timing_profile->time_update+=t4-t3;
      timing_profile->time_model+=t5-t4;
      timing_profile->time_check+=t6-t5;
    }


    if((*maxdiff) < bestmaxdiff) {
      bestmaxdiff=(*maxdiff);
      bestmaxdiffiter=iteration;
    }
    if(iteration > (bestmaxdiffiter+learn_parm->maxiter)) {

      terminate=1;
      retrain=0;
      if(verbosity>=1)
 printf("\nWARNING: Relaxing KT-Conditions due to slow progress! Terminating!\n");
    }

    noshrink=0;

    if((!retrain) && (inactivenum>0)
       && ((!learn_parm->skip_final_opt_check)
    || (kernel_parm->kernel_type == 0))) {
      if(((verbosity>=1) && (kernel_parm->kernel_type != 0))
  || (verbosity>=2)) {
 if(verbosity==1) {
   printf("\n");
 }
 printf(" Checking optimality of inactive variables...");
 fflush(stdout);
      }
      t1=get_runtime();
      reactivate_inactive_examples(label,unlabeled,a,shrink_state,lin,c,totdoc,
       totwords,iteration,learn_parm,inconsistent,
       docs,kernel_parm,kernel_cache,model,aicache,
       weights,maxdiff);

      activenum=compute_index(shrink_state->active,totdoc,active2dnum);
      inactivenum=totdoc-activenum;


      retrain=check_optimality_sharedslack(docs,model,label,a,lin,c,
        slack,alphaslack,totdoc,learn_parm,
        maxdiff,epsilon_crit_org,&misclassified,
        active2dnum,last_suboptimal_at,
        iteration,kernel_parm);


      bestmaxdiff=(*maxdiff);
      bestmaxdiffiter=iteration;

      noshrink=1;
      retrain=0;
      if((*maxdiff) > learn_parm->epsilon_crit)
 retrain=1;
      timing_profile->time_shrink+=get_runtime()-t1;
      if(((verbosity>=1) && (kernel_parm->kernel_type != 0))
  || (verbosity>=2)) {
 printf("done.\n"); fflush(stdout);
        printf(" Number of inactive variables = %ld\n",inactivenum);
      }
    }

    if((!retrain) && (learn_parm->epsilon_crit>(*maxdiff)))
      learn_parm->epsilon_crit=(*maxdiff);
    if((!retrain) && (learn_parm->epsilon_crit>epsilon_crit_org)) {
      learn_parm->epsilon_crit/=2.0;
      retrain=1;
      noshrink=1;
    }
    if(learn_parm->epsilon_crit<epsilon_crit_org)
      learn_parm->epsilon_crit=epsilon_crit_org;

    if(verbosity>=2) {
      printf(" => (%ld SV (incl. %ld SV at u-bound), max violation=%.5f)\n",
      supvecnum,model->at_upper_bound,(*maxdiff));
      fflush(stdout);
    }
    if(verbosity>=3) {
      printf("\n");
    }

    if(((iteration % 10) == 0) && (!noshrink)) {
      activenum=shrink_problem(docs,learn_parm,shrink_state,
          kernel_parm,active2dnum,
          last_suboptimal_at,iteration,totdoc,
          maxl((long)(activenum/10),
        maxl((long)(totdoc/500),100)),
          a,inconsistent);
      inactivenum=totdoc-activenum;
      if((kernel_cache)
  && (supvecnum>kernel_cache->max_elems)
  && ((kernel_cache->activenum-activenum)>maxl((long)(activenum/10),500))) {
 kernel_cache_shrink(kernel_cache,totdoc,
       minl((kernel_cache->activenum-activenum),
     (kernel_cache->activenum-supvecnum)),
       shrink_state->active);
      }
    }

  }


  free(alphaslack);
  free(slack);
  free(chosen);
  free(unlabeled);
  free(inconsistent);
  free(ignore);
  free(last_suboptimal_at);
  free(key);
  free(selcrit);
  free(selexam);
  free(a_old);
  free(aicache);
  free(working2dnum);
  free(active2dnum);
  free(qp.opt_ce);
  free(qp.opt_ce0);
  free(qp.opt_g);
  free(qp.opt_g0);
  free(qp.opt_xinit);
  free(qp.opt_low);
  free(qp.opt_up);
  free(weights);

  learn_parm->epsilon_crit=epsilon_crit_org;
  model->maxdiff=(*maxdiff);

  return(iteration);
}


double compute_objective_function(double *a, double *lin, double *c,
      double eps, long int *label,
      long int *active2dnum)


{
  long i,ii;
  double criterion;

  criterion=0;
  for(ii=0;active2dnum[ii]>=0;ii++) {
    i=active2dnum[ii];
    criterion=criterion+(eps-(double)label[i]*c[i])*a[i]+0.5*a[i]*label[i]*lin[i];
  }
  return(criterion);
}

void clear_index(long int *index)

{
  index[0]=-1;
}

void add_to_index(long int *index, long int elem)

{
  register long i;
  for(i=0;index[i] != -1;i++);
  index[i]=elem;
  index[i+1]=-1;
}

long compute_index(long int *binfeature, long int range, long int *index)

{
  register long i,ii;

  ii=0;
  for(i=0;i<range;i++) {
    if(binfeature[i]) {
      index[ii]=i;
      ii++;
    }
  }
  for(i=0;i<4;i++) {
    index[ii+i]=-1;
  }
  return(ii);
}


void optimize_svm(DOC **docs, long int *label, long int *unlabeled,
    long int *exclude_from_eq_const, double eq_target,
    long int *chosen, long int *active2dnum, MODEL *model,
    long int totdoc, long int *working2dnum, long int varnum,
    double *a, double *lin, double *c, LEARN_PARM *learn_parm,
    float *aicache, KERNEL_PARM *kernel_parm, QP *qp,
    double *epsilon_crit_target)

{
    long i;
    double *a_v;

    compute_matrices_for_optimization(docs,label,unlabeled,
          exclude_from_eq_const,eq_target,chosen,
          active2dnum,working2dnum,model,a,lin,c,
          varnum,totdoc,learn_parm,aicache,
          kernel_parm,qp);

    if(verbosity>=3) {
      printf("Running optimizer..."); fflush(stdout);
    }

    a_v=optimize_qp(qp,epsilon_crit_target,
      learn_parm->svm_maxqpsize,
      &(model->b),


      learn_parm);
    if(verbosity>=3) {
      printf("done\n");
    }

    for(i=0;i<varnum;i++) {
      a[working2dnum[i]]=a_v[i];
# 2140 "svm_learn.c"
    }
}

void compute_matrices_for_optimization(DOC **docs, long int *label,
          long int *unlabeled, long *exclude_from_eq_const, double eq_target,
   long int *chosen, long int *active2dnum,
          long int *key, MODEL *model, double *a, double *lin, double *c,
   long int varnum, long int totdoc, LEARN_PARM *learn_parm,
          float *aicache, KERNEL_PARM *kernel_parm, QP *qp)
{
  register long ki,kj,i,j;
  register double kernel_temp;

  if(verbosity>=3) {
    fprintf(stdout,"Computing qp-matrices (type %ld kernel [degree %ld, rbf_gamma %f, coef_lin %f, coef_const %f])...",kernel_parm->kernel_type,kernel_parm->poly_degree,kernel_parm->rbf_gamma,kernel_parm->coef_lin,kernel_parm->coef_const);
    fflush(stdout);
  }

  qp->opt_n=varnum;
  qp->opt_ce0[0]=-eq_target;
  for(j=1;j<model->sv_num;j++) {
    if((!chosen[(model->supvec[j])->docnum])
       && (!exclude_from_eq_const[(model->supvec[j])->docnum])) {
      qp->opt_ce0[0]+=model->alpha[j];
    }
  }
  if(learn_parm->biased_hyperplane)
    qp->opt_m=1;
  else
    qp->opt_m=0;


  for(i=0;i<varnum;i++) {
    qp->opt_g0[i]=lin[key[i]];
  }

  for(i=0;i<varnum;i++) {
    ki=key[i];


    qp->opt_ce[i]=label[ki];
    qp->opt_low[i]=0;
    qp->opt_up[i]=learn_parm->svm_cost[ki];

    kernel_temp=(double)kernel(kernel_parm,docs[ki],docs[ki]);

    qp->opt_g0[i]-=(kernel_temp*a[ki]*(double)label[ki]);

    qp->opt_g[varnum*i+i]=kernel_temp;
    for(j=i+1;j<varnum;j++) {
      kj=key[j];
      kernel_temp=(double)kernel(kernel_parm,docs[ki],docs[kj]);

      qp->opt_g0[i]-=(kernel_temp*a[kj]*(double)label[kj]);
      qp->opt_g0[j]-=(kernel_temp*a[ki]*(double)label[ki]);

      qp->opt_g[varnum*i+j]=(double)label[ki]*(double)label[kj]*kernel_temp;
      qp->opt_g[varnum*j+i]=(double)label[ki]*(double)label[kj]*kernel_temp;
    }

    if(verbosity>=3) {
      if(i % 20 == 0) {
 fprintf(stdout,"%ld..",i); fflush(stdout);
      }
    }
  }

  for(i=0;i<varnum;i++) {

    qp->opt_xinit[i]=a[key[i]];

    qp->opt_g0[i]=(learn_parm->eps-(double)label[key[i]]*c[key[i]])+qp->opt_g0[i]*(double)label[key[i]];
  }

  if(verbosity>=3) {
    fprintf(stdout,"done\n");
  }
}

long calculate_svm_model(DOC **docs, long int *label, long int *unlabeled,
    double *lin, double *a, double *a_old, double *c,
    LEARN_PARM *learn_parm, long int *working2dnum,
    long int *active2dnum, MODEL *model)


{
  long i,ii,pos,b_calculated=0,first_low,first_high;
  double ex_c,b_temp,b_low,b_high;

  if(verbosity>=3) {
    printf("Calculating model..."); fflush(stdout);
  }

  if(!learn_parm->biased_hyperplane) {
    model->b=0;
    b_calculated=1;
  }

  for(ii=0;(i=working2dnum[ii])>=0;ii++) {
    if((a_old[i]>0) && (a[i]==0)) {
      pos=model->index[i];
      model->index[i]=-1;
      (model->sv_num)--;
      model->supvec[pos]=model->supvec[model->sv_num];
      model->alpha[pos]=model->alpha[model->sv_num];
      model->index[(model->supvec[pos])->docnum]=pos;
    }
    else if((a_old[i]==0) && (a[i]>0)) {
      model->supvec[model->sv_num]=docs[i];
      model->alpha[model->sv_num]=a[i]*(double)label[i];
      model->index[i]=model->sv_num;
      (model->sv_num)++;
    }
    else if(a_old[i]==a[i]) {
    }
    else {
      model->alpha[model->index[i]]=a[i]*(double)label[i];
    }

    ex_c=learn_parm->svm_cost[i]-learn_parm->epsilon_a;
    if((a_old[i]>=ex_c) && (a[i]<ex_c)) {
      (model->at_upper_bound)--;
    }
    else if((a_old[i]<ex_c) && (a[i]>=ex_c)) {
      (model->at_upper_bound)++;
    }

    if((!b_calculated)
       && (a[i]>learn_parm->epsilon_a) && (a[i]<ex_c)) {
      model->b=((double)label[i]*learn_parm->eps-c[i]+lin[i]);

 b_calculated=1;
    }
  }




  if(learn_parm->biased_hyperplane
     && (!b_calculated)
     && (model->sv_num-1 == model->at_upper_bound)) {
    first_low=1;
    first_high=1;
    b_low=0;
    b_high=0;
    for(ii=0;(i=active2dnum[ii])>=0;ii++) {
      ex_c=learn_parm->svm_cost[i]-learn_parm->epsilon_a;
      if(a[i]<ex_c) {
 if(label[i]>0) {
   b_temp=-(learn_parm->eps-c[i]+lin[i]);
   if((b_temp>b_low) || (first_low)) {
     b_low=b_temp;
     first_low=0;
   }
 }
 else {
   b_temp=-(-learn_parm->eps-c[i]+lin[i]);
   if((b_temp<b_high) || (first_high)) {
     b_high=b_temp;
     first_high=0;
   }
 }
      }
      else {
 if(label[i]<0) {
   b_temp=-(-learn_parm->eps-c[i]+lin[i]);
   if((b_temp>b_low) || (first_low)) {
     b_low=b_temp;
     first_low=0;
   }
 }
 else {
   b_temp=-(learn_parm->eps-c[i]+lin[i]);
   if((b_temp<b_high) || (first_high)) {
     b_high=b_temp;
     first_high=0;
   }
 }
      }
    }
    if(first_high) {
      model->b=-b_low;
    }
    else if(first_low) {
      model->b=-b_high;
    }
    else {
      model->b=-(b_high+b_low)/2.0;

    }
  }

  if(verbosity>=3) {
    printf("done\n"); fflush(stdout);
  }

  return(model->sv_num-1);
}

long check_optimality(MODEL *model, long int *label, long int *unlabeled,
        double *a, double *lin, double *c, long int totdoc,
        LEARN_PARM *learn_parm, double *maxdiff,
        double epsilon_crit_org, long int *misclassified,
        long int *inconsistent, long int *active2dnum,
        long int *last_suboptimal_at,
        long int iteration, KERNEL_PARM *kernel_parm)

{
  long i,ii,retrain;
  double dist,ex_c,target;

  if(kernel_parm->kernel_type == 0) {
    learn_parm->epsilon_shrink=-learn_parm->epsilon_crit+epsilon_crit_org;
  }
  else {
    learn_parm->epsilon_shrink=learn_parm->epsilon_shrink*0.7+(*maxdiff)*0.3;
  }
  retrain=0;
  (*maxdiff)=0;
  (*misclassified)=0;
  for(ii=0;(i=active2dnum[ii])>=0;ii++) {
    if((!inconsistent[i]) && label[i]) {
      dist=(lin[i]-model->b)*(double)label[i];

      target=-(learn_parm->eps-(double)label[i]*c[i]);
      ex_c=learn_parm->svm_cost[i]-learn_parm->epsilon_a;
      if(dist <= 0) {
 (*misclassified)++;
      }
      if((a[i]>learn_parm->epsilon_a) && (dist > target)) {
 if((dist-target)>(*maxdiff))
   (*maxdiff)=dist-target;
      }
      else if((a[i]<ex_c) && (dist < target)) {
 if((target-dist)>(*maxdiff))
   (*maxdiff)=target-dist;
      }





      if((a[i]>(learn_parm->epsilon_a))
  && (a[i]<ex_c)) {
 last_suboptimal_at[i]=iteration;
      }
      else if((a[i]<=(learn_parm->epsilon_a))
       && (dist < (target+learn_parm->epsilon_shrink))) {
 last_suboptimal_at[i]=iteration;
      }
      else if((a[i]>=ex_c)
       && (dist > (target-learn_parm->epsilon_shrink))) {
 last_suboptimal_at[i]=iteration;
      }
    }
  }

  if((!retrain) && ((*maxdiff) > learn_parm->epsilon_crit)) {
    retrain=1;
  }
  return(retrain);
}

long check_optimality_sharedslack(DOC **docs, MODEL *model, long int *label,
        double *a, double *lin, double *c, double *slack,
        double *alphaslack,
        long int totdoc,
        LEARN_PARM *learn_parm, double *maxdiff,
        double epsilon_crit_org, long int *misclassified,
        long int *active2dnum,
        long int *last_suboptimal_at,
        long int iteration, KERNEL_PARM *kernel_parm)

{
  long i,ii,retrain;
  double dist,ex_c=0,target;

  if(kernel_parm->kernel_type == 0) {
    learn_parm->epsilon_shrink=-learn_parm->epsilon_crit+epsilon_crit_org;
  }
  else {
    learn_parm->epsilon_shrink=learn_parm->epsilon_shrink*0.7+(*maxdiff)*0.3;
  }

  retrain=0;
  (*maxdiff)=0;
  (*misclassified)=0;
  for(ii=0;(i=active2dnum[ii])>=0;ii++) {

    dist=(lin[i]-model->b)*(double)label[i]+slack[docs[i]->slackid];
    target=-(learn_parm->eps-(double)label[i]*c[i]);
    ex_c=learn_parm->svm_c-learn_parm->epsilon_a;
    if((a[i]>learn_parm->epsilon_a) && (dist > target)) {
      if((dist-target)>(*maxdiff)) {
 (*maxdiff)=dist-target;
 if(verbosity>=5) printf("sid %ld: dist=%.2f, target=%.2f, slack=%.2f, a=%f, alphaslack=%f\n",docs[i]->slackid,dist,target,slack[docs[i]->slackid],a[i],alphaslack[docs[i]->slackid]);
 if(verbosity>=5) printf(" (single %f)\n",(*maxdiff));
      }
    }
    if((alphaslack[docs[i]->slackid]<ex_c) && (slack[docs[i]->slackid]>0)) {
      if((slack[docs[i]->slackid])>(*maxdiff)) {
 (*maxdiff)=slack[docs[i]->slackid];
 if(verbosity>=5) printf("sid %ld: dist=%.2f, target=%.2f, slack=%.2f, a=%f, alphaslack=%f\n",docs[i]->slackid,dist,target,slack[docs[i]->slackid],a[i],alphaslack[docs[i]->slackid]);
 if(verbosity>=5) printf(" (joint %f)\n",(*maxdiff));
      }
    }





    if((a[i]>(learn_parm->epsilon_a))
       && (a[i]<ex_c)) {
      last_suboptimal_at[docs[i]->slackid]=iteration;
    }
    else if((a[i]<=(learn_parm->epsilon_a))
     && (dist < (target+learn_parm->epsilon_shrink))) {
      last_suboptimal_at[docs[i]->slackid]=iteration;
    }
    else if((a[i]>=ex_c)
     && (slack[docs[i]->slackid] < learn_parm->epsilon_shrink)) {
      last_suboptimal_at[docs[i]->slackid]=iteration;
    }
  }

  if((!retrain) && ((*maxdiff) > learn_parm->epsilon_crit)) {
    retrain=1;
  }
  return(retrain);
}

void compute_shared_slacks(DOC **docs, long int *label,
      double *a, double *lin,
      double *c, long int *active2dnum,
      LEARN_PARM *learn_parm,
      double *slack, double *alphaslack)

{
  long jj,i;
  double dist,target;

  for(jj=0;(i=active2dnum[jj])>=0;jj++) {
    slack[docs[i]->slackid]=0.0;
    alphaslack[docs[i]->slackid]=0.0;
  }
  for(jj=0;(i=active2dnum[jj])>=0;jj++) {
    dist=(lin[i])*(double)label[i];
    target=-(learn_parm->eps-(double)label[i]*c[i]);
    if((target-dist) > slack[docs[i]->slackid])
      slack[docs[i]->slackid]=target-dist;
    alphaslack[docs[i]->slackid]+=a[i];
  }
}


long identify_inconsistent(double *a, long int *label,
      long int *unlabeled, long int totdoc,
      LEARN_PARM *learn_parm,
      long int *inconsistentnum, long int *inconsistent)
{
  long i,retrain;






  retrain=0;
  for(i=0;i<totdoc;i++) {
    if((!inconsistent[i]) && (!unlabeled[i])
       && (a[i]>=(learn_parm->svm_cost[i]-learn_parm->epsilon_a))) {
 (*inconsistentnum)++;
 inconsistent[i]=1;
 retrain=2;
 if(verbosity>=3) {
   printf("inconsistent(%ld)..",i); fflush(stdout);
 }
    }
  }
  return(retrain);
}

long identify_misclassified(double *lin, long int *label,
       long int *unlabeled, long int totdoc,
       MODEL *model, long int *inconsistentnum,
       long int *inconsistent)
{
  long i,retrain;
  double dist;






  retrain=0;
  for(i=0;i<totdoc;i++) {
    dist=(lin[i]-model->b)*(double)label[i];
    if((!inconsistent[i]) && (!unlabeled[i]) && (dist <= 0)) {
 (*inconsistentnum)++;
 inconsistent[i]=1;
 retrain=2;
 if(verbosity>=3) {
   printf("inconsistent(%ld)..",i); fflush(stdout);
 }
    }
  }
  return(retrain);
}

long identify_one_misclassified(double *lin, long int *label,
    long int *unlabeled,
    long int totdoc, MODEL *model,
    long int *inconsistentnum,
    long int *inconsistent)
{
  long i,retrain,maxex=-1;
  double dist,maxdist=0;






  retrain=0;
  for(i=0;i<totdoc;i++) {
    if((!inconsistent[i]) && (!unlabeled[i])) {
      dist=(lin[i]-model->b)*(double)label[i];
      if(dist<maxdist) {
 maxdist=dist;
 maxex=i;
      }
    }
  }
  if(maxex>=0) {
    (*inconsistentnum)++;
    inconsistent[maxex]=1;
    retrain=2;
    if(verbosity>=3) {
      printf("inconsistent(%ld)..",i); fflush(stdout);
    }
  }
  return(retrain);
}

void update_linear_component(DOC **docs, long int *label,
        long int *active2dnum, double *a,
        double *a_old, long int *working2dnum,
        long int totdoc, long int totwords,
        KERNEL_PARM *kernel_parm,
        KERNEL_CACHE *kernel_cache,
        double *lin, float *aicache, double *weights)




{
  register long i,ii,j,jj;
  register double tec;
  SVECTOR *f;

  if(kernel_parm->kernel_type==0) {
    clear_vector_n(weights,totwords);
    for(ii=0;(i=working2dnum[ii])>=0;ii++) {
      if(a[i] != a_old[i]) {
 for(f=docs[i]->fvec;f;f=f->next)
   add_vector_ns(weights,f,
   f->factor*((a[i]-a_old[i])*(double)label[i]));
      }
    }
    for(jj=0;(j=active2dnum[jj])>=0;jj++) {
      for(f=docs[j]->fvec;f;f=f->next)
 lin[j]+=f->factor*sprod_ns(weights,f);
    }
  }
  else {
    for(jj=0;(i=working2dnum[jj])>=0;jj++) {
      if(a[i] != a_old[i]) {
 get_kernel_row(kernel_cache,docs,i,totdoc,active2dnum,aicache,
         kernel_parm);
 for(ii=0;(j=active2dnum[ii])>=0;ii++) {
   tec=aicache[j];
   lin[j]+=(((a[i]*tec)-(a_old[i]*tec))*(double)label[i]);
 }
      }
    }
  }
}


long incorporate_unlabeled_examples(MODEL *model, long int *label,
        long int *inconsistent,
        long int *unlabeled,
        double *a, double *lin,
        long int totdoc, double *selcrit,
        long int *select, long int *key,
        long int transductcycle,
        KERNEL_PARM *kernel_parm,
        LEARN_PARM *learn_parm)
{
  long i,j,k,j1,j2,j3,j4,unsupaddnum1=0,unsupaddnum2=0;
  long pos,neg,upos,uneg,orgpos,orgneg,nolabel,newpos,newneg,allunlab;
  double dist,model_length,posratio,negratio;
  long check_every=2;
  double loss;
  static double switchsens=0.0,switchsensorg=0.0;
  double umin,umax,sumalpha;
  long imin=0,imax=0;
  static long switchnum=0;

  switchsens/=1.2;



  orgpos=0;
  orgneg=0;
  newpos=0;
  newneg=0;
  nolabel=0;
  allunlab=0;
  for(i=0;i<totdoc;i++) {
    if(!unlabeled[i]) {
      if(label[i] > 0) {
 orgpos++;
      }
      else {
 orgneg++;
      }
    }
    else {
      allunlab++;
      if(unlabeled[i]) {
 if(label[i] > 0) {
   newpos++;
 }
 else if(label[i] < 0) {
   newneg++;
 }
      }
    }
    if(label[i]==0) {
      nolabel++;
    }
  }

  if(learn_parm->transduction_posratio >= 0) {
    posratio=learn_parm->transduction_posratio;
  }
  else {
    posratio=(double)orgpos/(double)(orgpos+orgneg);
  }
  negratio=1.0-posratio;

  learn_parm->svm_costratio=1.0;
  if(posratio>0) {
    learn_parm->svm_costratio_unlab=negratio/posratio;
  }
  else {
    learn_parm->svm_costratio_unlab=1.0;
  }

  pos=0;
  neg=0;
  upos=0;
  uneg=0;
  for(i=0;i<totdoc;i++) {
    dist=(lin[i]-model->b);
    if(dist>0) {
      pos++;
    }
    else {
      neg++;
    }
    if(unlabeled[i]) {
      if(dist>0) {
 upos++;
      }
      else {
 uneg++;
      }
    }
    if((!unlabeled[i]) && (a[i]>(learn_parm->svm_cost[i]-learn_parm->epsilon_a))) {

    }
  }
  if(verbosity>=2) {
    printf("POS=%ld, ORGPOS=%ld, ORGNEG=%ld\n",pos,orgpos,orgneg);
    printf("POS=%ld, NEWPOS=%ld, NEWNEG=%ld\n",pos,newpos,newneg);
    printf("pos ratio = %f (%f).\n",(double)(upos)/(double)(allunlab),posratio);
    fflush(stdout);
  }

  if(transductcycle == 0) {
    j1=0;
    j2=0;
    j4=0;
    for(i=0;i<totdoc;i++) {
      dist=(lin[i]-model->b);
      if((label[i]==0) && (unlabeled[i])) {
 selcrit[j4]=dist;
 key[j4]=i;
 j4++;
      }
    }
    unsupaddnum1=0;
    unsupaddnum2=0;
    select_top_n(selcrit,j4,select,(long)(allunlab*posratio+0.5));
    for(k=0;(k<(long)(allunlab*posratio+0.5));k++) {
      i=key[select[k]];
      label[i]=1;
      unsupaddnum1++;
      j1++;
    }
    for(i=0;i<totdoc;i++) {
      if((label[i]==0) && (unlabeled[i])) {
 label[i]=-1;
 j2++;
 unsupaddnum2++;
      }
    }
    for(i=0;i<totdoc;i++) {
      if(unlabeled[i]) {
 if(label[i] == 1) {
   learn_parm->svm_cost[i]=learn_parm->svm_c*
     learn_parm->svm_costratio_unlab*learn_parm->svm_unlabbound;
 }
 else if(label[i] == -1) {
   learn_parm->svm_cost[i]=learn_parm->svm_c*
     learn_parm->svm_unlabbound;
 }
      }
    }
    if(verbosity>=1) {



      printf("Classifying unlabeled data as %ld POS / %ld NEG.\n",
      unsupaddnum1,unsupaddnum2);
      fflush(stdout);
    }
    if(verbosity >= 1)
      printf("Retraining.");
    if(verbosity >= 2) printf("\n");
    return((long)3);
  }
  if((transductcycle % check_every) == 0) {
    if(verbosity >= 1)
      printf("Retraining.");
    if(verbosity >= 2) printf("\n");
    j1=0;
    j2=0;
    unsupaddnum1=0;
    unsupaddnum2=0;
    for(i=0;i<totdoc;i++) {
      if((unlabeled[i] == 2)) {
 unlabeled[i]=1;
 label[i]=1;
 j1++;
 unsupaddnum1++;
      }
      else if((unlabeled[i] == 3)) {
 unlabeled[i]=1;
 label[i]=-1;
 j2++;
 unsupaddnum2++;
      }
    }
    for(i=0;i<totdoc;i++) {
      if(unlabeled[i]) {
 if(label[i] == 1) {
   learn_parm->svm_cost[i]=learn_parm->svm_c*
     learn_parm->svm_costratio_unlab*learn_parm->svm_unlabbound;
 }
 else if(label[i] == -1) {
   learn_parm->svm_cost[i]=learn_parm->svm_c*
     learn_parm->svm_unlabbound;
 }
      }
    }

    if(verbosity>=2) {



      printf("%ld positive -> Added %ld POS / %ld NEG unlabeled examples.\n",
      upos,unsupaddnum1,unsupaddnum2);
      fflush(stdout);
    }

    if(learn_parm->svm_unlabbound == 1) {
      learn_parm->epsilon_crit=0.001;
    }
    else {
      learn_parm->epsilon_crit=0.01;
    }

    return((long)3);
  }
  else if(((transductcycle % check_every) < check_every)) {
    model_length=0;
    sumalpha=0;
    loss=0;
    for(i=0;i<totdoc;i++) {
      model_length+=a[i]*label[i]*lin[i];
      sumalpha+=a[i];
      dist=(lin[i]-model->b);
      if((label[i]*dist)<(1.0-learn_parm->epsilon_crit)) {
 loss+=(1.0-(label[i]*dist))*learn_parm->svm_cost[i];
      }
    }
    model_length=sqrt(model_length);
    if(verbosity>=2) {
      printf("Model-length = %f (%f), loss = %f, objective = %f\n",
      model_length,sumalpha,loss,loss+0.5*model_length*model_length);
      fflush(stdout);
    }
    j1=0;
    j2=0;
    j3=0;
    j4=0;
    unsupaddnum1=0;
    unsupaddnum2=0;
    umin=99999;
    umax=-99999;
    j4=1;
    while(j4) {
      umin=99999;
      umax=-99999;
      for(i=0;(i<totdoc);i++) {
 dist=(lin[i]-model->b);
 if((label[i]>0) && (unlabeled[i]) && (!inconsistent[i])
    && (dist<umin)) {
   umin=dist;
   imin=i;
 }
 if((label[i]<0) && (unlabeled[i]) && (!inconsistent[i])
    && (dist>umax)) {
   umax=dist;
   imax=i;
 }
      }
      if((umin < (umax+switchsens-1E-4))) {
 j1++;
 j2++;
 unsupaddnum1++;
 unlabeled[imin]=3;
 inconsistent[imin]=1;
 unsupaddnum2++;
 unlabeled[imax]=2;
 inconsistent[imax]=1;
      }
      else
 j4=0;
      j4=0;
    }
    for(j=0;(j<totdoc);j++) {
      if(unlabeled[j] && (!inconsistent[j])) {
 if(label[j]>0) {
   unlabeled[j]=2;
 }
 else if(label[j]<0) {
   unlabeled[j]=3;
 }

 j3++;
      }
    }
    switchnum+=unsupaddnum1+unsupaddnum2;
# 2916 "svm_learn.c"
    if((!unsupaddnum1) && (!unsupaddnum2)) {
      if((learn_parm->svm_unlabbound>=1) && ((newpos+newneg) == allunlab)) {
 for(j=0;(j<totdoc);j++) {
   inconsistent[j]=0;
   if(unlabeled[j]) unlabeled[j]=1;
 }
 write_prediction(learn_parm->predfile,model,lin,a,unlabeled,label,
    totdoc,learn_parm);
 if(verbosity>=1)
   printf("Number of switches: %ld\n",switchnum);
 return((long)0);
      }
      switchsens=switchsensorg;
      learn_parm->svm_unlabbound*=1.5;
      if(learn_parm->svm_unlabbound>1) {
 learn_parm->svm_unlabbound=1;
      }
      model->at_upper_bound=0;
      if(verbosity>=1)
 printf("Increasing influence of unlabeled examples to %f%% .",
        learn_parm->svm_unlabbound*100.0);
    }
    else if(verbosity>=1) {
      printf("%ld positive -> Switching labels of %ld POS / %ld NEG unlabeled examples.",
      upos,unsupaddnum1,unsupaddnum2);
      fflush(stdout);
    }

    if(verbosity >= 2) printf("\n");

    learn_parm->epsilon_crit=0.5;

    for(i=0;i<totdoc;i++) {
      if(unlabeled[i]) {
 if(label[i] == 1) {
   learn_parm->svm_cost[i]=learn_parm->svm_c*
     learn_parm->svm_costratio_unlab*learn_parm->svm_unlabbound;
 }
 else if(label[i] == -1) {
   learn_parm->svm_cost[i]=learn_parm->svm_c*
     learn_parm->svm_unlabbound;
 }
      }
    }

    return((long)2);
  }

  return((long)0);
}



long select_next_qp_subproblem_grad(long int *label,
        long int *unlabeled,
        double *a, double *lin,
        double *c, long int totdoc,
        long int qp_size,
        LEARN_PARM *learn_parm,
        long int *inconsistent,
        long int *active2dnum,
        long int *working2dnum,
        double *selcrit,
        long int *select,
        KERNEL_CACHE *kernel_cache,
        long int cache_only,
        long int *key, long int *chosen)




{
  long choosenum,i,j,k,activedoc,inum,valid;
  double s;

  for(inum=0;working2dnum[inum]>=0;inum++);
  choosenum=0;
  activedoc=0;
  for(i=0;(j=active2dnum[i])>=0;i++) {
    s=-label[j];
    if(kernel_cache && cache_only)
      valid=(kernel_cache->index[j]>=0);
    else
      valid=1;
    if(valid
       && (!((a[j]<=(0+learn_parm->epsilon_a)) && (s<0)))
       && (!((a[j]>=(learn_parm->svm_cost[j]-learn_parm->epsilon_a))
      && (s>0)))
       && (!chosen[j])
       && (label[j])
       && (!inconsistent[j]))
      {
      selcrit[activedoc]=(double)label[j]*(learn_parm->eps-(double)label[j]*c[j]+(double)label[j]*lin[j]);

      key[activedoc]=j;
      activedoc++;
    }
  }
  select_top_n(selcrit,activedoc,select,(long)(qp_size/2));
  for(k=0;(choosenum<(qp_size/2)) && (k<(qp_size/2)) && (k<activedoc);k++) {

      i=key[select[k]];
      chosen[i]=1;
      working2dnum[inum+choosenum]=i;
      choosenum+=1;
      if(kernel_cache)
 kernel_cache_touch(kernel_cache,i);


  }

  activedoc=0;
  for(i=0;(j=active2dnum[i])>=0;i++) {
    s=label[j];
    if(kernel_cache && cache_only)
      valid=(kernel_cache->index[j]>=0);
    else
      valid=1;
    if(valid
       && (!((a[j]<=(0+learn_parm->epsilon_a)) && (s<0)))
       && (!((a[j]>=(learn_parm->svm_cost[j]-learn_parm->epsilon_a))
      && (s>0)))
       && (!chosen[j])
       && (label[j])
       && (!inconsistent[j]))
      {
      selcrit[activedoc]=-(double)label[j]*(learn_parm->eps-(double)label[j]*c[j]+(double)label[j]*lin[j]);

      key[activedoc]=j;
      activedoc++;
    }
  }
  select_top_n(selcrit,activedoc,select,(long)(qp_size/2));
  for(k=0;(choosenum<qp_size) && (k<(qp_size/2)) && (k<activedoc);k++) {

      i=key[select[k]];
      chosen[i]=1;
      working2dnum[inum+choosenum]=i;
      choosenum+=1;
      if(kernel_cache)
 kernel_cache_touch(kernel_cache,i);


  }
  working2dnum[inum+choosenum]=-1;
  return(choosenum);
}

long select_next_qp_subproblem_rand(long int *label,
        long int *unlabeled,
        double *a, double *lin,
        double *c, long int totdoc,
        long int qp_size,
        LEARN_PARM *learn_parm,
        long int *inconsistent,
        long int *active2dnum,
        long int *working2dnum,
        double *selcrit,
        long int *select,
        KERNEL_CACHE *kernel_cache,
        long int *key,
        long int *chosen,
        long int iteration)




{
  long choosenum,i,j,k,activedoc,inum;
  double s;

  for(inum=0;working2dnum[inum]>=0;inum++);
  choosenum=0;
  activedoc=0;
  for(i=0;(j=active2dnum[i])>=0;i++) {
    s=-label[j];
    if((!((a[j]<=(0+learn_parm->epsilon_a)) && (s<0)))
       && (!((a[j]>=(learn_parm->svm_cost[j]-learn_parm->epsilon_a))
      && (s>0)))
       && (!inconsistent[j])
       && (label[j])
       && (!chosen[j])) {
      selcrit[activedoc]=(j+iteration) % totdoc;
      key[activedoc]=j;
      activedoc++;
    }
  }
  select_top_n(selcrit,activedoc,select,(long)(qp_size/2));
  for(k=0;(choosenum<(qp_size/2)) && (k<(qp_size/2)) && (k<activedoc);k++) {
    i=key[select[k]];
    chosen[i]=1;
    working2dnum[inum+choosenum]=i;
    choosenum+=1;
    kernel_cache_touch(kernel_cache,i);

  }

  activedoc=0;
  for(i=0;(j=active2dnum[i])>=0;i++) {
    s=label[j];
    if((!((a[j]<=(0+learn_parm->epsilon_a)) && (s<0)))
       && (!((a[j]>=(learn_parm->svm_cost[j]-learn_parm->epsilon_a))
      && (s>0)))
       && (!inconsistent[j])
       && (label[j])
       && (!chosen[j])) {
      selcrit[activedoc]=(j+iteration) % totdoc;
      key[activedoc]=j;
      activedoc++;
    }
  }
  select_top_n(selcrit,activedoc,select,(long)(qp_size/2));
  for(k=0;(choosenum<qp_size) && (k<(qp_size/2)) && (k<activedoc);k++) {
    i=key[select[k]];
    chosen[i]=1;
    working2dnum[inum+choosenum]=i;
    choosenum+=1;
    kernel_cache_touch(kernel_cache,i);

  }
  working2dnum[inum+choosenum]=-1;
  return(choosenum);
}

long select_next_qp_slackset(DOC **docs, long int *label,
        double *a, double *lin,
        double *slack, double *alphaslack,
        double *c,
        LEARN_PARM *learn_parm,
        long int *active2dnum, double *maxviol)

{
  long i,ii,maxdiffid;
  double dist,target,maxdiff,ex_c;

  maxdiff=0;
  maxdiffid=0;
  for(ii=0;(i=active2dnum[ii])>=0;ii++) {
    ex_c=learn_parm->svm_c-learn_parm->epsilon_a;
    if(alphaslack[docs[i]->slackid] >= ex_c) {
      dist=(lin[i])*(double)label[i]+slack[docs[i]->slackid];
      target=-(learn_parm->eps-(double)label[i]*c[i]);
      if((a[i]>learn_parm->epsilon_a) && (dist > target)) {
 if((dist-target)>maxdiff) {
   maxdiff=dist-target;
   maxdiffid=docs[i]->slackid;
 }
      }
    }
  }
  (*maxviol)=maxdiff;
  return(maxdiffid);
}


void select_top_n(double *selcrit, long int range, long int *select,
    long int n)
{
  register long i,j;

  for(i=0;(i<n) && (i<range);i++) {
    for(j=i;j>=0;j--) {
      if((j>0) && (selcrit[select[j-1]]<selcrit[i])){
 select[j]=select[j-1];
      }
      else {
 select[j]=i;
 j=-1;
      }
    }
  }
  if(n>0) {
    for(i=n;i<range;i++) {
      if(selcrit[i]>selcrit[select[n-1]]) {
 for(j=n-1;j>=0;j--) {
   if((j>0) && (selcrit[select[j-1]]<selcrit[i])) {
     select[j]=select[j-1];
   }
   else {
     select[j]=i;
     j=-1;
   }
 }
      }
    }
  }
}




void init_shrink_state(SHRINK_STATE *shrink_state, long int totdoc,
         long int maxhistory)
{
  long i;

  shrink_state->deactnum=0;
  shrink_state->active = (long *)my_malloc(sizeof(long)*totdoc);
  shrink_state->inactive_since = (long *)my_malloc(sizeof(long)*totdoc);
  shrink_state->a_history = (double **)my_malloc(sizeof(double *)*maxhistory);
  shrink_state->maxhistory=maxhistory;
  shrink_state->last_lin = (double *)my_malloc(sizeof(double)*totdoc);
  shrink_state->last_a = (double *)my_malloc(sizeof(double)*totdoc);

  for(i=0;i<totdoc;i++) {
    shrink_state->active[i]=1;
    shrink_state->inactive_since[i]=0;
    shrink_state->last_a[i]=0;
    shrink_state->last_lin[i]=0;
  }
}

void shrink_state_cleanup(SHRINK_STATE *shrink_state)
{
  free(shrink_state->active);
  free(shrink_state->inactive_since);
  if(shrink_state->deactnum > 0)
    free(shrink_state->a_history[shrink_state->deactnum-1]);
  free(shrink_state->a_history);
  free(shrink_state->last_a);
  free(shrink_state->last_lin);
}

long shrink_problem(DOC **docs,
      LEARN_PARM *learn_parm,
      SHRINK_STATE *shrink_state,
      KERNEL_PARM *kernel_parm,
      long int *active2dnum,
      long int *last_suboptimal_at,
      long int iteration,
      long int totdoc,
      long int minshrink,
      double *a,
      long int *inconsistent)


{
  long i,ii,change,activenum,lastiter;
  double *a_old;

  activenum=0;
  change=0;
  for(ii=0;active2dnum[ii]>=0;ii++) {
    i=active2dnum[ii];
    activenum++;
    if(learn_parm->sharedslack)
      lastiter=last_suboptimal_at[docs[i]->slackid];
    else
      lastiter=last_suboptimal_at[i];
    if(((iteration-lastiter) > learn_parm->svm_iter_to_shrink)
       || (inconsistent[i])) {
      change++;
    }
  }
  if((change>=minshrink)
     && (shrink_state->deactnum<shrink_state->maxhistory)) {


    if(verbosity>=2) {
      printf(" Shrinking..."); fflush(stdout);
    }
    if(kernel_parm->kernel_type != 0) {
      a_old=(double *)my_malloc(sizeof(double)*totdoc);
      shrink_state->a_history[shrink_state->deactnum]=a_old;
      for(i=0;i<totdoc;i++) {
 a_old[i]=a[i];
      }
    }
    for(ii=0;active2dnum[ii]>=0;ii++) {
      i=active2dnum[ii];
      if(learn_parm->sharedslack)
 lastiter=last_suboptimal_at[docs[i]->slackid];
      else
 lastiter=last_suboptimal_at[i];
      if(((iteration-lastiter) > learn_parm->svm_iter_to_shrink)
  || (inconsistent[i])) {
 shrink_state->active[i]=0;
 shrink_state->inactive_since[i]=shrink_state->deactnum;
      }
    }
    activenum=compute_index(shrink_state->active,totdoc,active2dnum);
    shrink_state->deactnum++;
    if(kernel_parm->kernel_type == 0) {
      shrink_state->deactnum=0;
    }
    if(verbosity>=2) {
      printf("done.\n"); fflush(stdout);
      printf(" Number of inactive variables = %ld\n",totdoc-activenum);
    }
  }
  return(activenum);
}


void reactivate_inactive_examples(long int *label,
      long int *unlabeled,
      double *a,
      SHRINK_STATE *shrink_state,
      double *lin,
      double *c,
      long int totdoc,
      long int totwords,
      long int iteration,
      LEARN_PARM *learn_parm,
      long int *inconsistent,
      DOC **docs,
      KERNEL_PARM *kernel_parm,
      KERNEL_CACHE *kernel_cache,
      MODEL *model,
      float *aicache,
      double *weights,
      double *maxdiff)



{
  register long i,j,ii,jj,t,*changed2dnum,*inactive2dnum;
  long *changed,*inactive;
  register double kernel_val,*a_old,dist;
  double ex_c,target;
  SVECTOR *f;

  if(kernel_parm->kernel_type == 0) {
    a_old=shrink_state->last_a;
    clear_vector_n(weights,totwords);
    for(i=0;i<totdoc;i++) {
      if(a[i] != a_old[i]) {
 for(f=docs[i]->fvec;f;f=f->next)
   add_vector_ns(weights,f,
   f->factor*((a[i]-a_old[i])*(double)label[i]));
 a_old[i]=a[i];
      }
    }
    for(i=0;i<totdoc;i++) {
      if(!shrink_state->active[i]) {
 for(f=docs[i]->fvec;f;f=f->next)
   lin[i]=shrink_state->last_lin[i]+f->factor*sprod_ns(weights,f);
      }
      shrink_state->last_lin[i]=lin[i];
    }
  }
  else {
    changed=(long *)my_malloc(sizeof(long)*totdoc);
    changed2dnum=(long *)my_malloc(sizeof(long)*(totdoc+11));
    inactive=(long *)my_malloc(sizeof(long)*totdoc);
    inactive2dnum=(long *)my_malloc(sizeof(long)*(totdoc+11));
    for(t=shrink_state->deactnum-1;(t>=0) && shrink_state->a_history[t];t--) {
      if(verbosity>=2) {
 printf("%ld..",t); fflush(stdout);
      }
      a_old=shrink_state->a_history[t];
      for(i=0;i<totdoc;i++) {
 inactive[i]=((!shrink_state->active[i])
       && (shrink_state->inactive_since[i] == t));
 changed[i]= (a[i] != a_old[i]);
      }
      compute_index(inactive,totdoc,inactive2dnum);
      compute_index(changed,totdoc,changed2dnum);

      for(ii=0;(i=changed2dnum[ii])>=0;ii++) {
 get_kernel_row(kernel_cache,docs,i,totdoc,inactive2dnum,aicache,
         kernel_parm);
 for(jj=0;(j=inactive2dnum[jj])>=0;jj++) {
   kernel_val=aicache[j];
   lin[j]+=(((a[i]*kernel_val)-(a_old[i]*kernel_val))*(double)label[i]);
 }
      }
    }
    free(changed);
    free(changed2dnum);
    free(inactive);
    free(inactive2dnum);
  }
  (*maxdiff)=0;
  for(i=0;i<totdoc;i++) {
    shrink_state->inactive_since[i]=shrink_state->deactnum-1;
    if(!inconsistent[i]) {
      dist=(lin[i]-model->b)*(double)label[i];
      target=-(learn_parm->eps-(double)label[i]*c[i]);
      ex_c=learn_parm->svm_cost[i]-learn_parm->epsilon_a;
      if((a[i]>learn_parm->epsilon_a) && (dist > target)) {
 if((dist-target)>(*maxdiff))
   (*maxdiff)=dist-target;
      }
      else if((a[i]<ex_c) && (dist < target)) {
 if((target-dist)>(*maxdiff))
   (*maxdiff)=target-dist;
      }
      if((a[i]>(0+learn_parm->epsilon_a))
  && (a[i]<ex_c)) {
 shrink_state->active[i]=1;
      }
      else if((a[i]<=(0+learn_parm->epsilon_a)) && (dist < (target+learn_parm->epsilon_shrink))) {
 shrink_state->active[i]=1;
      }
      else if((a[i]>=ex_c)
       && (dist > (target-learn_parm->epsilon_shrink))) {
 shrink_state->active[i]=1;
      }
      else if(learn_parm->sharedslack) {
 shrink_state->active[i]=1;
      }
    }
  }
  if(kernel_parm->kernel_type != 0) {
    for(i=0;i<totdoc;i++) {
      (shrink_state->a_history[shrink_state->deactnum-1])[i]=a[i];
    }
    for(t=shrink_state->deactnum-2;(t>=0) && shrink_state->a_history[t];t--) {
      free(shrink_state->a_history[t]);
      shrink_state->a_history[t]=0;
    }
  }
}



void get_kernel_row(KERNEL_CACHE *kernel_cache, DOC **docs,
      long int docnum, long int totdoc,
      long int *active2dnum, float *buffer,
      KERNEL_PARM *kernel_parm)





{
  register long i,j,start;
  DOC *ex;

  ex=docs[docnum];

  if(kernel_cache->index[docnum] != -1) {
    kernel_cache->lru[kernel_cache->index[docnum]]=kernel_cache->time;
    start=kernel_cache->activenum*kernel_cache->index[docnum];
    for(i=0;(j=active2dnum[i])>=0;i++) {
      if(kernel_cache->totdoc2active[j] >= 0) {
 buffer[j]=kernel_cache->buffer[start+kernel_cache->totdoc2active[j]];
      }
      else {
 buffer[j]=(float)kernel(kernel_parm,ex,docs[j]);
      }
    }
  }
  else {
    for(i=0;(j=active2dnum[i])>=0;i++) {
      buffer[j]=(float)kernel(kernel_parm,ex,docs[j]);
    }
  }
}


void cache_kernel_row(KERNEL_CACHE *kernel_cache, DOC **docs,
        long int m, KERNEL_PARM *kernel_parm)

{
  register DOC *ex;
  register long j,k,l;
  register float *cache;

  if(!kernel_cache_check(kernel_cache,m)) {
    cache = kernel_cache_clean_and_malloc(kernel_cache,m);
    if(cache) {
      l=kernel_cache->totdoc2active[m];
      ex=docs[m];
      for(j=0;j<kernel_cache->activenum;j++) {
 k=kernel_cache->active2totdoc[j];
 if((kernel_cache->index[k] != -1) && (l != -1) && (k != m)) {
   cache[j]=kernel_cache->buffer[kernel_cache->activenum
           *kernel_cache->index[k]+l];
 }
 else {
   cache[j]=kernel(kernel_parm,ex,docs[k]);
 }
      }
    }
    else {
      perror("Error: Kernel cache full! => increase cache size");
    }
  }
}


void cache_multiple_kernel_rows(KERNEL_CACHE *kernel_cache, DOC **docs,
    long int *key, long int varnum,
    KERNEL_PARM *kernel_parm)

{
  register long i;

  for(i=0;i<varnum;i++) {
    cache_kernel_row(kernel_cache,docs,key[i],kernel_parm);
  }
}


void kernel_cache_shrink(KERNEL_CACHE *kernel_cache, long int totdoc,
    long int numshrink, long int *after)


{
  register long i,j,jj,from=0,to=0,scount;
  long *keep;

  if(verbosity>=2) {
    printf(" Reorganizing cache..."); fflush(stdout);
  }

  keep=(long *)my_malloc(sizeof(long)*totdoc);
  for(j=0;j<totdoc;j++) {
    keep[j]=1;
  }
  scount=0;
  for(jj=0;(jj<kernel_cache->activenum) && (scount<numshrink);jj++) {
    j=kernel_cache->active2totdoc[jj];
    if(!after[j]) {
      scount++;
      keep[j]=0;
    }
  }

  for(i=0;i<kernel_cache->max_elems;i++) {
    for(jj=0;jj<kernel_cache->activenum;jj++) {
      j=kernel_cache->active2totdoc[jj];
      if(!keep[j]) {
 from++;
      }
      else {
 kernel_cache->buffer[to]=kernel_cache->buffer[from];
 to++;
 from++;
      }
    }
  }

  kernel_cache->activenum=0;
  for(j=0;j<totdoc;j++) {
    if((keep[j]) && (kernel_cache->totdoc2active[j] != -1)) {
      kernel_cache->active2totdoc[kernel_cache->activenum]=j;
      kernel_cache->totdoc2active[j]=kernel_cache->activenum;
      kernel_cache->activenum++;
    }
    else {
      kernel_cache->totdoc2active[j]=-1;
    }
  }

  kernel_cache->max_elems=(long)(kernel_cache->buffsize/kernel_cache->activenum);
  if(kernel_cache->max_elems>totdoc) {
    kernel_cache->max_elems=totdoc;
  }

  free(keep);

  if(verbosity>=2) {
    printf("done.\n"); fflush(stdout);
    printf(" Cache-size in rows = %ld\n",kernel_cache->max_elems);
  }
}

KERNEL_CACHE *kernel_cache_init(long int totdoc, long int buffsize)
{
  long i;
  KERNEL_CACHE *kernel_cache;

  kernel_cache=(KERNEL_CACHE *)my_malloc(sizeof(KERNEL_CACHE));
  kernel_cache->index = (long *)my_malloc(sizeof(long)*totdoc);
  kernel_cache->occu = (long *)my_malloc(sizeof(long)*totdoc);
  kernel_cache->lru = (long *)my_malloc(sizeof(long)*totdoc);
  kernel_cache->invindex = (long *)my_malloc(sizeof(long)*totdoc);
  kernel_cache->active2totdoc = (long *)my_malloc(sizeof(long)*totdoc);
  kernel_cache->totdoc2active = (long *)my_malloc(sizeof(long)*totdoc);
  kernel_cache->buffer = (float *)my_malloc((size_t)(buffsize)*1024*1024);

  kernel_cache->buffsize=(long)(buffsize/sizeof(float)*1024*1024);

  kernel_cache->max_elems=(long)(kernel_cache->buffsize/totdoc);
  if(kernel_cache->max_elems>totdoc) {
    kernel_cache->max_elems=totdoc;
  }

  if(verbosity>=2) {
    printf(" Cache-size in rows = %ld\n",kernel_cache->max_elems);
    printf(" Kernel evals so far: %ld\n",kernel_cache_statistic);
  }

  kernel_cache->elems=0;
  for(i=0;i<totdoc;i++) {
    kernel_cache->index[i]=-1;
    kernel_cache->lru[i]=0;
  }
  for(i=0;i<totdoc;i++) {
    kernel_cache->occu[i]=0;
    kernel_cache->invindex[i]=-1;
  }

  kernel_cache->activenum=totdoc;;
  for(i=0;i<totdoc;i++) {
      kernel_cache->active2totdoc[i]=i;
      kernel_cache->totdoc2active[i]=i;
  }

  kernel_cache->time=0;

  return(kernel_cache);
}

void kernel_cache_reset_lru(KERNEL_CACHE *kernel_cache)
{
  long maxlru=0,k;

  for(k=0;k<kernel_cache->max_elems;k++) {
    if(maxlru < kernel_cache->lru[k])
      maxlru=kernel_cache->lru[k];
  }
  for(k=0;k<kernel_cache->max_elems;k++) {
      kernel_cache->lru[k]-=maxlru;
  }
}

void kernel_cache_cleanup(KERNEL_CACHE *kernel_cache)
{
  free(kernel_cache->index);
  free(kernel_cache->occu);
  free(kernel_cache->lru);
  free(kernel_cache->invindex);
  free(kernel_cache->active2totdoc);
  free(kernel_cache->totdoc2active);
  free(kernel_cache->buffer);
  free(kernel_cache);
}

long kernel_cache_malloc(KERNEL_CACHE *kernel_cache)
{
  long i;

  if(kernel_cache_space_available(kernel_cache)) {
    for(i=0;i<kernel_cache->max_elems;i++) {
      if(!kernel_cache->occu[i]) {
 kernel_cache->occu[i]=1;
 kernel_cache->elems++;
 return(i);
      }
    }
  }
  return(-1);
}

void kernel_cache_free(KERNEL_CACHE *kernel_cache, long int i)
{
  kernel_cache->occu[i]=0;
  kernel_cache->elems--;
}

long kernel_cache_free_lru(KERNEL_CACHE *kernel_cache)

{
  register long k,least_elem=-1,least_time;

  least_time=kernel_cache->time+1;
  for(k=0;k<kernel_cache->max_elems;k++) {
    if(kernel_cache->invindex[k] != -1) {
      if(kernel_cache->lru[k]<least_time) {
 least_time=kernel_cache->lru[k];
 least_elem=k;
      }
    }
  }
  if(least_elem != -1) {
    kernel_cache_free(kernel_cache,least_elem);
    kernel_cache->index[kernel_cache->invindex[least_elem]]=-1;
    kernel_cache->invindex[least_elem]=-1;
    return(1);
  }
  return(0);
}


float *kernel_cache_clean_and_malloc(KERNEL_CACHE *kernel_cache,
          long int docnum)


{
  long result;
  if((result = kernel_cache_malloc(kernel_cache)) == -1) {
    if(kernel_cache_free_lru(kernel_cache)) {
      result = kernel_cache_malloc(kernel_cache);
    }
  }
  kernel_cache->index[docnum]=result;
  if(result == -1) {
    return(0);
  }
  kernel_cache->invindex[result]=docnum;
  kernel_cache->lru[kernel_cache->index[docnum]]=kernel_cache->time;
  return((float *)((long)kernel_cache->buffer
      +(kernel_cache->activenum*sizeof(float)*
        kernel_cache->index[docnum])));
}

long kernel_cache_touch(KERNEL_CACHE *kernel_cache, long int docnum)

{
  if(kernel_cache && kernel_cache->index[docnum] != -1) {
    kernel_cache->lru[kernel_cache->index[docnum]]=kernel_cache->time;
    return(1);
  }
  return(0);
}

long kernel_cache_check(KERNEL_CACHE *kernel_cache, long int docnum)

{
  return(kernel_cache->index[docnum] != -1);
}

long kernel_cache_space_available(KERNEL_CACHE *kernel_cache)

{
  return(kernel_cache->elems < kernel_cache->max_elems);
}



void compute_xa_estimates(MODEL *model, long int *label,
     long int *unlabeled, long int totdoc,
     DOC **docs, double *lin, double *a,
     KERNEL_PARM *kernel_parm,
     LEARN_PARM *learn_parm, double *error,
     double *recall, double *precision)



{
  long i,looerror,looposerror,loonegerror;
  long totex,totposex;
  double xi,r_delta,r_delta_sq,sim=0;
  long *sv2dnum=((void *)0),*sv=((void *)0),svnum;

  r_delta=estimate_r_delta(docs,totdoc,kernel_parm);
  r_delta_sq=r_delta*r_delta;

  looerror=0;
  looposerror=0;
  loonegerror=0;
  totex=0;
  totposex=0;
  svnum=0;

  if(learn_parm->xa_depth > 0) {
    sv = (long *)my_malloc(sizeof(long)*(totdoc+11));
    for(i=0;i<totdoc;i++)
      sv[i]=0;
    for(i=1;i<model->sv_num;i++)
      if(a[model->supvec[i]->docnum]
  < (learn_parm->svm_cost[model->supvec[i]->docnum]
     -learn_parm->epsilon_a)) {
 sv[model->supvec[i]->docnum]=1;
 svnum++;
      }
    sv2dnum = (long *)my_malloc(sizeof(long)*(totdoc+11));
    clear_index(sv2dnum);
    compute_index(sv,totdoc,sv2dnum);
  }

  for(i=0;i<totdoc;i++) {
    if(unlabeled[i]) {

    }
    else {
      xi=1.0-((lin[i]-model->b)*(double)label[i]);
      if(xi<0) xi=0;
      if(label[i]>0) {
 totposex++;
      }
      if((learn_parm->rho*a[i]*r_delta_sq+xi) >= 1.0) {
 if(learn_parm->xa_depth > 0) {
   sim=distribute_alpha_t_greedily(sv2dnum,svnum,docs,a,i,label,
       kernel_parm,learn_parm,
              (double)((1.0-xi-a[i]*r_delta_sq)/(2.0*a[i])));
 }
 if((learn_parm->xa_depth == 0) ||
    ((a[i]*kernel(kernel_parm,docs[i],docs[i])+a[i]*2.0*sim+xi) >= 1.0)) {
   looerror++;
   if(label[i]>0) {
     looposerror++;
   }
   else {
     loonegerror++;
   }
 }
      }
      totex++;
    }
  }

  (*error)=((double)looerror/(double)totex)*100.0;
  (*recall)=(1.0-(double)looposerror/(double)totposex)*100.0;
  (*precision)=(((double)totposex-(double)looposerror)
    /((double)totposex-(double)looposerror+(double)loonegerror))*100.0;

  free(sv);
  free(sv2dnum);
}


double distribute_alpha_t_greedily(long int *sv2dnum, long int svnum,
       DOC **docs, double *a,
       long int docnum,
       long int *label,
       KERNEL_PARM *kernel_parm,
       LEARN_PARM *learn_parm, double thresh)


{
  long best_depth=0;
  long i,j,k,d,skip,allskip;
  double best,best_val[101],val,init_val_sq,init_val_lin;
  long best_ex[101];
  float *cache,*trow;

  cache=(float *)my_malloc(sizeof(float)*learn_parm->xa_depth*svnum);
  trow = (float *)my_malloc(sizeof(float)*svnum);

  for(k=0;k<svnum;k++) {
    trow[k]=kernel(kernel_parm,docs[docnum],docs[sv2dnum[k]]);
  }

  init_val_sq=0;
  init_val_lin=0;
  best=0;

  for(d=0;d<learn_parm->xa_depth;d++) {
    allskip=1;
    if(d>=1) {
      init_val_sq+=cache[best_ex[d-1]+svnum*(d-1)];
      for(k=0;k<d-1;k++) {
        init_val_sq+=2.0*cache[best_ex[k]+svnum*(d-1)];
      }
      init_val_lin+=trow[best_ex[d-1]];
    }
    for(i=0;i<svnum;i++) {
      skip=0;
      if(sv2dnum[i] == docnum) skip=1;
      for(j=0;j<d;j++) {
 if(i == best_ex[j]) skip=1;
      }

      if(!skip) {
 val=init_val_sq;
 if(kernel_parm->kernel_type == 0)
   val+=docs[sv2dnum[i]]->fvec->twonorm_sq;
 else
   val+=kernel(kernel_parm,docs[sv2dnum[i]],docs[sv2dnum[i]]);
 for(j=0;j<d;j++) {
   val+=2.0*cache[i+j*svnum];
 }
 val*=(1.0/(2.0*(d+1.0)*(d+1.0)));
 val-=((init_val_lin+trow[i])/(d+1.0));

 if(allskip || (val < best_val[d])) {
   best_val[d]=val;
   best_ex[d]=i;
 }
 allskip=0;
 if(val < thresh) {
   i=svnum;

 }
      }
    }
    if(!allskip) {
      for(k=0;k<svnum;k++) {
   cache[d*svnum+k]=kernel(kernel_parm,
      docs[sv2dnum[best_ex[d]]],
      docs[sv2dnum[k]]);
      }
    }
    if((!allskip) && ((best_val[d] < best) || (d == 0))) {
      best=best_val[d];
      best_depth=d;
    }
    if(allskip || (best < thresh)) {
      d=learn_parm->xa_depth;
    }
  }

  free(cache);
  free(trow);


  return(best);
}


void estimate_transduction_quality(MODEL *model, long int *label,
       long int *unlabeled,
       long int totdoc, DOC **docs, double *lin)





{
  long i,j,l=0,ulab=0,lab=0,labpos=0,labneg=0,ulabpos=0,ulabneg=0,totulab=0;
  double totlab=0,totlabpos=0,totlabneg=0,labsum=0,ulabsum=0;
  double r_delta,r_delta_sq,xi,xisum=0,asum=0;

  r_delta=estimate_r_delta(docs,totdoc,&(model->kernel_parm));
  r_delta_sq=r_delta*r_delta;

  for(j=0;j<totdoc;j++) {
    if(unlabeled[j]) {
      totulab++;
    }
    else {
      totlab++;
      if(label[j] > 0)
 totlabpos++;
      else
 totlabneg++;
    }
  }
  for(j=1;j<model->sv_num;j++) {
    i=model->supvec[j]->docnum;
    xi=1.0-((lin[i]-model->b)*(double)label[i]);
    if(xi<0) xi=0;

    xisum+=xi;
    asum+=fabs(model->alpha[j]);
    if(unlabeled[i]) {
      ulabsum+=(fabs(model->alpha[j])*r_delta_sq+xi);
    }
    else {
      labsum+=(fabs(model->alpha[j])*r_delta_sq+xi);
    }
    if((fabs(model->alpha[j])*r_delta_sq+xi) >= 1) {
      l++;
      if(unlabeled[model->supvec[j]->docnum]) {
 ulab++;
 if(model->alpha[j] > 0)
   ulabpos++;
 else
   ulabneg++;
      }
      else {
 lab++;
 if(model->alpha[j] > 0)
   labpos++;
 else
   labneg++;
      }
    }
  }
  printf("xacrit>=1: labeledpos=%.5f labeledneg=%.5f default=%.5f\n",(double)labpos/(double)totlab*100.0,(double)labneg/(double)totlab*100.0,(double)totlabpos/(double)(totlab)*100.0);
  printf("xacrit>=1: unlabelpos=%.5f unlabelneg=%.5f\n",(double)ulabpos/(double)totulab*100.0,(double)ulabneg/(double)totulab*100.0);
  printf("xacrit>=1: labeled=%.5f unlabled=%.5f all=%.5f\n",(double)lab/(double)totlab*100.0,(double)ulab/(double)totulab*100.0,(double)l/(double)(totdoc)*100.0);
  printf("xacritsum: labeled=%.5f unlabled=%.5f all=%.5f\n",(double)labsum/(double)totlab*100.0,(double)ulabsum/(double)totulab*100.0,(double)(labsum+ulabsum)/(double)(totdoc)*100.0);
  printf("r_delta_sq=%.5f xisum=%.5f asum=%.5f\n",r_delta_sq,xisum,asum);
}

double estimate_margin_vcdim(MODEL *model, double w, double R,
        KERNEL_PARM *kernel_parm)


{
  double h;



  if(w<0) {
    w=model_length_s(model,kernel_parm);
  }
  if(R<0) {
    R=estimate_sphere(model,kernel_parm);
  }
  h = w*w * R*R +1;
  return(h);
}

double estimate_sphere(MODEL *model, KERNEL_PARM *kernel_parm)


{
  register long j;
  double xlen,maxxlen=0;
  DOC *nulldoc;
  WORD nullword;

  nullword.wnum=0;
  nulldoc=create_example(-2,0,0,0.0,create_svector(&nullword,"",1.0));

  for(j=1;j<model->sv_num;j++) {
    xlen=sqrt(kernel(kernel_parm,model->supvec[j],model->supvec[j])
       -2*kernel(kernel_parm,model->supvec[j],nulldoc)
       +kernel(kernel_parm,nulldoc,nulldoc));
    if(xlen>maxxlen) {
      maxxlen=xlen;
    }
  }

  free_example(nulldoc,1);
  return(maxxlen);
}

double estimate_r_delta(DOC **docs, long int totdoc, KERNEL_PARM *kernel_parm)
{
  long i;
  double maxxlen,xlen;
  DOC *nulldoc;
  WORD nullword;

  nullword.wnum=0;
  nulldoc=create_example(-2,0,0,0.0,create_svector(&nullword,"",1.0));

  maxxlen=0;
  for(i=0;i<totdoc;i++) {
    xlen=sqrt(kernel(kernel_parm,docs[i],docs[i])
       -2*kernel(kernel_parm,docs[i],nulldoc)
       +kernel(kernel_parm,nulldoc,nulldoc));
    if(xlen>maxxlen) {
      maxxlen=xlen;
    }
  }

  free_example(nulldoc,1);
  return(maxxlen);
}

double estimate_r_delta_average(DOC **docs, long int totdoc,
    KERNEL_PARM *kernel_parm)
{
  long i;
  double avgxlen;
  DOC *nulldoc;
  WORD nullword;

  nullword.wnum=0;
  nulldoc=create_example(-2,0,0,0.0,create_svector(&nullword,"",1.0));

  avgxlen=0;
  for(i=0;i<totdoc;i++) {
    avgxlen+=sqrt(kernel(kernel_parm,docs[i],docs[i])
    -2*kernel(kernel_parm,docs[i],nulldoc)
    +kernel(kernel_parm,nulldoc,nulldoc));
  }

  free_example(nulldoc,1);
  return(avgxlen/totdoc);
}

double length_of_longest_document_vector(DOC **docs, long int totdoc,
      KERNEL_PARM *kernel_parm)
{
  long i;
  double maxxlen,xlen;

  maxxlen=0;
  for(i=0;i<totdoc;i++) {
    xlen=sqrt(kernel(kernel_parm,docs[i],docs[i]));
    if(xlen>maxxlen) {
      maxxlen=xlen;
    }
  }

  return(maxxlen);
}



void write_prediction(char *predfile, MODEL *model, double *lin,
        double *a, long int *unlabeled,
        long int *label, long int totdoc,
        LEARN_PARM *learn_parm)
{
  FILE *predfl;
  long i;
  double dist,a_max;

  if(verbosity>=1) {
    printf("Writing prediction file..."); fflush(stdout);
  }
  if ((predfl = fopen (predfile, "w")) == ((void *)0))
  { perror (predfile); exit (1); }
  a_max=learn_parm->epsilon_a;
  for(i=0;i<totdoc;i++) {
    if((unlabeled[i]) && (a[i]>a_max)) {
      a_max=a[i];
    }
  }
  for(i=0;i<totdoc;i++) {
    if(unlabeled[i]) {
      if((a[i]>(learn_parm->epsilon_a))) {
 dist=(double)label[i]*(1.0-learn_parm->epsilon_crit-a[i]/(a_max*2.0));
      }
      else {
 dist=(lin[i]-model->b);
      }
      if(dist>0) {
 fprintf(predfl,"%.8g:+1 %.8g:-1\n",dist,-dist);
      }
      else {
 fprintf(predfl,"%.8g:-1 %.8g:+1\n",-dist,dist);
      }
    }
  }
  fclose(predfl);
  if(verbosity>=1) {
    printf("done\n");
  }
}

void write_alphas(char *alphafile, double *a,
    long int *label, long int totdoc)
{
  FILE *alphafl;
  long i;

  if(verbosity>=1) {
    printf("Writing alpha file..."); fflush(stdout);
  }
  if ((alphafl = fopen (alphafile, "w")) == ((void *)0))
  { perror (alphafile); exit (1); }
  for(i=0;i<totdoc;i++) {
    fprintf(alphafl,"%.18g\n",a[i]*(double)label[i]);
  }
  fclose(alphafl);
  if(verbosity>=1) {
    printf("done\n");
  }
}
