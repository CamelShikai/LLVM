typedef unsigned long size_t;
typedef long __off_t;
typedef long __off64_t;
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
typedef void _IO_lock_t;
struct _IO_marker {
   struct _IO_marker *_next ;
   struct _IO_FILE *_sbuf ;
   int _pos ;
};
struct _IO_FILE {
   int _flags ;
   char *_IO_read_ptr ;
   char *_IO_read_end ;
   char *_IO_read_base ;
   char *_IO_write_base ;
   char *_IO_write_ptr ;
   char *_IO_write_end ;
   char *_IO_buf_base ;
   char *_IO_buf_end ;
   char *_IO_save_base ;
   char *_IO_backup_base ;
   char *_IO_save_end ;
   struct _IO_marker *_markers ;
   struct _IO_FILE *_chain ;
   int _fileno ;
   int _flags2 ;
   __off_t _old_offset ;
   unsigned short _cur_column ;
   signed char _vtable_offset ;
   char _shortbuf[1] ;
   _IO_lock_t *_lock ;
   __off64_t _offset ;
   void *__pad1 ;
   void *__pad2 ;
   void *__pad3 ;
   void *__pad4 ;
   size_t __pad5 ;
   int _mode ;
   char _unused2[(15UL * sizeof(int ) - 4UL * sizeof(void *)) - sizeof(size_t )] ;
};
struct regexp {
   char *startp[10] ;
   char *endp[10] ;
   char regstart ;
   char reganch ;
   char *regmust ;
   int regmlen ;
   char program[1] ;
};
typedef struct regexp regexp;
extern struct _IO_FILE *stdin ;
extern struct _IO_FILE *stderr ;
extern int fprintf(FILE * __restrict  __stream , char const   * __restrict  __format 
                   , ...) ;
extern int printf(char const   * __restrict  __format  , ...) ;
extern char *fgets(char * __restrict  __s , int __n , FILE * __restrict  __stream ) ;
extern regexp *regcomp(char const   *re ) ;
extern int regexec(regexp *rp , char const   *s ) ;
extern void regsub(regexp const   *rp , char const   *src , char *dst ) ;
void regerror(char *s ) ;
char buf[8192]  ;
int errreport  =    0;
char *errseen  =    (char *)((void *)0);
int status  =    0;
int multiple(void) ;
extern int ( /* missing proto */  exit)() ;
int error(char *s1 , char *s2 ) ;
int lineno  ;
regexp badregexp  ;
extern char *strchr() ;
extern int ( /* missing proto */  strlen)() ;
int complain(char *s1 , char *s2 ) ;
int try(char **fields ) ;
extern int ( /* missing proto */  free)() ;
extern int ( /* missing proto */  strcmp)() ;
void multiple_cil_lr_1_cil_lr_1(char *field[5] , char *scan , int i ) ;
void multiple_cil_lr_1(regexp *__cil_ap_badregexp , char rbuf[8192] , char *field[5] ) ;
void main_cil_lr_1(int *__cil_ap_status , int *__cil_ap_argc , char ***__cil_ap_argv ,
                   regexp **__cil_ap_r , int i ) ;
