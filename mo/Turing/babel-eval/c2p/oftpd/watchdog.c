/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is false */

#line 139 "/usr/include/bits/types.h"
typedef long __time_t;
typedef long int __suseconds_t;
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };

#line 75 "/usr/include/time.h"
typedef __time_t time_t;
#line 60 "/usr/include/bits/pthreadtypes.h"
typedef unsigned long pthread_t;
#line 63 "/usr/include/bits/pthreadtypes.h"
union pthread_attr_t {
   char __size[56] ;
   long __align ;
};
#line 69 "/usr/include/bits/pthreadtypes.h"
typedef union pthread_attr_t pthread_attr_t;
#line 75 "/usr/include/bits/pthreadtypes.h"
struct __pthread_internal_list {
   struct __pthread_internal_list *__prev ;
   struct __pthread_internal_list *__next ;
};
#line 75 "/usr/include/bits/pthreadtypes.h"
typedef struct __pthread_internal_list __pthread_list_t;
#line 90 "/usr/include/bits/pthreadtypes.h"
struct __pthread_mutex_s {
   int __lock ;
   unsigned int __count ;
   int __owner ;
   unsigned int __nusers ;
   int __kind ;
   short __spins ;
   short __elision ;
   __pthread_list_t __list ;
};
#line 90 "/usr/include/bits/pthreadtypes.h"
union __anonunion_pthread_mutex_t_6 {
   struct __pthread_mutex_s __data ;
   char __size[40] ;
   long __align ;
};
#line 90 "/usr/include/bits/pthreadtypes.h"
typedef union __anonunion_pthread_mutex_t_6 pthread_mutex_t;
#line 130 "/usr/include/bits/pthreadtypes.h"
union __anonunion_pthread_mutexattr_t_7 {
   char __size[4] ;
   int __align ;
};
#line 130 "/usr/include/bits/pthreadtypes.h"
typedef union __anonunion_pthread_mutexattr_t_7 pthread_mutexattr_t;
#line 8 "error.h"
struct __anonstruct_error_t_30 {
   int error_code ;
   char desc[128] ;
};
#line 8 "error.h"
typedef struct __anonstruct_error_t_30 error_t;
#line 24 "watchdog.h"
struct watched {
   pthread_t watched_thread ;
   int in_list ;
   time_t alarm_time ;
   struct watched *older ;
   struct watched *newer ;
   void *watchdog ;
};
#line 24 "watchdog.h"
typedef struct watched watched_t;
#line 43 "watchdog.h"
struct __anonstruct_watchdog_t_31 {
   pthread_mutex_t mutex ;
   int inactivity_timeout ;
   watched_t *oldest ;
   watched_t *newest ;
};
#line 43 "watchdog.h"
typedef struct __anonstruct_watchdog_t_31 watchdog_t;
#line 10 "daemon_assert.h"
extern void daemon_assert_fail(char const   *assertion , char const   *file , int line ,
                               char const   *function ) ;
#line 192 "/usr/include/time.h"
extern  __attribute__((__nothrow__)) time_t ( __attribute__((__leaf__)) time)(time_t *__timer ) ;
#line 235 "/usr/include/pthread.h"
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1,3))) pthread_create)(pthread_t * __restrict  __newthread ,
                                                                                             pthread_attr_t const   * __restrict  __attr ,
                                                                                             void *(*__start_routine)(void * ) ,
                                                                                             void * __restrict  __arg ) ;
#line 273
extern  __attribute__((__nothrow__)) int ( __attribute__((__leaf__)) pthread_detach)(pthread_t __th ) ;
#line 277
extern  __attribute__((__nothrow__)) pthread_t ( __attribute__((__leaf__)) pthread_self)(void)  __attribute__((__const__)) ;
#line 751
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1), __leaf__)) pthread_mutex_init)(pthread_mutex_t *__mutex ,
                                                                                                         pthread_mutexattr_t const   *__mutexattr ) ;
