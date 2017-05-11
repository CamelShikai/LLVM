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
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino64_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off64_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;
typedef __time_t time_t;
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
typedef long unsigned int size_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));
typedef int register_t __attribute__ ((__mode__ (__word__)));
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
typedef int __sig_atomic_t;
typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
typedef __sigset_t sigset_t;
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
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
typedef __blksize_t blksize_t;
typedef __blkcnt64_t blkcnt_t;
typedef __fsblkcnt64_t fsblkcnt_t;
typedef __fsfilcnt64_t fsfilcnt_t;
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
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
extern int stat (const char *__restrict __file, struct stat *__restrict __buf) __asm__ ("" "stat64") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) __asm__ ("" "fstat64") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2)));
extern int fstatat (int __fd, const char *__restrict __file, struct stat *__restrict __buf, int __flag) __asm__ ("" "fstatat64") __attribute__ ((__nothrow__ , __leaf__))
                 __attribute__ ((__nonnull__ (2, 3)));
extern int lstat (const char *__restrict __file, struct stat *__restrict __buf) __asm__ ("" "lstat64") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 2)));
extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__));
extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ , __leaf__));
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
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf) __asm__ ("" "__fxstat64") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename, struct stat *__stat_buf) __asm__ ("" "__xstat64") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename, struct stat *__stat_buf) __asm__ ("" "__lxstat64") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename, struct stat *__stat_buf, int __flag) __asm__ ("" "__fxstatat64") __attribute__ ((__nothrow__ , __leaf__))
                    __attribute__ ((__nonnull__ (3, 4)));
extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 5)));
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
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
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
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
extern int isascii (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int toascii (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int _toupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int _tolower (int) __attribute__ ((__nothrow__ , __leaf__));
typedef struct __locale_struct
{
  struct __locale_data *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
} *__locale_t;
typedef __locale_t locale_t;
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
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
struct flock
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };
extern int fcntl (int __fd, int __cmd, ...);
extern int open (const char *__file, int __oflag, ...) __asm__ ("" "open64")
     __attribute__ ((__nonnull__ (1)));
extern int openat (int __fd, const char *__file, int __oflag, ...) __asm__ ("" "openat64")
                    __attribute__ ((__nonnull__ (2)));
extern int creat (const char *__file, mode_t __mode) __asm__ ("" "creat64")
                  __attribute__ ((__nonnull__ (1)));
extern int lockf (int __fd, int __cmd, __off64_t __len) __asm__ ("" "lockf64");
extern int posix_fadvise (int __fd, __off64_t __offset, __off64_t __len, int __advise) __asm__ ("" "posix_fadvise64") __attribute__ ((__nothrow__ , __leaf__))
                      ;
extern int posix_fallocate (int __fd, __off64_t __offset, __off64_t __len) __asm__ ("" "posix_fallocate64")
                           ;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
typedef long int ptrdiff_t;
typedef int wchar_t;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
typedef struct _IO_FILE __FILE;
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
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
struct _IO_jump_t; struct _IO_FILE;
typedef void _IO_lock_t;
struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;
  int _pos;
};
enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
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
  __off64_t _offset;
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
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);
typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);
typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);
typedef int __io_close_fn (void *__cookie);
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_peekc_locked (_IO_FILE *__fp);
extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);
extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);
extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
typedef _G_fpos64_t fpos_t;
extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern FILE *tmpfile (void) __asm__ ("" "tmpfile64") ;
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;
extern int fclose (FILE *__stream);
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename, const char *__restrict __modes) __asm__ ("" "fopen64")
  ;
extern FILE *freopen (const char *__restrict __filename, const char *__restrict __modes, FILE *__restrict __stream) __asm__ ("" "freopen64")
  ;
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
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
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")
                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))
                      ;
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
extern char *gets (char *__s) __attribute__ ((__deprecated__));
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
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off64_t __off, int __whence) __asm__ ("" "fseeko64")
                  ;
extern __off64_t ftello (FILE *__stream) __asm__ ("" "ftello64");
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos) __asm__ ("" "fgetpos64")
                                          ;
extern int fsetpos (FILE *__stream, const fpos_t *__pos) __asm__ ("" "fsetpos64")
                                                          ;
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void perror (const char *__s);
extern int sys_nerr;
extern const char *const sys_errlist[];
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern FILE *popen (const char *__command, const char *__modes) ;
extern int pclose (FILE *__stream);
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
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
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
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
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
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
extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __asm__ ("" "mkstemp64")
     __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps (char *__template, int __suffixlen) __asm__ ("" "mkstemps64")
                     __attribute__ ((__nonnull__ (1))) ;
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;
typedef int (*__compar_fn_t) (const void *, const void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
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
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
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
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
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
extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
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
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))
                        __attribute__ ((__nonnull__ (2)));
extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
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
extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
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
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
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
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
typedef __sig_atomic_t sig_atomic_t;
typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
typedef __clock_t __sigchld_clock_t;
typedef struct
  {
    int si_signo;
    int si_errno;
    int si_code;
    union
      {
 int _pad[((128 / sizeof (int)) - 4)];
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;
 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;
 struct
   {
     void *si_addr;
     short int si_addr_lsb;
   } _sigfault;
 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;
 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
enum
{
  SI_ASYNCNL = -60,
  SI_TKILL = -6,
  SI_SIGIO,
  SI_ASYNCIO,
  SI_MESGQ,
  SI_TIMER,
  SI_QUEUE,
  SI_USER,
  SI_KERNEL = 0x80
};
enum
{
  ILL_ILLOPC = 1,
  ILL_ILLOPN,
  ILL_ILLADR,
  ILL_ILLTRP,
  ILL_PRVOPC,
  ILL_PRVREG,
  ILL_COPROC,
  ILL_BADSTK
};
enum
{
  FPE_INTDIV = 1,
  FPE_INTOVF,
  FPE_FLTDIV,
  FPE_FLTOVF,
  FPE_FLTUND,
  FPE_FLTRES,
  FPE_FLTINV,
  FPE_FLTSUB
};
enum
{
  SEGV_MAPERR = 1,
  SEGV_ACCERR
};
enum
{
  BUS_ADRALN = 1,
  BUS_ADRERR,
  BUS_OBJERR,
  BUS_MCEERR_AR,
  BUS_MCEERR_AO
};
enum
{
  TRAP_BRKPT = 1,
  TRAP_TRACE
};
enum
{
  CLD_EXITED = 1,
  CLD_KILLED,
  CLD_DUMPED,
  CLD_TRAPPED,
  CLD_STOPPED,
  CLD_CONTINUED
};
enum
{
  POLL_IN = 1,
  POLL_OUT,
  POLL_MSG,
  POLL_ERR,
  POLL_PRI,
  POLL_HUP
};
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;
    union
      {
 int _pad[((64 / sizeof (int)) - 4)];
 __pid_t _tid;
 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;
enum
{
  SIGEV_SIGNAL = 0,
  SIGEV_NONE,
  SIGEV_THREAD,
  SIGEV_THREAD_ID = 4
};
typedef void (*__sighandler_t) (int);
extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern int raise (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern void psignal (int __sig, const char *__s);
extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
extern int __sigpause (int __sig_or_mask, int __is_sig);
extern int sigblock (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int siggetmask (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
typedef __sighandler_t sig_t;
extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
struct sigaction
  {
    union
      {
 __sighandler_t sa_handler;
 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;
    __sigset_t sa_mask;
    int sa_flags;
    void (*sa_restorer) (void);
  };
extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ , __leaf__));
extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));
extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ , __leaf__));
extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));
extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));
extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));
extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ , __leaf__));
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];
struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;
    int sv_flags;
  };
extern int sigvec (int __sig, const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__ , __leaf__));
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};
struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};
struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};
struct _xmmreg
{
  __uint32_t element[4];
};
struct _fpstate
{
  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};
struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};
struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};
struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};
struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ , __leaf__));
extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ , __leaf__));
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };
enum
{
  SS_ONSTACK = 1,
  SS_DISABLE
};
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
__extension__ typedef long long int greg_t;
typedef greg_t gregset_t[23];
struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};
struct _libc_xmmreg
{
  __uint32_t element[4];
};
struct _libc_fpstate
{
  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};
typedef struct _libc_fpstate *fpregset_t;
typedef struct
  {
    gregset_t gregs;
    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;
typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ , __leaf__));
extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ , __leaf__));
extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ , __leaf__));
extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ , __leaf__));
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;
typedef long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long int uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
extern ssize_t readv (int __fd, const struct iovec *__iovec, int __count)
  ;
extern ssize_t writev (int __fd, const struct iovec *__iovec, int __count)
  ;
extern ssize_t preadv (int __fd, const struct iovec *__iovec, int __count, __off64_t __offset) __asm__ ("" "preadv64")
                     ;
extern ssize_t pwritev (int __fd, const struct iovec *__iovec, int __count, __off64_t __offset) __asm__ ("" "pwritev64")
                      ;
typedef __socklen_t socklen_t;
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
typedef unsigned short int sa_family_t;
struct sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
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
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__ , __leaf__));
enum
  {
    SCM_RIGHTS = 0x01
  };
struct linger
  {
    int l_onoff;
    int l_linger;
  };
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
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__ , __leaf__));
extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__ , __leaf__));
extern int bind (int __fd, const struct sockaddr * __addr, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
extern int connect (int __fd, const struct sockaddr * __addr, socklen_t __len);
extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);
extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);
extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, const struct sockaddr * __addr,
         socklen_t __addr_len);
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);
extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__ , __leaf__));
extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__ , __leaf__));
extern int listen (int __fd, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__ , __leaf__));
extern int sockatmark (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__ , __leaf__));
typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };
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
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) __attribute__ ((__nothrow__ , __leaf__));
extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     __attribute__ ((__nothrow__ , __leaf__));
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
struct netent
{
  char *n_name;
  char **n_aliases;
  int n_addrtype;
  uint32_t n_net;
};
extern int *__h_errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
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
extern struct hostent *gethostbyname2 (const char *__name, int __af);
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
extern void setnetent (int __stay_open);
extern void endnetent (void);
extern struct netent *getnetent (void);
extern struct netent *getnetbyaddr (uint32_t __net, int __type);
extern struct netent *getnetbyname (const char *__name);
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
extern int setnetgrent (const char *__netgroup);
extern void endnetgrent (void);
extern int getnetgrent (char **__restrict __hostp,
   char **__restrict __userp,
   char **__restrict __domainp);
extern int innetgr (const char *__netgroup, const char *__host,
      const char *__user, const char *__domain);
extern int getnetgrent_r (char **__restrict __hostp,
     char **__restrict __userp,
     char **__restrict __domainp,
     char *__restrict __buffer, size_t __buflen);
extern int rcmd (char **__restrict __ahost, unsigned short int __rport,
   const char *__restrict __locuser,
   const char *__restrict __remuser,
   const char *__restrict __cmd, int *__restrict __fd2p);
extern int rcmd_af (char **__restrict __ahost, unsigned short int __rport,
      const char *__restrict __locuser,
      const char *__restrict __remuser,
      const char *__restrict __cmd, int *__restrict __fd2p,
      sa_family_t __af);
extern int rexec (char **__restrict __ahost, int __rport,
    const char *__restrict __name,
    const char *__restrict __pass,
    const char *__restrict __cmd, int *__restrict __fd2p);
extern int rexec_af (char **__restrict __ahost, int __rport,
       const char *__restrict __name,
       const char *__restrict __pass,
       const char *__restrict __cmd, int *__restrict __fd2p,
       sa_family_t __af);
extern int ruserok (const char *__rhost, int __suser,
      const char *__remuser, const char *__locuser);
extern int ruserok_af (const char *__rhost, int __suser,
         const char *__remuser, const char *__locuser,
         sa_family_t __af);
extern int iruserok (uint32_t __raddr, int __suser,
       const char *__remuser, const char *__locuser);
extern int iruserok_af (const void *__raddr, int __suser,
   const char *__remuser, const char *__locuser,
   sa_family_t __af);
extern int rresvport (int *__alport);
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
struct sched_param
  {
    int __sched_priority;
  };
struct __sched_param
  {
    int __sched_priority;
  };
typedef unsigned long int __cpu_mask;
typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));
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
typedef long int __jmp_buf[8];
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
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
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
extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));
extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));
extern int pthread_join (pthread_t __th, void **__thread_return);
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
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
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
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
     ;
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
  ;
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
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
typedef __useconds_t useconds_t;
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
extern __off64_t lseek (int __fd, __off64_t __offset, int __whence) __asm__ ("" "lseek64") __attribute__ ((__nothrow__ , __leaf__))
             ;
extern int close (int __fd);
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;
extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pread64")
                    ;
extern ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pwrite64")
                     ;
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned int sleep (unsigned int __seconds);
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));
extern int usleep (__useconds_t __useconds);
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
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;
extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
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
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void _exit (int __status) __attribute__ ((__noreturn__));
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
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
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
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__));
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
extern long int gethostid (void);
extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
extern int truncate (const char *__file, __off64_t __length) __asm__ ("" "truncate64") __attribute__ ((__nothrow__ , __leaf__))
                  __attribute__ ((__nonnull__ (1))) ;
extern int ftruncate (int __fd, __off64_t __length) __asm__ ("" "ftruncate64") __attribute__ ((__nothrow__ , __leaf__))
                        ;
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int fdatasync (int __fildes);
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
typedef int sock_t;
typedef struct stat ns_stat_t;
typedef void *SSL;
typedef void *SSL_CTX;
union socket_address {
  struct sockaddr sa;
  struct sockaddr_in sin;
  struct sockaddr sin6;
};
struct ns_str {
  const char *p;
  size_t len;
};
struct iobuf {
  char *buf;
  size_t len;
  size_t size;
};
void iobuf_init(struct iobuf *, size_t initial_size);
void iobuf_free(struct iobuf *);
size_t iobuf_append(struct iobuf *, const void *data, size_t data_size);
void iobuf_remove(struct iobuf *, size_t data_size);
void iobuf_resize(struct iobuf *, size_t new_size);
struct ns_connection;
typedef void (*ns_callback_t)(struct ns_connection *, int event_num, void *evp);
struct ns_mgr {
  struct ns_connection *active_connections;
  const char *hexdump_file;
  sock_t ctl[2];
  void *user_data;
};
struct ns_connection {
  struct ns_connection *next, *prev;
  struct ns_connection *listener;
  struct ns_mgr *mgr;
  sock_t sock;
  union socket_address sa;
  struct iobuf recv_iobuf;
  struct iobuf send_iobuf;
  SSL *ssl;
  SSL_CTX *ssl_ctx;
  void *user_data;
  void *proto_data;
  time_t last_io_time;
  ns_callback_t callback;
  unsigned int flags;
};
void ns_mgr_init(struct ns_mgr *, void *user_data);
void ns_mgr_free(struct ns_mgr *);
time_t ns_mgr_poll(struct ns_mgr *, int milli);
void ns_broadcast(struct ns_mgr *, ns_callback_t, void *, size_t);
struct ns_connection *ns_next(struct ns_mgr *, struct ns_connection *);
struct ns_connection *ns_add_sock(struct ns_mgr *, sock_t,
                                  ns_callback_t, void *);
struct ns_connection *ns_bind(struct ns_mgr *, const char *,
                              ns_callback_t, void *);
struct ns_connection *ns_connect(struct ns_mgr *, const char *,
                                 ns_callback_t, void *);