int main(int argc , char **argv ) 
{ 
  regexp *r ;
  int *__cil_pp_status  = & status;
  int *__cil_pp_argc  = & argc;
  char ***__cil_pp_argv  = & argv;
  regexp **__cil_pp_r  = & r;
  int *__cil_gp_status  = & status;
  int *__cil_fp_argc  = & argc;
  char ***__cil_fp_argv  = & argv;
  regexp **__cil_fp_r  = & r;
  regexp *r_ssa_1 ;
  int i_ssa_1 ;
  int i_ssa_2 ;
  int argc_ssa_1 ;
  char **argv_ssa_1 ;
  regexp *r_ssa_2 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  char **__cil_tmp24 ;
  char *__cil_tmp25 ;
  char **__cil_tmp26 ;
  char *__cil_tmp27 ;
  char **__cil_tmp28 ;
  char *__cil_tmp29 ;
  char *__cil_tmp30 ;
  char *__cil_tmp31 ;
  int __cil_tmp32 ;
  {
  {
  __cil_tmp19 = argc == 1;
  if (__cil_tmp19) {
    {
    multiple();
    __cil_tmp23 = *__cil_gp_status;
    exit(__cil_tmp23);
    }
  } else {
  }
  }
  {
  __cil_tmp24 = argv + 1;
  __cil_tmp25 = *__cil_tmp24;
  r_ssa_1 = regcomp((char const   *)__cil_tmp25);
  }
  {
  __cil_tmp20 = (unsigned long )r_ssa_1 == (unsigned long )((void *)0);
  if (__cil_tmp20) {
    {
    error("regcomp failure", "");
    }
  } else {
  }
  }
  {
  __cil_tmp21 = argc > 2;
  if (__cil_tmp21) {
    {
    __cil_tmp26 = argv + 2;
    __cil_tmp27 = *__cil_tmp26;
    i_ssa_1 = regexec(r_ssa_1, (char const   *)__cil_tmp27);
    printf((char const   */* __restrict  */)"%d", i_ssa_1);
    i_ssa_2 = 1;
    }
    {
    *__cil_fp_argc = argc;
    *__cil_fp_argv = argv;
    *__cil_fp_r = r_ssa_1;
    main_cil_lr_1(__cil_pp_status, __cil_pp_argc, __cil_pp_argv, __cil_pp_r, i_ssa_2);
    argc_ssa_1 = *__cil_fp_argc;
    argv_ssa_1 = *__cil_fp_argv;
    r_ssa_2 = *__cil_fp_r;
    }
    {
    printf((char const   */* __restrict  */)"\n");
    }
  } else {
    argc_ssa_1 = argc;
    argv_ssa_1 = argv;
    r_ssa_2 = r_ssa_1;
  }
  }
  {
  __cil_tmp22 = argc_ssa_1 > 3;
  if (__cil_tmp22) {
    {
    __cil_tmp28 = argv_ssa_1 + 3;
    __cil_tmp29 = *__cil_tmp28;
    __cil_tmp30 = buf;
    regsub((regexp const   *)r_ssa_2, (char const   *)__cil_tmp29, __cil_tmp30);
    __cil_tmp31 = buf;
    printf((char const   */* __restrict  */)"%s\n", __cil_tmp31);
    }
  } else {
  }
  }
  {
  __cil_tmp32 = *__cil_gp_status;
  exit(__cil_tmp32);
  }
}
}
void regerror(char *s ) 
{ 
  int *__cil_gp_errreport  = & errreport;
  char **__cil_gp_errseen  = & errseen;
  int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = *__cil_gp_errreport;
  if (__cil_tmp4) {
    {
    *__cil_gp_errseen = s;
    }
  } else {
    {
    error(s, "");
    }
  }
  }
  return;
}
}
int error(char *s1 , char *s2 ) 
{ 
  struct _IO_FILE **__cil_gp_stderr  = & stderr;
  struct _IO_FILE *__cil_tmp4 ;
  struct _IO_FILE *__cil_tmp5 ;
  struct _IO_FILE *__cil_tmp6 ;
  {
  {
  __cil_tmp4 = *__cil_gp_stderr;
  fprintf((FILE */* __restrict  */)__cil_tmp4, (char const   */* __restrict  */)"regexp: ");
  __cil_tmp5 = *__cil_gp_stderr;
  fprintf((FILE */* __restrict  */)__cil_tmp5, (char const   */* __restrict  */)s1,
          s2);
  __cil_tmp6 = *__cil_gp_stderr;
  fprintf((FILE */* __restrict  */)__cil_tmp6, (char const   */* __restrict  */)"\n");
  exit(1);
  }
}
}