#line 764
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1))) pthread_mutex_lock)(pthread_mutex_t *__mutex ) ;
#line 775
extern  __attribute__((__nothrow__)) int ( __attribute__((__nonnull__(1))) pthread_mutex_unlock)(pthread_mutex_t *__mutex ) ;
#line 14 "error.h"
extern void error_init(error_t *err , int error_code , char const   *desc_fmt  , ...) ;
#line 52 "watchdog.h"
int watchdog_init(watchdog_t *w , int inactivity_timeout , error_t *err ) ;
#line 53
void watchdog_add_watched(watchdog_t *w , watched_t *watched ) ;
#line 54
void watchdog_defer_watched(watched_t *watched ) ;
#line 55
void watchdog_remove_watched(watched_t *watched ) ;
#line 10 "watchdog.c"
static int invariant(watchdog_t *w ) ;
#line 11
static void insert(watchdog_t *w , watched_t *watched ) ;
#line 12
static void delete(watchdog_t *w , watched_t *watched ) ;
#line 13
static void *watcher(void *void_w ) ;
#line 15 "watchdog.c"
int watchdog_init(watchdog_t *w , int inactivity_timeout , error_t *err ) 
{ 
  pthread_t thread_id ;
  pthread_t *__cil_pp_thread_id  = & thread_id;
  void *(*__cil_pp_watcher)(void *void_w )  = & watcher;
  pthread_t *__cil_fp_thread_id  = & thread_id;
  int error_code_ssa_1 ;
  pthread_t thread_id_ssa_1 ;
  int tmp_ssa_1 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  int *__cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  watched_t **__cil_tmp20 ;
  unsigned char *__cil_tmp21 ;
  watched_t **__cil_tmp22 ;

  {
  {
#line 20
  __cil_tmp13 = (unsigned long )w != (unsigned long )((void *)0);
#line 20
  if (! __cil_tmp13) {
    {
#line 20
    daemon_assert_fail("w != ((void *)0)", "watchdog.c", 20, "watchdog_init");
    }
  }
  }
  {
#line 21
  __cil_tmp14 = inactivity_timeout > 0;
#line 21
  if (! __cil_tmp14) {
    {
#line 21
    daemon_assert_fail("inactivity_timeout > 0", "watchdog.c", 21, "watchdog_init");
    }
  }
  }
  {
#line 22
  __cil_tmp15 = (unsigned long )err != (unsigned long )((void *)0);
#line 22
  if (! __cil_tmp15) {
    {
#line 22
    daemon_assert_fail("err != ((void *)0)", "watchdog.c", 22, "watchdog_init");
    }
  }
  }
  {
#line 24
  pthread_mutex_init((pthread_mutex_t *)w, (pthread_mutexattr_t const   *)0);
#line 25
  __cil_tmp17 = (unsigned char *)w + 40;
#line 25
  __cil_tmp18 = (int *)__cil_tmp17;
#line 25
  *__cil_tmp18 = inactivity_timeout;
#line 26
  __cil_tmp19 = (unsigned char *)w + 48;
#line 26
  __cil_tmp20 = (watched_t **)__cil_tmp19;
#line 26
  *__cil_tmp20 = (watched_t *)0;
#line 27
  __cil_tmp21 = (unsigned char *)w + 56;
#line 27
  __cil_tmp22 = (watched_t **)__cil_tmp21;
#line 27
  *__cil_tmp22 = (watched_t *)0;
  *__cil_fp_thread_id = thread_id;
#line 29
  error_code_ssa_1 = pthread_create((pthread_t */* __restrict  */)__cil_pp_thread_id,
                                    (pthread_attr_t const   */* __restrict  */)0,
                                    __cil_pp_watcher, (void */* __restrict  */)w);
  thread_id_ssa_1 = *__cil_fp_thread_id;
  }
  {
#line 30
  __cil_tmp16 = error_code_ssa_1 != 0;
#line 30
  if (__cil_tmp16) {
    {
#line 31
    error_init(err, error_code_ssa_1, "error %d from pthread_create()", error_code_ssa_1);
    }
#line 33
    return (0);
  } else {
    {
#line 35
    pthread_detach(thread_id_ssa_1);
#line 37
    tmp_ssa_1 = invariant(w);
    }
#line 37
    if (! tmp_ssa_1) {
      {
#line 37
      daemon_assert_fail("invariant(w)", "watchdog.c", 37, "watchdog_init");
      }
    }
#line 39
    return (1);
  }
  }
#line 39
  return (1);
}
}
#line 42 "watchdog.c"
void watchdog_add_watched(watchdog_t *w , watched_t *watched ) 
{ 
  int tmp_ssa_1 ;
  int tmp___0_ssa_1 ;
  unsigned char *__cil_tmp7 ;
  void **__cil_tmp8 ;

  {
  {
#line 44
  tmp_ssa_1 = invariant(w);
  }
#line 44
  if (! tmp_ssa_1) {
    {
#line 44
    daemon_assert_fail("invariant(w)", "watchdog.c", 44, "watchdog_add_watched");
    }
  }
  {
#line 46
  pthread_mutex_lock((pthread_mutex_t *)w);
#line 48
  *((pthread_t *)watched) = pthread_self();
#line 49
  __cil_tmp7 = (unsigned char *)watched + 40;
#line 49
  __cil_tmp8 = (void **)__cil_tmp7;
#line 49
  *__cil_tmp8 = (void *)w;
#line 50
  insert(w, watched);
#line 52
  pthread_mutex_unlock((pthread_mutex_t *)w);
#line 54
  tmp___0_ssa_1 = invariant(w);
  }
#line 54
  if (! tmp___0_ssa_1) {
    {
#line 54
    daemon_assert_fail("invariant(w)", "watchdog.c", 54, "watchdog_add_watched");
    }
  }
#line 55
  return;
}
}
#line 57 "watchdog.c"
void watchdog_defer_watched(watched_t *watched ) 
{ 
  int tmp_ssa_1 ;
  watchdog_t *w_ssa_1 ;
  int tmp___0_ssa_1 ;
  unsigned char *__cil_tmp8 ;
  void **__cil_tmp9 ;
  void *__cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  void **__cil_tmp12 ;
  void *__cil_tmp13 ;

  {
  {
#line 61
  __cil_tmp8 = (unsigned char *)watched + 40;
#line 61
  __cil_tmp9 = (void **)__cil_tmp8;
#line 61
  __cil_tmp10 = *__cil_tmp9;
#line 61
  tmp_ssa_1 = invariant((watchdog_t *)__cil_tmp10);
  }
#line 61
  if (! tmp_ssa_1) {
    {
#line 61
    daemon_assert_fail("invariant(watched->watchdog)", "watchdog.c", 61, "watchdog_defer_watched");
    }
  }
  {
#line 63
  __cil_tmp11 = (unsigned char *)watched + 40;
#line 63
  __cil_tmp12 = (void **)__cil_tmp11;
#line 63
  __cil_tmp13 = *__cil_tmp12;
#line 63
  w_ssa_1 = (watchdog_t *)__cil_tmp13;
#line 64
  pthread_mutex_lock((pthread_mutex_t *)w_ssa_1);
#line 66
  delete(w_ssa_1, watched);
#line 67
  insert(w_ssa_1, watched);
#line 69
  pthread_mutex_unlock((pthread_mutex_t *)w_ssa_1);
#line 70
  tmp___0_ssa_1 = invariant(w_ssa_1);
  }
#line 70
  if (! tmp___0_ssa_1) {
    {
#line 70
    daemon_assert_fail("invariant(w)", "watchdog.c", 70, "watchdog_defer_watched");
    }
  }
#line 71
  return;
}
}
#line 73 "watchdog.c"
void watchdog_remove_watched(watched_t *watched ) 
{ 
  int tmp_ssa_1 ;
  watchdog_t *w_ssa_1 ;
  int tmp___0_ssa_1 ;
  unsigned char *__cil_tmp8 ;
  void **__cil_tmp9 ;
  void *__cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  void **__cil_tmp12 ;
  void *__cil_tmp13 ;

  {
  {
#line 77
  __cil_tmp8 = (unsigned char *)watched + 40;
#line 77
  __cil_tmp9 = (void **)__cil_tmp8;
#line 77
  __cil_tmp10 = *__cil_tmp9;
#line 77
  tmp_ssa_1 = invariant((watchdog_t *)__cil_tmp10);
  }
#line 77
  if (! tmp_ssa_1) {
    {
#line 77
    daemon_assert_fail("invariant(watched->watchdog)", "watchdog.c", 77, "watchdog_remove_watched");
    }
  }
  {
#line 79
  __cil_tmp11 = (unsigned char *)watched + 40;
#line 79
  __cil_tmp12 = (void **)__cil_tmp11;
#line 79
  __cil_tmp13 = *__cil_tmp12;
#line 79
  w_ssa_1 = (watchdog_t *)__cil_tmp13;
#line 80
  pthread_mutex_lock((pthread_mutex_t *)w_ssa_1);
#line 82
  delete(w_ssa_1, watched);
#line 84
  pthread_mutex_unlock((pthread_mutex_t *)w_ssa_1);
#line 85
  tmp___0_ssa_1 = invariant(w_ssa_1);
  }
#line 85
  if (! tmp___0_ssa_1) {
    {
#line 85
    daemon_assert_fail("invariant(w)", "watchdog.c", 85, "watchdog_remove_watched");
    }
  }
#line 86
  return;
}
}
#line 88 "watchdog.c"
static void insert(watchdog_t *w , watched_t *watched ) 
{ 
  time_t tmp_ssa_1 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  int *__cil_tmp9 ;
  int __cil_tmp10 ;
  time_t __cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  time_t *__cil_tmp13 ;
  unsigned char *__cil_tmp14 ;
  watched_t **__cil_tmp15 ;
  watched_t *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  watched_t **__cil_tmp19 ;
  watched_t *__cil_tmp20 ;
  unsigned char *__cil_tmp21 ;
  unsigned char *__cil_tmp22 ;
  time_t *__cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  time_t *__cil_tmp25 ;
  time_t __cil_tmp26 ;
  time_t __cil_tmp27 ;
  unsigned char *__cil_tmp28 ;
  watched_t **__cil_tmp29 ;
  watched_t *__cil_tmp30 ;
  unsigned char *__cil_tmp31 ;
  unsigned char *__cil_tmp32 ;
  time_t *__cil_tmp33 ;
  unsigned char *__cil_tmp34 ;
  time_t *__cil_tmp35 ;
  unsigned char *__cil_tmp36 ;
  watched_t **__cil_tmp37 ;
  unsigned char *__cil_tmp38 ;
  struct watched **__cil_tmp39 ;
  unsigned char *__cil_tmp40 ;
  struct watched **__cil_tmp41 ;
  unsigned char *__cil_tmp42 ;
  watched_t **__cil_tmp43 ;
  watched_t *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned char *__cil_tmp46 ;
  watched_t **__cil_tmp47 ;
  unsigned char *__cil_tmp48 ;
  watched_t **__cil_tmp49 ;
  watched_t *__cil_tmp50 ;
  unsigned char *__cil_tmp51 ;
  unsigned char *__cil_tmp52 ;
  struct watched **__cil_tmp53 ;
  unsigned char *__cil_tmp54 ;
  watched_t **__cil_tmp55 ;
  unsigned char *__cil_tmp56 ;
  int *__cil_tmp57 ;

  {
  {
#line 94
  tmp_ssa_1 = time((time_t *)0);
#line 94
  __cil_tmp8 = (unsigned char *)w + 40;
#line 94
  __cil_tmp9 = (int *)__cil_tmp8;
#line 94
  __cil_tmp10 = *__cil_tmp9;
#line 94
  __cil_tmp11 = (time_t )__cil_tmp10;
#line 94
  __cil_tmp12 = (unsigned char *)watched + 16;
#line 94
  __cil_tmp13 = (time_t *)__cil_tmp12;
#line 94
  *__cil_tmp13 = tmp_ssa_1 + __cil_tmp11;
  }
  {
#line 104
  __cil_tmp14 = (unsigned char *)w + 56;
#line 104
  __cil_tmp15 = (watched_t **)__cil_tmp14;
#line 104
  __cil_tmp16 = *__cil_tmp15;
#line 104
  __cil_tmp17 = (unsigned long )__cil_tmp16;
#line 104
  __cil_tmp5 = __cil_tmp17 != (unsigned long )((void *)0);
#line 104
  if (__cil_tmp5) {
    {
#line 105
    __cil_tmp18 = (unsigned char *)w + 56;
#line 105
    __cil_tmp19 = (watched_t **)__cil_tmp18;
#line 105
    __cil_tmp20 = *__cil_tmp19;
#line 105
    __cil_tmp21 = (unsigned char *)__cil_tmp20;
#line 105
    __cil_tmp22 = __cil_tmp21 + 16;
#line 105
    __cil_tmp23 = (time_t *)__cil_tmp22;
#line 105
    __cil_tmp24 = (unsigned char *)watched + 16;
#line 105
    __cil_tmp25 = (time_t *)__cil_tmp24;
#line 105
    __cil_tmp26 = *__cil_tmp23;
#line 105
    __cil_tmp27 = *__cil_tmp25;
#line 105
    __cil_tmp6 = __cil_tmp26 > __cil_tmp27;
#line 105
    if (__cil_tmp6) {
      {
#line 106
      __cil_tmp28 = (unsigned char *)w + 56;
#line 106
      __cil_tmp29 = (watched_t **)__cil_tmp28;
#line 106
      __cil_tmp30 = *__cil_tmp29;
#line 106
      __cil_tmp31 = (unsigned char *)__cil_tmp30;
#line 106
      __cil_tmp32 = __cil_tmp31 + 16;
#line 106
      __cil_tmp33 = (time_t *)__cil_tmp32;
#line 106
      __cil_tmp34 = (unsigned char *)watched + 16;
#line 106
      __cil_tmp35 = (time_t *)__cil_tmp34;
#line 106
      *__cil_tmp35 = *__cil_tmp33;
      }
    } else {

    }
    }
  } else {

  }
  }
  {
#line 111
  __cil_tmp36 = (unsigned char *)w + 56;
#line 111
  __cil_tmp37 = (watched_t **)__cil_tmp36;
#line 111
  __cil_tmp38 = (unsigned char *)watched + 24;
#line 111
  __cil_tmp39 = (struct watched **)__cil_tmp38;
#line 111
  *__cil_tmp39 = *__cil_tmp37;
#line 112
  __cil_tmp40 = (unsigned char *)watched + 32;
#line 112
  __cil_tmp41 = (struct watched **)__cil_tmp40;
#line 112
  *__cil_tmp41 = (struct watched *)0;
  }
  {
#line 115
  __cil_tmp42 = (unsigned char *)w + 48;
#line 115
  __cil_tmp43 = (watched_t **)__cil_tmp42;
#line 115
  __cil_tmp44 = *__cil_tmp43;
#line 115
  __cil_tmp45 = (unsigned long )__cil_tmp44;
#line 115
  __cil_tmp7 = __cil_tmp45 == (unsigned long )((void *)0);
#line 115
  if (__cil_tmp7) {
    {
#line 116
    __cil_tmp46 = (unsigned char *)w + 48;
#line 116
    __cil_tmp47 = (watched_t **)__cil_tmp46;
#line 116
    *__cil_tmp47 = watched;
    }
  } else {
    {
#line 118
    __cil_tmp48 = (unsigned char *)w + 56;
#line 118
    __cil_tmp49 = (watched_t **)__cil_tmp48;
#line 118
    __cil_tmp50 = *__cil_tmp49;
#line 118
    __cil_tmp51 = (unsigned char *)__cil_tmp50;
#line 118
    __cil_tmp52 = __cil_tmp51 + 32;
#line 118
    __cil_tmp53 = (struct watched **)__cil_tmp52;
#line 118
    *__cil_tmp53 = watched;
    }
  }
  }
  {
#line 120
  __cil_tmp54 = (unsigned char *)w + 56;
#line 120
  __cil_tmp55 = (watched_t **)__cil_tmp54;
#line 120
  *__cil_tmp55 = watched;
#line 121
  __cil_tmp56 = (unsigned char *)watched + 8;
#line 121
  __cil_tmp57 = (int *)__cil_tmp56;
#line 121
  *__cil_tmp57 = 1;
  }
#line 122
  return;
}
}
#line 124 "watchdog.c"
static void delete(watchdog_t *w , watched_t *watched ) 
{ 
  int __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned char *__cil_tmp16 ;
  int *__cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  struct watched **__cil_tmp20 ;
  struct watched *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned char *__cil_tmp23 ;
  watched_t **__cil_tmp24 ;
  watched_t *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned char *__cil_tmp27 ;
  watched_t **__cil_tmp28 ;
  watched_t *__cil_tmp29 ;
  unsigned char *__cil_tmp30 ;
  unsigned char *__cil_tmp31 ;
  struct watched **__cil_tmp32 ;
  unsigned char *__cil_tmp33 ;
  watched_t **__cil_tmp34 ;
  unsigned char *__cil_tmp35 ;
  watched_t **__cil_tmp36 ;
  watched_t *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned char *__cil_tmp39 ;
  watched_t **__cil_tmp40 ;
  watched_t *__cil_tmp41 ;
  unsigned char *__cil_tmp42 ;
  unsigned char *__cil_tmp43 ;
  struct watched **__cil_tmp44 ;
  unsigned char *__cil_tmp45 ;
  watched_t **__cil_tmp46 ;
  watched_t *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned char *__cil_tmp49 ;
  struct watched **__cil_tmp50 ;
  unsigned char *__cil_tmp51 ;
  struct watched **__cil_tmp52 ;
  struct watched *__cil_tmp53 ;
  unsigned char *__cil_tmp54 ;
  unsigned char *__cil_tmp55 ;
  struct watched **__cil_tmp56 ;
  unsigned char *__cil_tmp57 ;
  struct watched **__cil_tmp58 ;
  struct watched *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned char *__cil_tmp61 ;
  watched_t **__cil_tmp62 ;
  watched_t *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned char *__cil_tmp65 ;
  watched_t **__cil_tmp66 ;
  watched_t *__cil_tmp67 ;
  unsigned char *__cil_tmp68 ;
  unsigned char *__cil_tmp69 ;
  struct watched **__cil_tmp70 ;
  unsigned char *__cil_tmp71 ;
  watched_t **__cil_tmp72 ;
  unsigned char *__cil_tmp73 ;
  watched_t **__cil_tmp74 ;
  watched_t *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned char *__cil_tmp77 ;
  watched_t **__cil_tmp78 ;
  watched_t *__cil_tmp79 ;
  unsigned char *__cil_tmp80 ;
  unsigned char *__cil_tmp81 ;
  struct watched **__cil_tmp82 ;
  unsigned char *__cil_tmp83 ;
  watched_t **__cil_tmp84 ;
  watched_t *__cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned char *__cil_tmp87 ;
  struct watched **__cil_tmp88 ;
  unsigned char *__cil_tmp89 ;
  struct watched **__cil_tmp90 ;
  struct watched *__cil_tmp91 ;
  unsigned char *__cil_tmp92 ;
  unsigned char *__cil_tmp93 ;
  struct watched **__cil_tmp94 ;
  unsigned char *__cil_tmp95 ;
  struct watched **__cil_tmp96 ;
  unsigned char *__cil_tmp97 ;
  struct watched **__cil_tmp98 ;
  unsigned char *__cil_tmp99 ;
  int *__cil_tmp100 ;
  unsigned char *__cil_tmp101 ;
  struct watched **__cil_tmp102 ;
  struct watched *__cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned char *__cil_tmp105 ;
  watched_t **__cil_tmp106 ;
  watched_t *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned char *__cil_tmp109 ;
  watched_t **__cil_tmp110 ;
  watched_t *__cil_tmp111 ;
  unsigned char *__cil_tmp112 ;
  unsigned char *__cil_tmp113 ;
  struct watched **__cil_tmp114 ;
  unsigned char *__cil_tmp115 ;
  watched_t **__cil_tmp116 ;
  unsigned char *__cil_tmp117 ;
  watched_t **__cil_tmp118 ;
  watched_t *__cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned char *__cil_tmp121 ;
  watched_t **__cil_tmp122 ;
  watched_t *__cil_tmp123 ;
  unsigned char *__cil_tmp124 ;
  unsigned char *__cil_tmp125 ;
  struct watched **__cil_tmp126 ;
  unsigned char *__cil_tmp127 ;
  watched_t **__cil_tmp128 ;
  watched_t *__cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned char *__cil_tmp131 ;
  struct watched **__cil_tmp132 ;
  unsigned char *__cil_tmp133 ;
  struct watched **__cil_tmp134 ;
  struct watched *__cil_tmp135 ;
  unsigned char *__cil_tmp136 ;
  unsigned char *__cil_tmp137 ;
  struct watched **__cil_tmp138 ;
  unsigned char *__cil_tmp139 ;
  struct watched **__cil_tmp140 ;
  unsigned char *__cil_tmp141 ;
  struct watched **__cil_tmp142 ;
  unsigned char *__cil_tmp143 ;
  int *__cil_tmp144 ;

  {
  {
#line 126
  __cil_tmp16 = (unsigned char *)watched + 8;
#line 126
  __cil_tmp17 = (int *)__cil_tmp16;
#line 126
  __cil_tmp18 = *__cil_tmp17;
#line 126
  __cil_tmp3 = ! __cil_tmp18;
#line 126
  if (__cil_tmp3) {
#line 127
    return;
  } else {
    {
#line 130
    __cil_tmp19 = (unsigned char *)watched + 32;
#line 130
    __cil_tmp20 = (struct watched **)__cil_tmp19;
#line 130
    __cil_tmp21 = *__cil_tmp20;
#line 130
    __cil_tmp22 = (unsigned long )__cil_tmp21;
#line 130
    __cil_tmp4 = __cil_tmp22 == (unsigned long )((void *)0);
#line 130
    if (__cil_tmp4) {
      {
#line 131
      __cil_tmp23 = (unsigned char *)w + 56;
#line 131
      __cil_tmp24 = (watched_t **)__cil_tmp23;
#line 131
      __cil_tmp25 = *__cil_tmp24;
#line 131
      __cil_tmp26 = (unsigned long )__cil_tmp25;
#line 131
      __cil_tmp5 = __cil_tmp26 == (unsigned long )watched;
#line 131
      if (! __cil_tmp5) {
        {
#line 131
        daemon_assert_fail("w->newest == watched", "watchdog.c", 131, "delete");
        }
      }
      }
      {
#line 132
      __cil_tmp27 = (unsigned char *)w + 56;
#line 132
      __cil_tmp28 = (watched_t **)__cil_tmp27;
#line 132
      __cil_tmp29 = *__cil_tmp28;
#line 132
      __cil_tmp30 = (unsigned char *)__cil_tmp29;
#line 132
      __cil_tmp31 = __cil_tmp30 + 24;
#line 132
      __cil_tmp32 = (struct watched **)__cil_tmp31;
#line 132
      __cil_tmp33 = (unsigned char *)w + 56;
#line 132
      __cil_tmp34 = (watched_t **)__cil_tmp33;
#line 132
      *__cil_tmp34 = *__cil_tmp32;
      }
      {
#line 133
      __cil_tmp35 = (unsigned char *)w + 56;
#line 133
      __cil_tmp36 = (watched_t **)__cil_tmp35;
#line 133
      __cil_tmp37 = *__cil_tmp36;
#line 133
      __cil_tmp38 = (unsigned long )__cil_tmp37;
#line 133
      __cil_tmp6 = __cil_tmp38 != (unsigned long )((void *)0);
#line 133
      if (__cil_tmp6) {
        {
#line 134
        __cil_tmp39 = (unsigned char *)w + 56;
#line 134
        __cil_tmp40 = (watched_t **)__cil_tmp39;
#line 134
        __cil_tmp41 = *__cil_tmp40;
#line 134
        __cil_tmp42 = (unsigned char *)__cil_tmp41;
#line 134
        __cil_tmp43 = __cil_tmp42 + 32;
#line 134
        __cil_tmp44 = (struct watched **)__cil_tmp43;
#line 134
        *__cil_tmp44 = (struct watched *)0;
        }
      } else {

      }
      }
    } else {
      {
#line 137
      __cil_tmp45 = (unsigned char *)w + 56;
#line 137
      __cil_tmp46 = (watched_t **)__cil_tmp45;
#line 137
      __cil_tmp47 = *__cil_tmp46;
#line 137
      __cil_tmp48 = (unsigned long )__cil_tmp47;
#line 137
      __cil_tmp7 = __cil_tmp48 != (unsigned long )watched;
#line 137
      if (! __cil_tmp7) {
        {
#line 137
        daemon_assert_fail("w->newest != watched", "watchdog.c", 137, "delete");
        }
      }
      }
      {
#line 138
      __cil_tmp49 = (unsigned char *)watched + 24;
#line 138
      __cil_tmp50 = (struct watched **)__cil_tmp49;
#line 138
      __cil_tmp51 = (unsigned char *)watched + 32;
#line 138
      __cil_tmp52 = (struct watched **)__cil_tmp51;
#line 138
      __cil_tmp53 = *__cil_tmp52;
#line 138
      __cil_tmp54 = (unsigned char *)__cil_tmp53;
#line 138
      __cil_tmp55 = __cil_tmp54 + 24;
#line 138
      __cil_tmp56 = (struct watched **)__cil_tmp55;
#line 138
      *__cil_tmp56 = *__cil_tmp50;
      }
    }
    }
    {
#line 141
    __cil_tmp57 = (unsigned char *)watched + 24;
#line 141
    __cil_tmp58 = (struct watched **)__cil_tmp57;
#line 141
    __cil_tmp59 = *__cil_tmp58;
#line 141
    __cil_tmp60 = (unsigned long )__cil_tmp59;
#line 141
    __cil_tmp8 = __cil_tmp60 == (unsigned long )((void *)0);
#line 141
    if (__cil_tmp8) {
      {
#line 142
      __cil_tmp61 = (unsigned char *)w + 48;
#line 142
      __cil_tmp62 = (watched_t **)__cil_tmp61;
#line 142
      __cil_tmp63 = *__cil_tmp62;
#line 142
      __cil_tmp64 = (unsigned long )__cil_tmp63;
#line 142
      __cil_tmp9 = __cil_tmp64 == (unsigned long )watched;
#line 142
      if (! __cil_tmp9) {
        {
#line 142
        daemon_assert_fail("w->oldest == watched", "watchdog.c", 142, "delete");
        }
      }
      }
      {
#line 143
      __cil_tmp65 = (unsigned char *)w + 48;
#line 143
      __cil_tmp66 = (watched_t **)__cil_tmp65;
#line 143
      __cil_tmp67 = *__cil_tmp66;
#line 143
      __cil_tmp68 = (unsigned char *)__cil_tmp67;
#line 143
      __cil_tmp69 = __cil_tmp68 + 32;
#line 143
      __cil_tmp70 = (struct watched **)__cil_tmp69;
#line 143
      __cil_tmp71 = (unsigned char *)w + 48;
#line 143
      __cil_tmp72 = (watched_t **)__cil_tmp71;
#line 143
      *__cil_tmp72 = *__cil_tmp70;
      }
      {
#line 144
      __cil_tmp73 = (unsigned char *)w + 48;
#line 144
      __cil_tmp74 = (watched_t **)__cil_tmp73;
#line 144
      __cil_tmp75 = *__cil_tmp74;
#line 144
      __cil_tmp76 = (unsigned long )__cil_tmp75;
#line 144
      __cil_tmp10 = __cil_tmp76 != (unsigned long )((void *)0);
#line 144
      if (__cil_tmp10) {
        {
#line 145
        __cil_tmp77 = (unsigned char *)w + 48;
#line 145
        __cil_tmp78 = (watched_t **)__cil_tmp77;
#line 145
        __cil_tmp79 = *__cil_tmp78;
#line 145
        __cil_tmp80 = (unsigned char *)__cil_tmp79;
#line 145
        __cil_tmp81 = __cil_tmp80 + 24;
#line 145
        __cil_tmp82 = (struct watched **)__cil_tmp81;
#line 145
        *__cil_tmp82 = (struct watched *)0;
        }
      } else {

      }
      }
    } else {
      {
#line 148
      __cil_tmp83 = (unsigned char *)w + 48;
#line 148
      __cil_tmp84 = (watched_t **)__cil_tmp83;
#line 148
      __cil_tmp85 = *__cil_tmp84;
#line 148
      __cil_tmp86 = (unsigned long )__cil_tmp85;
#line 148
      __cil_tmp11 = __cil_tmp86 != (unsigned long )watched;
#line 148
      if (! __cil_tmp11) {
        {
#line 148
        daemon_assert_fail("w->oldest != watched", "watchdog.c", 148, "delete");
        }
      }
      }
      {
#line 149
      __cil_tmp87 = (unsigned char *)watched + 32;
#line 149
      __cil_tmp88 = (struct watched **)__cil_tmp87;
#line 149
      __cil_tmp89 = (unsigned char *)watched + 24;
#line 149
      __cil_tmp90 = (struct watched **)__cil_tmp89;
#line 149
      __cil_tmp91 = *__cil_tmp90;
#line 149
      __cil_tmp92 = (unsigned char *)__cil_tmp91;
#line 149
      __cil_tmp93 = __cil_tmp92 + 32;
#line 149
      __cil_tmp94 = (struct watched **)__cil_tmp93;
#line 149
      *__cil_tmp94 = *__cil_tmp88;
      }
    }
    }
    {
#line 152
    __cil_tmp95 = (unsigned char *)watched + 24;
#line 152
    __cil_tmp96 = (struct watched **)__cil_tmp95;
#line 152
    *__cil_tmp96 = (struct watched *)0;
#line 153
    __cil_tmp97 = (unsigned char *)watched + 32;
#line 153
    __cil_tmp98 = (struct watched **)__cil_tmp97;
#line 153
    *__cil_tmp98 = (struct watched *)0;
#line 154
    __cil_tmp99 = (unsigned char *)watched + 8;
#line 154
    __cil_tmp100 = (int *)__cil_tmp99;
#line 154
    *__cil_tmp100 = 0;
    }
#line 155
    return;
  }
  }
  {
#line 141
  __cil_tmp101 = (unsigned char *)watched + 24;
#line 141
  __cil_tmp102 = (struct watched **)__cil_tmp101;
#line 141
  __cil_tmp103 = *__cil_tmp102;
#line 141
  __cil_tmp104 = (unsigned long )__cil_tmp103;
#line 141
  __cil_tmp12 = __cil_tmp104 == (unsigned long )((void *)0);
#line 141
  if (__cil_tmp12) {
    {
#line 142
    __cil_tmp105 = (unsigned char *)w + 48;
#line 142
    __cil_tmp106 = (watched_t **)__cil_tmp105;
#line 142
    __cil_tmp107 = *__cil_tmp106;
#line 142
    __cil_tmp108 = (unsigned long )__cil_tmp107;
#line 142
    __cil_tmp13 = __cil_tmp108 == (unsigned long )watched;
#line 142
    if (! __cil_tmp13) {
      {
#line 142
      daemon_assert_fail("w->oldest == watched", "watchdog.c", 142, "delete");
      }
    }
    }
    {
#line 143
    __cil_tmp109 = (unsigned char *)w + 48;
#line 143
    __cil_tmp110 = (watched_t **)__cil_tmp109;
#line 143
    __cil_tmp111 = *__cil_tmp110;
#line 143
    __cil_tmp112 = (unsigned char *)__cil_tmp111;
#line 143
    __cil_tmp113 = __cil_tmp112 + 32;
#line 143
    __cil_tmp114 = (struct watched **)__cil_tmp113;
#line 143
    __cil_tmp115 = (unsigned char *)w + 48;
#line 143
    __cil_tmp116 = (watched_t **)__cil_tmp115;
#line 143
    *__cil_tmp116 = *__cil_tmp114;
    }
    {
#line 144
    __cil_tmp117 = (unsigned char *)w + 48;
#line 144
    __cil_tmp118 = (watched_t **)__cil_tmp117;
#line 144
    __cil_tmp119 = *__cil_tmp118;
#line 144
    __cil_tmp120 = (unsigned long )__cil_tmp119;
#line 144
    __cil_tmp14 = __cil_tmp120 != (unsigned long )((void *)0);
#line 144
    if (__cil_tmp14) {
      {
#line 145
      __cil_tmp121 = (unsigned char *)w + 48;
#line 145
      __cil_tmp122 = (watched_t **)__cil_tmp121;
#line 145
      __cil_tmp123 = *__cil_tmp122;
#line 145
      __cil_tmp124 = (unsigned char *)__cil_tmp123;
#line 145
      __cil_tmp125 = __cil_tmp124 + 24;
#line 145
      __cil_tmp126 = (struct watched **)__cil_tmp125;
#line 145
      *__cil_tmp126 = (struct watched *)0;
      }
    } else {

    }
    }
  } else {
    {
#line 148
    __cil_tmp127 = (unsigned char *)w + 48;
#line 148
    __cil_tmp128 = (watched_t **)__cil_tmp127;
#line 148
    __cil_tmp129 = *__cil_tmp128;
#line 148
    __cil_tmp130 = (unsigned long )__cil_tmp129;
#line 148
    __cil_tmp15 = __cil_tmp130 != (unsigned long )watched;
#line 148
    if (! __cil_tmp15) {
      {
#line 148
      daemon_assert_fail("w->oldest != watched", "watchdog.c", 148, "delete");
      }
    }
    }
    {
#line 149
    __cil_tmp131 = (unsigned char *)watched + 32;
#line 149
    __cil_tmp132 = (struct watched **)__cil_tmp131;
#line 149
    __cil_tmp133 = (unsigned char *)watched + 24;
#line 149
    __cil_tmp134 = (struct watched **)__cil_tmp133;
#line 149
    __cil_tmp135 = *__cil_tmp134;
#line 149
    __cil_tmp136 = (unsigned char *)__cil_tmp135;
#line 149
    __cil_tmp137 = __cil_tmp136 + 32;
#line 149
    __cil_tmp138 = (struct watched **)__cil_tmp137;
#line 149
    *__cil_tmp138 = *__cil_tmp132;
    }
  }
  }
  {
#line 152
  __cil_tmp139 = (unsigned char *)watched + 24;
#line 152
  __cil_tmp140 = (struct watched **)__cil_tmp139;
#line 152
  *__cil_tmp140 = (struct watched *)0;
#line 153
  __cil_tmp141 = (unsigned char *)watched + 32;
#line 153
  __cil_tmp142 = (struct watched **)__cil_tmp141;
#line 153
  *__cil_tmp142 = (struct watched *)0;
#line 154
  __cil_tmp143 = (unsigned char *)watched + 8;
#line 154
  __cil_tmp144 = (int *)__cil_tmp143;
#line 154
  *__cil_tmp144 = 0;
  }
#line 155
  return;
}
}
static void *watcher(void *void_w)
{
    watchdog_t *w;
    struct timeval tv;
    time_t now;
    watched_t *watched;

    w = (watchdog_t *)void_w;
    for (;;) {
        tv.tv_sec = 1;
 tv.tv_usec = 0;
 select(0,
# 168 "watchdog.c" 3 4
          ((void *)0)
# 168 "watchdog.c"
              ,
# 168 "watchdog.c" 3 4
                ((void *)0)
# 168 "watchdog.c"
                    ,
# 168 "watchdog.c" 3 4
                      ((void *)0)
# 168 "watchdog.c"
                          , &tv);

 time(&now);

        pthread_mutex_lock(&w->mutex);
 while ((w->oldest !=
# 173 "watchdog.c" 3 4
                     ((void *)0)
# 173 "watchdog.c"
                         ) &&
     (difftime(now, w->oldest->alarm_time) > 0))
 {
     watched = w->oldest;
     delete(w, watched);
     pthread_cancel(watched->watched_thread);
 }
        pthread_mutex_unlock(&w->mutex);
    }
}
#line 193 "watchdog.c"
static int invariant(watchdog_t *w ) 
{ 
  int ret_val ;
  watched_t *ptr ;
  int old_to_new_count ;
  int new_to_old_count ;

  {
#line 202
  if ((unsigned long )w == (unsigned long )((void *)0)) {
#line 203
    return (0);
  }
#line 206
  ret_val = 0;
#line 207
  pthread_mutex_lock(& w->mutex);
#line 209
  if (w->inactivity_timeout <= 0) {
#line 210
    goto exit_invariant;
  }
#line 214
  if ((unsigned long )w->oldest != (unsigned long )((void *)0)) {
#line 215
    if ((unsigned long )w->newest == (unsigned long )((void *)0)) {
#line 216
      goto exit_invariant;
    }
#line 220
    old_to_new_count = 0;
#line 221
    ptr = w->oldest;
#line 222
    while ((unsigned long )ptr != (unsigned long )((void *)0)) {
#line 223
      old_to_new_count ++;
#line 224
      if ((unsigned long )ptr->older != (unsigned long )((void *)0)) {
#line 225
        if (ptr->alarm_time < (ptr->older)->alarm_time) {
#line 226
          goto exit_invariant;
        }
      }
#line 229
      if ((unsigned long )ptr->newer != (unsigned long )((void *)0)) {
#line 230
        if (ptr->alarm_time > (ptr->newer)->alarm_time) {
#line 231
          goto exit_invariant;
        }
      }
#line 234
      ptr = ptr->newer;
    }
#line 238
    new_to_old_count = 0;
#line 239
    ptr = w->newest;
#line 240
    while ((unsigned long )ptr != (unsigned long )((void *)0)) {
#line 241
      new_to_old_count ++;
#line 242
      if ((unsigned long )ptr->older != (unsigned long )((void *)0)) {
#line 243
        if (ptr->alarm_time < (ptr->older)->alarm_time) {
#line 244
          goto exit_invariant;
        }
      }
#line 247
      if ((unsigned long )ptr->newer != (unsigned long )((void *)0)) {
#line 248
        if (ptr->alarm_time > (ptr->newer)->alarm_time) {
#line 249
          goto exit_invariant;
        }
      }
#line 252
      ptr = ptr->older;
    }
#line 256
    if (old_to_new_count != new_to_old_count) {
#line 257
      goto exit_invariant;
    }
  } else
#line 261
  if ((unsigned long )w->newest != (unsigned long )((void *)0)) {
#line 262
    goto exit_invariant;
  }
#line 267
  ret_val = 1;
  exit_invariant: 
#line 270
  pthread_mutex_unlock(& w->mutex);
#line 271
  return (ret_val);
}
}