int ns_send(struct ns_connection *, const void *buf, size_t len);
int ns_printf(struct ns_connection *, const char *fmt, ...);
int ns_vprintf(struct ns_connection *, const char *fmt, va_list ap);
void *ns_start_thread(void *(*f)(void *), void *p);
int ns_socketpair(sock_t [2]);
int ns_socketpair2(sock_t [2], int sock_type);
void ns_set_close_on_exec(sock_t);
void ns_sock_to_str(sock_t sock, char *buf, size_t len, int flags);
int ns_hexdump(const void *buf, int len, char *dst, int dst_len);
int ns_avprintf(char **buf, size_t size, const char *fmt, va_list ap);
int ns_resolve(const char *domain_name, char *ip_addr_buf, size_t buf_len);
struct ctl_msg {
  ns_callback_t callback;
  char message[(8 * 1024)];
};
void iobuf_resize(struct iobuf *io, size_t new_size) {
  char *p;
  if ((new_size > io->size || (new_size < io->size && new_size >= io->len)) &&
      (p = (char *) realloc(io->buf, new_size)) != ((void *)0)) {
    io->size = new_size;
    io->buf = p;
  }
}
void iobuf_init(struct iobuf *iobuf, size_t initial_size) {
  iobuf->len = iobuf->size = 0;
  iobuf->buf = ((void *)0);
  iobuf_resize(iobuf, initial_size);
}
void iobuf_free(struct iobuf *iobuf) {
  if (iobuf != ((void *)0)) {
    if (iobuf->buf != ((void *)0)) free(iobuf->buf);
    iobuf_init(iobuf, 0);
  }
}
size_t iobuf_append(struct iobuf *io, const void *buf, size_t len) {
  char *p = ((void *)0);
  ((io != ((void *)0)) ? (void) (0) : __assert_fail ("io != ((void *)0)", "mongoose.c", 354, __PRETTY_FUNCTION__));
  ((io->len <= io->size) ? (void) (0) : __assert_fail ("io->len <= io->size", "mongoose.c", 355, __PRETTY_FUNCTION__));
  if (len > ~(size_t)0 - (size_t)(io->buf + io->len)) {
    return 0;
  }
  if (len <= 0) {
  } else if (io->len + len <= io->size) {
    memcpy(io->buf + io->len, buf, len);
    io->len += len;
  } else if ((p = (char *) realloc(io->buf, io->len + len)) != ((void *)0)) {
    io->buf = p;
    memcpy(io->buf + io->len, buf, len);
    io->len += len;
    io->size = io->len;
  } else {
    len = 0;
  }
  return len;
}
void iobuf_remove(struct iobuf *io, size_t n) {
  if (n > 0 && n <= io->len) {
    memmove(io->buf, io->buf + n, io->len - n);
    io->len -= n;
  }
}
static size_t ns_out(struct ns_connection *nc, const void *buf, size_t len) {
  if (nc->flags & (1 << 8)) {
    long n = sendto(nc->sock, (const char *) buf, len, 0, &nc->sa.sa,
                    sizeof(nc->sa.sin));
    ;
    return n < 0 ? 0 : n;
  } else {
    return iobuf_append(&nc->send_iobuf, buf, len);
  }
}
void *ns_start_thread(void *(*f)(void *), void *p) {
  pthread_t thread_id = (pthread_t) 0;
  pthread_attr_t attr;
  (void) pthread_attr_init(&attr);
  (void) pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
  pthread_create(&thread_id, &attr, f, p);
  pthread_attr_destroy(&attr);
  return (void *) thread_id;
}
static void ns_add_conn(struct ns_mgr *mgr, struct ns_connection *c) {
  c->next = mgr->active_connections;
  mgr->active_connections = c;
  c->prev = ((void *)0);
  if (c->next != ((void *)0)) c->next->prev = c;
}
static void ns_remove_conn(struct ns_connection *conn) {
  if (conn->prev == ((void *)0)) conn->mgr->active_connections = conn->next;
  if (conn->prev) conn->prev->next = conn->next;
  if (conn->next) conn->next->prev = conn->prev;
}
int ns_avprintf(char **buf, size_t size, const char *fmt, va_list ap) {
  va_list ap_copy;
  int len;
  __builtin_va_copy(ap_copy,ap);
  len = vsnprintf(*buf, size, fmt, ap_copy);
  __builtin_va_end(ap_copy);
  if (len < 0) {
    *buf = ((void *)0);
    while (len < 0) {
      if (*buf) free(*buf);
      size *= 2;
      if ((*buf = (char *) malloc(size)) == ((void *)0)) break;
      __builtin_va_copy(ap_copy,ap);
      len = vsnprintf(*buf, size, fmt, ap_copy);
      __builtin_va_end(ap_copy);
    }
  } else if (len > (int) size) {
    if ((*buf = (char *) malloc(len + 1)) == ((void *)0)) {
      len = -1;
    } else {
      __builtin_va_copy(ap_copy,ap);
      len = vsnprintf(*buf, len + 1, fmt, ap_copy);
      __builtin_va_end(ap_copy);
    }
  }
  return len;
}
int ns_vprintf(struct ns_connection *nc, const char *fmt, va_list ap) {
  char mem[500], *buf = mem;
  int len;
  if ((len = ns_avprintf(&buf, sizeof(mem), fmt, ap)) > 0) {
    ns_out(nc, buf, len);
  }
  if (buf != mem && buf != ((void *)0)) {
    free(buf);
  }
  return len;
}
int ns_printf(struct ns_connection *conn, const char *fmt, ...) {
  int len;
  va_list ap;
  __builtin_va_start(ap,fmt);
  len = ns_vprintf(conn, fmt, ap);
  __builtin_va_end(ap);
  return len;
}
static void hexdump(struct ns_connection *nc, const char *path,
                    int num_bytes, int ev) {
  const struct iobuf *io = ev == 4 ? &nc->send_iobuf : &nc->recv_iobuf;
  FILE *fp;
  char *buf, src[60], dst[60];
  int buf_size = num_bytes * 5 + 100;
  if ((fp = fopen(path, "a")) != ((void *)0)) {
    ns_sock_to_str(nc->sock, src, sizeof(src), 3);
    ns_sock_to_str(nc->sock, dst, sizeof(dst), 7);
    fprintf(fp, "%lu %p %s %s %s %d\n", (unsigned long) time(((void *)0)),
            nc->user_data, src,
            ev == 3 ? "<-" : ev == 4 ? "->" :
            ev == 1 ? "<A" : ev == 2 ? "C>" : "XX",
            dst, num_bytes);
    if (num_bytes > 0 && (buf = (char *) malloc(buf_size)) != ((void *)0)) {
      ns_hexdump(io->buf + (ev == 4 ? 0 : io->len) -
        (ev == 4 ? 0 : num_bytes), num_bytes, buf, buf_size);
      fprintf(fp, "%s", buf);
      free(buf);
    }
    fclose(fp);
  }
}
static void ns_call(struct ns_connection *nc, int ev, void *p) {
  if (nc->mgr->hexdump_file != ((void *)0) && ev != 0) {
    int len = (ev == 3 || ev == 4) ? * (int *) p : 0;
    hexdump(nc, nc->mgr->hexdump_file, len, ev);
  }
  nc->callback(nc, ev, p);
}
static void ns_destroy_conn(struct ns_connection *conn) {
  close(conn->sock);
  iobuf_free(&conn->recv_iobuf);
  iobuf_free(&conn->send_iobuf);
  free(conn);
}
static void ns_close_conn(struct ns_connection *conn) {
  ;
  ns_call(conn, 5, ((void *)0));
  ns_remove_conn(conn);
  ns_destroy_conn(conn);
}
void ns_set_close_on_exec(sock_t sock) {
  fcntl(sock, 2, 1);
}
static void ns_set_non_blocking_mode(sock_t sock) {
  int flags = fcntl(sock, 3, 0);
  fcntl(sock, 4, flags | 04000);
}
int ns_socketpair2(sock_t sp[2], int sock_type) {
  union socket_address sa;
  sock_t sock;
  socklen_t len = sizeof(sa.sin);
  int ret = 0;
  sp[0] = sp[1] = (-1);
  (void) memset(&sa, 0, sizeof(sa));
  sa.sin.sin_family = 2;
  sa.sin.sin_port = htons(0);
  sa.sin.sin_addr.s_addr = htonl(0x7f000001);
  if ((sock = socket(2, sock_type, 0)) != (-1) &&
      !bind(sock, &sa.sa, len) &&
      (sock_type == SOCK_DGRAM || !listen(sock, 1)) &&
      !getsockname(sock, &sa.sa, &len) &&
      (sp[0] = socket(2, sock_type, 0)) != (-1) &&
      !connect(sp[0], &sa.sa, len) &&
      (sock_type == SOCK_STREAM ||
       (!getsockname(sp[0], &sa.sa, &len) && !connect(sock, &sa.sa, len))) &&
      (sp[1] = (sock_type == SOCK_DGRAM ? sock :
                accept(sock, &sa.sa, &len))) != (-1)) {
    ns_set_close_on_exec(sp[0]);
    ns_set_close_on_exec(sp[1]);
    ret = 1;
  } else {
    if (sp[0] != (-1)) close(sp[0]);
    if (sp[1] != (-1)) close(sp[1]);
    sp[0] = sp[1] = (-1);
  }
  if (sock_type != SOCK_DGRAM) close(sock);
  return ret;
}
int ns_socketpair(sock_t sp[2]) {
  return ns_socketpair2(sp, SOCK_STREAM);
}
static int ns_resolve2(const char *host, struct in_addr *ina) {
  struct hostent *he;
  if ((he = gethostbyname(host)) == ((void *)0)) {
    ;
  } else {
    memcpy(ina, he->h_addr_list[0], sizeof(*ina));
    return 1;
  }
  return 0;
}
int ns_resolve(const char *host, char *buf, size_t n) {
  struct in_addr ad;
  return ns_resolve2(host, &ad) ? snprintf(buf, n, "%s", inet_ntoa(ad)) : 0;
}
static int ns_parse_address(const char *str, union socket_address *sa,
                            int *proto, int *use_ssl, char *cert, char *ca) {
  unsigned int a, b, c, d, port;
  int n = 0, len = 0;
  char host[200];
  memset(sa, 0, sizeof(*sa));
  sa->sin.sin_family = 2;
  *proto = SOCK_STREAM;
  *use_ssl = 0;
  cert[0] = ca[0] = '\0';
  if (memcmp(str, "ssl://", 6) == 0) {
    str += 6;
    *use_ssl = 1;
  } else if (memcmp(str, "udp://", 6) == 0) {
    str += 6;
    *proto = SOCK_DGRAM;
  } else if (memcmp(str, "tcp://", 6) == 0) {
    str += 6;
  }
  if (sscanf(str, "%u.%u.%u.%u:%u%n", &a, &b, &c, &d, &port, &len) == 5) {
    sa->sin.sin_addr.s_addr = htonl((a << 24) | (b << 16) | (c << 8) | d);
    sa->sin.sin_port = htons((uint16_t) port);
  } else if (sscanf(str, "%199[^ :]:%u%n", host, &port, &len) == 2) {
    sa->sin.sin_port = htons((uint16_t) port);
    ns_resolve2(host, &sa->sin.sin_addr);
  } else if (sscanf(str, "%u%n", &port, &len) == 1) {
    sa->sin.sin_port = htons((uint16_t) port);
  }
  if (*use_ssl && (sscanf(str + len, ":%99[^:,]:%99[^:,]%n", cert, ca, &n) == 2 ||
                   sscanf(str + len, ":%99[^:,]%n", cert, &n) == 1)) {
    len += n;
  }
  return port < 0xffff && str[len] == '\0' ? len : 0;
}
static sock_t ns_open_listening_socket(union socket_address *sa, int proto) {
  socklen_t sa_len = (sa->sa.sa_family == 2) ?
    sizeof(sa->sin) : sizeof(sa->sin6);
  sock_t sock = (-1);
  int on = 1;
  if ((sock = socket(sa->sa.sa_family, proto, 0)) != (-1) &&
      !setsockopt(sock, 1, 2, (void *) &on, sizeof(on)) &&
      !bind(sock, &sa->sa, sa_len) &&
      (proto == SOCK_DGRAM || listen(sock, 128) == 0)) {
    ns_set_non_blocking_mode(sock);
    (void) getsockname(sock, &sa->sa, &sa_len);
  } else if (sock != (-1)) {
    close(sock);
    sock = (-1);
  }
  return sock;
}
struct ns_connection *ns_bind(struct ns_mgr *srv, const char *str,
                              ns_callback_t callback, void *user_data) {
  union socket_address sa;
  struct ns_connection *nc = ((void *)0);
  int use_ssl, proto;
  char cert[100], ca_cert[100];
  sock_t sock;
  ns_parse_address(str, &sa, &proto, &use_ssl, cert, ca_cert);
  if (use_ssl && cert[0] == '\0') return ((void *)0);
  if ((sock = ns_open_listening_socket(&sa, proto)) == (-1)) {
  } else if ((nc = ns_add_sock(srv, sock, callback, ((void *)0))) == ((void *)0)) {
    close(sock);
  } else {
    nc->sa = sa;
    nc->flags |= (1 << 7);
    nc->user_data = user_data;
    nc->callback = callback;
    if (proto == SOCK_DGRAM) {
      nc->flags |= (1 << 8);
    }
    ;
  }
  return nc;
}
static struct ns_connection *accept_conn(struct ns_connection *ls) {
  struct ns_connection *c = ((void *)0);
  union socket_address sa;
  socklen_t len = sizeof(sa);
  sock_t sock = (-1);
  if ((sock = accept(ls->sock, &sa.sa, &len)) == (-1)) {
  } else if ((c = ns_add_sock(ls->mgr, sock, ls->callback,
              ls->user_data)) == ((void *)0)) {
    close(sock);
  } else {
    c->listener = ls;
    c->proto_data = ls->proto_data;
    ns_call(c, 1, &sa);
    ;
  }
  return c;
}
static int ns_is_error(int n) {
  return n == 0 ||
    (n < 0 && (*__errno_location ()) != 4 && (*__errno_location ()) != 115 &&
     (*__errno_location ()) != 11 && (*__errno_location ()) != 11
    );
}
void ns_sock_to_str(sock_t sock, char *buf, size_t len, int flags) {
  union socket_address sa;
  socklen_t slen = sizeof(sa);
  if (buf != ((void *)0) && len > 0) {
    buf[0] = '\0';
    memset(&sa, 0, sizeof(sa));
    if (flags & 4) {
      getpeername(sock, &sa.sa, &slen);
    } else {
      getsockname(sock, &sa.sa, &slen);
    }
    if (flags & 1) {
      inet_ntop(sa.sa.sa_family, (void *) &sa.sin.sin_addr, buf,(socklen_t)len);
    }
    if (flags & 2) {
      snprintf(buf + strlen(buf), len - (strlen(buf) + 1), "%s%d",
               flags & 1 ? ":" : "", (int) ntohs(sa.sin.sin_port));
    }
  }
}
int ns_hexdump(const void *buf, int len, char *dst, int dst_len) {
  const unsigned char *p = (const unsigned char *) buf;
  char ascii[17] = "";
  int i, idx, n = 0;
  for (i = 0; i < len; i++) {
    idx = i % 16;
    if (idx == 0) {
      if (i > 0) n += snprintf(dst + n, dst_len - n, "  %s\n", ascii);
      n += snprintf(dst + n, dst_len - n, "%04x ", i);
    }
    n += snprintf(dst + n, dst_len - n, " %02x", p[i]);
    ascii[idx] = p[i] < 0x20 || p[i] > 0x7e ? '.' : p[i];
    ascii[idx + 1] = '\0';
  }
  while (i++ % 16) n += snprintf(dst + n, dst_len - n, "%s", "   ");
  n += snprintf(dst + n, dst_len - n, "  %s\n\n", ascii);
  return n;
}
static void ns_read_from_socket(struct ns_connection *conn) {
  char buf[2048];
  int n = 0;
  if (conn->flags & (1 << 3)) {
    int ok = 1, ret;
    socklen_t len = sizeof(ok);
    ret = getsockopt(conn->sock, 1, 4, (char *) &ok, &len);
    (void) ret;
    conn->flags &= ~(1 << 3);
    ;
    if (ok != 0) {
      conn->flags |= (1 << 4);
    }
    ns_call(conn, 2, &ok);
    return;
  }
  {
    while ((n = (int) recv(conn->sock, buf, sizeof(buf), 0)) > 0) {
      ;
      iobuf_append(&conn->recv_iobuf, buf, n);
      ns_call(conn, 3, &n);
    }
  }
  if (ns_is_error(n)) {
    conn->flags |= (1 << 4);
  }
}
static void ns_write_to_socket(struct ns_connection *conn) {
  struct iobuf *io = &conn->send_iobuf;
  int n = 0;
  { n = (int) send(conn->sock, io->buf, io->len, 0); }
  ;
  ns_call(conn, 4, &n);
  if (ns_is_error(n)) {
    conn->flags |= (1 << 4);
  } else if (n > 0) {
    iobuf_remove(io, n);
  }
}
int ns_send(struct ns_connection *conn, const void *buf, size_t len) {
  return (int) ns_out(conn, buf, len);
}
static void ns_handle_udp(struct ns_connection *ls) {
  struct ns_connection nc;
  char buf[2000];
  ssize_t n;
  socklen_t s_len = sizeof(nc.sa);
  memset(&nc, 0, sizeof(nc));
  n = recvfrom(ls->sock, buf, sizeof(buf), 0, &nc.sa.sa, &s_len);
  if (n <= 0) {
    ;
  } else {
    nc.mgr = ls->mgr;
    nc.recv_iobuf.buf = buf;
    nc.recv_iobuf.len = nc.recv_iobuf.size = n;
    nc.sock = ls->sock;
    nc.callback = ls->callback;
    nc.user_data = ls->user_data;
    nc.proto_data = ls->proto_data;
    nc.mgr = ls->mgr;
    nc.listener = ls;
    nc.flags = (1 << 8);
    ;
    ns_call(&nc, 3, &n);
  }
}
static void ns_add_to_set(sock_t sock, fd_set *set, sock_t *max_fd) {
  if (sock != (-1)) {
    ((void) (((set)->__fds_bits)[((sock) / (8 * (int) sizeof (__fd_mask)))] |= ((__fd_mask) 1 << ((sock) % (8 * (int) sizeof (__fd_mask))))));
    if (*max_fd == (-1) || sock > *max_fd) {
      *max_fd = sock;
    }
  }
}
time_t ns_mgr_poll(struct ns_mgr *mgr, int milli) {
  struct ns_connection *conn, *tmp_conn;
  struct timeval tv;
  fd_set read_set, write_set;
  sock_t max_fd = (-1);
  time_t current_time = time(((void *)0));
  do { int __d0, __d1; __asm__ __volatile__ ("cld; rep; " "stosq" : "=c" (__d0), "=D" (__d1) : "a" (0), "0" (sizeof (fd_set) / sizeof (__fd_mask)), "1" (&((&read_set)->__fds_bits)[0]) : "memory"); } while (0);
  do { int __d0, __d1; __asm__ __volatile__ ("cld; rep; " "stosq" : "=c" (__d0), "=D" (__d1) : "a" (0), "0" (sizeof (fd_set) / sizeof (__fd_mask)), "1" (&((&write_set)->__fds_bits)[0]) : "memory"); } while (0);
  ns_add_to_set(mgr->ctl[1], &read_set, &max_fd);
  for (conn = mgr->active_connections; conn != ((void *)0); conn = tmp_conn) {
    tmp_conn = conn->next;
    if (!(conn->flags & ((1 << 7) | (1 << 3)))) {
      ns_call(conn, 0, &current_time);
    }
    if (conn->flags & (1 << 4)) {
      ns_close_conn(conn);
    } else {
      if (!(conn->flags & (1 << 6))) {
        ns_add_to_set(conn->sock, &read_set, &max_fd);
      }
      if (((conn->flags & (1 << 3)) && !(conn->flags & (1 << 5))) ||
          (conn->send_iobuf.len > 0 && !(conn->flags & (1 << 3)) &&
           !(conn->flags & (1 << 1)))) {
        ns_add_to_set(conn->sock, &write_set, &max_fd);
      }
    }
  }
  tv.tv_sec = milli / 1000;
  tv.tv_usec = (milli % 1000) * 1000;
  if (select((int) max_fd + 1, &read_set, &write_set, ((void *)0), &tv) > 0) {
    current_time = time(((void *)0));
    if (mgr->ctl[1] != (-1) &&
        ((((&read_set)->__fds_bits)[((mgr->ctl[1]) / (8 * (int) sizeof (__fd_mask)))] & ((__fd_mask) 1 << ((mgr->ctl[1]) % (8 * (int) sizeof (__fd_mask))))) != 0)) {
      struct ctl_msg ctl_msg;
      int len = (int) recv(mgr->ctl[1], (char *) &ctl_msg, sizeof(ctl_msg), 0);
      send(mgr->ctl[1], ctl_msg.message, 1, 0);
      if (len >= (int) sizeof(ctl_msg.callback) && ctl_msg.callback != ((void *)0)) {
        struct ns_connection *c;
        for (c = ns_next(mgr, ((void *)0)); c != ((void *)0); c = ns_next(mgr, c)) {
          ctl_msg.callback(c, 0, ctl_msg.message);
        }
      }
    }
    for (conn = mgr->active_connections; conn != ((void *)0); conn = tmp_conn) {
      tmp_conn = conn->next;
      if (((((&read_set)->__fds_bits)[((conn->sock) / (8 * (int) sizeof (__fd_mask)))] & ((__fd_mask) 1 << ((conn->sock) % (8 * (int) sizeof (__fd_mask))))) != 0)) {
        if (conn->flags & (1 << 7)) {
          if (conn->flags & (1 << 8)) {
            ns_handle_udp(conn);
          } else {
            accept_conn(conn);
          }
        } else {
          conn->last_io_time = current_time;
          ns_read_from_socket(conn);
        }
      }
      if (((((&write_set)->__fds_bits)[((conn->sock) / (8 * (int) sizeof (__fd_mask)))] & ((__fd_mask) 1 << ((conn->sock) % (8 * (int) sizeof (__fd_mask))))) != 0)) {
        if (conn->flags & (1 << 3)) {
          ns_read_from_socket(conn);
        } else if (!(conn->flags & (1 << 1))) {
          conn->last_io_time = current_time;
          ns_write_to_socket(conn);
        }
      }
    }
  }
  for (conn = mgr->active_connections; conn != ((void *)0); conn = tmp_conn) {
    tmp_conn = conn->next;
    if ((conn->flags & (1 << 4)) ||
        (conn->send_iobuf.len == 0 &&
          (conn->flags & (1 << 0)))) {
      ns_close_conn(conn);
    }
  }
  return current_time;
}
struct ns_connection *ns_connect(struct ns_mgr *mgr, const char *address,
                                 ns_callback_t callback, void *user_data) {
  sock_t sock = (-1);
  struct ns_connection *nc = ((void *)0);
  union socket_address sa;
  char cert[100], ca_cert[100];
  int rc, use_ssl, proto;
  ns_parse_address(address, &sa, &proto, &use_ssl, cert, ca_cert);
  if ((sock = socket(2, proto, 0)) == (-1)) {
    return ((void *)0);
  }
  ns_set_non_blocking_mode(sock);
  rc = (proto == SOCK_DGRAM) ? 0 : connect(sock, &sa.sa, sizeof(sa.sin));
  if (rc != 0 && ns_is_error(rc)) {
    close(sock);
    return ((void *)0);
  } else if ((nc = ns_add_sock(mgr, sock, callback, user_data)) == ((void *)0)) {
    close(sock);
    return ((void *)0);
  }
  nc->sa = sa;
  nc->flags = (proto == SOCK_DGRAM) ? (1 << 8) : (1 << 3);
  return nc;
}
struct ns_connection *ns_add_sock(struct ns_mgr *s, sock_t sock,
                                  ns_callback_t callback, void *user_data) {
  struct ns_connection *conn;
  if ((conn = (struct ns_connection *) malloc(sizeof(*conn))) != ((void *)0)) {
    memset(conn, 0, sizeof(*conn));
    ns_set_non_blocking_mode(sock);
    ns_set_close_on_exec(sock);
    conn->sock = sock;
    conn->user_data = user_data;
    conn->callback = callback;
    conn->mgr = s;
    conn->last_io_time = time(((void *)0));
    ns_add_conn(s, conn);
    ;
  }
  return conn;
}
struct ns_connection *ns_next(struct ns_mgr *s, struct ns_connection *conn) {
  return conn == ((void *)0) ? s->active_connections : conn->next;
}
void ns_broadcast(struct ns_mgr *mgr, ns_callback_t cb,void *data, size_t len) {
  struct ctl_msg ctl_msg;
  if (mgr->ctl[0] != (-1) && data != ((void *)0) &&
      len < sizeof(ctl_msg.message)) {
    ctl_msg.callback = cb;
    memcpy(ctl_msg.message, data, len);
    send(mgr->ctl[0], (char *) &ctl_msg,
         __builtin_offsetof (struct ctl_msg, message) + len, 0);
    recv(mgr->ctl[0], (char *) &len, 1, 0);
  }
}
void ns_mgr_init(struct ns_mgr *s, void *user_data) {
  memset(s, 0, sizeof(*s));
  s->ctl[0] = s->ctl[1] = (-1);
  s->user_data = user_data;
  signal(13, ((__sighandler_t) 1));
  do {
    ns_socketpair2(s->ctl, SOCK_DGRAM);
  } while (s->ctl[0] == (-1));
}
void ns_mgr_free(struct ns_mgr *s) {
  struct ns_connection *conn, *tmp_conn;
  ;
  if (s == ((void *)0)) return;
  ns_mgr_poll(s, 0);
  if (s->ctl[0] != (-1)) close(s->ctl[0]);
  if (s->ctl[1] != (-1)) close(s->ctl[1]);
  s->ctl[0] = s->ctl[1] = (-1);
  for (conn = s->active_connections; conn != ((void *)0); conn = tmp_conn) {
    tmp_conn = conn->next;
    ns_close_conn(conn);
  }
}
struct dirent
  {
    __ino64_t d_ino;
    __off64_t d_off;
    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };
enum
  {
    DT_UNKNOWN = 0,
    DT_FIFO = 1,
    DT_CHR = 2,
    DT_DIR = 4,
    DT_BLK = 6,
    DT_REG = 8,
    DT_LNK = 10,
    DT_SOCK = 12,
    DT_WHT = 14
  };
typedef struct __dirstream DIR;
extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)));
extern DIR *fdopendir (int __fd);
extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern struct dirent *readdir (DIR *__dirp) __asm__ ("" "readdir64")
     __attribute__ ((__nonnull__ (1)));
extern int readdir_r (DIR *__restrict __dirp, struct dirent *__restrict __entry, struct dirent **__restrict __result) __asm__ ("" "readdir64_r")
                      __attribute__ ((__nonnull__ (1, 2, 3)));
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int scandir (const char *__restrict __dir, struct dirent ***__restrict __namelist, int (*__selector) (const struct dirent *), int (*__cmp) (const struct dirent **, const struct dirent **)) __asm__ ("" "scandir64")
                    __attribute__ ((__nonnull__ (1, 2)));
extern int alphasort (const struct dirent **__e1, const struct dirent **__e2) __asm__ ("" "alphasort64") __attribute__ ((__nothrow__ , __leaf__))
                   __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern __ssize_t getdirentries (int __fd, char *__restrict __buf, size_t __nbytes, __off64_t *__restrict __basep) __asm__ ("" "getdirentries64") __attribute__ ((__nothrow__ , __leaf__))
                      __attribute__ ((__nonnull__ (2, 4)));