int multiple(void) 
{ 
  char rbuf[8192] ;
  char *field[5] ;
  regexp *r ;
  regexp *__cil_pp_badregexp  = & badregexp;
  int *__cil_gp_errreport  = & errreport;
  int *__cil_gp_lineno  = & lineno;
  char **__cil_gp_errseen  = & errseen;
  regexp *tmp___2_ssa_1 ;
  int tmp___3_ssa_1 ;
  regexp *r_ssa_1 ;
  int tmp___4_ssa_1 ;
  int tmp___5_ssa_1 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  char *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  char *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  char *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  char *__cil_tmp43 ;
  char *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  char *__cil_tmp46 ;
  char *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  char *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  char *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  char *__cil_tmp53 ;
  char *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  char *__cil_tmp56 ;
  char *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  char *__cil_tmp59 ;
  char *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  char *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  char *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  char *__cil_tmp66 ;
  char *__cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  {
  {
  *__cil_gp_errreport = 1;
  *__cil_gp_lineno = 0;
  }
  {
  multiple_cil_lr_1(__cil_pp_badregexp, rbuf, field);
  }
  {
  *__cil_gp_lineno = 9990;
  *__cil_gp_errseen = (char *)0;
  tmp___2_ssa_1 = regcomp((char const   *)((void *)0));
  }
  {
  __cil_tmp22 = (unsigned long )tmp___2_ssa_1 != (unsigned long )((void *)0);
  if (__cil_tmp22) {
    {
    complain("regcomp(NULL) doesn\'t complain", "");
    }
  } else {
    {
    __cil_tmp37 = *__cil_gp_errseen;
    __cil_tmp38 = (unsigned long )__cil_tmp37;
    __cil_tmp23 = __cil_tmp38 == (unsigned long )((void *)0);
    if (__cil_tmp23) {
      {
      complain("regcomp(NULL) doesn\'t complain", "");
      }
    } else {
    }
    }
  }
  }
  {
  *__cil_gp_lineno = 9991;
  *__cil_gp_errseen = (char *)0;
  tmp___3_ssa_1 = regexec((regexp *)0, "foo");
  }
  if (tmp___3_ssa_1) {
    {
    complain("regexec(NULL, ...) doesn\'t complain", "");
    }
  } else {
    {
    __cil_tmp39 = *__cil_gp_errseen;
    __cil_tmp40 = (unsigned long )__cil_tmp39;
    __cil_tmp24 = __cil_tmp40 == (unsigned long )((void *)0);
    if (__cil_tmp24) {
      {
      complain("regexec(NULL, ...) doesn\'t complain", "");
      }
    } else {
    }
    }
  }
  {
  *__cil_gp_lineno = 9992;
  r_ssa_1 = regcomp("foo");
  }
  {
  __cil_tmp25 = (unsigned long )r_ssa_1 == (unsigned long )((void *)0);
  if (__cil_tmp25) {
    {
    complain("regcomp(\"foo\") fails", "");
    }
    return;
  } else {
    {
    *__cil_gp_lineno = 9993;
    *__cil_gp_errseen = (char *)0;
    tmp___4_ssa_1 = regexec(r_ssa_1, (char const   *)((void *)0));
    }
    if (tmp___4_ssa_1) {
      {
      complain("regexec(..., NULL) doesn\'t complain", "");
      }
    } else {
      {
      __cil_tmp41 = *__cil_gp_errseen;
      __cil_tmp42 = (unsigned long )__cil_tmp41;
      __cil_tmp26 = __cil_tmp42 == (unsigned long )((void *)0);
      if (__cil_tmp26) {
        {
        complain("regexec(..., NULL) doesn\'t complain", "");
        }
      } else {
      }
      }
    }
    {
    *__cil_gp_lineno = 9994;
    *__cil_gp_errseen = (char *)0;
    __cil_tmp43 = rbuf;
    regsub((regexp const   *)((void *)0), "foo", __cil_tmp43);
    }
    {
    __cil_tmp44 = *__cil_gp_errseen;
    __cil_tmp45 = (unsigned long )__cil_tmp44;
    __cil_tmp27 = __cil_tmp45 == (unsigned long )((void *)0);
    if (__cil_tmp27) {
      {
      complain("regsub(NULL, ..., ...) doesn\'t complain", "");
      }
    } else {
    }
    }
    {
    *__cil_gp_lineno = 9995;
    *__cil_gp_errseen = (char *)0;
    __cil_tmp46 = rbuf;
    regsub((regexp const   *)r_ssa_1, (char const   *)((void *)0), __cil_tmp46);
    }
    {
    __cil_tmp47 = *__cil_gp_errseen;
    __cil_tmp48 = (unsigned long )__cil_tmp47;
    __cil_tmp28 = __cil_tmp48 == (unsigned long )((void *)0);
    if (__cil_tmp28) {
      {
      complain("regsub(..., NULL, ...) doesn\'t complain", "");
      }
    } else {
    }
    }
    {
    *__cil_gp_lineno = 9996;
    *__cil_gp_errseen = (char *)0;
    regsub((regexp const   *)r_ssa_1, "foo", (char *)0);
    }
    {
    __cil_tmp49 = *__cil_gp_errseen;
    __cil_tmp50 = (unsigned long )__cil_tmp49;
    __cil_tmp29 = __cil_tmp50 == (unsigned long )((void *)0);
    if (__cil_tmp29) {
      {
      complain("regsub(..., ..., NULL) doesn\'t complain", "");
      }
    } else {
    }
    }
    {
    *__cil_gp_lineno = 9997;
    *__cil_gp_errseen = (char *)0;
    tmp___5_ssa_1 = regexec(__cil_pp_badregexp, "foo");
    }
    if (tmp___5_ssa_1) {
      {
      complain("regexec(nonsense, ...) doesn\'t complain", "");
      }
    } else {
      {
      __cil_tmp51 = *__cil_gp_errseen;
      __cil_tmp52 = (unsigned long )__cil_tmp51;
      __cil_tmp30 = __cil_tmp52 == (unsigned long )((void *)0);
      if (__cil_tmp30) {
        {
        complain("regexec(nonsense, ...) doesn\'t complain", "");
        }
      } else {
      }
      }
    }
    {
    *__cil_gp_lineno = 9998;
    *__cil_gp_errseen = (char *)0;
    __cil_tmp53 = rbuf;
    regsub((regexp const   *)__cil_pp_badregexp, "foo", __cil_tmp53);
    }
    {
    __cil_tmp54 = *__cil_gp_errseen;
    __cil_tmp55 = (unsigned long )__cil_tmp54;
    __cil_tmp31 = __cil_tmp55 == (unsigned long )((void *)0);
    if (__cil_tmp31) {
      {
      complain("regsub(nonsense, ..., ...) doesn\'t complain", "");
      }
    } else {
    }
    }
    return (0);
  }
  }
  {
  *__cil_gp_lineno = 9994;
  *__cil_gp_errseen = (char *)0;
  __cil_tmp56 = rbuf;
  regsub((regexp const   *)((void *)0), "foo", __cil_tmp56);
  }
  {
  __cil_tmp57 = *__cil_gp_errseen;
  __cil_tmp58 = (unsigned long )__cil_tmp57;
  __cil_tmp32 = __cil_tmp58 == (unsigned long )((void *)0);
  if (__cil_tmp32) {
    {
    complain("regsub(NULL, ..., ...) doesn\'t complain", "");
    }
  } else {
  }
  }
  {
  *__cil_gp_lineno = 9995;
  *__cil_gp_errseen = (char *)0;
  __cil_tmp59 = rbuf;
  regsub((regexp const   *)r, (char const   *)((void *)0), __cil_tmp59);
  }
  {
  __cil_tmp60 = *__cil_gp_errseen;
  __cil_tmp61 = (unsigned long )__cil_tmp60;
  __cil_tmp33 = __cil_tmp61 == (unsigned long )((void *)0);
  if (__cil_tmp33) {
    {
    complain("regsub(..., NULL, ...) doesn\'t complain", "");
    }
  } else {
  }
  }
  {
  *__cil_gp_lineno = 9996;
  *__cil_gp_errseen = (char *)0;
  regsub((regexp const   *)r, "foo", (char *)0);
  }
  {
  __cil_tmp62 = *__cil_gp_errseen;
  __cil_tmp63 = (unsigned long )__cil_tmp62;
  __cil_tmp34 = __cil_tmp63 == (unsigned long )((void *)0);
  if (__cil_tmp34) {
    {
    complain("regsub(..., ..., NULL) doesn\'t complain", "");
    }
  } else {
  }
  }
  {
  *__cil_gp_lineno = 9997;
  *__cil_gp_errseen = (char *)0;
  tmp___5_ssa_1 = regexec(__cil_pp_badregexp, "foo");
  }
  if (tmp___5_ssa_1) {
    {
    complain("regexec(nonsense, ...) doesn\'t complain", "");
    }
  } else {
    {
    __cil_tmp64 = *__cil_gp_errseen;
    __cil_tmp65 = (unsigned long )__cil_tmp64;
    __cil_tmp35 = __cil_tmp65 == (unsigned long )((void *)0);
    if (__cil_tmp35) {
      {
      complain("regexec(nonsense, ...) doesn\'t complain", "");
      }
    } else {
    }
    }
  }
  {
  *__cil_gp_lineno = 9998;
  *__cil_gp_errseen = (char *)0;
  __cil_tmp66 = rbuf;
  regsub((regexp const   *)__cil_pp_badregexp, "foo", __cil_tmp66);
  }
  {
  __cil_tmp67 = *__cil_gp_errseen;
  __cil_tmp68 = (unsigned long )__cil_tmp67;
  __cil_tmp36 = __cil_tmp68 == (unsigned long )((void *)0);
  if (__cil_tmp36) {
    {
    complain("regsub(nonsense, ..., ...) doesn\'t complain", "");
    }
  } else {
  }
  }
  return (0);
}
}
int try(char **fields ) 
{ 
  regexp *r ;
  char dbuf[8192] ;
  char **__cil_gp_errseen  = & errseen;
  regexp *r_ssa_1 ;
  int tmp_ssa_1 ;
  int tmp___0_ssa_1 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  char **__cil_tmp17 ;
  char *__cil_tmp18 ;
  char **__cil_tmp19 ;
  char *__cil_tmp20 ;
  char __cil_tmp21 ;
  int __cil_tmp22 ;
  char **__cil_tmp23 ;
  char *__cil_tmp24 ;
  char **__cil_tmp25 ;
  char *__cil_tmp26 ;
  char __cil_tmp27 ;
  int __cil_tmp28 ;
  char **__cil_tmp29 ;
  char *__cil_tmp30 ;
  char **__cil_tmp31 ;
  char *__cil_tmp32 ;
  char **__cil_tmp33 ;
  char *__cil_tmp34 ;
  char __cil_tmp35 ;
  int __cil_tmp36 ;
  char **__cil_tmp37 ;
  char *__cil_tmp38 ;
  char *__cil_tmp39 ;
  char *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  char **__cil_tmp42 ;
  char *__cil_tmp43 ;
  char *__cil_tmp44 ;
  char *__cil_tmp45 ;
  char **__cil_tmp46 ;
  char *__cil_tmp47 ;
  char __cil_tmp48 ;
  int __cil_tmp49 ;
  char **__cil_tmp50 ;
  char *__cil_tmp51 ;
  {
  {
  *__cil_gp_errseen = (char *)0;
  __cil_tmp17 = fields + 0;
  __cil_tmp18 = *__cil_tmp17;
  r_ssa_1 = regcomp((char const   *)__cil_tmp18);
  }
  {
  __cil_tmp10 = (unsigned long )r_ssa_1 == (unsigned long )((void *)0);
  if (__cil_tmp10) {
    {
    __cil_tmp19 = fields + 2;
    __cil_tmp20 = *__cil_tmp19;
    __cil_tmp21 = *__cil_tmp20;
    __cil_tmp22 = (int )__cil_tmp21;
    __cil_tmp11 = __cil_tmp22 != 99;
    if (__cil_tmp11) {
      {
      __cil_tmp23 = fields + 0;
      __cil_tmp24 = *__cil_tmp23;
      complain("regcomp failure in `%s\'", __cil_tmp24);
      }
    } else {
    }
    }
    return;
  } else {
    {
    __cil_tmp25 = fields + 2;
    __cil_tmp26 = *__cil_tmp25;
    __cil_tmp27 = *__cil_tmp26;
    __cil_tmp28 = (int )__cil_tmp27;
    __cil_tmp12 = __cil_tmp28 == 99;
    if (__cil_tmp12) {
      {
      __cil_tmp29 = fields + 0;
      __cil_tmp30 = *__cil_tmp29;
      complain("unexpected regcomp success in `%s\'", __cil_tmp30);
      free((char *)r_ssa_1);
      }
      return;
    } else {
      {
      __cil_tmp31 = fields + 1;
      __cil_tmp32 = *__cil_tmp31;
      tmp_ssa_1 = regexec(r_ssa_1, (char const   *)__cil_tmp32);
      }
      if (tmp_ssa_1) {
        {
        __cil_tmp33 = fields + 2;
        __cil_tmp34 = *__cil_tmp33;
        __cil_tmp35 = *__cil_tmp34;
        __cil_tmp36 = (int )__cil_tmp35;
        __cil_tmp13 = __cil_tmp36 == 110;
        if (__cil_tmp13) {
          {
          complain("unexpected regexec success", "");
          free((char *)r_ssa_1);
          }
          return;
        } else {
          {
          *__cil_gp_errseen = (char *)0;
          __cil_tmp37 = fields + 3;
          __cil_tmp38 = *__cil_tmp37;
          __cil_tmp39 = dbuf;
          regsub((regexp const   *)r_ssa_1, (char const   *)__cil_tmp38, __cil_tmp39);
          }
          {
          __cil_tmp40 = *__cil_gp_errseen;
          __cil_tmp41 = (unsigned long )__cil_tmp40;
          __cil_tmp14 = __cil_tmp41 != (unsigned long )((void *)0);
          if (__cil_tmp14) {
            {
            complain("regsub complaint", "");
            free((char *)r_ssa_1);
            }
            return;
          } else {
            {
            __cil_tmp42 = fields + 4;
            __cil_tmp43 = dbuf;
            __cil_tmp44 = *__cil_tmp42;
            tmp___0_ssa_1 = strcmp(__cil_tmp43, __cil_tmp44);
            }
            {
            __cil_tmp15 = tmp___0_ssa_1 != 0;
            if (__cil_tmp15) {
              {
              __cil_tmp45 = dbuf;
              complain("regsub result `%s\' wrong", __cil_tmp45);
              }
            } else {
            }
            }
            {
            free((char *)r_ssa_1);
            }
            return (0);
          }
          }
          {
          free((char *)r);
          }
          return (0);
        }
        }
        {
        free((char *)r);
        }
        return (0);
      } else {
        {
        __cil_tmp46 = fields + 2;
        __cil_tmp47 = *__cil_tmp46;
        __cil_tmp48 = *__cil_tmp47;
        __cil_tmp49 = (int )__cil_tmp48;
        __cil_tmp16 = __cil_tmp49 != 110;
        if (__cil_tmp16) {
          {
          __cil_tmp50 = fields + 0;
          __cil_tmp51 = *__cil_tmp50;
          complain("regexec failure in `%s\'", __cil_tmp51);
          }
        } else {
        }
        }
        {
        free((char *)r_ssa_1);
        }
        return;
      }
      {
      free((char *)r);
      }
      return (0);
    }
    }
    {
    free((char *)r);
    }
    return (0);
  }
  }
  {
  free((char *)r);
  }
  return (0);
}
}
int complain(char *s1 , char *s2 ) 
{ 
  struct _IO_FILE **__cil_gp_stderr  = & stderr;
  int *__cil_gp_lineno  = & lineno;
  char **__cil_gp_errseen  = & errseen;
  int *__cil_gp_status  = & status;
  char const   *tmp_ssa_1 ;
  int __cil_tmp9 ;
  struct _IO_FILE *__cil_tmp10 ;
  int __cil_tmp11 ;
  struct _IO_FILE *__cil_tmp12 ;
  char *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  char *__cil_tmp15 ;
  struct _IO_FILE *__cil_tmp16 ;
  {
  {
  __cil_tmp10 = *__cil_gp_stderr;
  __cil_tmp11 = *__cil_gp_lineno;
  fprintf((FILE */* __restrict  */)__cil_tmp10, (char const   */* __restrict  */)"try: %d: ",
          __cil_tmp11);
  __cil_tmp12 = *__cil_gp_stderr;
  fprintf((FILE */* __restrict  */)__cil_tmp12, (char const   */* __restrict  */)s1,
          s2);
  }
  {
  __cil_tmp13 = *__cil_gp_errseen;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp9 = __cil_tmp14 != (unsigned long )((void *)0);
  if (__cil_tmp9) {
    {
    __cil_tmp15 = *__cil_gp_errseen;
    tmp_ssa_1 = (char const   *)__cil_tmp15;
    }
  } else {
    {
    tmp_ssa_1 = "";
    }
  }
  }
  {
  __cil_tmp16 = *__cil_gp_stderr;
  fprintf((FILE */* __restrict  */)__cil_tmp16, (char const   */* __restrict  */)" (%s)\n",
          tmp_ssa_1);
  *__cil_gp_status = 1;
  }
  return (0);
}
}
void multiple_cil_lr_1_cil_lr_1(char *field[5] , char *scan , int i ) 
{ 
  char *tmp___0 ;
  char *scan_ssa_1 ;
  char *tmp___0_ssa_1 ;
  char *scan_ssa_2 ;
  int i_ssa_1 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  char **__cil_tmp13 ;
  char **__cil_tmp14 ;
  char *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  {
  {
  __cil_tmp9 = i < 5;
  if (__cil_tmp9) {
    {
    __cil_tmp13 = field + i;
    *__cil_tmp13 = scan;
    }
    {
    __cil_tmp14 = field + i;
    __cil_tmp15 = *__cil_tmp14;
    __cil_tmp16 = (unsigned long )__cil_tmp15;
    __cil_tmp10 = __cil_tmp16 == (unsigned long )((void *)0);
    if (__cil_tmp10) {
      {
      complain("bad testfile format", "");
      exit(1);
      }
    } else {
    }
    }
    {
    scan_ssa_1 = strchr(scan, '\t');
    }
    {
    __cil_tmp11 = (unsigned long )scan_ssa_1 != (unsigned long )((void *)0);
    if (__cil_tmp11) {
      {
      tmp___0_ssa_1 = scan_ssa_1;
      scan_ssa_2 = scan_ssa_1 + 1;
      *tmp___0_ssa_1 = (char )'\000';
      }
    } else {
      scan_ssa_2 = scan_ssa_1;
    }
    }
    {
    i_ssa_1 = i + 1;
    }
    {
    multiple_cil_lr_1_cil_lr_1(field, scan_ssa_2, i_ssa_1);
    }
    return;
  } else {
    return;
  }
  }
}
}
void multiple_cil_lr_1(regexp *__cil_ap_badregexp , char rbuf[8192] , char *field[5] ) 
{ 
  struct _IO_FILE **__cil_gp_stdin  = & stdin;
  int *__cil_gp_lineno  = & lineno;
  char *tmp___1_ssa_1 ;
  int tmp_ssa_1 ;
  char *scan_ssa_1 ;
  int i_ssa_1 ;
  int __cil_tmp15 ;
  char *__cil_tmp16 ;
  struct _IO_FILE *__cil_tmp17 ;
  char *__cil_tmp18 ;
  int __cil_tmp19 ;
  char *__cil_tmp20 ;
  int __cil_tmp21 ;
  char **__cil_tmp22 ;
  {
  {
  __cil_tmp16 = rbuf;
  __cil_tmp17 = *__cil_gp_stdin;
  tmp___1_ssa_1 = fgets((char *)__cil_tmp16, 8192,
                        (FILE *)__cil_tmp17);
  }
  {
  __cil_tmp15 = (unsigned long )tmp___1_ssa_1 != (unsigned long )((void *)0);
  if (__cil_tmp15) {
    {
    __cil_tmp18 = rbuf;
    tmp_ssa_1 = strlen(__cil_tmp18);
    __cil_tmp19 = tmp_ssa_1 - 1;
    __cil_tmp20 = rbuf + __cil_tmp19;
    *__cil_tmp20 = (char )'\000';
    __cil_tmp21 = *__cil_gp_lineno;
    *__cil_gp_lineno = __cil_tmp21 + 1;
    scan_ssa_1 = rbuf;
    i_ssa_1 = 0;
    }
    {
    multiple_cil_lr_1_cil_lr_1(field, scan_ssa_1, i_ssa_1);
    }
    {
    __cil_tmp22 = field;
    try(__cil_tmp22);
    }
    {
    multiple_cil_lr_1(__cil_ap_badregexp, rbuf, field);
    }
    return;
  } else {
    return;
  }
  }
}

}
void main_cil_lr_1(int *__cil_ap_status , int *__cil_ap_argc , char ***__cil_ap_argv ,
                   regexp **__cil_ap_r , int i ) 
{ 
  int i_ssa_1 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  regexp *__cil_tmp10 ;
  char *(*__cil_tmp11)[10] ;
  char **__cil_tmp12 ;
  char **__cil_tmp13 ;
  char *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  regexp *__cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  char *(*__cil_tmp19)[10] ;
  char **__cil_tmp20 ;
  char **__cil_tmp21 ;
  char *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  {
  {
  __cil_tmp7 = i < 10;
  if (__cil_tmp7) {
    {
    __cil_tmp10 = *__cil_ap_r;
    __cil_tmp11 = (char *(*)[10])__cil_tmp10;
    __cil_tmp12 = *__cil_tmp11;
    __cil_tmp13 = __cil_tmp12 + i;
    __cil_tmp14 = *__cil_tmp13;
    __cil_tmp15 = (unsigned long )__cil_tmp14;
    __cil_tmp8 = __cil_tmp15 != (unsigned long )((void *)0);
    if (__cil_tmp8) {
      {
      __cil_tmp16 = *__cil_ap_r;
      __cil_tmp17 = (unsigned char *)__cil_tmp16;
      __cil_tmp18 = __cil_tmp17 + 80;
      __cil_tmp19 = (char *(*)[10])__cil_tmp18;
      __cil_tmp20 = *__cil_tmp19;
      __cil_tmp21 = __cil_tmp20 + i;
      __cil_tmp22 = *__cil_tmp21;
      __cil_tmp23 = (unsigned long )__cil_tmp22;
      __cil_tmp9 = __cil_tmp23 != (unsigned long )((void *)0);
      if (__cil_tmp9) {
        {
        printf((char const   */* __restrict  */)" \\%d", i);
        }
      } else {
      }
      }
    } else {
    }
    }
    {
    i_ssa_1 = i + 1;
    }
    {
    main_cil_lr_1(__cil_ap_status, __cil_ap_argc, __cil_ap_argv, __cil_ap_r, i_ssa_1);
    }
    return;
  } else {
    return;
  }
  }
}
}