extern void *dlopen (const char *__file, int __mode) __attribute__ ((__nothrow__));
extern int dlclose (void *__handle) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern void *dlsym (void *__restrict __handle,
      const char *__restrict __name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern char *dlerror (void) __attribute__ ((__nothrow__ , __leaf__));
typedef int __gwchar_t;
typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
struct passwd
{
  char *pw_name;
  char *pw_passwd;
  __uid_t pw_uid;
  __gid_t pw_gid;
  char *pw_gecos;
  char *pw_dir;
  char *pw_shell;
};
extern void setpwent (void);
extern void endpwent (void);
extern struct passwd *getpwent (void);
extern struct passwd *fgetpwent (FILE *__stream);
extern int putpwent (const struct passwd *__restrict __p,
       FILE *__restrict __f);
extern struct passwd *getpwuid (__uid_t __uid);
extern struct passwd *getpwnam (const char *__name);
extern int getpwent_r (struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);
extern int getpwuid_r (__uid_t __uid,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);
extern int getpwnam_r (const char *__restrict __name,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);
extern int fgetpwent_r (FILE *__restrict __stream,
   struct passwd *__restrict __resultbuf,
   char *__restrict __buffer, size_t __buflen,
   struct passwd **__restrict __result);
typedef struct stat file_stat_t;
typedef pid_t process_id_t;
struct mg_connection {
  const char *request_method;
  const char *uri;
  const char *http_version;
  const char *query_string;
  char remote_ip[48];
  char local_ip[48];
  unsigned short remote_port;
  unsigned short local_port;
  int num_headers;
  struct mg_header {
    const char *name;
    const char *value;
  } http_headers[30];
  char *content;
  size_t content_len;
  int is_websocket;
  int status_code;
  int wsbits;
  void *server_param;
  void *connection_param;
  void *callback_param;
};
struct mg_server;
enum mg_result { MG_FALSE, MG_TRUE, MG_MORE };
enum mg_event {
  MG_POLL = 100,
  MG_CONNECT,
  MG_AUTH,
  MG_REQUEST,
  MG_REPLY,
  MG_RECV,
  MG_CLOSE,
  MG_WS_HANDSHAKE,
  MG_WS_CONNECT,
  MG_HTTP_ERROR
};
typedef int (*mg_handler_t)(struct mg_connection *, enum mg_event);
enum {
  WEBSOCKET_OPCODE_CONTINUATION = 0x0,
  WEBSOCKET_OPCODE_TEXT = 0x1,
  WEBSOCKET_OPCODE_BINARY = 0x2,
  WEBSOCKET_OPCODE_CONNECTION_CLOSE = 0x8,
  WEBSOCKET_OPCODE_PING = 0x9,
  WEBSOCKET_OPCODE_PONG = 0xa
};
struct mg_server *mg_create_server(void *server_param, mg_handler_t handler);
void mg_destroy_server(struct mg_server **);
const char *mg_set_option(struct mg_server *, const char *opt, const char *val);
time_t mg_poll_server(struct mg_server *, int milliseconds);
const char **mg_get_valid_option_names(void);
const char *mg_get_option(const struct mg_server *server, const char *name);
void mg_copy_listeners(struct mg_server *from, struct mg_server *to);
struct mg_connection *mg_next(struct mg_server *, struct mg_connection *);
void mg_wakeup_server(struct mg_server *);
void mg_wakeup_server_ex(struct mg_server *, mg_handler_t, const char *, ...);
struct mg_connection *mg_connect(struct mg_server *, const char *);
void mg_send_status(struct mg_connection *, int status_code);
void mg_send_header(struct mg_connection *, const char *name, const char *val);
size_t mg_send_data(struct mg_connection *, const void *data, int data_len);
size_t mg_printf_data(struct mg_connection *, const char *format, ...);
size_t mg_write(struct mg_connection *, const void *buf, size_t len);
size_t mg_printf(struct mg_connection *conn, const char *fmt, ...);
size_t mg_websocket_write(struct mg_connection *, int opcode,
                          const char *data, size_t data_len);
size_t mg_websocket_printf(struct mg_connection* conn, int opcode,
                           const char *fmt, ...);
void mg_send_file(struct mg_connection *, const char *path, const char *);
void mg_send_file_data(struct mg_connection *, int fd);
const char *mg_get_header(const struct mg_connection *, const char *name);
const char *mg_get_mime_type(const char *name, const char *default_mime_type);
int mg_get_var(const struct mg_connection *conn, const char *var_name,
               char *buf, size_t buf_len);
int mg_parse_header(const char *hdr, const char *var_name, char *buf, size_t);
int mg_parse_multipart(const char *buf, int buf_len,
                       char *var_name, int var_name_len,
                       char *file_name, int file_name_len,
                       const char **data, int *data_len);
void *mg_start_thread(void *(*func)(void *), void *param);
char *mg_md5(char buf[33], ...);
int mg_authorize_digest(struct mg_connection *c, FILE *fp);
size_t mg_url_encode(const char *src, size_t s_len, char *dst, size_t dst_len);
int mg_url_decode(const char *src, size_t src_len, char *dst, size_t dst_len, int);
int mg_terminate_ssl(struct mg_connection *c, const char *cert);
int mg_forward(struct mg_connection *c, const char *addr);
void *mg_mmap(FILE *fp, size_t size);
void mg_munmap(void *p, size_t size);
struct mg_expansion {
  const char *keyword;
  void (*handler)(struct mg_connection *);
};
void mg_template(struct mg_connection *, const char *text,
                 struct mg_expansion *expansions);
struct vec {
  const char *ptr;
  size_t len;
};
struct dir_entry {
  struct connection *conn;
  char *file_name;
  file_stat_t st;
};
enum {
  ACCESS_CONTROL_LIST,
  ACCESS_LOG_FILE,
  AUTH_DOMAIN,
  CGI_INTERPRETER,
  CGI_PATTERN,
  DAV_AUTH_FILE,
  DAV_ROOT,
  DOCUMENT_ROOT,
  ENABLE_DIRECTORY_LISTING,
  ENABLE_PROXY,
  EXTRA_MIME_TYPES,
  GLOBAL_AUTH_FILE,
  HIDE_FILES_PATTERN,
  HEXDUMP_FILE,
  INDEX_FILES,
  LISTENING_PORT,
  RUN_AS_USER,
  SSI_PATTERN,
  URL_REWRITES,
  NUM_OPTIONS
};
static const char *static_config_options[] = {
  "access_control_list", ((void *)0),
  "access_log_file", ((void *)0),
  "auth_domain", "mydomain.com",
  "cgi_interpreter", ((void *)0),
  "cgi_pattern", "**.cgi$|**.pl$|**.php$",
  "dav_auth_file", ((void *)0),
  "dav_root", ((void *)0),
  "document_root", ((void *)0),
  "enable_directory_listing", "yes",
  "enable_proxy", ((void *)0),
  "extra_mime_types", ((void *)0),
  "global_auth_file", ((void *)0),
  "hide_files_patterns", ((void *)0),
  "hexdump_file", ((void *)0),
  "index_files","index.html,index.htm,index.shtml,index.cgi,index.php",
  "listening_port", ((void *)0),
  "run_as_user", ((void *)0),
  "ssi_pattern", "**.shtml$|**.shtm$",
  "url_rewrites", ((void *)0),
  ((void *)0)
};
struct mg_server {
  struct ns_mgr ns_mgr;
  union socket_address lsa;
  mg_handler_t event_handler;
  char *config_options[NUM_OPTIONS];
};
union endpoint {
  int fd;
  struct ns_connection *nc;
};
enum endpoint_type {
 EP_NONE, EP_FILE, EP_CGI, EP_USER, EP_PUT, EP_CLIENT, EP_PROXY
};
struct connection {
  struct ns_connection *ns_conn;
  struct mg_connection mg_conn;
  struct mg_server *server;
  union endpoint endpoint;
  enum endpoint_type endpoint_type;
  char *path_info;
  char *request;
  int64_t num_bytes_recv;
  int64_t cl;
  ssize_t request_len;
};
static void open_local_endpoint(struct connection *conn, int skip_user);
static void close_local_endpoint(struct connection *conn);
static void mg_ev_handler(struct ns_connection *nc, int ev, void *p);
static const struct {
  const char *extension;
  size_t ext_len;
  const char *mime_type;
} static_builtin_mime_types[] = {
  {".html", 5, "text/html"},
  {".htm", 4, "text/html"},
  {".shtm", 5, "text/html"},
  {".shtml", 6, "text/html"},
  {".css", 4, "text/css"},
  {".js", 3, "application/javascript"},
  {".ico", 4, "image/x-icon"},
  {".gif", 4, "image/gif"},
  {".jpg", 4, "image/jpeg"},
  {".jpeg", 5, "image/jpeg"},
  {".png", 4, "image/png"},
  {".svg", 4, "image/svg+xml"},
  {".txt", 4, "text/plain"},
  {".torrent", 8, "application/x-bittorrent"},
  {".wav", 4, "audio/x-wav"},
  {".mp3", 4, "audio/x-mp3"},
  {".mid", 4, "audio/mid"},
  {".m3u", 4, "audio/x-mpegurl"},
  {".ogg", 4, "application/ogg"},
  {".ram", 4, "audio/x-pn-realaudio"},
  {".xml", 4, "text/xml"},
  {".json", 5, "application/json"},
  {".xslt", 5, "application/xml"},
  {".xsl", 4, "application/xml"},
  {".ra", 3, "audio/x-pn-realaudio"},
  {".doc", 4, "application/msword"},
  {".exe", 4, "application/octet-stream"},
  {".zip", 4, "application/x-zip-compressed"},
  {".xls", 4, "application/excel"},
  {".tgz", 4, "application/x-tar-gz"},
  {".tar", 4, "application/x-tar"},
  {".gz", 3, "application/x-gunzip"},
  {".arj", 4, "application/x-arj-compressed"},
  {".rar", 4, "application/x-rar-compressed"},
  {".rtf", 4, "application/rtf"},
  {".pdf", 4, "application/pdf"},
  {".swf", 4, "application/x-shockwave-flash"},
  {".mpg", 4, "video/mpeg"},
  {".webm", 5, "video/webm"},
  {".mpeg", 5, "video/mpeg"},
  {".mov", 4, "video/quicktime"},
  {".mp4", 4, "video/mp4"},
  {".m4v", 4, "video/x-m4v"},
  {".asf", 4, "video/x-ms-asf"},
  {".avi", 4, "video/x-msvideo"},
  {".bmp", 4, "image/bmp"},
  {".ttf", 4, "application/x-font-ttf"},
  {((void *)0), 0, ((void *)0)}
};
extern void * mmap (void *__addr, size_t __len, int __prot, int __flags, int __fd, __off64_t __offset) __asm__ ("" "mmap64") __attribute__ ((__nothrow__ , __leaf__))
                ;
extern int munmap (void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int mprotect (void *__addr, size_t __len, int __prot) __attribute__ ((__nothrow__ , __leaf__));
extern int msync (void *__addr, size_t __len, int __flags);
extern int madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ , __leaf__));
extern int mlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int munlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int mlockall (int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int munlockall (void) __attribute__ ((__nothrow__ , __leaf__));
extern int mincore (void *__start, size_t __len, unsigned char *__vec)
     __attribute__ ((__nothrow__ , __leaf__));
extern int shm_open (const char *__name, int __oflag, mode_t __mode);
extern int shm_unlink (const char *__name);
void *mg_mmap(FILE *fp, size_t size) {
  void *p = mmap(((void *)0), size, 0x1, 0x02, fileno(fp), 0);
  return p == ((void *) -1) ? ((void *)0) : p;
}
void mg_munmap(void *p, size_t size) {
  munmap(p, size);
}
static const char *next_option(const char *list, struct vec *val,
                               struct vec *eq_val) {
  if (list == ((void *)0) || *list == '\0') {
    list = ((void *)0);
  } else {
    val->ptr = list;
    if ((list = strchr(val->ptr, ',')) != ((void *)0)) {
      val->len = list - val->ptr;
      list++;
    } else {
      list = val->ptr + strlen(val->ptr);
      val->len = list - val->ptr;
    }
    if (eq_val != ((void *)0)) {
      eq_val->len = 0;
      eq_val->ptr = (const char *) memchr(val->ptr, '=', val->len);
      if (eq_val->ptr != ((void *)0)) {
        eq_val->ptr++;
        eq_val->len = val->ptr + val->len - eq_val->ptr;
        val->len = (eq_val->ptr - val->ptr) - 1;
      }
    }
  }
  return list;
}
static int mg_vsnprintf(char *buf, size_t buflen, const char *fmt, va_list ap) {
  int n;
  if (buflen < 1) return 0;
  n = vsnprintf(buf, buflen, fmt, ap);
  if (n < 0) {
    n = 0;
  } else if (n >= (int) buflen) {
    n = (int) buflen - 1;
  }
  buf[n] = '\0';
  return n;
}
static int mg_snprintf(char *buf, size_t buflen, const char *fmt, ...) {
  va_list ap;
  int n;
  __builtin_va_start(ap,fmt);
  n = mg_vsnprintf(buf, buflen, fmt, ap);
  __builtin_va_end(ap);
  return n;
}
static int get_request_len(const char *s, size_t buf_len) {
  const unsigned char *buf = (unsigned char *) s;
  size_t i;
  for (i = 0; i < buf_len; i++) {
    if (!((*__ctype_b_loc ())[(int) ((buf[i]))] & (unsigned short int) _ISprint) && buf[i] != '\r' && buf[i] != '\n' && buf[i] < 128) {
      return -1;
    } else if (buf[i] == '\n' && i + 1 < buf_len && buf[i + 1] == '\n') {
      return i + 2;
    } else if (buf[i] == '\n' && i + 2 < buf_len && buf[i + 1] == '\r' &&
               buf[i + 2] == '\n') {
      return i + 3;
    }
  }
  return 0;
}
static char *skip(char **buf, const char *delimiters) {
  char *p, *begin_word, *end_word, *end_delimiters;
  begin_word = *buf;
  end_word = begin_word + strcspn(begin_word, delimiters);
  end_delimiters = end_word + strspn(end_word, delimiters);
  for (p = end_word; p < end_delimiters; p++) {
    *p = '\0';
  }
  *buf = end_delimiters;
  return begin_word;
}
static void parse_http_headers(char **buf, struct mg_connection *ri) {
  size_t i;
  for (i = 0; i < (sizeof(ri->http_headers) / sizeof(ri->http_headers[0])); i++) {
    ri->http_headers[i].name = skip(buf, ": ");
    ri->http_headers[i].value = skip(buf, "\r\n");
    if (ri->http_headers[i].name[0] == '\0')
      break;
    ri->num_headers = i + 1;
  }
}
static const char *status_code_to_str(int status_code) {
  switch (status_code) {
    case 100: return "Continue";
    case 101: return "Switching Protocols";
    case 102: return "Processing";
    case 200: return "OK";
    case 201: return "Created";
    case 202: return "Accepted";
    case 203: return "Non-Authoritative Information";
    case 204: return "No Content";
    case 205: return "Reset Content";
    case 206: return "Partial Content";
    case 207: return "Multi-Status";
    case 208: return "Already Reported";
    case 226: return "IM Used";
    case 300: return "Multiple Choices";
    case 301: return "Moved Permanently";
    case 302: return "Found";
    case 303: return "See Other";
    case 304: return "Not Modified";
    case 305: return "Use Proxy";
    case 306: return "Switch Proxy";
    case 307: return "Temporary Redirect";
    case 308: return "Permanent Redirect";
    case 400: return "Bad Request";
    case 401: return "Unauthorized";
    case 402: return "Payment Required";
    case 403: return "Forbidden";
    case 404: return "Not Found";
    case 405: return "Method Not Allowed";
    case 406: return "Not Acceptable";
    case 407: return "Proxy Authentication Required";
    case 408: return "Request Timeout";
    case 409: return "Conflict";
    case 410: return "Gone";
    case 411: return "Length Required";
    case 412: return "Precondition Failed";
    case 413: return "Payload Too Large";
    case 414: return "URI Too Long";
    case 415: return "Unsupported Media Type";
    case 416: return "Requested Range Not Satisfiable";
    case 417: return "Expectation Failed";
    case 418: return "I\'m a teapot";
    case 422: return "Unprocessable Entity";
    case 423: return "Locked";
    case 424: return "Failed Dependency";
    case 426: return "Upgrade Required";
    case 428: return "Precondition Required";
    case 429: return "Too Many Requests";
    case 431: return "Request Header Fields Too Large";
    case 451: return "Unavailable For Legal Reasons";
    case 500: return "Internal Server Error";
    case 501: return "Not Implemented";
    case 502: return "Bad Gateway";
    case 503: return "Service Unavailable";
    case 504: return "Gateway Timeout";
    case 505: return "HTTP Version Not Supported";
    case 506: return "Variant Also Negotiates";
    case 507: return "Insufficient Storage";
    case 508: return "Loop Detected";
    case 510: return "Not Extended";
    case 511: return "Network Authentication Required";
    default: return "Server Error";
  }
}
static int call_user(struct connection *conn, enum mg_event ev) {
  return conn != ((void *)0) && conn->server != ((void *)0) &&
    conn->server->event_handler != ((void *)0) ?
    conn->server->event_handler(&conn->mg_conn, ev) : MG_FALSE;
}
static void send_http_error(struct connection *conn, int code,
                            const char *fmt, ...) {
  const char *message = status_code_to_str(code);
  const char *rewrites = conn->server->config_options[URL_REWRITES];
  char headers[200], body[200];
  struct vec a, b;
  va_list ap;
  int body_len, headers_len, match_code;
  conn->mg_conn.status_code = code;
  if (call_user(conn, MG_HTTP_ERROR) == MG_TRUE) {
    close_local_endpoint(conn);
    return;
  }
  while ((rewrites = next_option(rewrites, &a, &b)) != ((void *)0)) {
    if ((match_code = atoi(a.ptr)) > 0 && match_code == code) {
      struct mg_connection *c = &conn->mg_conn;
      c->status_code = 302;
      mg_printf(c, "HTTP/1.1 %d Moved\r\n"
                "Location: %.*s?code=%d&orig_uri=%s&query_string=%s\r\n\r\n",
                c->status_code, b.len, b.ptr, code, c->uri,
                c->query_string == ((void *)0) ? "" : c->query_string);
      close_local_endpoint(conn);
      return;
    }
  }
  body_len = mg_snprintf(body, sizeof(body), "%d %s\n", code, message);
  if (fmt != ((void *)0)) {
    __builtin_va_start(ap,fmt);
    body_len += mg_vsnprintf(body + body_len, sizeof(body) - body_len, fmt, ap);
    __builtin_va_end(ap);
  }
  if ((code >= 300 && code <= 399) || code == 204) {
    body_len = 0;
  }
  headers_len = mg_snprintf(headers, sizeof(headers),
                            "HTTP/1.1 %d %s\r\nContent-Length: %d\r\n"
                            "Content-Type: text/plain\r\n\r\n",
                            code, message, body_len);
  ns_send(conn->ns_conn, headers, headers_len);
  ns_send(conn->ns_conn, body, body_len);
  close_local_endpoint(conn);
}
static void write_chunk(struct connection *conn, const char *buf, int len) {
  char chunk_size[50];
  int n = mg_snprintf(chunk_size, sizeof(chunk_size), "%X\r\n", len);
  ns_send(conn->ns_conn, chunk_size, n);
  ns_send(conn->ns_conn, buf, len);
  ns_send(conn->ns_conn, "\r\n", 2);
}
size_t mg_printf(struct mg_connection *conn, const char *fmt, ...) {
  struct connection *c = ((struct connection *) ((char *) (conn) - __builtin_offsetof (struct connection, mg_conn)));
  va_list ap;
  __builtin_va_start(ap,fmt);
  ns_vprintf(c->ns_conn, fmt, ap);
  __builtin_va_end(ap);
  return c->ns_conn->send_iobuf.len;
}
static void ns_forward(struct ns_connection *from, struct ns_connection *to) {
  ;
  ns_send(to, from->recv_iobuf.buf, from->recv_iobuf.len);
  iobuf_remove(&from->recv_iobuf, from->recv_iobuf.len);
}
static process_id_t start_process(const char *interp, const char *cmd,
                                  const char *env, const char *envp[],
                                  const char *dir, sock_t sock) {
  char buf[500];
  process_id_t pid = fork();
  (void) env;
  if (pid == 0) {
    (void) chdir(dir);
    (void) dup2(sock, 0);
    (void) dup2(sock, 1);
    close(sock);
    signal(17, ((__sighandler_t) 0));
    if (interp == ((void *)0)) {
      execle(cmd, cmd, (char *) 0, envp);
    } else {
      execle(interp, interp, cmd, (char *) 0, envp);
    }
    snprintf(buf, sizeof(buf), "Status: 500\r\n\r\n"
             "500 Server Error: %s%s%s: %s", interp == ((void *)0) ? "" : interp,
             interp == ((void *)0) ? "" : " ", cmd, strerror((*__errno_location ())));
    send(1, buf, strlen(buf), 0);
    exit(1);
  }
  return pid;
}
struct cgi_env_block {
  struct mg_connection *conn;
  char buf[8192];
  const char *vars[64];
  int len;
  int nvars;
};
static char *addenv(struct cgi_env_block *block, const char *fmt, ...) {
  int n, space;
  char *added;
  va_list ap;
  space = sizeof(block->buf) - block->len - 2;
  ((space >= 0) ? (void) (0) : __assert_fail ("space >= 0", "mongoose.c", 2154, __PRETTY_FUNCTION__));
  added = block->buf + block->len;
  __builtin_va_start(ap,fmt);
  n = mg_vsnprintf(added, (size_t) space, fmt, ap);
  __builtin_va_end(ap);
  if (n > 0 && n + 1 < space &&
      block->nvars < (int) (sizeof(block->vars) / sizeof(block->vars[0])) - 2) {
    block->vars[block->nvars++] = added;
    block->len += n + 1;
  }
  return added;
}
static void addenv2(struct cgi_env_block *blk, const char *name) {
  const char *s;
  if ((s = getenv(name)) != ((void *)0)) addenv(blk, "%s=%s", name, s);
}
static void prepare_cgi_environment(struct connection *conn,
                                    const char *prog,
                                    struct cgi_env_block *blk) {
  struct mg_connection *ri = &conn->mg_conn;
  const char *s, *slash;
  char *p, **opts = conn->server->config_options;
  int i;
  blk->len = blk->nvars = 0;
  blk->conn = ri;
  if ((s = getenv("SERVER_NAME")) != ((void *)0)) {
    addenv(blk, "SERVER_NAME=%s", s);
  } else {
    addenv(blk, "SERVER_NAME=%s", ri->local_ip);
  }
  addenv(blk, "SERVER_ROOT=%s", opts[DOCUMENT_ROOT]);
  addenv(blk, "DOCUMENT_ROOT=%s", opts[DOCUMENT_ROOT]);
  addenv(blk, "SERVER_SOFTWARE=%s/%s", "Mongoose", "5.6");
  addenv(blk, "%s", "GATEWAY_INTERFACE=CGI/1.1");
  addenv(blk, "%s", "SERVER_PROTOCOL=HTTP/1.1");
  addenv(blk, "%s", "REDIRECT_STATUS=200");
  addenv(blk, "REQUEST_METHOD=%s", ri->request_method);
  addenv(blk, "REMOTE_ADDR=%s", ri->remote_ip);
  addenv(blk, "REMOTE_PORT=%d", ri->remote_port);
  addenv(blk, "REQUEST_URI=%s%s%s", ri->uri,
         ri->query_string == ((void *)0) ? "" : "?",
         ri->query_string == ((void *)0) ? "" : ri->query_string);
  if (conn->path_info != ((void *)0)) {
    addenv(blk, "SCRIPT_NAME=%.*s",
           (int) (strlen(ri->uri) - strlen(conn->path_info)), ri->uri);
    addenv(blk, "PATH_INFO=%s", conn->path_info);
  } else {
    s = strrchr(prog, '/');
    slash = strrchr(ri->uri, '/');
    addenv(blk, "SCRIPT_NAME=%.*s%s",
           slash == ((void *)0) ? 0 : (int) (slash - ri->uri), ri->uri,
           s == ((void *)0) ? prog : s);
  }
  addenv(blk, "SCRIPT_FILENAME=%s", prog);
  addenv(blk, "PATH_TRANSLATED=%s", prog);
  addenv(blk, "HTTPS=%s", conn->ns_conn->ssl != ((void *)0) ? "on" : "off");
  if ((s = mg_get_header(ri, "Content-Type")) != ((void *)0))
    addenv(blk, "CONTENT_TYPE=%s", s);
  if (ri->query_string != ((void *)0))
    addenv(blk, "QUERY_STRING=%s", ri->query_string);
  if ((s = mg_get_header(ri, "Content-Length")) != ((void *)0))
    addenv(blk, "CONTENT_LENGTH=%s", s);
  addenv2(blk, "PATH");
  addenv2(blk, "TMP");
  addenv2(blk, "TEMP");
  addenv2(blk, "TMPDIR");
  addenv2(blk, "PERLLIB");
  addenv2(blk, "MONGOOSE_CGI");
  addenv2(blk, "LD_LIBRARY_PATH");
  for (i = 0; i < ri->num_headers; i++) {
    p = addenv(blk, "HTTP_%s=%s",
        ri->http_headers[i].name, ri->http_headers[i].value);
    for (; *p != '=' && *p != '\0'; p++) {
      if (*p == '-')
        *p = '_';
      *p = (char) toupper(* (unsigned char *) p);
    }
  }
  blk->vars[blk->nvars++] = ((void *)0);
  blk->buf[blk->len++] = '\0';
  ((blk->nvars < (int) (sizeof(blk->vars) / sizeof(blk->vars[0]))) ? (void) (0) : __assert_fail ("blk->nvars < (int) (sizeof(blk->vars) / sizeof(blk->vars[0]))", "mongoose.c", 2276, __PRETTY_FUNCTION__));
  ((blk->len > 0) ? (void) (0) : __assert_fail ("blk->len > 0", "mongoose.c", 2277, __PRETTY_FUNCTION__));
  ((blk->len < (int) sizeof(blk->buf)) ? (void) (0) : __assert_fail ("blk->len < (int) sizeof(blk->buf)", "mongoose.c", 2278, __PRETTY_FUNCTION__));
}
static const char cgi_status[] = "HTTP/1.1 200 OK\r\n";
static void open_cgi_endpoint(struct connection *conn, const char *prog) {
  struct cgi_env_block blk;
  char dir[8192];
  const char *p;
  sock_t fds[2];
  prepare_cgi_environment(conn, prog, &blk);
  if ((p = strrchr(prog, '/')) == ((void *)0)) {
    mg_snprintf(dir, sizeof(dir), "%s", ".");
  } else {
    mg_snprintf(dir, sizeof(dir), "%.*s", (int) (p - prog), prog);
  }
  do {
    ns_socketpair(fds);
  } while (fds[0] == (-1));
  if (start_process(conn->server->config_options[CGI_INTERPRETER],
                    prog, blk.buf, blk.vars, dir, fds[1]) != 0) {
    conn->endpoint_type = EP_CGI;
    conn->endpoint.nc = ns_add_sock(&conn->server->ns_mgr, fds[0],
                                    mg_ev_handler, conn);
    conn->endpoint.nc->flags |= (1 << 22);
    ns_send(conn->ns_conn, cgi_status, sizeof(cgi_status) - 1);
    conn->mg_conn.status_code = 200;
    conn->ns_conn->flags |= (1 << 1);
    conn->endpoint.nc->send_iobuf = conn->ns_conn->recv_iobuf;
    iobuf_init(&conn->ns_conn->recv_iobuf, 0);
  } else {
    close(fds[0]);
    send_http_error(conn, 500, "start_process(%s) failed", prog);
  }
  close(fds[1]);
}
static void on_cgi_data(struct ns_connection *nc) {
  struct connection *conn = (struct connection *) nc->user_data;
  const char *status = "500";
  struct mg_connection c;
  if (!conn) return;
  ns_forward(nc, conn->ns_conn);
  if (conn->ns_conn->flags & (1 << 1)) {
    struct iobuf *io = &conn->ns_conn->send_iobuf;
    size_t s_len = sizeof(cgi_status) - 1;
    int len = get_request_len(io->buf + s_len, io->len - s_len);
    char buf[16384], *s = buf;
    if (len == 0) return;
    if (len < 0 || len > (int) sizeof(buf)) {
      len = io->len;
      iobuf_remove(io, io->len);
      send_http_error(conn, 500, "CGI program sent malformed headers: [%.*s]",
        len, io->buf);
    } else {
      memset(&c, 0, sizeof(c));
      memcpy(buf, io->buf + s_len, len);
      buf[len - 1] = '\0';
      parse_http_headers(&s, &c);
      if (mg_get_header(&c, "Location") != ((void *)0)) {
        status = "302";
      } else if ((status = (char *) mg_get_header(&c, "Status")) == ((void *)0)) {
        status = "200";
      }
      memcpy(io->buf + 9, status, 3);
      conn->mg_conn.status_code = atoi(status);
    }
    conn->ns_conn->flags &= ~(1 << 1);
  }
}
static char *mg_strdup(const char *str) {
  char *copy = (char *) malloc(strlen(str) + 1);
  if (copy != ((void *)0)) {
    strcpy(copy, str);
  }
  return copy;
}
static int isbyte(int n) {
  return n >= 0 && n <= 255;
}
static int parse_net(const char *spec, uint32_t *net, uint32_t *mask) {
  int n, a, b, c, d, slash = 32, len = 0;
  if ((sscanf(spec, "%d.%d.%d.%d/%d%n", &a, &b, &c, &d, &slash, &n) == 5 ||
      sscanf(spec, "%d.%d.%d.%d%n", &a, &b, &c, &d, &n) == 4) &&
      isbyte(a) && isbyte(b) && isbyte(c) && isbyte(d) &&
      slash >= 0 && slash < 33) {
    len = n;
    *net = ((uint32_t)a << 24) | ((uint32_t)b << 16) | ((uint32_t)c << 8) | d;
    *mask = slash ? 0xffffffffU << (32 - slash) : 0;
  }
  return len;
}
static int check_acl(const char *acl, uint32_t remote_ip) {
  int allowed, flag;
  uint32_t net, mask;
  struct vec vec;
  allowed = acl == ((void *)0) ? '+' : '-';
  while ((acl = next_option(acl, &vec, ((void *)0))) != ((void *)0)) {
    flag = vec.ptr[0];
    if ((flag != '+' && flag != '-') ||
        parse_net(&vec.ptr[1], &net, &mask) == 0) {
      return -1;
    }
    if (net == (remote_ip & mask)) {
      allowed = flag;
    }
  }
  return allowed == '+';
}
static void remove_double_dots_and_double_slashes(char *s) {
  char *p = s;
  while (*s != '\0') {
    *p++ = *s++;
    if (s[-1] == '/' || s[-1] == '\\') {
      while (s[0] != '\0') {
        if (s[0] == '/' || s[0] == '\\') { s++; }
        else if (s[0] == '.' && (s[1] == '/' || s[1] == '\\')) { s += 2; }
        else if (s[0] == '.' && s[1] == '.' && s[2] == '\0') { s += 2; }
        else if (s[0] == '.' && s[1] == '.' && (s[2] == '/' || s[2] == '\\')) { s += 3; }
        else { break; }
      }
    }
  }
  *p = '\0';
}
int mg_url_decode(const char *src, size_t src_len, char *dst,
                  size_t dst_len, int is_form_url_encoded) {
  size_t i, j = 0;
  int a, b;
  for (i = j = 0; i < src_len && j < dst_len - 1; i++, j++) {
    if (src[i] == '%' && i + 2 < src_len &&
        ((*__ctype_b_loc ())[(int) ((* (const unsigned char *) (src + i + 1)))] & (unsigned short int) _ISxdigit) &&
        ((*__ctype_b_loc ())[(int) ((* (const unsigned char *) (src + i + 2)))] & (unsigned short int) _ISxdigit)) {
      a = tolower(* (const unsigned char *) (src + i + 1));
      b = tolower(* (const unsigned char *) (src + i + 2));
      dst[j] = (char) (((((*__ctype_b_loc ())[(int) ((a))] & (unsigned short int) _ISdigit) ? (a) - '0' : (a) - 'W') << 4) | (((*__ctype_b_loc ())[(int) ((b))] & (unsigned short int) _ISdigit) ? (b) - '0' : (b) - 'W'));
      i += 2;
    } else if (is_form_url_encoded && src[i] == '+') {
      dst[j] = ' ';
    } else {
      dst[j] = src[i];
    }
  }
  dst[j] = '\0';
  return i >= src_len ? j : -1;
}
static int is_valid_http_method(const char *s) {
  return !strcmp(s, "GET") || !strcmp(s, "POST") || !strcmp(s, "HEAD") ||
    !strcmp(s, "CONNECT") || !strcmp(s, "PUT") || !strcmp(s, "DELETE") ||
    !strcmp(s, "OPTIONS") || !strcmp(s, "PROPFIND") || !strcmp(s, "MKCOL");
}
static size_t parse_http_message(char *buf, size_t len,
                                 struct mg_connection *ri) {
  int is_request, n;
  ri->request_method = ri->uri = ri->http_version = ri->query_string = ((void *)0);
  ri->num_headers = ri->status_code = ri->is_websocket = ri->content_len = 0;
  if (len < 1) return ~0;
  buf[len - 1] = '\0';
  while (*buf != '\0' && ((*__ctype_b_loc ())[(int) ((* (unsigned char *) buf))] & (unsigned short int) _ISspace)) {
    buf++;
  }
  ri->request_method = skip(&buf, " ");
  ri->uri = skip(&buf, " ");
  ri->http_version = skip(&buf, "\r\n");
  is_request = is_valid_http_method(ri->request_method);
  if ((is_request && memcmp(ri->http_version, "HTTP/", 5) != 0) ||
      (!is_request && memcmp(ri->request_method, "HTTP/", 5) != 0)) {
    len = ~0;
  } else {
    if (is_request) {
      ri->http_version += 5;
    } else {
      ri->status_code = atoi(ri->uri);
    }
    parse_http_headers(&buf, ri);
    if ((ri->query_string = strchr(ri->uri, '?')) != ((void *)0)) {
      *(char *) ri->query_string++ = '\0';
    }
    n = (int) strlen(ri->uri);
    mg_url_decode(ri->uri, n, (char *) ri->uri, n + 1, 0);
    if (*ri->uri == '/' || *ri->uri == '.') {
      remove_double_dots_and_double_slashes((char *) ri->uri);
    }
  }
  return len;
}
static int lowercase(const char *s) {
  return tolower(* (const unsigned char *) s);
}
static int mg_strcasecmp(const char *s1, const char *s2) {
  int diff;
  do {
    diff = lowercase(s1++) - lowercase(s2++);
  } while (diff == 0 && s1[-1] != '\0');
  return diff;
}
static int mg_strncasecmp(const char *s1, const char *s2, size_t len) {
  int diff = 0;
  if (len > 0)
    do {
      diff = lowercase(s1++) - lowercase(s2++);
    } while (diff == 0 && s1[-1] != '\0' && --len > 0);
  return diff;
}
const char *mg_get_header(const struct mg_connection *ri, const char *s) {
  int i;
  for (i = 0; i < ri->num_headers; i++)
    if (!mg_strcasecmp(s, ri->http_headers[i].name))
      return ri->http_headers[i].value;
  return ((void *)0);
}
int mg_match_prefix(const char *pattern, ssize_t pattern_len, const char *str) {
  const char *or_str;
  int len, res, i = 0, j = 0;
  if ((or_str = (const char *) memchr(pattern, '|', pattern_len)) != ((void *)0)) {
    res = mg_match_prefix(pattern, or_str - pattern, str);
    return res > 0 ? res : mg_match_prefix(or_str + 1,
      (pattern + pattern_len) - (or_str + 1), str);
  }
  for (; i < pattern_len; i++, j++) {
    if (pattern[i] == '?' && str[j] != '\0') {
      continue;
    } else if (pattern[i] == '$') {
      return str[j] == '\0' ? j : -1;
    } else if (pattern[i] == '*') {
      i++;
      if (pattern[i] == '*') {
        i++;
        len = (int) strlen(str + j);
      } else {
        len = (int) strcspn(str + j, "/");
      }
      if (i == pattern_len) {
        return j + len;
      }
      do {
        res = mg_match_prefix(pattern + i, pattern_len - i, str + j + len);
      } while (res == -1 && len-- > 0);
      return res == -1 ? -1 : j + res + len;
    } else if (lowercase(&pattern[i]) != lowercase(&str[j])) {
      return -1;
    }
  }
  return j;
}
void mg_template(struct mg_connection *conn, const char *s,
                 struct mg_expansion *expansions) {
  int i, j, pos = 0, inside_marker = 0;
  for (i = 0; s[i] != '\0'; i++) {
    if (inside_marker == 0 && !memcmp(&s[i], "{{", 2)) {
      if (i > pos) {
        mg_send_data(conn, &s[pos], i - pos);
      }
      pos = i;
      inside_marker = 1;
    }
    if (inside_marker == 1 && !memcmp(&s[i], "}}", 2)) {
      for (j = 0; expansions[j].keyword != ((void *)0); j++) {
        const char *kw = expansions[j].keyword;
        if ((int) strlen(kw) == i - (pos + 2) &&
            memcmp(kw, &s[pos + 2], i - (pos + 2)) == 0) {
          expansions[j].handler(conn);
          pos = i + 2;
          break;
        }
      }
      inside_marker = 0;
    }
  }
  if (i > pos) {
    mg_send_data(conn, &s[pos], i - pos);
  }
}
static int is_dav_request(const struct connection *conn) {
  const char *s = conn->mg_conn.request_method;
  return !strcmp(s, "PUT") || !strcmp(s, "DELETE") ||
    !strcmp(s, "MKCOL") || !strcmp(s, "PROPFIND");
}
static int must_hide_file(struct connection *conn, const char *path) {
  const char *pw_pattern = "**" ".htpasswd" "$";
  const char *pattern = conn->server->config_options[HIDE_FILES_PATTERN];
  return mg_match_prefix(pw_pattern, strlen(pw_pattern), path) > 0 ||
    (pattern != ((void *)0) && mg_match_prefix(pattern, strlen(pattern), path) > 0);
}
static int convert_uri_to_file_name(struct connection *conn, char *buf,
                                    size_t buf_len, file_stat_t *st) {
  struct vec a, b;
  const char *rewrites = conn->server->config_options[URL_REWRITES];
  const char *root =
    is_dav_request(conn) && conn->server->config_options[DAV_ROOT] != ((void *)0) ?
    conn->server->config_options[DAV_ROOT] :
    conn->server->config_options[DOCUMENT_ROOT];
  const char *cgi_pat = conn->server->config_options[CGI_PATTERN];
  char *p;
  const char *uri = conn->mg_conn.uri;
  const char *domain = mg_get_header(&conn->mg_conn, "Host");
  size_t match_len, root_len = root == ((void *)0) ? 0 : strlen(root);
  if (rewrites != ((void *)0) && domain != ((void *)0)) {
    const char *colon = strchr(domain, ':');
    size_t domain_len = colon == ((void *)0) ? strlen(domain) : colon - domain;
    while ((rewrites = next_option(rewrites, &a, &b)) != ((void *)0)) {
      if (a.len > 1 && a.ptr[0] == '@' && a.len == domain_len + 1 &&
          mg_strncasecmp(a.ptr + 1, domain, domain_len) == 0) {
        root = b.ptr;
        root_len = b.len;
        break;
      }
    }
  }
  if (root == ((void *)0) || root_len == 0) return 0;
  mg_snprintf(buf, buf_len, "%.*s%s", root_len, root, uri);
  rewrites = conn->server->config_options[URL_REWRITES];
  while ((rewrites = next_option(rewrites, &a, &b)) != ((void *)0)) {
    if ((match_len = mg_match_prefix(a.ptr, a.len, uri)) > 0) {
      mg_snprintf(buf, buf_len, "%.*s%s", (int) b.len, b.ptr, uri + match_len);
      break;
    }
  }
  if (stat(buf, st) == 0) return 1;
  for (p = buf + strlen(root) + 2; *p != '\0'; p++) {
    if (*p == '/') {
      *p = '\0';
      if (mg_match_prefix(cgi_pat, strlen(cgi_pat), buf) > 0 &&
          !stat(buf, st)) {
      ;
        *p = '/';
        conn->path_info = mg_strdup(p);
        *p = '\0';
        return 1;
      }
      *p = '/';
    }
  }
  return 0;
}
static int should_keep_alive(const struct mg_connection *conn) {
  struct connection *c = ((struct connection *) ((char *) (conn) - __builtin_offsetof (struct connection, mg_conn)));
  const char *method = conn->request_method;
  const char *http_version = conn->http_version;
  const char *header = mg_get_header(conn, "Connection");
  return method != ((void *)0) &&
    (!strcmp(method, "GET") || c->endpoint_type == EP_USER) &&
    ((header != ((void *)0) && !mg_strcasecmp(header, "keep-alive")) ||
     (header == ((void *)0) && http_version && !strcmp(http_version, "1.1")));
}
size_t mg_write(struct mg_connection *c, const void *buf, size_t len) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  ns_send(conn->ns_conn, buf, len);
  return conn->ns_conn->send_iobuf.len;
}
void mg_send_status(struct mg_connection *c, int status) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  if (c->status_code == 0) {
    c->status_code = status;
    mg_printf(c, "HTTP/1.1 %d %s\r\n", status, status_code_to_str(status));
  }
  conn->ns_conn->flags |= (1 << 21);
}
void mg_send_header(struct mg_connection *c, const char *name, const char *v) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  if (c->status_code == 0) {
    c->status_code = 200;
    mg_printf(c, "HTTP/1.1 %d %s\r\n", 200, status_code_to_str(200));
  }
  mg_printf(c, "%s: %s\r\n", name, v);
  conn->ns_conn->flags |= (1 << 21);
}
static void terminate_headers(struct mg_connection *c) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  if (!(conn->ns_conn->flags & (1 << 20))) {
    mg_send_header(c, "Transfer-Encoding", "chunked");
    mg_write(c, "\r\n", 2);
    conn->ns_conn->flags |= (1 << 20);
  }
}
size_t mg_send_data(struct mg_connection *c, const void *data, int data_len) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  terminate_headers(c);
  write_chunk(((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn))), (const char *) data, data_len);
  return conn->ns_conn->send_iobuf.len;
}
size_t mg_printf_data(struct mg_connection *c, const char *fmt, ...) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  va_list ap;
  int len;
  char mem[8192], *buf = mem;
  terminate_headers(c);
  __builtin_va_start(ap,fmt);
  len = ns_avprintf(&buf, sizeof(mem), fmt, ap);
  __builtin_va_end(ap);
  if (len >= 0) {
    write_chunk((struct connection *) conn, buf, len);
  }
  if (buf != mem && buf != ((void *)0)) {
    free(buf);
  }
  return conn->ns_conn->send_iobuf.len;
}
static int is_big_endian(void) {
  static const int n = 1;
  return ((char *) &n)[0] == 0;
}
union char64long16 { unsigned char c[64]; uint32_t l[16]; };
static uint32_t blk0(union char64long16 *block, int i) {
  if (!is_big_endian()) {
    block->l[i] = ((((block->l[i]) << (24)) | ((block->l[i]) >> (32 - (24)))) & 0xFF00FF00) |
      ((((block->l[i]) << (8)) | ((block->l[i]) >> (32 - (8)))) & 0x00FF00FF);
  }
  return block->l[i];
}
typedef struct {
    uint32_t state[5];
    uint32_t count[2];
    unsigned char buffer[64];
} SHA1_CTX;
static void SHA1Transform(uint32_t state[5], const unsigned char buffer[64]) {
  uint32_t a, b, c, d, e;
  union char64long16 block[1];
  memcpy(block, buffer, 64);
  a = state[0];
  b = state[1];
  c = state[2];
  d = state[3];
  e = state[4];
  e+=((b&(c^d))^d)+blk0(block, 0)+0x5A827999+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=((a&(b^c))^c)+blk0(block, 1)+0x5A827999+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=((e&(a^b))^b)+blk0(block, 2)+0x5A827999+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=((d&(e^a))^a)+blk0(block, 3)+0x5A827999+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));;
  a+=((c&(d^e))^e)+blk0(block, 4)+0x5A827999+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=((b&(c^d))^d)+blk0(block, 5)+0x5A827999+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=((a&(b^c))^c)+blk0(block, 6)+0x5A827999+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=((e&(a^b))^b)+blk0(block, 7)+0x5A827999+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));;
  b+=((d&(e^a))^a)+blk0(block, 8)+0x5A827999+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=((c&(d^e))^e)+blk0(block, 9)+0x5A827999+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=((b&(c^d))^d)+blk0(block, 10)+0x5A827999+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=((a&(b^c))^c)+blk0(block, 11)+0x5A827999+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));;
  c+=((e&(a^b))^b)+blk0(block, 12)+0x5A827999+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=((d&(e^a))^a)+blk0(block, 13)+0x5A827999+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=((c&(d^e))^e)+blk0(block, 14)+0x5A827999+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=((b&(c^d))^d)+blk0(block, 15)+0x5A827999+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));;
  d+=((a&(b^c))^c)+(block->l[16&15] = (((block->l[(16 +13)&15]^block->l[(16 +8)&15] ^block->l[(16 +2)&15]^block->l[16&15]) << (1)) | ((block->l[(16 +13)&15]^block->l[(16 +8)&15] ^block->l[(16 +2)&15]^block->l[16&15]) >> (32 - (1)))))+0x5A827999+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=((e&(a^b))^b)+(block->l[17&15] = (((block->l[(17 +13)&15]^block->l[(17 +8)&15] ^block->l[(17 +2)&15]^block->l[17&15]) << (1)) | ((block->l[(17 +13)&15]^block->l[(17 +8)&15] ^block->l[(17 +2)&15]^block->l[17&15]) >> (32 - (1)))))+0x5A827999+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=((d&(e^a))^a)+(block->l[18&15] = (((block->l[(18 +13)&15]^block->l[(18 +8)&15] ^block->l[(18 +2)&15]^block->l[18&15]) << (1)) | ((block->l[(18 +13)&15]^block->l[(18 +8)&15] ^block->l[(18 +2)&15]^block->l[18&15]) >> (32 - (1)))))+0x5A827999+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=((c&(d^e))^e)+(block->l[19&15] = (((block->l[(19 +13)&15]^block->l[(19 +8)&15] ^block->l[(19 +2)&15]^block->l[19&15]) << (1)) | ((block->l[(19 +13)&15]^block->l[(19 +8)&15] ^block->l[(19 +2)&15]^block->l[19&15]) >> (32 - (1)))))+0x5A827999+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));;
  e+=(b^c^d)+(block->l[20&15] = (((block->l[(20 +13)&15]^block->l[(20 +8)&15] ^block->l[(20 +2)&15]^block->l[20&15]) << (1)) | ((block->l[(20 +13)&15]^block->l[(20 +8)&15] ^block->l[(20 +2)&15]^block->l[20&15]) >> (32 - (1)))))+0x6ED9EBA1+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(a^b^c)+(block->l[21&15] = (((block->l[(21 +13)&15]^block->l[(21 +8)&15] ^block->l[(21 +2)&15]^block->l[21&15]) << (1)) | ((block->l[(21 +13)&15]^block->l[(21 +8)&15] ^block->l[(21 +2)&15]^block->l[21&15]) >> (32 - (1)))))+0x6ED9EBA1+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(e^a^b)+(block->l[22&15] = (((block->l[(22 +13)&15]^block->l[(22 +8)&15] ^block->l[(22 +2)&15]^block->l[22&15]) << (1)) | ((block->l[(22 +13)&15]^block->l[(22 +8)&15] ^block->l[(22 +2)&15]^block->l[22&15]) >> (32 - (1)))))+0x6ED9EBA1+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(d^e^a)+(block->l[23&15] = (((block->l[(23 +13)&15]^block->l[(23 +8)&15] ^block->l[(23 +2)&15]^block->l[23&15]) << (1)) | ((block->l[(23 +13)&15]^block->l[(23 +8)&15] ^block->l[(23 +2)&15]^block->l[23&15]) >> (32 - (1)))))+0x6ED9EBA1+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));;
  a+=(c^d^e)+(block->l[24&15] = (((block->l[(24 +13)&15]^block->l[(24 +8)&15] ^block->l[(24 +2)&15]^block->l[24&15]) << (1)) | ((block->l[(24 +13)&15]^block->l[(24 +8)&15] ^block->l[(24 +2)&15]^block->l[24&15]) >> (32 - (1)))))+0x6ED9EBA1+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(b^c^d)+(block->l[25&15] = (((block->l[(25 +13)&15]^block->l[(25 +8)&15] ^block->l[(25 +2)&15]^block->l[25&15]) << (1)) | ((block->l[(25 +13)&15]^block->l[(25 +8)&15] ^block->l[(25 +2)&15]^block->l[25&15]) >> (32 - (1)))))+0x6ED9EBA1+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(a^b^c)+(block->l[26&15] = (((block->l[(26 +13)&15]^block->l[(26 +8)&15] ^block->l[(26 +2)&15]^block->l[26&15]) << (1)) | ((block->l[(26 +13)&15]^block->l[(26 +8)&15] ^block->l[(26 +2)&15]^block->l[26&15]) >> (32 - (1)))))+0x6ED9EBA1+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(e^a^b)+(block->l[27&15] = (((block->l[(27 +13)&15]^block->l[(27 +8)&15] ^block->l[(27 +2)&15]^block->l[27&15]) << (1)) | ((block->l[(27 +13)&15]^block->l[(27 +8)&15] ^block->l[(27 +2)&15]^block->l[27&15]) >> (32 - (1)))))+0x6ED9EBA1+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));;
  b+=(d^e^a)+(block->l[28&15] = (((block->l[(28 +13)&15]^block->l[(28 +8)&15] ^block->l[(28 +2)&15]^block->l[28&15]) << (1)) | ((block->l[(28 +13)&15]^block->l[(28 +8)&15] ^block->l[(28 +2)&15]^block->l[28&15]) >> (32 - (1)))))+0x6ED9EBA1+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(c^d^e)+(block->l[29&15] = (((block->l[(29 +13)&15]^block->l[(29 +8)&15] ^block->l[(29 +2)&15]^block->l[29&15]) << (1)) | ((block->l[(29 +13)&15]^block->l[(29 +8)&15] ^block->l[(29 +2)&15]^block->l[29&15]) >> (32 - (1)))))+0x6ED9EBA1+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(b^c^d)+(block->l[30&15] = (((block->l[(30 +13)&15]^block->l[(30 +8)&15] ^block->l[(30 +2)&15]^block->l[30&15]) << (1)) | ((block->l[(30 +13)&15]^block->l[(30 +8)&15] ^block->l[(30 +2)&15]^block->l[30&15]) >> (32 - (1)))))+0x6ED9EBA1+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(a^b^c)+(block->l[31&15] = (((block->l[(31 +13)&15]^block->l[(31 +8)&15] ^block->l[(31 +2)&15]^block->l[31&15]) << (1)) | ((block->l[(31 +13)&15]^block->l[(31 +8)&15] ^block->l[(31 +2)&15]^block->l[31&15]) >> (32 - (1)))))+0x6ED9EBA1+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));;
  c+=(e^a^b)+(block->l[32&15] = (((block->l[(32 +13)&15]^block->l[(32 +8)&15] ^block->l[(32 +2)&15]^block->l[32&15]) << (1)) | ((block->l[(32 +13)&15]^block->l[(32 +8)&15] ^block->l[(32 +2)&15]^block->l[32&15]) >> (32 - (1)))))+0x6ED9EBA1+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(d^e^a)+(block->l[33&15] = (((block->l[(33 +13)&15]^block->l[(33 +8)&15] ^block->l[(33 +2)&15]^block->l[33&15]) << (1)) | ((block->l[(33 +13)&15]^block->l[(33 +8)&15] ^block->l[(33 +2)&15]^block->l[33&15]) >> (32 - (1)))))+0x6ED9EBA1+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(c^d^e)+(block->l[34&15] = (((block->l[(34 +13)&15]^block->l[(34 +8)&15] ^block->l[(34 +2)&15]^block->l[34&15]) << (1)) | ((block->l[(34 +13)&15]^block->l[(34 +8)&15] ^block->l[(34 +2)&15]^block->l[34&15]) >> (32 - (1)))))+0x6ED9EBA1+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(b^c^d)+(block->l[35&15] = (((block->l[(35 +13)&15]^block->l[(35 +8)&15] ^block->l[(35 +2)&15]^block->l[35&15]) << (1)) | ((block->l[(35 +13)&15]^block->l[(35 +8)&15] ^block->l[(35 +2)&15]^block->l[35&15]) >> (32 - (1)))))+0x6ED9EBA1+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));;
  d+=(a^b^c)+(block->l[36&15] = (((block->l[(36 +13)&15]^block->l[(36 +8)&15] ^block->l[(36 +2)&15]^block->l[36&15]) << (1)) | ((block->l[(36 +13)&15]^block->l[(36 +8)&15] ^block->l[(36 +2)&15]^block->l[36&15]) >> (32 - (1)))))+0x6ED9EBA1+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(e^a^b)+(block->l[37&15] = (((block->l[(37 +13)&15]^block->l[(37 +8)&15] ^block->l[(37 +2)&15]^block->l[37&15]) << (1)) | ((block->l[(37 +13)&15]^block->l[(37 +8)&15] ^block->l[(37 +2)&15]^block->l[37&15]) >> (32 - (1)))))+0x6ED9EBA1+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(d^e^a)+(block->l[38&15] = (((block->l[(38 +13)&15]^block->l[(38 +8)&15] ^block->l[(38 +2)&15]^block->l[38&15]) << (1)) | ((block->l[(38 +13)&15]^block->l[(38 +8)&15] ^block->l[(38 +2)&15]^block->l[38&15]) >> (32 - (1)))))+0x6ED9EBA1+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(c^d^e)+(block->l[39&15] = (((block->l[(39 +13)&15]^block->l[(39 +8)&15] ^block->l[(39 +2)&15]^block->l[39&15]) << (1)) | ((block->l[(39 +13)&15]^block->l[(39 +8)&15] ^block->l[(39 +2)&15]^block->l[39&15]) >> (32 - (1)))))+0x6ED9EBA1+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));;
  e+=(((b|c)&d)|(b&c))+(block->l[40&15] = (((block->l[(40 +13)&15]^block->l[(40 +8)&15] ^block->l[(40 +2)&15]^block->l[40&15]) << (1)) | ((block->l[(40 +13)&15]^block->l[(40 +8)&15] ^block->l[(40 +2)&15]^block->l[40&15]) >> (32 - (1)))))+0x8F1BBCDC+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(((a|b)&c)|(a&b))+(block->l[41&15] = (((block->l[(41 +13)&15]^block->l[(41 +8)&15] ^block->l[(41 +2)&15]^block->l[41&15]) << (1)) | ((block->l[(41 +13)&15]^block->l[(41 +8)&15] ^block->l[(41 +2)&15]^block->l[41&15]) >> (32 - (1)))))+0x8F1BBCDC+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(((e|a)&b)|(e&a))+(block->l[42&15] = (((block->l[(42 +13)&15]^block->l[(42 +8)&15] ^block->l[(42 +2)&15]^block->l[42&15]) << (1)) | ((block->l[(42 +13)&15]^block->l[(42 +8)&15] ^block->l[(42 +2)&15]^block->l[42&15]) >> (32 - (1)))))+0x8F1BBCDC+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(((d|e)&a)|(d&e))+(block->l[43&15] = (((block->l[(43 +13)&15]^block->l[(43 +8)&15] ^block->l[(43 +2)&15]^block->l[43&15]) << (1)) | ((block->l[(43 +13)&15]^block->l[(43 +8)&15] ^block->l[(43 +2)&15]^block->l[43&15]) >> (32 - (1)))))+0x8F1BBCDC+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));;
  a+=(((c|d)&e)|(c&d))+(block->l[44&15] = (((block->l[(44 +13)&15]^block->l[(44 +8)&15] ^block->l[(44 +2)&15]^block->l[44&15]) << (1)) | ((block->l[(44 +13)&15]^block->l[(44 +8)&15] ^block->l[(44 +2)&15]^block->l[44&15]) >> (32 - (1)))))+0x8F1BBCDC+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(((b|c)&d)|(b&c))+(block->l[45&15] = (((block->l[(45 +13)&15]^block->l[(45 +8)&15] ^block->l[(45 +2)&15]^block->l[45&15]) << (1)) | ((block->l[(45 +13)&15]^block->l[(45 +8)&15] ^block->l[(45 +2)&15]^block->l[45&15]) >> (32 - (1)))))+0x8F1BBCDC+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(((a|b)&c)|(a&b))+(block->l[46&15] = (((block->l[(46 +13)&15]^block->l[(46 +8)&15] ^block->l[(46 +2)&15]^block->l[46&15]) << (1)) | ((block->l[(46 +13)&15]^block->l[(46 +8)&15] ^block->l[(46 +2)&15]^block->l[46&15]) >> (32 - (1)))))+0x8F1BBCDC+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(((e|a)&b)|(e&a))+(block->l[47&15] = (((block->l[(47 +13)&15]^block->l[(47 +8)&15] ^block->l[(47 +2)&15]^block->l[47&15]) << (1)) | ((block->l[(47 +13)&15]^block->l[(47 +8)&15] ^block->l[(47 +2)&15]^block->l[47&15]) >> (32 - (1)))))+0x8F1BBCDC+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));;
  b+=(((d|e)&a)|(d&e))+(block->l[48&15] = (((block->l[(48 +13)&15]^block->l[(48 +8)&15] ^block->l[(48 +2)&15]^block->l[48&15]) << (1)) | ((block->l[(48 +13)&15]^block->l[(48 +8)&15] ^block->l[(48 +2)&15]^block->l[48&15]) >> (32 - (1)))))+0x8F1BBCDC+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(((c|d)&e)|(c&d))+(block->l[49&15] = (((block->l[(49 +13)&15]^block->l[(49 +8)&15] ^block->l[(49 +2)&15]^block->l[49&15]) << (1)) | ((block->l[(49 +13)&15]^block->l[(49 +8)&15] ^block->l[(49 +2)&15]^block->l[49&15]) >> (32 - (1)))))+0x8F1BBCDC+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(((b|c)&d)|(b&c))+(block->l[50&15] = (((block->l[(50 +13)&15]^block->l[(50 +8)&15] ^block->l[(50 +2)&15]^block->l[50&15]) << (1)) | ((block->l[(50 +13)&15]^block->l[(50 +8)&15] ^block->l[(50 +2)&15]^block->l[50&15]) >> (32 - (1)))))+0x8F1BBCDC+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(((a|b)&c)|(a&b))+(block->l[51&15] = (((block->l[(51 +13)&15]^block->l[(51 +8)&15] ^block->l[(51 +2)&15]^block->l[51&15]) << (1)) | ((block->l[(51 +13)&15]^block->l[(51 +8)&15] ^block->l[(51 +2)&15]^block->l[51&15]) >> (32 - (1)))))+0x8F1BBCDC+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));;
  c+=(((e|a)&b)|(e&a))+(block->l[52&15] = (((block->l[(52 +13)&15]^block->l[(52 +8)&15] ^block->l[(52 +2)&15]^block->l[52&15]) << (1)) | ((block->l[(52 +13)&15]^block->l[(52 +8)&15] ^block->l[(52 +2)&15]^block->l[52&15]) >> (32 - (1)))))+0x8F1BBCDC+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(((d|e)&a)|(d&e))+(block->l[53&15] = (((block->l[(53 +13)&15]^block->l[(53 +8)&15] ^block->l[(53 +2)&15]^block->l[53&15]) << (1)) | ((block->l[(53 +13)&15]^block->l[(53 +8)&15] ^block->l[(53 +2)&15]^block->l[53&15]) >> (32 - (1)))))+0x8F1BBCDC+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(((c|d)&e)|(c&d))+(block->l[54&15] = (((block->l[(54 +13)&15]^block->l[(54 +8)&15] ^block->l[(54 +2)&15]^block->l[54&15]) << (1)) | ((block->l[(54 +13)&15]^block->l[(54 +8)&15] ^block->l[(54 +2)&15]^block->l[54&15]) >> (32 - (1)))))+0x8F1BBCDC+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(((b|c)&d)|(b&c))+(block->l[55&15] = (((block->l[(55 +13)&15]^block->l[(55 +8)&15] ^block->l[(55 +2)&15]^block->l[55&15]) << (1)) | ((block->l[(55 +13)&15]^block->l[(55 +8)&15] ^block->l[(55 +2)&15]^block->l[55&15]) >> (32 - (1)))))+0x8F1BBCDC+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));;
  d+=(((a|b)&c)|(a&b))+(block->l[56&15] = (((block->l[(56 +13)&15]^block->l[(56 +8)&15] ^block->l[(56 +2)&15]^block->l[56&15]) << (1)) | ((block->l[(56 +13)&15]^block->l[(56 +8)&15] ^block->l[(56 +2)&15]^block->l[56&15]) >> (32 - (1)))))+0x8F1BBCDC+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(((e|a)&b)|(e&a))+(block->l[57&15] = (((block->l[(57 +13)&15]^block->l[(57 +8)&15] ^block->l[(57 +2)&15]^block->l[57&15]) << (1)) | ((block->l[(57 +13)&15]^block->l[(57 +8)&15] ^block->l[(57 +2)&15]^block->l[57&15]) >> (32 - (1)))))+0x8F1BBCDC+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(((d|e)&a)|(d&e))+(block->l[58&15] = (((block->l[(58 +13)&15]^block->l[(58 +8)&15] ^block->l[(58 +2)&15]^block->l[58&15]) << (1)) | ((block->l[(58 +13)&15]^block->l[(58 +8)&15] ^block->l[(58 +2)&15]^block->l[58&15]) >> (32 - (1)))))+0x8F1BBCDC+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(((c|d)&e)|(c&d))+(block->l[59&15] = (((block->l[(59 +13)&15]^block->l[(59 +8)&15] ^block->l[(59 +2)&15]^block->l[59&15]) << (1)) | ((block->l[(59 +13)&15]^block->l[(59 +8)&15] ^block->l[(59 +2)&15]^block->l[59&15]) >> (32 - (1)))))+0x8F1BBCDC+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));;
  e+=(b^c^d)+(block->l[60&15] = (((block->l[(60 +13)&15]^block->l[(60 +8)&15] ^block->l[(60 +2)&15]^block->l[60&15]) << (1)) | ((block->l[(60 +13)&15]^block->l[(60 +8)&15] ^block->l[(60 +2)&15]^block->l[60&15]) >> (32 - (1)))))+0xCA62C1D6+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(a^b^c)+(block->l[61&15] = (((block->l[(61 +13)&15]^block->l[(61 +8)&15] ^block->l[(61 +2)&15]^block->l[61&15]) << (1)) | ((block->l[(61 +13)&15]^block->l[(61 +8)&15] ^block->l[(61 +2)&15]^block->l[61&15]) >> (32 - (1)))))+0xCA62C1D6+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(e^a^b)+(block->l[62&15] = (((block->l[(62 +13)&15]^block->l[(62 +8)&15] ^block->l[(62 +2)&15]^block->l[62&15]) << (1)) | ((block->l[(62 +13)&15]^block->l[(62 +8)&15] ^block->l[(62 +2)&15]^block->l[62&15]) >> (32 - (1)))))+0xCA62C1D6+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(d^e^a)+(block->l[63&15] = (((block->l[(63 +13)&15]^block->l[(63 +8)&15] ^block->l[(63 +2)&15]^block->l[63&15]) << (1)) | ((block->l[(63 +13)&15]^block->l[(63 +8)&15] ^block->l[(63 +2)&15]^block->l[63&15]) >> (32 - (1)))))+0xCA62C1D6+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));;
  a+=(c^d^e)+(block->l[64&15] = (((block->l[(64 +13)&15]^block->l[(64 +8)&15] ^block->l[(64 +2)&15]^block->l[64&15]) << (1)) | ((block->l[(64 +13)&15]^block->l[(64 +8)&15] ^block->l[(64 +2)&15]^block->l[64&15]) >> (32 - (1)))))+0xCA62C1D6+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(b^c^d)+(block->l[65&15] = (((block->l[(65 +13)&15]^block->l[(65 +8)&15] ^block->l[(65 +2)&15]^block->l[65&15]) << (1)) | ((block->l[(65 +13)&15]^block->l[(65 +8)&15] ^block->l[(65 +2)&15]^block->l[65&15]) >> (32 - (1)))))+0xCA62C1D6+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(a^b^c)+(block->l[66&15] = (((block->l[(66 +13)&15]^block->l[(66 +8)&15] ^block->l[(66 +2)&15]^block->l[66&15]) << (1)) | ((block->l[(66 +13)&15]^block->l[(66 +8)&15] ^block->l[(66 +2)&15]^block->l[66&15]) >> (32 - (1)))))+0xCA62C1D6+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(e^a^b)+(block->l[67&15] = (((block->l[(67 +13)&15]^block->l[(67 +8)&15] ^block->l[(67 +2)&15]^block->l[67&15]) << (1)) | ((block->l[(67 +13)&15]^block->l[(67 +8)&15] ^block->l[(67 +2)&15]^block->l[67&15]) >> (32 - (1)))))+0xCA62C1D6+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));;
  b+=(d^e^a)+(block->l[68&15] = (((block->l[(68 +13)&15]^block->l[(68 +8)&15] ^block->l[(68 +2)&15]^block->l[68&15]) << (1)) | ((block->l[(68 +13)&15]^block->l[(68 +8)&15] ^block->l[(68 +2)&15]^block->l[68&15]) >> (32 - (1)))))+0xCA62C1D6+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(c^d^e)+(block->l[69&15] = (((block->l[(69 +13)&15]^block->l[(69 +8)&15] ^block->l[(69 +2)&15]^block->l[69&15]) << (1)) | ((block->l[(69 +13)&15]^block->l[(69 +8)&15] ^block->l[(69 +2)&15]^block->l[69&15]) >> (32 - (1)))))+0xCA62C1D6+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(b^c^d)+(block->l[70&15] = (((block->l[(70 +13)&15]^block->l[(70 +8)&15] ^block->l[(70 +2)&15]^block->l[70&15]) << (1)) | ((block->l[(70 +13)&15]^block->l[(70 +8)&15] ^block->l[(70 +2)&15]^block->l[70&15]) >> (32 - (1)))))+0xCA62C1D6+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));; d+=(a^b^c)+(block->l[71&15] = (((block->l[(71 +13)&15]^block->l[(71 +8)&15] ^block->l[(71 +2)&15]^block->l[71&15]) << (1)) | ((block->l[(71 +13)&15]^block->l[(71 +8)&15] ^block->l[(71 +2)&15]^block->l[71&15]) >> (32 - (1)))))+0xCA62C1D6+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));;
  c+=(e^a^b)+(block->l[72&15] = (((block->l[(72 +13)&15]^block->l[(72 +8)&15] ^block->l[(72 +2)&15]^block->l[72&15]) << (1)) | ((block->l[(72 +13)&15]^block->l[(72 +8)&15] ^block->l[(72 +2)&15]^block->l[72&15]) >> (32 - (1)))))+0xCA62C1D6+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(d^e^a)+(block->l[73&15] = (((block->l[(73 +13)&15]^block->l[(73 +8)&15] ^block->l[(73 +2)&15]^block->l[73&15]) << (1)) | ((block->l[(73 +13)&15]^block->l[(73 +8)&15] ^block->l[(73 +2)&15]^block->l[73&15]) >> (32 - (1)))))+0xCA62C1D6+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(c^d^e)+(block->l[74&15] = (((block->l[(74 +13)&15]^block->l[(74 +8)&15] ^block->l[(74 +2)&15]^block->l[74&15]) << (1)) | ((block->l[(74 +13)&15]^block->l[(74 +8)&15] ^block->l[(74 +2)&15]^block->l[74&15]) >> (32 - (1)))))+0xCA62C1D6+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));; e+=(b^c^d)+(block->l[75&15] = (((block->l[(75 +13)&15]^block->l[(75 +8)&15] ^block->l[(75 +2)&15]^block->l[75&15]) << (1)) | ((block->l[(75 +13)&15]^block->l[(75 +8)&15] ^block->l[(75 +2)&15]^block->l[75&15]) >> (32 - (1)))))+0xCA62C1D6+(((a) << (5)) | ((a) >> (32 - (5))));b=(((b) << (30)) | ((b) >> (32 - (30))));;
  d+=(a^b^c)+(block->l[76&15] = (((block->l[(76 +13)&15]^block->l[(76 +8)&15] ^block->l[(76 +2)&15]^block->l[76&15]) << (1)) | ((block->l[(76 +13)&15]^block->l[(76 +8)&15] ^block->l[(76 +2)&15]^block->l[76&15]) >> (32 - (1)))))+0xCA62C1D6+(((e) << (5)) | ((e) >> (32 - (5))));a=(((a) << (30)) | ((a) >> (32 - (30))));; c+=(e^a^b)+(block->l[77&15] = (((block->l[(77 +13)&15]^block->l[(77 +8)&15] ^block->l[(77 +2)&15]^block->l[77&15]) << (1)) | ((block->l[(77 +13)&15]^block->l[(77 +8)&15] ^block->l[(77 +2)&15]^block->l[77&15]) >> (32 - (1)))))+0xCA62C1D6+(((d) << (5)) | ((d) >> (32 - (5))));e=(((e) << (30)) | ((e) >> (32 - (30))));; b+=(d^e^a)+(block->l[78&15] = (((block->l[(78 +13)&15]^block->l[(78 +8)&15] ^block->l[(78 +2)&15]^block->l[78&15]) << (1)) | ((block->l[(78 +13)&15]^block->l[(78 +8)&15] ^block->l[(78 +2)&15]^block->l[78&15]) >> (32 - (1)))))+0xCA62C1D6+(((c) << (5)) | ((c) >> (32 - (5))));d=(((d) << (30)) | ((d) >> (32 - (30))));; a+=(c^d^e)+(block->l[79&15] = (((block->l[(79 +13)&15]^block->l[(79 +8)&15] ^block->l[(79 +2)&15]^block->l[79&15]) << (1)) | ((block->l[(79 +13)&15]^block->l[(79 +8)&15] ^block->l[(79 +2)&15]^block->l[79&15]) >> (32 - (1)))))+0xCA62C1D6+(((b) << (5)) | ((b) >> (32 - (5))));c=(((c) << (30)) | ((c) >> (32 - (30))));;
  state[0] += a;
  state[1] += b;
  state[2] += c;
  state[3] += d;
  state[4] += e;
  memset(block, 0, sizeof(block));
  a = b = c = d = e = 0;
  (void) a; (void) b; (void) c; (void) d; (void) e;
}
static void SHA1Init(SHA1_CTX *context) {
  context->state[0] = 0x67452301;
  context->state[1] = 0xEFCDAB89;
  context->state[2] = 0x98BADCFE;
  context->state[3] = 0x10325476;
  context->state[4] = 0xC3D2E1F0;
  context->count[0] = context->count[1] = 0;
}
static void SHA1Update(SHA1_CTX *context, const unsigned char *data,
                       size_t len) {
  size_t i, j;
  j = context->count[0];
  if ((context->count[0] += len << 3) < j)
    context->count[1]++;
  context->count[1] += (len>>29);
  j = (j >> 3) & 63;
  if ((j + len) > 63) {
    memcpy(&context->buffer[j], data, (i = 64-j));
    SHA1Transform(context->state, context->buffer);
    for ( ; i + 63 < len; i += 64) {
      SHA1Transform(context->state, &data[i]);
    }
    j = 0;
  }
  else i = 0;
  memcpy(&context->buffer[j], &data[i], len - i);
}
static void SHA1Final(unsigned char digest[20], SHA1_CTX *context) {
  unsigned i;
  unsigned char finalcount[8], c;
  for (i = 0; i < 8; i++) {
    finalcount[i] = (unsigned char)((context->count[(i >= 4 ? 0 : 1)]
                                     >> ((3-(i & 3)) * 8) ) & 255);
  }
  c = 0200;
  SHA1Update(context, &c, 1);
  while ((context->count[0] & 504) != 448) {
    c = 0000;
    SHA1Update(context, &c, 1);
  }
  SHA1Update(context, finalcount, 8);
  for (i = 0; i < 20; i++) {
    digest[i] = (unsigned char)
      ((context->state[i>>2] >> ((3-(i & 3)) * 8) ) & 255);
  }
  memset(context, '\0', sizeof(*context));
  memset(&finalcount, '\0', sizeof(finalcount));
}
static void base64_encode(const unsigned char *src, int src_len, char *dst) {
  static const char *b64 =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  int i, j, a, b, c;
  for (i = j = 0; i < src_len; i += 3) {
    a = src[i];
    b = i + 1 >= src_len ? 0 : src[i + 1];
    c = i + 2 >= src_len ? 0 : src[i + 2];
    dst[j++] = b64[a >> 2];
    dst[j++] = b64[((a & 3) << 4) | (b >> 4)];
    if (i + 1 < src_len) {
      dst[j++] = b64[(b & 15) << 2 | (c >> 6)];
    }
    if (i + 2 < src_len) {
      dst[j++] = b64[c & 63];
    }
  }
  while (j % 4 != 0) {
    dst[j++] = '=';
  }
  dst[j++] = '\0';
}
static void send_websocket_handshake(struct mg_connection *conn,
                                     const char *key) {
  static const char *magic = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
  char buf[500], sha[20], b64_sha[sizeof(sha) * 2];
  SHA1_CTX sha_ctx;
  mg_snprintf(buf, sizeof(buf), "%s%s", key, magic);
  SHA1Init(&sha_ctx);
  SHA1Update(&sha_ctx, (unsigned char *) buf, strlen(buf));
  SHA1Final((unsigned char *) sha, &sha_ctx);
  base64_encode((unsigned char *) sha, sizeof(sha), b64_sha);
  mg_snprintf(buf, sizeof(buf), "%s%s%s",
              "HTTP/1.1 101 Switching Protocols\r\n"
              "Upgrade: websocket\r\n"
              "Connection: Upgrade\r\n"
              "Sec-WebSocket-Accept: ", b64_sha, "\r\n\r\n");
  mg_write(conn, buf, strlen(buf));
}
static size_t deliver_websocket_frame(struct connection *conn) {
  unsigned char *buf = (unsigned char *) conn->ns_conn->recv_iobuf.buf;
  size_t i, len, buf_len = conn->ns_conn->recv_iobuf.len, frame_len = 0,
      mask_len = 0, header_len = 0, data_len = 0, buffered = 0;
  if (buf_len >= 2) {
    len = buf[1] & 127;
    mask_len = buf[1] & 128 ? 4 : 0;
    if (len < 126 && buf_len >= mask_len) {
      data_len = len;
      header_len = 2 + mask_len;
    } else if (len == 126 && buf_len >= 4 + mask_len) {
      header_len = 4 + mask_len;
      data_len = ((((size_t) buf[2]) << 8) + buf[3]);
    } else if (buf_len >= 10 + mask_len) {
      header_len = 10 + mask_len;
      data_len = (size_t) (((uint64_t) htonl(* (uint32_t *) &buf[2])) << 32) +
        htonl(* (uint32_t *) &buf[6]);
    }
  }
  frame_len = header_len + data_len;
  buffered = frame_len > 0 && frame_len <= buf_len;
  if (buffered) {
    conn->mg_conn.content_len = data_len;
    conn->mg_conn.content = (char *) buf + header_len;
    conn->mg_conn.wsbits = buf[0];
    if (mask_len > 0) {
      for (i = 0; i < data_len; i++) {
        buf[i + header_len] ^= (buf + header_len - mask_len)[i % 4];
      }
    }
    if (call_user(conn, MG_REQUEST) == MG_FALSE) {
      conn->ns_conn->flags |= (1 << 0);
    }
    iobuf_remove(&conn->ns_conn->recv_iobuf, frame_len);
  }
  return buffered;
}
size_t mg_websocket_write(struct mg_connection *conn, int opcode,
                          const char *data, size_t data_len) {
    unsigned char mem[4192], *copy = mem;
    size_t copy_len = 0;
    if (data_len > ~(size_t)0 - (size_t)10) {
      return 0;
    }
    if (data_len + 10 > sizeof(mem) &&
        (copy = (unsigned char *) malloc(data_len + 10)) == ((void *)0)) {
      return 0;
    }
    copy[0] = 0x80 + (opcode & 0x0f);
    if (data_len < 126) {
      copy[1] = data_len;
      memcpy(copy + 2, data, data_len);
      copy_len = 2 + data_len;
    } else if (data_len <= 0xFFFF) {
      copy[1] = 126;
      * (uint16_t *) (copy + 2) = (uint16_t) htons((uint16_t) data_len);
      memcpy(copy + 4, data, data_len);
      copy_len = 4 + data_len;
    } else {
      const uint32_t hi = htonl((uint32_t) ((uint64_t) data_len >> 32));
      const uint32_t lo = htonl(data_len & 0xffffffff);
      copy[1] = 127;
      memcpy(copy+2,&hi,sizeof(hi));
      memcpy(copy+6,&lo,sizeof(lo));
      memcpy(copy + 10, data, data_len);
      copy_len = 10 + data_len;
    }
    if (copy_len > 0) {
      mg_write(conn, copy, copy_len);
    }
    if (copy != mem) {
      free(copy);
    }
    if (opcode == WEBSOCKET_OPCODE_CONNECTION_CLOSE) {
      ((struct connection *) ((char *) (conn) - __builtin_offsetof (struct connection, mg_conn)))->ns_conn->flags |= (1 << 0);
    }
    return ((struct connection *) ((char *) (conn) - __builtin_offsetof (struct connection, mg_conn)))->ns_conn->send_iobuf.len;
}
size_t mg_websocket_printf(struct mg_connection *conn, int opcode,
                           const char *fmt, ...) {
  char mem[4192], *buf = mem;
  va_list ap;
  int len;
  __builtin_va_start(ap,fmt);
  if ((len = ns_avprintf(&buf, sizeof(mem), fmt, ap)) > 0) {
    mg_websocket_write(conn, opcode, buf, len);
  }
  __builtin_va_end(ap);
  if (buf != mem && buf != ((void *)0)) {
    free(buf);
  }
  return ((struct connection *) ((char *) (conn) - __builtin_offsetof (struct connection, mg_conn)))->ns_conn->send_iobuf.len;
}
static void send_websocket_handshake_if_requested(struct mg_connection *conn) {
  const char *ver = mg_get_header(conn, "Sec-WebSocket-Version"),
        *key = mg_get_header(conn, "Sec-WebSocket-Key");
  if (ver != ((void *)0) && key != ((void *)0)) {
    conn->is_websocket = 1;
    if (call_user(((struct connection *) ((char *) (conn) - __builtin_offsetof (struct connection, mg_conn))), MG_WS_HANDSHAKE) == MG_FALSE) {
      send_websocket_handshake(conn, key);
    }
    call_user(((struct connection *) ((char *) (conn) - __builtin_offsetof (struct connection, mg_conn))), MG_WS_CONNECT);
  }
}
static void ping_idle_websocket_connection(struct connection *conn, time_t t) {
  if (t - conn->ns_conn->last_io_time > 5) {
    mg_websocket_write(&conn->mg_conn, WEBSOCKET_OPCODE_PING, "", 0);
  }
}
static void write_terminating_chunk(struct connection *conn) {
  mg_write(&conn->mg_conn, "0\r\n\r\n", 5);
}
static int call_request_handler(struct connection *conn) {
  int result;
  conn->mg_conn.content = conn->ns_conn->recv_iobuf.buf;
  if ((result = call_user(conn, MG_REQUEST)) == MG_TRUE) {
    if (conn->ns_conn->flags & (1 << 21)) {
      terminate_headers(&conn->mg_conn);
      write_terminating_chunk(conn);
    }
    close_local_endpoint(conn);
  }
  return result;
}
const char *mg_get_mime_type(const char *path, const char *default_mime_type) {
  const char *ext;
  size_t i, path_len;
  path_len = strlen(path);
  for (i = 0; static_builtin_mime_types[i].extension != ((void *)0); i++) {
    ext = path + (path_len - static_builtin_mime_types[i].ext_len);
    if (path_len > static_builtin_mime_types[i].ext_len &&
        mg_strcasecmp(ext, static_builtin_mime_types[i].extension) == 0) {
      return static_builtin_mime_types[i].mime_type;
    }
  }
  return default_mime_type;
}
static int get_month_index(const char *s) {
  static const char *month_names[] = {
    "Jan", "Feb", "Mar", "Apr", "May", "Jun",
    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
  };
  int i;
  for (i = 0; i < (int) (sizeof(month_names) / sizeof(month_names[0])); i++)
    if (!strcmp(s, month_names[i]))
      return i;
  return -1;
}
static int num_leap_years(int year) {
  return year / 4 - year / 100 + year / 400;
}
static time_t parse_date_string(const char *datetime) {
  static const unsigned short days_before_month[] = {
    0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334
  };
  char month_str[32];
  int second, minute, hour, day, month, year, leap_days, days;
  time_t result = (time_t) 0;
  if (((sscanf(datetime, "%d/%3s/%d %d:%d:%d",
               &day, month_str, &year, &hour, &minute, &second) == 6) ||
       (sscanf(datetime, "%d %3s %d %d:%d:%d",
               &day, month_str, &year, &hour, &minute, &second) == 6) ||
       (sscanf(datetime, "%*3s, %d %3s %d %d:%d:%d",
               &day, month_str, &year, &hour, &minute, &second) == 6) ||
       (sscanf(datetime, "%d-%3s-%d %d:%d:%d",
               &day, month_str, &year, &hour, &minute, &second) == 6)) &&
      year > 1970 &&
      (month = get_month_index(month_str)) != -1) {
    leap_days = num_leap_years(year) - num_leap_years(1970);
    year -= 1970;
    days = year * 365 + days_before_month[month] + (day - 1) + leap_days;
    result = days * 24 * 3600 + hour * 3600 + minute * 60 + second;
  }
  return result;
}
static void get_mime_type(const struct mg_server *server, const char *path,
                          struct vec *vec) {
  struct vec ext_vec, mime_vec;
  const char *list, *ext;
  size_t path_len;
  path_len = strlen(path);
  list = server->config_options[EXTRA_MIME_TYPES];
  while ((list = next_option(list, &ext_vec, &mime_vec)) != ((void *)0)) {
    ext = path + path_len - ext_vec.len;
    if (mg_strncasecmp(ext, ext_vec.ptr, ext_vec.len) == 0) {
      *vec = mime_vec;
      return;
    }
  }
  vec->ptr = mg_get_mime_type(path, "text/plain");
  vec->len = strlen(vec->ptr);
}
static const char *suggest_connection_header(const struct mg_connection *conn) {
  return should_keep_alive(conn) ? "keep-alive" : "close";
}
static void construct_etag(char *buf, size_t buf_len, const file_stat_t *st) {
  mg_snprintf(buf, buf_len, "\"%lx.%" "l" "d" "\"",
              (unsigned long) st->st_mtim.tv_sec, (int64_t) st->st_size);
}
static int is_not_modified(const struct connection *conn,
                           const file_stat_t *stp) {
  char etag[64];
  const char *ims = mg_get_header(&conn->mg_conn, "If-Modified-Since");
  const char *inm = mg_get_header(&conn->mg_conn, "If-None-Match");
  construct_etag(etag, sizeof(etag), stp);
  return (inm != ((void *)0) && !mg_strcasecmp(etag, inm)) ||
    (ims != ((void *)0) && stp->st_mtim.tv_sec <= parse_date_string(ims));
}
static int find_index_file(struct connection *conn, char *path,
                           size_t path_len, file_stat_t *stp) {
  const char *list = conn->server->config_options[INDEX_FILES];
  file_stat_t st;
  struct vec filename_vec;
  size_t n = strlen(path);
  int found = 0;
  while (n > 0 && path[n - 1] == '/') {
    n--;
  }
  path[n] = '/';
  while ((list = next_option(list, &filename_vec, ((void *)0))) != ((void *)0)) {
    if (path_len <= n + 2) {
      continue;
    }
    if (filename_vec.len > (path_len - (n + 2)))
      continue;
    strncpy(path + n + 1, filename_vec.ptr, filename_vec.len);
    path[n + 1 + filename_vec.len] = '\0';
    if (!stat(path, &st)) {
      *stp = st;
      found = 1;
      break;
    }
  }
  if (!found) {
    path[n] = '\0';
  }
  return found;
}
static int parse_range_header(const char *header, int64_t *a, int64_t *b) {
  return sscanf(header, "bytes=%" "l" "d" "-%" "l" "d", a, b);
}
static void gmt_time_string(char *buf, size_t buf_len, time_t *t) {
  strftime(buf, buf_len, "%a, %d %b %Y %H:%M:%S GMT", gmtime(t));
}
static void open_file_endpoint(struct connection *conn, const char *path,
                               file_stat_t *st, const char *extra_headers) {
  char date[64], lm[64], etag[64], range[64], headers[1000];
  const char *msg = "OK", *hdr;
  time_t curtime = time(((void *)0));
  int64_t r1, r2;
  struct vec mime_vec;
  int n;
  conn->endpoint_type = EP_FILE;
  ns_set_close_on_exec(conn->endpoint.fd);
  conn->mg_conn.status_code = 200;
  get_mime_type(conn->server, path, &mime_vec);
  conn->cl = st->st_size;
  range[0] = '\0';
  r1 = r2 = 0;
  hdr = mg_get_header(&conn->mg_conn, "Range");
  if (hdr != ((void *)0) && (n = parse_range_header(hdr, &r1, &r2)) > 0 &&
      r1 >= 0 && r2 >= 0) {
    conn->mg_conn.status_code = 206;
    conn->cl = n == 2 ? (r2 > conn->cl ? conn->cl : r2) - r1 + 1: conn->cl - r1;
    mg_snprintf(range, sizeof(range), "Content-Range: bytes "
                "%" "l" "d" "-%" "l" "d" "/%" "l" "d" "\r\n",
                r1, r1 + conn->cl - 1, (int64_t) st->st_size);
    msg = "Partial Content";
    lseek(conn->endpoint.fd, r1, 0);
  }
  gmt_time_string(date, sizeof(date), &curtime);
  gmt_time_string(lm, sizeof(lm), &st->st_mtim.tv_sec);
  construct_etag(etag, sizeof(etag), st);
  n = mg_snprintf(headers, sizeof(headers),
                  "HTTP/1.1 %d %s\r\n"
                  "Date: %s\r\n"
                  "Last-Modified: %s\r\n"
                  "Etag: %s\r\n"
                  "Content-Type: %.*s\r\n"
                  "Content-Length: %" "l" "d" "\r\n"
                  "Connection: %s\r\n"
                  "Accept-Ranges: bytes\r\n"
                  "%s%s%s\r\n",
                  conn->mg_conn.status_code, msg, date, lm, etag,
                  (int) mime_vec.len, mime_vec.ptr, conn->cl,
                  suggest_connection_header(&conn->mg_conn),
                  range, extra_headers == ((void *)0) ? "" : extra_headers,
                  "");
  ns_send(conn->ns_conn, headers, n);
  if (!strcmp(conn->mg_conn.request_method, "HEAD")) {
    conn->ns_conn->flags |= (1 << 0);
    close(conn->endpoint.fd);
    conn->endpoint_type = EP_NONE;
  }
}
void mg_send_file_data(struct mg_connection *c, int fd) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  conn->endpoint_type = EP_FILE;
  conn->endpoint.fd = fd;
  ns_set_close_on_exec(conn->endpoint.fd);
}
static void call_request_handler_if_data_is_buffered(struct connection *conn) {
  if (conn->mg_conn.is_websocket) {
    do { } while (deliver_websocket_frame(conn));
  } else
  if (conn->num_bytes_recv >= (conn->cl + conn->request_len) &&
      call_request_handler(conn) == MG_FALSE) {
    open_local_endpoint(conn, 1);
  }
}
static int scan_directory(struct connection *conn, const char *dir,
                          struct dir_entry **arr) {
  char path[8192];
  struct dir_entry *p;
  struct dirent *dp;
  int arr_size = 0, arr_ind = 0, inc = 100;
  DIR *dirp;
  *arr = ((void *)0);
  if ((dirp = (opendir(dir))) == ((void *)0)) return 0;
  while ((dp = readdir(dirp)) != ((void *)0)) {
    if (!strcmp(dp->d_name, ".") ||
        !strcmp(dp->d_name, "..") ||
        must_hide_file(conn, dp->d_name)) {
      continue;
    }
    mg_snprintf(path, sizeof(path), "%s%c%s", dir, '/', dp->d_name);
    if (arr_ind >= arr_size) {
      if ((p = (struct dir_entry *)
           realloc(*arr, (inc + arr_size) * sizeof(**arr))) != ((void *)0)) {
        memset(p + arr_size, 0, sizeof(**arr) * inc);
        *arr = p;
        arr_size += inc;
      }
    }
    if (arr_ind < arr_size) {
      (*arr)[arr_ind].conn = conn;
      (*arr)[arr_ind].file_name = strdup(dp->d_name);
      stat(path, &(*arr)[arr_ind].st);
      arr_ind++;
    }
  }
  closedir(dirp);
  return arr_ind;
}
size_t mg_url_encode(const char *src, size_t s_len, char *dst, size_t dst_len) {
  static const char *dont_escape = "._-$,;~()";
  static const char *hex = "0123456789abcdef";
  size_t i = 0, j = 0;
  for (i = j = 0; dst_len > 0 && i < s_len && j + 2 < dst_len - 1; i++, j++) {
    if (((*__ctype_b_loc ())[(int) ((* (const unsigned char *) (src + i)))] & (unsigned short int) _ISalnum) ||
        strchr(dont_escape, * (const unsigned char *) (src + i)) != ((void *)0)) {
      dst[j] = src[i];
    } else if (j + 3 < dst_len) {
      dst[j] = '%';
      dst[j + 1] = hex[(* (const unsigned char *) (src + i)) >> 4];
      dst[j + 2] = hex[(* (const unsigned char *) (src + i)) & 0xf];
      j += 2;
    }
  }
  dst[j] = '\0';
  return j;
}
static void print_dir_entry(const struct dir_entry *de) {
  char size[64], mod[64], href[8192 * 3];
  int64_t fsize = de->st.st_size;
  int is_dir = ((((de->st.st_mode)) & 0170000) == (0040000));
  const char *slash = is_dir ? "/" : "";
  if (is_dir) {
    mg_snprintf(size, sizeof(size), "%s", "[DIRECTORY]");
  } else {
    if (fsize < 1024) {
      mg_snprintf(size, sizeof(size), "%d", (int) fsize);
    } else if (fsize < 0x100000) {
      mg_snprintf(size, sizeof(size), "%.1fk", (double) fsize / 1024.0);
    } else if (fsize < 0x40000000) {
      mg_snprintf(size, sizeof(size), "%.1fM", (double) fsize / 1048576);
    } else {
      mg_snprintf(size, sizeof(size), "%.1fG", (double) fsize / 1073741824);
    }
  }
  strftime(mod, sizeof(mod), "%d-%b-%Y %H:%M", localtime(&de->st.st_mtim.tv_sec));
  mg_url_encode(de->file_name, strlen(de->file_name), href, sizeof(href));
  mg_printf_data(&de->conn->mg_conn,
                  "<tr><td><a href=\"%s%s\">%s%s</a></td>"
                  "<td>&nbsp;%s</td><td>&nbsp;&nbsp;%s</td></tr>\n",
                  href, slash, de->file_name, slash, mod, size);
}
static int compare_dir_entries(const void *p1, const void *p2) {
  const struct dir_entry *a = (const struct dir_entry *) p1,
        *b = (const struct dir_entry *) p2;
  const char *qs = a->conn->mg_conn.query_string ?
    a->conn->mg_conn.query_string : "na";
  int cmp_result = 0;
  if (((((a->st.st_mode)) & 0170000) == (0040000)) && !((((b->st.st_mode)) & 0170000) == (0040000))) {
    return -1;
  } else if (!((((a->st.st_mode)) & 0170000) == (0040000)) && ((((b->st.st_mode)) & 0170000) == (0040000))) {
    return 1;
  } else if (*qs == 'n') {
    cmp_result = strcmp(a->file_name, b->file_name);
  } else if (*qs == 's') {
    cmp_result = a->st.st_size == b->st.st_size ? 0 :
      a->st.st_size > b->st.st_size ? 1 : -1;
  } else if (*qs == 'd') {
    cmp_result = a->st.st_mtim.tv_sec == b->st.st_mtim.tv_sec ? 0 :
      a->st.st_mtim.tv_sec > b->st.st_mtim.tv_sec ? 1 : -1;
  }
  return qs[1] == 'd' ? -cmp_result : cmp_result;
}
static void send_directory_listing(struct connection *conn, const char *dir) {
  struct dir_entry *arr = ((void *)0);
  int i, num_entries, sort_direction = conn->mg_conn.query_string != ((void *)0) &&
    conn->mg_conn.query_string[1] == 'd' ? 'a' : 'd';
  mg_send_header(&conn->mg_conn, "Transfer-Encoding", "chunked");
  mg_send_header(&conn->mg_conn, "Content-Type", "text/html; charset=utf-8");
  mg_printf_data(&conn->mg_conn,
              "<html><head><title>Index of %s</title>"
              "<style>th {text-align: left;}</style></head>"
              "<body><h1>Index of %s</h1><pre><table cellpadding=\"0\">"
              "<tr><th><a href=\"?n%c\">Name</a></th>"
              "<th><a href=\"?d%c\">Modified</a></th>"
              "<th><a href=\"?s%c\">Size</a></th></tr>"
              "<tr><td colspan=\"3\"><hr></td></tr>",
              conn->mg_conn.uri, conn->mg_conn.uri,
              sort_direction, sort_direction, sort_direction);
  num_entries = scan_directory(conn, dir, &arr);
  qsort(arr, num_entries, sizeof(arr[0]), compare_dir_entries);
  for (i = 0; i < num_entries; i++) {
    print_dir_entry(&arr[i]);
    free(arr[i].file_name);
  }
  free(arr);
  write_terminating_chunk(conn);
  close_local_endpoint(conn);
}
static void print_props(struct connection *conn, const char *uri,
                        file_stat_t *stp) {
  char mtime[64];
  gmt_time_string(mtime, sizeof(mtime), &stp->st_mtim.tv_sec);
  mg_printf(&conn->mg_conn,
      "<d:response>"
       "<d:href>%s</d:href>"
       "<d:propstat>"
        "<d:prop>"
         "<d:resourcetype>%s</d:resourcetype>"
         "<d:getcontentlength>%" "l" "d" "</d:getcontentlength>"
         "<d:getlastmodified>%s</d:getlastmodified>"
        "</d:prop>"
        "<d:status>HTTP/1.1 200 OK</d:status>"
       "</d:propstat>"
      "</d:response>\n",
      uri, ((((stp->st_mode)) & 0170000) == (0040000)) ? "<d:collection/>" : "",
      (int64_t) stp->st_size, mtime);
}
static void handle_propfind(struct connection *conn, const char *path,
                            file_stat_t *stp, int exists) {
  static const char header[] = "HTTP/1.1 207 Multi-Status\r\n"
    "Connection: close\r\n"
    "Content-Type: text/xml; charset=utf-8\r\n\r\n"
    "<?xml version=\"1.0\" encoding=\"utf-8\"?>"
    "<d:multistatus xmlns:d='DAV:'>\n";
  static const char footer[] = "</d:multistatus>";
  const char *depth = mg_get_header(&conn->mg_conn, "Depth");
  const char *list_dir = conn->server->config_options[ENABLE_DIRECTORY_LISTING];
  conn->mg_conn.status_code = 207;
  if (!exists) {
    conn->mg_conn.status_code = 404;
    mg_printf(&conn->mg_conn, "%s", "HTTP/1.1 404 Not Found\r\n\r\n");
  } else if (((((stp->st_mode)) & 0170000) == (0040000)) && mg_strcasecmp(list_dir, "yes") != 0) {
    conn->mg_conn.status_code = 403;
    mg_printf(&conn->mg_conn, "%s",
              "HTTP/1.1 403 Directory Listing Denied\r\n\r\n");
  } else {
    ns_send(conn->ns_conn, header, sizeof(header) - 1);
    print_props(conn, conn->mg_conn.uri, stp);
    if (((((stp->st_mode)) & 0170000) == (0040000)) &&
             (depth == ((void *)0) || strcmp(depth, "0") != 0)) {
      struct dir_entry *arr = ((void *)0);
      int i, num_entries = scan_directory(conn, path, &arr);
      for (i = 0; i < num_entries; i++) {
        char buf[8192 * 3];
        struct dir_entry *de = &arr[i];
        mg_url_encode(de->file_name, strlen(de->file_name), buf, sizeof(buf));
        print_props(conn, buf, &de->st);
        free(de->file_name);
      }
      free(arr);
    }
    ns_send(conn->ns_conn, footer, sizeof(footer) - 1);
  }
  close_local_endpoint(conn);
}
static void handle_mkcol(struct connection *conn, const char *path) {
  int status_code = 500;
  if (conn->mg_conn.content_len > 0) {
    status_code = 415;
  } else if (!mkdir(path, 0755)) {
    status_code = 201;
  } else if ((*__errno_location ()) == 17) {
    status_code = 405;
  } else if ((*__errno_location ()) == 13) {
    status_code = 403;
  } else if ((*__errno_location ()) == 2) {
    status_code = 409;
  }
  send_http_error(conn, status_code, ((void *)0));
}
static int remove_directory(const char *dir) {
  char path[8192];
  struct dirent *dp;
  file_stat_t st;
  DIR *dirp;
  if ((dirp = opendir(dir)) == ((void *)0)) return 0;
  while ((dp = readdir(dirp)) != ((void *)0)) {
    if (!strcmp(dp->d_name, ".") || !strcmp(dp->d_name, "..")) continue;
    mg_snprintf(path, sizeof(path), "%s%c%s", dir, '/', dp->d_name);
    stat(path, &st);
    if (((((st.st_mode)) & 0170000) == (0040000))) {
      remove_directory(path);
    } else {
      remove(path);
    }
  }
  closedir(dirp);
  rmdir(dir);
  return 1;
}
static void handle_delete(struct connection *conn, const char *path) {
  file_stat_t st;
  if (stat(path, &st) != 0) {
    send_http_error(conn, 404, ((void *)0));
  } else if (((((st.st_mode)) & 0170000) == (0040000))) {
    remove_directory(path);
    send_http_error(conn, 204, ((void *)0));
  } else if (remove(path) == 0) {
    send_http_error(conn, 204, ((void *)0));
  } else {
    send_http_error(conn, 423, ((void *)0));
  }
}
static int put_dir(const char *path) {
  char buf[8192];
  const char *s, *p;
  file_stat_t st;
  for (s = p = path + 1; (p = strchr(s, '/')) != ((void *)0); s = ++p) {
    if (p - path >= (int) sizeof(buf)) return -1;
    memcpy(buf, path, p - path);
    buf[p - path] = '\0';
    if (stat(buf, &st) != 0 && mkdir(buf, 0755) != 0) return -1;
    if (p[1] == '\0') return 0;
  }
  return 1;
}
static void handle_put(struct connection *conn, const char *path) {
  file_stat_t st;
  const char *range, *cl_hdr = mg_get_header(&conn->mg_conn, "Content-Length");
  int64_t r1, r2;
  int rc;
  conn->mg_conn.status_code = !stat(path, &st) ? 200 : 201;
  if ((rc = put_dir(path)) == 0) {
    mg_printf(&conn->mg_conn, "HTTP/1.1 %d OK\r\n\r\n",
              conn->mg_conn.status_code);
    close_local_endpoint(conn);
  } else if (rc == -1) {
    send_http_error(conn, 500, "put_dir: %s", strerror((*__errno_location ())));
  } else if (cl_hdr == ((void *)0)) {
    send_http_error(conn, 411, ((void *)0));
  } else if ((conn->endpoint.fd =
              open(path, 02 | 0100 | 01000 | 0, 0644)) < 0) {
    send_http_error(conn, 500, "open(%s): %s", path, strerror((*__errno_location ())));
  } else {
    ;
    conn->endpoint_type = EP_PUT;
    ns_set_close_on_exec(conn->endpoint.fd);
    range = mg_get_header(&conn->mg_conn, "Content-Range");
    conn->cl = strtoll(cl_hdr, ((void *)0), 10);
    r1 = r2 = 0;
    if (range != ((void *)0) && parse_range_header(range, &r1, &r2) > 0) {
      conn->mg_conn.status_code = 206;
      lseek(conn->endpoint.fd, r1, 0);
      conn->cl = r2 > r1 ? r2 - r1 + 1: conn->cl - r1;
    }
    mg_printf(&conn->mg_conn, "HTTP/1.1 %d OK\r\nContent-Length: 0\r\n\r\n",
              conn->mg_conn.status_code);
  }
}
static void forward_put_data(struct connection *conn) {
  struct iobuf *io = &conn->ns_conn->recv_iobuf;
  size_t k = conn->cl < (int64_t) io->len ? conn->cl : (int64_t) io->len;
  size_t n = write(conn->endpoint.fd, io->buf, k);
  if (n > 0) {
    iobuf_remove(io, n);
    conn->cl -= n;
  }
  if (conn->cl <= 0) {
    close_local_endpoint(conn);
  }
}
static void send_options(struct connection *conn) {
  conn->mg_conn.status_code = 200;
  mg_printf(&conn->mg_conn, "%s",
            "HTTP/1.1 200 OK\r\nAllow: GET, POST, HEAD, CONNECT, PUT, "
            "DELETE, OPTIONS, PROPFIND, MKCOL\r\nDAV: 1\r\n\r\n");
  close_local_endpoint(conn);
}
void mg_send_digest_auth_request(struct mg_connection *c) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  c->status_code = 401;
  mg_printf(c,
            "HTTP/1.1 401 Unauthorized\r\n"
            "WWW-Authenticate: Digest qop=\"auth\", "
            "realm=\"%s\", nonce=\"%lu\"\r\n\r\n",
            conn->server->config_options[AUTH_DOMAIN],
            (unsigned long) time(((void *)0)));
  close_local_endpoint(conn);
}
static FILE *open_auth_file(struct connection *conn, const char *path,
                            int is_directory) {
  char name[8192];
  const char *p, *gpass = conn->server->config_options[GLOBAL_AUTH_FILE];
  FILE *fp = ((void *)0);
  if (gpass != ((void *)0)) {
    fp = fopen(gpass, "r");
  } else if (is_directory) {
    mg_snprintf(name, sizeof(name), "%s%c%s", path, '/', ".htpasswd");
    fp = fopen(name, "r");
  } else {
    if ((p = strrchr(path, '/')) == ((void *)0)) p = path;
    mg_snprintf(name, sizeof(name), "%.*s%c%s",
                (int) (p - path), path, '/', ".htpasswd");
    fp = fopen(name, "r");
  }
  return fp;
}
typedef struct MD5Context {
  uint32_t buf[4];
  uint32_t bits[2];
  unsigned char in[64];
} MD5_CTX;
static void byteReverse(unsigned char *buf, unsigned longs) {
  uint32_t t;
  if (is_big_endian()) {
    do {
      t = (uint32_t) ((unsigned) buf[3] << 8 | buf[2]) << 16 |
        ((unsigned) buf[1] << 8 | buf[0]);
      * (uint32_t *) buf = t;
      buf += 4;
    } while (--longs);
  }
}
static void MD5Init(MD5_CTX *ctx) {
  ctx->buf[0] = 0x67452301;
  ctx->buf[1] = 0xefcdab89;
  ctx->buf[2] = 0x98badcfe;
  ctx->buf[3] = 0x10325476;
  ctx->bits[0] = 0;
  ctx->bits[1] = 0;
}
static void MD5Transform(uint32_t buf[4], uint32_t const in[16]) {
  register uint32_t a, b, c, d;
  a = buf[0];
  b = buf[1];
  c = buf[2];
  d = buf[3];
  ( a += (d ^ (b & (c ^ d))) + in[0] + 0xd76aa478, a = a<<7 | a>>(32-7), a += b );
  ( d += (c ^ (a & (b ^ c))) + in[1] + 0xe8c7b756, d = d<<12 | d>>(32-12), d += a );
  ( c += (b ^ (d & (a ^ b))) + in[2] + 0x242070db, c = c<<17 | c>>(32-17), c += d );
  ( b += (a ^ (c & (d ^ a))) + in[3] + 0xc1bdceee, b = b<<22 | b>>(32-22), b += c );
  ( a += (d ^ (b & (c ^ d))) + in[4] + 0xf57c0faf, a = a<<7 | a>>(32-7), a += b );
  ( d += (c ^ (a & (b ^ c))) + in[5] + 0x4787c62a, d = d<<12 | d>>(32-12), d += a );
  ( c += (b ^ (d & (a ^ b))) + in[6] + 0xa8304613, c = c<<17 | c>>(32-17), c += d );
  ( b += (a ^ (c & (d ^ a))) + in[7] + 0xfd469501, b = b<<22 | b>>(32-22), b += c );
  ( a += (d ^ (b & (c ^ d))) + in[8] + 0x698098d8, a = a<<7 | a>>(32-7), a += b );
  ( d += (c ^ (a & (b ^ c))) + in[9] + 0x8b44f7af, d = d<<12 | d>>(32-12), d += a );
  ( c += (b ^ (d & (a ^ b))) + in[10] + 0xffff5bb1, c = c<<17 | c>>(32-17), c += d );
  ( b += (a ^ (c & (d ^ a))) + in[11] + 0x895cd7be, b = b<<22 | b>>(32-22), b += c );
  ( a += (d ^ (b & (c ^ d))) + in[12] + 0x6b901122, a = a<<7 | a>>(32-7), a += b );
  ( d += (c ^ (a & (b ^ c))) + in[13] + 0xfd987193, d = d<<12 | d>>(32-12), d += a );
  ( c += (b ^ (d & (a ^ b))) + in[14] + 0xa679438e, c = c<<17 | c>>(32-17), c += d );
  ( b += (a ^ (c & (d ^ a))) + in[15] + 0x49b40821, b = b<<22 | b>>(32-22), b += c );
  ( a += (c ^ (d & (b ^ c))) + in[1] + 0xf61e2562, a = a<<5 | a>>(32-5), a += b );
  ( d += (b ^ (c & (a ^ b))) + in[6] + 0xc040b340, d = d<<9 | d>>(32-9), d += a );
  ( c += (a ^ (b & (d ^ a))) + in[11] + 0x265e5a51, c = c<<14 | c>>(32-14), c += d );
  ( b += (d ^ (a & (c ^ d))) + in[0] + 0xe9b6c7aa, b = b<<20 | b>>(32-20), b += c );
  ( a += (c ^ (d & (b ^ c))) + in[5] + 0xd62f105d, a = a<<5 | a>>(32-5), a += b );
  ( d += (b ^ (c & (a ^ b))) + in[10] + 0x02441453, d = d<<9 | d>>(32-9), d += a );
  ( c += (a ^ (b & (d ^ a))) + in[15] + 0xd8a1e681, c = c<<14 | c>>(32-14), c += d );
  ( b += (d ^ (a & (c ^ d))) + in[4] + 0xe7d3fbc8, b = b<<20 | b>>(32-20), b += c );
  ( a += (c ^ (d & (b ^ c))) + in[9] + 0x21e1cde6, a = a<<5 | a>>(32-5), a += b );
  ( d += (b ^ (c & (a ^ b))) + in[14] + 0xc33707d6, d = d<<9 | d>>(32-9), d += a );
  ( c += (a ^ (b & (d ^ a))) + in[3] + 0xf4d50d87, c = c<<14 | c>>(32-14), c += d );
  ( b += (d ^ (a & (c ^ d))) + in[8] + 0x455a14ed, b = b<<20 | b>>(32-20), b += c );
  ( a += (c ^ (d & (b ^ c))) + in[13] + 0xa9e3e905, a = a<<5 | a>>(32-5), a += b );
  ( d += (b ^ (c & (a ^ b))) + in[2] + 0xfcefa3f8, d = d<<9 | d>>(32-9), d += a );
  ( c += (a ^ (b & (d ^ a))) + in[7] + 0x676f02d9, c = c<<14 | c>>(32-14), c += d );
  ( b += (d ^ (a & (c ^ d))) + in[12] + 0x8d2a4c8a, b = b<<20 | b>>(32-20), b += c );
  ( a += (b ^ c ^ d) + in[5] + 0xfffa3942, a = a<<4 | a>>(32-4), a += b );
  ( d += (a ^ b ^ c) + in[8] + 0x8771f681, d = d<<11 | d>>(32-11), d += a );
  ( c += (d ^ a ^ b) + in[11] + 0x6d9d6122, c = c<<16 | c>>(32-16), c += d );
  ( b += (c ^ d ^ a) + in[14] + 0xfde5380c, b = b<<23 | b>>(32-23), b += c );
  ( a += (b ^ c ^ d) + in[1] + 0xa4beea44, a = a<<4 | a>>(32-4), a += b );
  ( d += (a ^ b ^ c) + in[4] + 0x4bdecfa9, d = d<<11 | d>>(32-11), d += a );
  ( c += (d ^ a ^ b) + in[7] + 0xf6bb4b60, c = c<<16 | c>>(32-16), c += d );
  ( b += (c ^ d ^ a) + in[10] + 0xbebfbc70, b = b<<23 | b>>(32-23), b += c );
  ( a += (b ^ c ^ d) + in[13] + 0x289b7ec6, a = a<<4 | a>>(32-4), a += b );
  ( d += (a ^ b ^ c) + in[0] + 0xeaa127fa, d = d<<11 | d>>(32-11), d += a );
  ( c += (d ^ a ^ b) + in[3] + 0xd4ef3085, c = c<<16 | c>>(32-16), c += d );
  ( b += (c ^ d ^ a) + in[6] + 0x04881d05, b = b<<23 | b>>(32-23), b += c );
  ( a += (b ^ c ^ d) + in[9] + 0xd9d4d039, a = a<<4 | a>>(32-4), a += b );
  ( d += (a ^ b ^ c) + in[12] + 0xe6db99e5, d = d<<11 | d>>(32-11), d += a );
  ( c += (d ^ a ^ b) + in[15] + 0x1fa27cf8, c = c<<16 | c>>(32-16), c += d );
  ( b += (c ^ d ^ a) + in[2] + 0xc4ac5665, b = b<<23 | b>>(32-23), b += c );
  ( a += (c ^ (b | ~d)) + in[0] + 0xf4292244, a = a<<6 | a>>(32-6), a += b );
  ( d += (b ^ (a | ~c)) + in[7] + 0x432aff97, d = d<<10 | d>>(32-10), d += a );
  ( c += (a ^ (d | ~b)) + in[14] + 0xab9423a7, c = c<<15 | c>>(32-15), c += d );
  ( b += (d ^ (c | ~a)) + in[5] + 0xfc93a039, b = b<<21 | b>>(32-21), b += c );
  ( a += (c ^ (b | ~d)) + in[12] + 0x655b59c3, a = a<<6 | a>>(32-6), a += b );
  ( d += (b ^ (a | ~c)) + in[3] + 0x8f0ccc92, d = d<<10 | d>>(32-10), d += a );
  ( c += (a ^ (d | ~b)) + in[10] + 0xffeff47d, c = c<<15 | c>>(32-15), c += d );
  ( b += (d ^ (c | ~a)) + in[1] + 0x85845dd1, b = b<<21 | b>>(32-21), b += c );
  ( a += (c ^ (b | ~d)) + in[8] + 0x6fa87e4f, a = a<<6 | a>>(32-6), a += b );
  ( d += (b ^ (a | ~c)) + in[15] + 0xfe2ce6e0, d = d<<10 | d>>(32-10), d += a );
  ( c += (a ^ (d | ~b)) + in[6] + 0xa3014314, c = c<<15 | c>>(32-15), c += d );
  ( b += (d ^ (c | ~a)) + in[13] + 0x4e0811a1, b = b<<21 | b>>(32-21), b += c );
  ( a += (c ^ (b | ~d)) + in[4] + 0xf7537e82, a = a<<6 | a>>(32-6), a += b );
  ( d += (b ^ (a | ~c)) + in[11] + 0xbd3af235, d = d<<10 | d>>(32-10), d += a );
  ( c += (a ^ (d | ~b)) + in[2] + 0x2ad7d2bb, c = c<<15 | c>>(32-15), c += d );
  ( b += (d ^ (c | ~a)) + in[9] + 0xeb86d391, b = b<<21 | b>>(32-21), b += c );
  buf[0] += a;
  buf[1] += b;
  buf[2] += c;
  buf[3] += d;
}
static void MD5Update(MD5_CTX *ctx, unsigned char const *buf, unsigned len) {
  uint32_t t;
  t = ctx->bits[0];
  if ((ctx->bits[0] = t + ((uint32_t) len << 3)) < t)
    ctx->bits[1]++;
  ctx->bits[1] += len >> 29;
  t = (t >> 3) & 0x3f;
  if (t) {
    unsigned char *p = (unsigned char *) ctx->in + t;
    t = 64 - t;
    if (len < t) {
      memcpy(p, buf, len);
      return;
    }
    memcpy(p, buf, t);
    byteReverse(ctx->in, 16);
    MD5Transform(ctx->buf, (uint32_t *) ctx->in);
    buf += t;
    len -= t;
  }
  while (len >= 64) {
    memcpy(ctx->in, buf, 64);
    byteReverse(ctx->in, 16);
    MD5Transform(ctx->buf, (uint32_t *) ctx->in);
    buf += 64;
    len -= 64;
  }
  memcpy(ctx->in, buf, len);
}
static void MD5Final(unsigned char digest[16], MD5_CTX *ctx) {
  unsigned count;
  unsigned char *p;
  uint32_t *a;
  count = (ctx->bits[0] >> 3) & 0x3F;
  p = ctx->in + count;
  *p++ = 0x80;
  count = 64 - 1 - count;
  if (count < 8) {
    memset(p, 0, count);
    byteReverse(ctx->in, 16);
    MD5Transform(ctx->buf, (uint32_t *) ctx->in);
    memset(ctx->in, 0, 56);
  } else {
    memset(p, 0, count - 8);
  }
  byteReverse(ctx->in, 14);
  a = (uint32_t *)ctx->in;
  a[14] = ctx->bits[0];
  a[15] = ctx->bits[1];
  MD5Transform(ctx->buf, (uint32_t *) ctx->in);
  byteReverse((unsigned char *) ctx->buf, 4);
  memcpy(digest, ctx->buf, 16);
  memset((char *) ctx, 0, sizeof(*ctx));
}
static void bin2str(char *to, const unsigned char *p, size_t len) {
  static const char *hex = "0123456789abcdef";
  for (; len--; p++) {
    *to++ = hex[p[0] >> 4];
    *to++ = hex[p[0] & 0x0f];
  }
  *to = '\0';
}
char *mg_md5(char buf[33], ...) {
  unsigned char hash[16];
  const char *p;
  va_list ap;
  MD5_CTX ctx;
  MD5Init(&ctx);
  __builtin_va_start(ap,buf);
  while ((p = __builtin_va_arg(ap,const char *)) != ((void *)0)) {
    MD5Update(&ctx, (const unsigned char *) p, (unsigned) strlen(p));
  }
  __builtin_va_end(ap);
  MD5Final(hash, &ctx);
  bin2str(buf, hash, sizeof(hash));
  return buf;
}
static int check_password(const char *method, const char *ha1, const char *uri,
                          const char *nonce, const char *nc, const char *cnonce,
                          const char *qop, const char *response) {
  char ha2[32 + 1], expected_response[32 + 1];
  mg_md5(ha2, method, ":", uri, ((void *)0));
  mg_md5(expected_response, ha1, ":", nonce, ":", nc,
      ":", cnonce, ":", qop, ":", ha2, ((void *)0));
  return mg_strcasecmp(response, expected_response) == 0 ? MG_TRUE : MG_FALSE;
}
int mg_authorize_digest(struct mg_connection *c, FILE *fp) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  const char *hdr;
  char line[256], f_user[256], ha1[256], f_domain[256], user[100], nonce[100],
       uri[16384], cnonce[100], resp[100], qop[100], nc[100];
  if (c == ((void *)0) || fp == ((void *)0)) return 0;
  if ((hdr = mg_get_header(c, "Authorization")) == ((void *)0) ||
      mg_strncasecmp(hdr, "Digest ", 7) != 0) return 0;
  if (!mg_parse_header(hdr, "username", user, sizeof(user))) return 0;
  if (!mg_parse_header(hdr, "cnonce", cnonce, sizeof(cnonce))) return 0;
  if (!mg_parse_header(hdr, "response", resp, sizeof(resp))) return 0;
  if (!mg_parse_header(hdr, "uri", uri, sizeof(uri))) return 0;
  if (!mg_parse_header(hdr, "qop", qop, sizeof(qop))) return 0;
  if (!mg_parse_header(hdr, "nc", nc, sizeof(nc))) return 0;
  if (!mg_parse_header(hdr, "nonce", nonce, sizeof(nonce))) return 0;
  while (fgets(line, sizeof(line), fp) != ((void *)0)) {
    if (sscanf(line, "%[^:]:%[^:]:%s", f_user, f_domain, ha1) == 3 &&
        !strcmp(user, f_user) &&
        !strcmp(conn->server->config_options[AUTH_DOMAIN], f_domain))
      return check_password(c->request_method, ha1, uri,
                            nonce, nc, cnonce, qop, resp);
  }
  return MG_FALSE;
}
static int is_authorized(struct connection *conn, const char *path,
                         int is_directory) {
  FILE *fp;
  int authorized = MG_TRUE;
  if ((fp = open_auth_file(conn, path, is_directory)) != ((void *)0)) {
    authorized = mg_authorize_digest(&conn->mg_conn, fp);
    fclose(fp);
  }
  return authorized;
}
static int is_authorized_for_dav(struct connection *conn) {
  const char *auth_file = conn->server->config_options[DAV_AUTH_FILE];
  const char *method = conn->mg_conn.request_method;
  FILE *fp;
  int authorized = MG_FALSE;
  if (method != ((void *)0) && !strcmp(method, "PROPFIND") && auth_file == ((void *)0)) {
    authorized = MG_TRUE;
  } else if (auth_file != ((void *)0) && (fp = fopen(auth_file, "r")) != ((void *)0)) {
    authorized = mg_authorize_digest(&conn->mg_conn, fp);
    fclose(fp);
  }
  return authorized;
}
static int parse_header(const char *str, size_t str_len, const char *var_name,
                        char *buf, size_t buf_size) {
  int ch = ' ', ch1 = ',', len = 0;
  size_t n = strlen(var_name);
  const char *p, *end = str + str_len, *s = ((void *)0);
  if (buf != ((void *)0) && buf_size > 0) buf[0] = '\0';
  for (s = str; s != ((void *)0) && s + n < end; s++) {
    if ((s == str || s[-1] == ch || s[-1] == ch1) && s[n] == '=' &&
        !memcmp(s, var_name, n)) break;
  }
  if (s != ((void *)0) && &s[n + 1] < end) {
    s += n + 1;
    if (*s == '"' || *s == '\'') ch = ch1 = *s++;
    p = s;
    while (p < end && p[0] != ch && p[0] != ch1 && len < (int) buf_size) {
      if (ch == ch1 && p[0] == '\\' && p[1] == ch) p++;
      buf[len++] = *p++;
    }
    if (len >= (int) buf_size || (ch != ' ' && *p != ch)) {
      len = 0;
    } else {
      if (len > 0 && s[len - 1] == ',') len--;
      if (len > 0 && s[len - 1] == ';') len--;
      buf[len] = '\0';
    }
  }
  return len;
}
int mg_parse_header(const char *s, const char *var_name, char *buf,
                    size_t buf_size) {
  return parse_header(s, s == ((void *)0) ? 0 : strlen(s), var_name, buf, buf_size);
}
static void send_ssi_file(struct mg_connection *, const char *, FILE *, int);
static void send_file_data(struct mg_connection *conn, FILE *fp) {
  char buf[8192];
  size_t n;
  while ((n = fread(buf, 1, sizeof(buf), fp)) > 0) {
    mg_write(conn, buf, n);
  }
}
static void do_ssi_include(struct mg_connection *conn, const char *ssi,
                           char *tag, int include_level) {
  char file_name[8192], path[8192], *p;
  char **opts = (((struct connection *) ((char *) (conn) - __builtin_offsetof (struct connection, mg_conn))))->server->config_options;
  FILE *fp;
  if (sscanf(tag, " virtual=\"%[^\"]\"", file_name) == 1) {
    mg_snprintf(path, sizeof(path), "%s%c%s",
                opts[DOCUMENT_ROOT], '/', file_name);
  } else if (sscanf(tag, " abspath=\"%[^\"]\"", file_name) == 1) {
    mg_snprintf(path, sizeof(path), "%s", file_name);
  } else if (sscanf(tag, " file=\"%[^\"]\"", file_name) == 1 ||
             sscanf(tag, " \"%[^\"]\"", file_name) == 1) {
    mg_snprintf(path, sizeof(path), "%s", ssi);
    if ((p = strrchr(path, '/')) != ((void *)0)) {
      p[1] = '\0';
    }
    mg_snprintf(path + strlen(path), sizeof(path) - strlen(path), "%s",
                file_name);
  } else {
    mg_printf(conn, "Bad SSI #include: [%s]", tag);
    return;
  }
  if ((fp = fopen(path, "rb")) == ((void *)0)) {
    mg_printf(conn, "Cannot open SSI #include: [%s]: fopen(%s): %s",
              tag, path, strerror((*__errno_location ())));
  } else {
    ns_set_close_on_exec(fileno(fp));
    if (mg_match_prefix(opts[SSI_PATTERN], strlen(opts[SSI_PATTERN]),
        path) > 0) {
      send_ssi_file(conn, path, fp, include_level + 1);
    } else {
      send_file_data(conn, fp);
    }
    fclose(fp);
  }
}
static void do_ssi_exec(struct mg_connection *conn, char *tag) {
  char cmd[8192];
  FILE *fp;
  if (sscanf(tag, " \"%[^\"]\"", cmd) != 1) {
    mg_printf(conn, "Bad SSI #exec: [%s]", tag);
  } else if ((fp = popen(cmd, "r")) == ((void *)0)) {
    mg_printf(conn, "Cannot SSI #exec: [%s]: %s", cmd, strerror((*__errno_location ())));
  } else {
    send_file_data(conn, fp);
    pclose(fp);
  }
}
static void send_ssi_file(struct mg_connection *conn, const char *path,
                          FILE *fp, int include_level) {
  char buf[8192];
  int ch, offset, len, in_ssi_tag;
  if (include_level > 10) {
    mg_printf(conn, "SSI #include level is too deep (%s)", path);
    return;
  }
  in_ssi_tag = len = offset = 0;
  while ((ch = fgetc(fp)) != (-1)) {
    if (in_ssi_tag && ch == '>') {
      in_ssi_tag = 0;
      buf[len++] = (char) ch;
      buf[len] = '\0';
      ((len <= (int) sizeof(buf)) ? (void) (0) : __assert_fail ("len <= (int) sizeof(buf)", "mongoose.c", 4331, __PRETTY_FUNCTION__));
      if (len < 6 || memcmp(buf, "<!--#", 5) != 0) {
        (void) mg_write(conn, buf, (size_t) len);
      } else {
        if (!memcmp(buf + 5, "include", 7)) {
          do_ssi_include(conn, path, buf + 12, include_level);
        } else if (!memcmp(buf + 5, "exec", 4)) {
          do_ssi_exec(conn, buf + 9);
        } else {
          mg_printf(conn, "%s: unknown SSI " "command: \"%s\"", path, buf);
        }
      }
      len = 0;
    } else if (in_ssi_tag) {
      if (len == 5 && memcmp(buf, "<!--#", 5) != 0) {
        in_ssi_tag = 0;
      } else if (len == (int) sizeof(buf) - 2) {
        mg_printf(conn, "%s: SSI tag is too large", path);
        len = 0;
      }
      buf[len++] = ch & 0xff;
    } else if (ch == '<') {
      in_ssi_tag = 1;
      if (len > 0) {
        mg_write(conn, buf, (size_t) len);
      }
      len = 0;
      buf[len++] = ch & 0xff;
    } else {
      buf[len++] = ch & 0xff;
      if (len == (int) sizeof(buf)) {
        mg_write(conn, buf, (size_t) len);
        len = 0;
      }
    }
  }
  if (len > 0) {
    mg_write(conn, buf, (size_t) len);
  }
}
static void handle_ssi_request(struct connection *conn, const char *path) {
  FILE *fp;
  struct vec mime_vec;
  if ((fp = fopen(path, "rb")) == ((void *)0)) {
    send_http_error(conn, 500, "fopen(%s): %s", path, strerror((*__errno_location ())));
  } else {
    ns_set_close_on_exec(fileno(fp));
    get_mime_type(conn->server, path, &mime_vec);
    conn->mg_conn.status_code = 200;
    mg_printf(&conn->mg_conn,
              "HTTP/1.1 %d OK\r\n"
              "Content-Type: %.*s\r\n"
              "Connection: close\r\n\r\n",
              conn->mg_conn.status_code, (int) mime_vec.len, mime_vec.ptr);
    send_ssi_file(&conn->mg_conn, path, fp, 0);
    fclose(fp);
    close_local_endpoint(conn);
  }
}
static void proxy_request(struct ns_connection *pc, struct mg_connection *c) {
  int i, sent_close_header = 0;
  ns_printf(pc, "%s %s%s%s HTTP/%s\r\n", c->request_method, c->uri,
            c->query_string ? "?" : "",
            c->query_string ? c->query_string : "",
            c->http_version);
  for (i = 0; i < c->num_headers; i++) {
    if (mg_strcasecmp(c->http_headers[i].name, "Connection") == 0) {
      ns_printf(pc, "%s: %s\r\n", "Connection", "close");
      sent_close_header = 1;
    } else {
      ns_printf(pc, "%s: %s\r\n", c->http_headers[i].name,
                c->http_headers[i].value);
    }
  }
  if (!sent_close_header) {
    ns_printf(pc, "%s: %s\r\n", "Connection", "close");
  }
  ns_printf(pc, "%s", "\r\n");
  ns_send(pc, c->content, c->content_len);
}
int mg_forward(struct mg_connection *c, const char *addr) {
  static const char ok[] = "HTTP/1.1 200 OK\r\n\r\n";
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  struct ns_connection *pc;
  if ((pc = ns_connect(&conn->server->ns_mgr, addr,
      mg_ev_handler, conn)) == ((void *)0)) {
    conn->ns_conn->flags |= (1 << 4);
    return 0;
  }
  pc->flags |= (1 << 23);
  conn->endpoint_type = EP_PROXY;
  conn->endpoint.nc = pc;
  ;
  if (strcmp(c->request_method, "CONNECT") == 0) {
    (void) send(conn->ns_conn->sock, ok, sizeof(ok) - 1, 0);
  } else {
    if (memcmp(c->uri, "http://", 7) == 0) c->uri += 7;
    while (*c->uri != '\0' && *c->uri != '/') c->uri++;
    proxy_request(pc, c);
  }
  return 1;
}
static void proxify_connection(struct connection *conn) {
  char proto[10], host[500], cert[500], addr[1000];
  unsigned short port = 80;
  struct mg_connection *c = &conn->mg_conn;
  int n = 0;
  const char *url = c->uri;
  proto[0] = host[0] = cert[0] = '\0';
  if (sscanf(url, "%499[^: ]:%hu%n", host, &port, &n) != 2 &&
      sscanf(url, "%9[a-z]://%499[^: ]:%hu%n", proto, host, &port, &n) != 3 &&
      sscanf(url, "%9[a-z]://%499[^/ ]%n", proto, host, &n) != 2) {
    n = 0;
  }
  snprintf(addr, sizeof(addr), "%s://%s:%hu",
           conn->ns_conn->ssl != ((void *)0) ? "ssl" : "tcp", host, port);
  if (n <= 0 || !mg_forward(c, addr)) {
    conn->ns_conn->flags |= (1 << 4);
  }
}
void mg_send_file_internal(struct mg_connection *c, const char *file_name,
                           file_stat_t *st, int exists,
                           const char *extra_headers) {
  struct connection *conn = ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)));
  char path[8192];
  const int is_directory = ((((st->st_mode)) & 0170000) == (0040000));
  const char *cgi_pat = conn->server->config_options[CGI_PATTERN];
  const char *dir_lst = conn->server->config_options[ENABLE_DIRECTORY_LISTING];
  mg_snprintf(path, sizeof(path), "%s", file_name);
  if (!exists || must_hide_file(conn, path)) {
    send_http_error(conn, 404, ((void *)0));
  } else if (is_directory &&
             conn->mg_conn.uri[strlen(conn->mg_conn.uri) - 1] != '/') {
    conn->mg_conn.status_code = 301;
    mg_printf(&conn->mg_conn, "HTTP/1.1 301 Moved Permanently\r\n"
              "Location: %s/\r\n\r\n", conn->mg_conn.uri);
    close_local_endpoint(conn);
  } else if (is_directory && !find_index_file(conn, path, sizeof(path), st)) {
    if (!mg_strcasecmp(dir_lst, "yes")) {
      send_directory_listing(conn, path);
    } else {
      send_http_error(conn, 403, ((void *)0));
    }
  } else if (mg_match_prefix(cgi_pat, strlen(cgi_pat), path) > 0) {
    open_cgi_endpoint(conn, path);
  } else if (mg_match_prefix(conn->server->config_options[SSI_PATTERN],
                             strlen(conn->server->config_options[SSI_PATTERN]),
                             path) > 0) {
    handle_ssi_request(conn, path);
  } else if (is_not_modified(conn, st)) {
    send_http_error(conn, 304, ((void *)0));
  } else if ((conn->endpoint.fd = open(path, 00 | 0, 0)) != -1) {
    open_file_endpoint(conn, path, st, extra_headers);
  } else {
    send_http_error(conn, 404, ((void *)0));
  }
}
void mg_send_file(struct mg_connection *c, const char *file_name,
                  const char *extra_headers) {
  file_stat_t st;
  const int exists = stat(file_name, &st) == 0;
  mg_send_file_internal(c, file_name, &st, exists, extra_headers);
}
static void open_local_endpoint(struct connection *conn, int skip_user) {
  char path[8192];
  file_stat_t st;
  int exists = 0;
  conn->endpoint_type = EP_NONE;
  if (conn->server->event_handler && call_user(conn, MG_AUTH) == MG_FALSE) {
    mg_send_digest_auth_request(&conn->mg_conn);
    return;
  }
  if (skip_user == 0 && conn->server->event_handler != ((void *)0)) {
    conn->endpoint_type = EP_USER;
    return;
  }
  if (strcmp(conn->mg_conn.request_method, "CONNECT") == 0 ||
      mg_strncasecmp(conn->mg_conn.uri, "http", 4) == 0) {
    const char *enp = conn->server->config_options[ENABLE_PROXY];
    if (enp == ((void *)0) || strcmp(enp, "yes") != 0) {
      send_http_error(conn, 405, ((void *)0));
    } else {
      proxify_connection(conn);
    }
    return;
  }
  if (!strcmp(conn->mg_conn.request_method, "OPTIONS")) {
    send_options(conn);
    return;
  }
  exists = convert_uri_to_file_name(conn, path, sizeof(path), &st);
  if (!strcmp(conn->mg_conn.request_method, "OPTIONS")) {
    send_options(conn);
  } else if (conn->server->config_options[DOCUMENT_ROOT] == ((void *)0)) {
    send_http_error(conn, 404, ((void *)0));
  } else if ((!is_dav_request(conn) && !is_authorized(conn, path,
               exists && ((((st.st_mode)) & 0170000) == (0040000)))) ||
             (is_dav_request(conn) && !is_authorized_for_dav(conn))) {
    mg_send_digest_auth_request(&conn->mg_conn);
    close_local_endpoint(conn);
  } else if (must_hide_file(conn, path)) {
    send_http_error(conn, 404, ((void *)0));
  } else if (!strcmp(conn->mg_conn.request_method, "PROPFIND")) {
    handle_propfind(conn, path, &st, exists);
  } else if (!strcmp(conn->mg_conn.request_method, "MKCOL")) {
    handle_mkcol(conn, path);
  } else if (!strcmp(conn->mg_conn.request_method, "DELETE")) {
    handle_delete(conn, path);
  } else if (!strcmp(conn->mg_conn.request_method, "PUT")) {
    handle_put(conn, path);
  } else {
    mg_send_file_internal(&conn->mg_conn, path, &st, exists, ((void *)0));
  }
}
static void send_continue_if_expected(struct connection *conn) {
  static const char expect_response[] = "HTTP/1.1 100 Continue\r\n\r\n";
  const char *expect_hdr = mg_get_header(&conn->mg_conn, "Expect");
  if (expect_hdr != ((void *)0) && !mg_strcasecmp(expect_hdr, "100-continue")) {
    ns_send(conn->ns_conn, expect_response, sizeof(expect_response) - 1);
  }
}
static int is_valid_uri(const char *uri) {
  unsigned short n;
  return uri[0] == '/' ||
    strcmp(uri, "*") == 0 ||
    mg_strncasecmp(uri, "http", 4) == 0 ||
    sscanf(uri, "%*[^ :]:%hu", &n) > 0;
}
static void try_parse(struct connection *conn) {
  struct iobuf *io = &conn->ns_conn->recv_iobuf;
  if (conn->request_len == 0 &&
      (conn->request_len = get_request_len(io->buf, io->len)) > 0) {
    conn->request = (char *) malloc(conn->request_len);
    memcpy(conn->request, io->buf, conn->request_len);
    iobuf_remove(io, conn->request_len);
    conn->request_len = parse_http_message(conn->request, conn->request_len,
                                           &conn->mg_conn);
    if (conn->request_len > 0) {
      const char *cl_hdr = mg_get_header(&conn->mg_conn, "Content-Length");
      conn->cl = cl_hdr == ((void *)0) ? 0 : strtoll(cl_hdr, ((void *)0), 10);
      conn->mg_conn.content_len = (size_t) conn->cl;
    }
  }
}
static void do_proxy(struct connection *conn) {
  if (0 && conn->request_len == 0) {
    try_parse(conn);
    ;
    if (conn->request_len > 0 && call_user(conn, MG_REQUEST) == MG_FALSE) {
      proxy_request(conn->endpoint.nc, &conn->mg_conn);
    } else if (conn->request_len < 0) {
      ns_forward(conn->ns_conn, conn->endpoint.nc);
    }
  } else {
    ;
    ns_forward(conn->ns_conn, conn->endpoint.nc);
  }
}
static void on_recv_data(struct connection *conn) {
  struct iobuf *io = &conn->ns_conn->recv_iobuf;
  int n;
  if (conn->endpoint_type == EP_PROXY) {
    if (conn->endpoint.nc != ((void *)0)) do_proxy(conn);
    return;
  }
  try_parse(conn);
 
                             ;
  if (conn->request_len < 0 ||
      (conn->request_len > 0 && !is_valid_uri(conn->mg_conn.uri))) {
    send_http_error(conn, 400, ((void *)0));
  } else if (conn->request_len == 0 && io->len > 16384) {
    send_http_error(conn, 413, ((void *)0));
  } else if (conn->request_len > 0 &&
             strcmp(conn->mg_conn.http_version, "1.0") != 0 &&
             strcmp(conn->mg_conn.http_version, "1.1") != 0) {
    send_http_error(conn, 505, ((void *)0));
  } else if (conn->request_len > 0 && conn->endpoint_type == EP_NONE) {
    send_websocket_handshake_if_requested(&conn->mg_conn);
    send_continue_if_expected(conn);
    open_local_endpoint(conn, 0);
  }
  if (conn->endpoint_type == EP_CGI && conn->endpoint.nc != ((void *)0)) {
    ns_forward(conn->ns_conn, conn->endpoint.nc);
  }
  if (conn->endpoint_type == EP_USER) {
    conn->mg_conn.content = io->buf;
    conn->mg_conn.content_len = io->len;
    n = call_user(conn, MG_RECV);
    if (n < 0) {
      conn->ns_conn->flags |= (1 << 0);
    } else if ((size_t) n <= io->len) {
      iobuf_remove(io, n);
    }
    call_request_handler_if_data_is_buffered(conn);
  }
  if (conn->endpoint_type == EP_PUT && io->len > 0) {
    forward_put_data(conn);
  }
}
static void call_http_client_handler(struct connection *conn) {
  if (conn->cl == 0) {
    conn->mg_conn.content_len = conn->ns_conn->recv_iobuf.len;
  }
  conn->mg_conn.content = conn->ns_conn->recv_iobuf.buf;
  if (call_user(conn, MG_REPLY) == MG_FALSE) {
    conn->ns_conn->flags |= (1 << 4);
  }
  iobuf_remove(&conn->ns_conn->recv_iobuf, conn->mg_conn.content_len);
  conn->mg_conn.status_code = 0;
  conn->cl = conn->num_bytes_recv = conn->request_len = 0;
  free(conn->request);
  conn->request = ((void *)0);
}
static void process_response(struct connection *conn) {
  struct iobuf *io = &conn->ns_conn->recv_iobuf;
  try_parse(conn);
  ;
  if (conn->request_len < 0 ||
      (conn->request_len == 0 && io->len > 16384)) {
    call_http_client_handler(conn);
  } else if ((int64_t) io->len >= conn->cl) {
    call_http_client_handler(conn);
  }
}
struct mg_connection *mg_connect(struct mg_server *server, const char *addr) {
  struct ns_connection *nsconn;
  struct connection *conn;
  nsconn = ns_connect(&server->ns_mgr, addr, mg_ev_handler, ((void *)0));
  if (nsconn == ((void *)0)) return 0;
  if ((conn = (struct connection *) calloc(1, sizeof(*conn))) == ((void *)0)) {
    nsconn->flags |= (1 << 4);
    return 0;
  }
  conn->ns_conn = nsconn;
  nsconn->user_data = conn;
  conn->server = server;
  conn->endpoint_type = EP_CLIENT;
  conn->mg_conn.server_param = server->ns_mgr.user_data;
  conn->ns_conn->flags = (1 << 3);
  return &conn->mg_conn;
}
static void log_header(const struct mg_connection *conn, const char *header,
                       FILE *fp) {
  const char *header_value;
  if ((header_value = mg_get_header(conn, header)) == ((void *)0)) {
    (void) fprintf(fp, "%s", " -");
  } else {
    (void) fprintf(fp, " \"%s\"", header_value);
  }
}
static void log_access(const struct connection *conn, const char *path) {
  const struct mg_connection *c = &conn->mg_conn;
  FILE *fp = (path == ((void *)0)) ? ((void *)0) : fopen(path, "a+");
  char date[64], user[100];
  time_t now;
  if (fp == ((void *)0)) return;
  now = time(((void *)0));
  strftime(date, sizeof(date), "%d/%b/%Y:%H:%M:%S %z", localtime(&now));
  flockfile(fp);
  mg_parse_header(mg_get_header(&conn->mg_conn, "Authorization"), "username",
                  user, sizeof(user));
  fprintf(fp, "%s - %s [%s] \"%s %s%s%s HTTP/%s\" %d 0",
          c->remote_ip, user[0] == '\0' ? "-" : user, date,
          c->request_method ? c->request_method : "-",
          c->uri ? c->uri : "-", c->query_string ? "?" : "",
          c->query_string ? c->query_string : "",
          c->http_version, c->status_code);
  log_header(c, "Referer", fp);
  log_header(c, "User-Agent", fp);
  fputc('\n', fp);
  fflush(fp);
  funlockfile(fp);
  fclose(fp);
}
static void close_local_endpoint(struct connection *conn) {
  struct mg_connection *c = &conn->mg_conn;
  int keep_alive = should_keep_alive(&conn->mg_conn) &&
    (conn->endpoint_type == EP_FILE || conn->endpoint_type == EP_USER);
 
                             ;
  switch (conn->endpoint_type) {
    case EP_PUT:
    case EP_FILE:
      close(conn->endpoint.fd);
      break;
    case EP_CGI:
    case EP_PROXY:
      if (conn->endpoint.nc != ((void *)0)) {
        ;
        conn->endpoint.nc->flags |= (1 << 4);
        conn->endpoint.nc->user_data = ((void *)0);
      }
      break;
    default: break;
  }
  if (c->status_code > 0 && conn->endpoint_type != EP_CLIENT &&
      c->status_code != 400) {
    log_access(conn, conn->server->config_options[ACCESS_LOG_FILE]);
  }
  iobuf_free(&conn->ns_conn->recv_iobuf);
  free(conn->request);
  free(conn->path_info);
  conn->endpoint.nc = ((void *)0);
  conn->request = conn->path_info = ((void *)0);
  conn->endpoint_type = EP_NONE;
  conn->cl = conn->num_bytes_recv = conn->request_len = 0;
  conn->ns_conn->flags &= ~((1 << 0) |
                            (1 << 1) | (1 << 4) |
                            (1 << 20) | (1 << 21));
  c->request_method = c->uri = c->http_version = c->query_string = ((void *)0);
  c->num_headers = c->status_code = c->is_websocket = c->content_len = 0;
  c->connection_param = c->callback_param = ((void *)0);
  if (keep_alive) {
    on_recv_data(conn);
  } else {
    conn->ns_conn->flags |= conn->ns_conn->send_iobuf.len == 0 ?
      (1 << 4) : (1 << 0);
  }
}
static void transfer_file_data(struct connection *conn) {
  char buf[8192];
  size_t n;
  if (conn->ns_conn->send_iobuf.len > sizeof(buf) * 2) return;
  n = read(conn->endpoint.fd, buf, conn->cl < (int64_t) sizeof(buf) ?
           (int) conn->cl : (int) sizeof(buf));
  if (n <= 0) {
    close_local_endpoint(conn);
  } else if (n > 0) {
    conn->cl -= n;
    ns_send(conn->ns_conn, buf, n);
    if (conn->cl <= 0) {
      close_local_endpoint(conn);
    }
  }
}
time_t mg_poll_server(struct mg_server *server, int milliseconds) {
  return ns_mgr_poll(&server->ns_mgr, milliseconds);
}
void mg_destroy_server(struct mg_server **server) {
  if (server != ((void *)0) && *server != ((void *)0)) {
    struct mg_server *s = *server;
    int i;
    ns_mgr_free(&s->ns_mgr);
    for (i = 0; i < (int) (sizeof(s->config_options) / sizeof(s->config_options[0])); i++) {
      free(s->config_options[i]);
    }
    free(s);
    *server = ((void *)0);
  }
}
struct mg_connection *mg_next(struct mg_server *s, struct mg_connection *c) {
  struct ns_connection *nc = ns_next(&s->ns_mgr, c == ((void *)0) ? ((void *)0) :
                                     ((struct connection *) ((char *) (c) - __builtin_offsetof (struct connection, mg_conn)))->ns_conn);
  if (nc != ((void *)0) && nc->user_data != ((void *)0)) {
    return & ((struct connection *) nc->user_data)->mg_conn;
  } else {
    return ((void *)0);
  }
}
static int get_var(const char *data, size_t data_len, const char *name,
                   char *dst, size_t dst_len) {
  const char *p, *e, *s;
  size_t name_len;
  int len;
  if (dst == ((void *)0) || dst_len == 0) {
    len = -2;
  } else if (data == ((void *)0) || name == ((void *)0) || data_len == 0) {
    len = -1;
    dst[0] = '\0';
  } else {
    name_len = strlen(name);
    e = data + data_len;
    len = -1;
    dst[0] = '\0';
    for (p = data; p + name_len < e; p++) {
      if ((p == data || p[-1] == '&') && p[name_len] == '=' &&
          !mg_strncasecmp(name, p, name_len)) {
        p += name_len + 1;
        s = (const char *) memchr(p, '&', (size_t)(e - p));
        if (s == ((void *)0)) {
          s = e;
        }
        ((s >= p) ? (void) (0) : __assert_fail ("s >= p", "mongoose.c", 4999, __PRETTY_FUNCTION__));
        len = mg_url_decode(p, (size_t)(s - p), dst, dst_len, 1);
        if (len == -1) {
          len = -2;
        }
        break;
      }
    }
  }
  return len;
}
int mg_get_var(const struct mg_connection *conn, const char *name,
               char *dst, size_t dst_len) {
  int len = get_var(conn->query_string, conn->query_string == ((void *)0) ? 0 :
                    strlen(conn->query_string), name, dst, dst_len);
  if (len < 0) {
    len = get_var(conn->content, conn->content_len, name, dst, dst_len);
  }
  return len;
}
static int get_line_len(const char *buf, int buf_len) {
  int len = 0;
  while (len < buf_len && buf[len] != '\n') len++;
  return buf[len] == '\n' ? len + 1: -1;
}
int mg_parse_multipart(const char *buf, int buf_len,
                       char *var_name, int var_name_len,
                       char *file_name, int file_name_len,
                       const char **data, int *data_len) {
  static const char cd[] = "Content-Disposition: ";
  int hl, bl, n, ll, pos, cdl = sizeof(cd) - 1;
  if (buf == ((void *)0) || buf_len <= 0) return 0;
  if ((hl = get_request_len(buf, buf_len)) <= 0) return 0;
  if (buf[0] != '-' || buf[1] != '-' || buf[2] == '\n') return 0;
  bl = get_line_len(buf, buf_len);
  var_name[0] = file_name[0] = '\0';
  for (n = bl; (ll = get_line_len(buf + n, hl - n)) > 0; n += ll) {
    if (mg_strncasecmp(cd, buf + n, cdl) == 0) {
      parse_header(buf + n + cdl, ll - (cdl + 2), "name",
                   var_name, var_name_len);
      parse_header(buf + n + cdl, ll - (cdl + 2), "filename",
                   file_name, file_name_len);
    }
  }
  for (pos = hl; pos + (bl - 2) < buf_len; pos++) {
    if (buf[pos] == '-' && !memcmp(buf, &buf[pos], bl - 2)) {
      if (data_len != ((void *)0)) *data_len = (pos - 2) - hl;
      if (data != ((void *)0)) *data = buf + hl;
      return pos;
    }
  }
  return 0;
}
const char **mg_get_valid_option_names(void) {
  return static_config_options;
}
void mg_copy_listeners(struct mg_server *s, struct mg_server *to) {
  struct ns_connection *c;
  for (c = ns_next(&s->ns_mgr, ((void *)0)); c != ((void *)0); c = ns_next(&s->ns_mgr, c)) {
    struct ns_connection *tmp;
    if ((c->flags & (1 << 7)) &&
        (tmp = (struct ns_connection *) malloc(sizeof(*tmp))) != ((void *)0)) {
      memcpy(tmp, c, sizeof(*tmp));
      tmp->mgr = &to->ns_mgr;
      ns_add_conn(tmp->mgr, tmp);
    }
  }
}
static int get_option_index(const char *name) {
  int i;
  for (i = 0; static_config_options[i * 2] != ((void *)0); i++) {
    if (strcmp(static_config_options[i * 2], name) == 0) {
      return i;
    }
  }
  return -1;
}
static void set_default_option_values(char **opts) {
  const char *value, **all_opts = mg_get_valid_option_names();
  int i;
  for (i = 0; all_opts[i * 2] != ((void *)0); i++) {
    value = all_opts[i * 2 + 1];
    if (opts[i] == ((void *)0) && value != ((void *)0)) {
      opts[i] = mg_strdup(value);
    }
  }
}
const char *mg_set_option(struct mg_server *server, const char *name,
                          const char *value) {
  int ind = get_option_index(name);
  const char *error_msg = ((void *)0);
  char **v = ((void *)0);
  if (ind < 0) return "No such option";
  v = &server->config_options[ind];
  if ((*v == ((void *)0) && value == ((void *)0)) ||
      (value != ((void *)0) && *v != ((void *)0) && !strcmp(value, *v))) {
    return ((void *)0);
  }
  if (*v != ((void *)0)) {
    free(*v);
    *v = ((void *)0);
  }
  if (value == ((void *)0) || value[0] == '\0') return ((void *)0);
  *v = mg_strdup(value);
  ;
  if (ind == LISTENING_PORT) {
    char buf[500] = "";
    size_t n = 0;
    struct vec vec;
    while ((value = next_option(value, &vec, ((void *)0))) != ((void *)0)) {
      struct ns_connection *c = ns_bind(&server->ns_mgr, vec.ptr,
                                        mg_ev_handler, ((void *)0));
      if (c == ((void *)0)) {
        error_msg = "Cannot bind to port";
        break;
      } else {
        char buf2[50], cert[100], ca[100];
        union socket_address sa;
        int proto, use_ssl;
        ns_parse_address(vec.ptr, &sa, &proto, &use_ssl, cert, ca);
        ns_sock_to_str(c->sock, buf2, sizeof(buf2),
                       memchr(vec.ptr, ':', vec.len) == ((void *)0) ? 2 : 3);
        n += snprintf(buf + n, sizeof(buf) - n, "%s%s%s%s%s%s%s",
                      n > 0 ? "," : "",
                      use_ssl ? "ssl://" : "",
                      buf2, cert[0] ? ":" : "", cert, ca[0] ? ":" : "", ca);
      }
    }
    buf[sizeof(buf) - 1] = '\0';
    free(*v);
    *v = mg_strdup(buf);
  } else if (ind == HEXDUMP_FILE) {
    server->ns_mgr.hexdump_file = *v;
  } else if (ind == RUN_AS_USER) {
    struct passwd *pw;
    if ((pw = getpwnam(value)) == ((void *)0)) {
      error_msg = "Unknown user";
    } else if (setgid(pw->pw_gid) != 0) {
      error_msg = "setgid() failed";
    } else if (setuid(pw->pw_uid) != 0) {
      error_msg = "setuid() failed";
    }
  }
  return error_msg;
}
static void set_ips(struct ns_connection *nc, int is_rem) {
  struct connection *conn = (struct connection *) nc->user_data;
  struct mg_connection *c = &conn->mg_conn;
  char buf[100];
  ns_sock_to_str(nc->sock, buf, sizeof(buf), is_rem ? 7 : 3);
  sscanf(buf, "%47[^:]:%hu",
         is_rem ? c->remote_ip : c->local_ip,
         is_rem ? &c->remote_port : &c->local_port);
}
static void on_accept(struct ns_connection *nc, union socket_address *sa) {
  struct mg_server *server = (struct mg_server *) nc->mgr;
  struct connection *conn;
  if (!check_acl(server->config_options[ACCESS_CONTROL_LIST],
                 ntohl(* (uint32_t *) &sa->sin.sin_addr)) ||
      (conn = (struct connection *) calloc(1, sizeof(*conn))) == ((void *)0)) {
    nc->flags |= (1 << 4);
  } else {
    nc->user_data = conn;
    conn->ns_conn = nc;
    conn->server = server;
    conn->mg_conn.server_param = nc->mgr->user_data;
    set_ips(nc, 1);
    set_ips(nc, 0);
  }
}
static void process_udp(struct ns_connection *nc) {
  struct iobuf *io = &nc->recv_iobuf;
  struct connection conn;
  memset(&conn, 0, sizeof(conn));
  conn.ns_conn = nc;
  conn.server = (struct mg_server *) nc->mgr;
  conn.request_len = parse_http_message(io->buf, io->len, &conn.mg_conn);
  on_recv_data(&conn);
}
static void mg_ev_handler(struct ns_connection *nc, int ev, void *p) {
  struct connection *conn = (struct connection *) nc->user_data;
  switch (ev) {
    case 1:
      on_accept(nc, (union socket_address *) p);
      break;
    case 2:
      if (nc->user_data != ((void *)0)) {
        set_ips(nc, 1);
        set_ips(nc, 0);
      }
      conn->mg_conn.status_code = * (int *) p;
      if (conn->mg_conn.status_code != 0 ||
          (!(nc->flags & (1 << 23)) &&
           call_user(conn, MG_CONNECT) == MG_FALSE)) {
        nc->flags |= (1 << 4);
      }
      break;
    case 3:
      if (conn != ((void *)0)) {
        conn->num_bytes_recv += * (int *) p;
      }
      if (nc->flags & (1 << 8)) {
        process_udp(nc);
      } else if (nc->listener != ((void *)0)) {
        on_recv_data(conn);
      } else if (nc->flags & (1 << 22)) {
        on_cgi_data(nc);
      } else if (nc->flags & (1 << 23)) {
        if (conn != ((void *)0)) {
          ns_forward(nc, conn->ns_conn);
        }
      } else {
        process_response(conn);
      }
      break;
    case 4:
      break;
    case 5:
      nc->user_data = ((void *)0);
      if (nc->flags & ((1 << 22) | (1 << 23))) {
        ;
        if (conn && conn->ns_conn) {
          conn->ns_conn->flags &= ~(1 << 1);
          conn->ns_conn->flags |= conn->ns_conn->send_iobuf.len > 0 ?
            (1 << 0) : (1 << 4);
          conn->endpoint.nc = ((void *)0);
        }
      } else if (conn != ((void *)0)) {
        ;
        if (conn->endpoint_type == EP_CLIENT && nc->recv_iobuf.len > 0) {
          call_http_client_handler(conn);
        }
        call_user(conn, MG_CLOSE);
        close_local_endpoint(conn);
        conn->ns_conn = ((void *)0);
        free(conn);
      }
      break;
    case 0:
      if (conn != ((void *)0)) {
        if (call_user(conn, MG_POLL) == MG_TRUE) {
          if (conn->ns_conn->flags & (1 << 20)) {
            write_terminating_chunk(conn);
          }
          close_local_endpoint(conn);
        }
        if (conn->endpoint_type == EP_FILE) {
          transfer_file_data(conn);
        }
      }
      {
        time_t current_time = * (time_t *) p;
        if (conn != ((void *)0) && conn->mg_conn.is_websocket) {
          ping_idle_websocket_connection(conn, current_time);
        }
        if (nc->listener != ((void *)0) &&
            nc->last_io_time + 300 < current_time) {
          mg_ev_handler(nc, 5, ((void *)0));
          nc->flags |= (1 << 4);
        }
      }
      break;
    default:
      break;
  }
}
static void iter2(struct ns_connection *nc, int ev, void *param) {
  mg_handler_t func = ((void *)0);
  struct connection *conn = (struct connection *) nc->user_data;
  const char *msg = (const char *) param;
  int n;
  (void) ev;
  if (sscanf(msg, "%p %n", &func, &n) && func != ((void *)0) && conn != ((void *)0)) {
    conn->mg_conn.callback_param = (void *) (msg + n);
    func(&conn->mg_conn, MG_POLL);
  }
}
void mg_wakeup_server_ex(struct mg_server *server, mg_handler_t cb,
                         const char *fmt, ...) {
  va_list ap;
  char buf[8 * 1024];
  int len;
  len = snprintf(buf, sizeof(buf), "%p ", cb);
  __builtin_va_start(ap,fmt);
  len += vsnprintf(buf + len, sizeof(buf) - len, fmt, ap);
  __builtin_va_end(ap);
  ns_broadcast(&server->ns_mgr, iter2, buf, len + 1);
}
void mg_wakeup_server(struct mg_server *server) {
  ns_broadcast(&server->ns_mgr, ((void *)0), (void *) "", 0);
}
const char *mg_get_option(const struct mg_server *server, const char *name) {
  const char **opts = (const char **) server->config_options;
  int i = get_option_index(name);
  return i == -1 ? ((void *)0) : opts[i] == ((void *)0) ? "" : opts[i];
}
struct mg_server *mg_create_server(void *server_data, mg_handler_t handler) {
  struct mg_server *server = (struct mg_server *) calloc(1, sizeof(*server));
  ns_mgr_init(&server->ns_mgr, server_data);
  set_default_option_values(server->config_options);
  server->event_handler = handler;
  return server;
}
