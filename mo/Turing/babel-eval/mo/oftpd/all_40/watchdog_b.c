#include <stdbool.h>
 static int label = -1;/* Generated by CIL v. 1.5.1 */
/* print_CIL_Input is true */

#include <gprolog.h>

#line 139 "/usr/include/bits/types.h"
typedef long __time_t;
#line 140 "/usr/include/bits/types.h"
typedef long __suseconds_t;
#line 141 "/usr/include/bits/types.h"
struct timeval {
   __time_t tv_sec ;
   __suseconds_t tv_usec ;
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
   int babel_wrapper_watchdog_defer_watched(watched_t * watched)                           // function name insert
      {
        // wrapper for function watchdog_defer_watched        // function name insert
         int return_value; //  return value type (how about array type)

        //rountine code
        int func;
        PlTerm arg[2];    //  function variable + return value insert
        PlBool res;

        func = Pl_Find_Atom("watchdog_defer_watched"); // function name insert

      //routine code
        Pl_Query_Begin(PL_FALSE);

      //prepare parameters
      //partial routine code, pass in parameter  // we need to init arguments and return value
      arg[0] = Pl_Mk_Integer(watched);

      //routine code, reserve a place for return value
      arg[1] = Pl_Mk_Variable();

      //partial routine code, 2 is not routine. (number of arguments) + 1
        res = Pl_Query_Call(func, 2, arg);          // insert (variable+return value)

      //get return value, partial routine code, 1 is not routine
        return_value = Pl_Rd_Integer(arg[1]);        // insert ()

      //routine code
        Pl_Query_End(PL_KEEP_FOR_PROLOG);

      //routine code
        return 0;
        }
      
   int babel_wrapper_watchdog_remove_watched(watched_t * watched)                           // function name insert
      {
        // wrapper for function watchdog_remove_watched        // function name insert
         int return_value; //  return value type (how about array type)

        //rountine code
        int func;
        PlTerm arg[2];    //  function variable + return value insert
        PlBool res;

        func = Pl_Find_Atom("watchdog_remove_watched"); // function name insert

      //routine code
        Pl_Query_Begin(PL_FALSE);

      //prepare parameters
      //partial routine code, pass in parameter  // we need to init arguments and return value
      arg[0] = Pl_Mk_Integer(watched);

      //routine code, reserve a place for return value
      arg[1] = Pl_Mk_Variable();

      //partial routine code, 2 is not routine. (number of arguments) + 1
        res = Pl_Query_Call(func, 2, arg);          // insert (variable+return value)

      //get return value, partial routine code, 1 is not routine
        return_value = Pl_Rd_Integer(arg[1]);        // insert ()

      //routine code
        Pl_Query_End(PL_KEEP_FOR_PROLOG);

      //routine code
        return 0;
        }
      
   int babel_wrapper_insert(watchdog_t * w, watched_t * watched)                           // function name insert
      {
        // wrapper for function insert        // function name insert
         int return_value; //  return value type (how about array type)

        //rountine code
        int func;
        PlTerm arg[3];    //  function variable + return value insert
        PlBool res;

        func = Pl_Find_Atom("insert"); // function name insert

      //routine code
        Pl_Query_Begin(PL_FALSE);

      //prepare parameters
      //partial routine code, pass in parameter  // we need to init arguments and return value
      arg[0] = Pl_Mk_Integer(w);
arg[1] = Pl_Mk_Integer(watched);

      //routine code, reserve a place for return value
      arg[2] = Pl_Mk_Variable();

      //partial routine code, 2 is not routine. (number of arguments) + 1
        res = Pl_Query_Call(func, 3, arg);          // insert (variable+return value)

      //get return value, partial routine code, 1 is not routine
        return_value = Pl_Rd_Integer(arg[2]);        // insert ()

      //routine code
        Pl_Query_End(PL_KEEP_FOR_PROLOG);

      //routine code
        return 0;
        }
      
   int babel_wrapper_delete(watchdog_t * w, watched_t * watched)                           // function name insert
      {
        // wrapper for function delete        // function name insert
         int return_value; //  return value type (how about array type)

        //rountine code
        int func;
        PlTerm arg[3];    //  function variable + return value insert
        PlBool res;

        func = Pl_Find_Atom("babel_delete"); // function name insert

      //routine code
        Pl_Query_Begin(PL_FALSE);

      //prepare parameters
      //partial routine code, pass in parameter  // we need to init arguments and return value
      arg[0] = Pl_Mk_Integer(w);
arg[1] = Pl_Mk_Integer(watched);

      //routine code, reserve a place for return value
      arg[2] = Pl_Mk_Variable();

      //partial routine code, 2 is not routine. (number of arguments) + 1
        res = Pl_Query_Call(func, 3, arg);          // insert (variable+return value)

      //get return value, partial routine code, 1 is not routine
        return_value = Pl_Rd_Integer(arg[2]);        // insert ()

      //routine code
        Pl_Query_End(PL_KEEP_FOR_PROLOG);

      //routine code
        return 0;
        }
      
#line 15 "watchdog.c"
int watchdog_init(watchdog_t *w , int inactivity_timeout , error_t *err ) 
{ 
  pthread_t thread_id ;
  pthread_t *__cil_pp_thread_id ;
  void *(*__cil_pp_watcher)(void *void_w ) ;
  pthread_t *__cil_fp_thread_id ;
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
#line 18
  __cil_pp_thread_id = & thread_id;
#line 19
  __cil_pp_watcher = & watcher;
#line 20
  __cil_fp_thread_id = & thread_id;
#line 20
  __cil_tmp13 = (unsigned long )w != (unsigned long )((void *)0);
#line 20
  if (__cil_tmp13 == 0) {
#line 20
    daemon_assert_fail("w != ((void *)0)", "watchdog.c", 20, "watchdog_init");
  } else {

  }
#line 21
  __cil_tmp14 = inactivity_timeout > 0;
#line 21
  if (__cil_tmp14 == 0) {
#line 21
    daemon_assert_fail("inactivity_timeout > 0", "watchdog.c", 21, "watchdog_init");
  } else {

  }
#line 22
  __cil_tmp15 = (unsigned long )err != (unsigned long )((void *)0);
#line 22
  if (__cil_tmp15 == 0) {
#line 22
    daemon_assert_fail("err != ((void *)0)", "watchdog.c", 22, "watchdog_init");
  } else {

  }
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
#line 28
  *__cil_fp_thread_id = thread_id;
#line 29
  error_code_ssa_1 = pthread_create((pthread_t * __restrict  )__cil_pp_thread_id,
                                    (pthread_attr_t const   * __restrict  )((pthread_attr_t const   *)0),
                                    __cil_pp_watcher, (void * __restrict  )((void *)w));
#line 32
  thread_id_ssa_1 = *__cil_fp_thread_id;
#line 30
  __cil_tmp16 = error_code_ssa_1 != 0;
#line 30
  if (__cil_tmp16 != 0) {
#line 31
    error_init(err, error_code_ssa_1, "error %d from pthread_create()", error_code_ssa_1);
#line 33
    return (0);
  } else {
#line 35
    pthread_detach(thread_id_ssa_1);
#line 37
    tmp_ssa_1 = invariant(w);
#line 37
    if (tmp_ssa_1 == 0) {
#line 37
      daemon_assert_fail("invariant(w)", "watchdog.c", 37, "watchdog_init");
    } else {

    }
#line 39
    return (1);
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
  pthread_t *mem_7 ;

  {
#line 44
  tmp_ssa_1 = invariant(w);
#line 44
  if (tmp_ssa_1 == 0) {
#line 44
    daemon_assert_fail("invariant(w)", "watchdog.c", 44, "watchdog_add_watched");
  } else {

  }
#line 46
  pthread_mutex_lock((pthread_mutex_t *)w);
#line 48
  mem_7 = (pthread_t *)watched;
#line 48
  *mem_7 = pthread_self();
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
#line 54
  if (tmp___0_ssa_1 == 0) {
#line 54
    daemon_assert_fail("invariant(w)", "watchdog.c", 54, "watchdog_add_watched");
  } else {

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

#line 61
  return babel_wrapper_watchdog_defer_watched(watched);
#line 61
  __cil_tmp8 = (unsigned char *)watched + 40;
#line 61
  __cil_tmp9 = (void **)__cil_tmp8;
#line 61
  __cil_tmp10 = *__cil_tmp9;
#line 61
  tmp_ssa_1 = invariant((watchdog_t *)__cil_tmp10);
#line 61
  if (tmp_ssa_1 == 0) {
#line 61
    daemon_assert_fail("invariant(watched->watchdog)", "watchdog.c", 61, "watchdog_defer_watched");
  } else {

  }
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
#line 70
  if (tmp___0_ssa_1 == 0) {
#line 70
    daemon_assert_fail("invariant(w)", "watchdog.c", 70, "watchdog_defer_watched");
  } else {

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

#line 77
  return babel_wrapper_watchdog_remove_watched(watched);
#line 77
  __cil_tmp8 = (unsigned char *)watched + 40;
#line 77
  __cil_tmp9 = (void **)__cil_tmp8;
#line 77
  __cil_tmp10 = *__cil_tmp9;
#line 77
  tmp_ssa_1 = invariant((watchdog_t *)__cil_tmp10);
#line 77
  if (tmp_ssa_1 == 0) {
#line 77
    daemon_assert_fail("invariant(watched->watchdog)", "watchdog.c", 77, "watchdog_remove_watched");
  } else {

  }
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
#line 85
  if (tmp___0_ssa_1 == 0) {
#line 85
    daemon_assert_fail("invariant(w)", "watchdog.c", 85, "watchdog_remove_watched");
  } else {

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

#line 94
  return babel_wrapper_insert(w, watched);
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
  if (__cil_tmp5 != 0) {
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
    if (__cil_tmp6 != 0) {
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
    } else {

    }
  } else {

  }
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
  if (__cil_tmp7 != 0) {
#line 116
    __cil_tmp46 = (unsigned char *)w + 48;
#line 116
    __cil_tmp47 = (watched_t **)__cil_tmp46;
#line 116
    *__cil_tmp47 = watched;
  } else {
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

  {

#line 126
  return babel_wrapper_delete(w, watched);
#line 126
  __cil_tmp16 = (unsigned char *)watched + 8;
#line 126
  __cil_tmp17 = (int *)__cil_tmp16;
#line 126
  __cil_tmp18 = *__cil_tmp17;
#line 126
  __cil_tmp3 = ! __cil_tmp18;
#line 126
  if (__cil_tmp3 != 0) {
#line 127
    return;
  } else {
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
    if (__cil_tmp4 != 0) {
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
      if (__cil_tmp5 == 0) {
#line 131
        daemon_assert_fail("w->newest == watched", "watchdog.c", 131, "delete");
      } else {

      }
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
      if (__cil_tmp6 != 0) {
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
      } else {

      }
    } else {
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
      if (__cil_tmp7 == 0) {
#line 137
        daemon_assert_fail("w->newest != watched", "watchdog.c", 137, "delete");
      } else {

      }
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
    if (__cil_tmp8 != 0) {
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
      if (__cil_tmp9 == 0) {
#line 142
        daemon_assert_fail("w->oldest == watched", "watchdog.c", 142, "delete");
      } else {

      }
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
      if (__cil_tmp10 != 0) {
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
      } else {

      }
    } else {
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
      if (__cil_tmp11 == 0) {
#line 148
        daemon_assert_fail("w->oldest != watched", "watchdog.c", 148, "delete");
      } else {

      }
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
#line 155
    return;
  }
}
}
#line 173
extern int ( /* missing proto */  select)() ;
#line 178
extern int ( /* missing proto */  pthread_cancel)() ;
#line 173
extern int ( /* missing proto */  difftime)() ;
#line 162 "watchdog.c"
static void *watcher(void *void_w ) 
{ 
  watchdog_t *w ;
  struct timeval tv ;
  time_t now ;
  watched_t *watched ;
  int tmp ;
  watched_t *mem_7 ;

  {
#line 169
  w = (watchdog_t *)void_w;
  {
#line 170
  while (1) {
    while_continue: /* CIL Label */ ;
#line 171
    tv.tv_sec = (__time_t )1;
#line 172
    tv.tv_usec = (__suseconds_t )0;
#line 173
    select(0, (void *)0, (void *)0, (void *)0, & tv);
#line 170
    time(& now);
#line 172
    pthread_mutex_lock(& w->mutex);
    {
#line 173
    while (1) {
      while_continue___0: /* CIL Label */ ;
#line 173
      if ((unsigned long )w->oldest != (unsigned long )((void *)0)) {
#line 173
        mem_7 = w->oldest;
#line 173
        tmp = difftime(now, mem_7->alarm_time);
#line 173
        if (tmp > 0) {

        } else {
#line 173
          goto while_break___0;
        }
      } else {
#line 173
        goto while_break___0;
      }
#line 176
      watched = w->oldest;
#line 177
      delete(w, watched);
#line 178
      pthread_cancel(watched->watched_thread);
    }
    while_break___0: /* CIL Label */ ;
    }
#line 180
    pthread_mutex_unlock(& w->mutex);
  }
  while_break: /* CIL Label */ ;
  }
}
}
#line 193 "watchdog.c"
static int invariant(watchdog_t *w ) 
{ 
  int ret_val ;
  watched_t *ptr ;
  int old_to_new_count ;
  int new_to_old_count ;
  struct watched *mem_6 ;
  struct watched *mem_7 ;
  struct watched *mem_8 ;
  struct watched *mem_9 ;

  {
#line 202
  if ((unsigned long )w == (unsigned long )((void *)0)) {
#line 203
    return (0);
  } else {

  }
#line 206
  ret_val = 0;
#line 207
  pthread_mutex_lock(& w->mutex);
#line 209
  if (w->inactivity_timeout <= 0) {
#line 210
    goto exit_invariant;
  } else {

  }
#line 214
  if ((unsigned long )w->oldest != (unsigned long )((void *)0)) {
#line 215
    if ((unsigned long )w->newest == (unsigned long )((void *)0)) {
#line 216
      goto exit_invariant;
    } else {

    }
#line 220
    old_to_new_count = 0;
#line 221
    ptr = w->oldest;
    {
#line 222
    while (1) {
      while_continue: /* CIL Label */ ;
#line 222
      if ((unsigned long )ptr != (unsigned long )((void *)0)) {

      } else {
#line 222
        goto while_break;
      }
#line 223
      old_to_new_count ++;
#line 224
      if ((unsigned long )ptr->older != (unsigned long )((void *)0)) {
        {
#line 225
        mem_6 = ptr->older;
#line 225
        if (ptr->alarm_time < mem_6->alarm_time) {
#line 226
          goto exit_invariant;
        } else {

        }
        }
      } else {

      }
#line 229
      if ((unsigned long )ptr->newer != (unsigned long )((void *)0)) {
        {
#line 230
        mem_7 = ptr->newer;
#line 230
        if (ptr->alarm_time > mem_7->alarm_time) {
#line 231
          goto exit_invariant;
        } else {

        }
        }
      } else {

      }
#line 234
      ptr = ptr->newer;
    }
    while_break: /* CIL Label */ ;
    }
#line 238
    new_to_old_count = 0;
#line 239
    ptr = w->newest;
    {
#line 240
    while (1) {
      while_continue___0: /* CIL Label */ ;
#line 240
      if ((unsigned long )ptr != (unsigned long )((void *)0)) {

      } else {
#line 240
        goto while_break___0;
      }
#line 241
      new_to_old_count ++;
#line 242
      if ((unsigned long )ptr->older != (unsigned long )((void *)0)) {
        {
#line 243
        mem_8 = ptr->older;
#line 243
        if (ptr->alarm_time < mem_8->alarm_time) {
#line 244
          goto exit_invariant;
        } else {

        }
        }
      } else {

      }
#line 247
      if ((unsigned long )ptr->newer != (unsigned long )((void *)0)) {
        {
#line 248
        mem_9 = ptr->newer;
#line 248
        if (ptr->alarm_time > mem_9->alarm_time) {
#line 249
          goto exit_invariant;
        } else {

        }
        }
      } else {

      }
#line 252
      ptr = ptr->older;
    }
    while_break___0: /* CIL Label */ ;
    }
#line 256
    if (old_to_new_count != new_to_old_count) {
#line 257
      goto exit_invariant;
    } else {

    }
  } else
#line 261
  if ((unsigned long )w->newest != (unsigned long )((void *)0)) {
#line 262
    goto exit_invariant;
  } else {

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
#include <gprolog.h>

PlBool babel_ptrR(PlLong* p,  PlLong* star_p, PlLong len)
{

	if (star_p == 0)
	    return PL_FALSE;
	else
	{
		switch(len)
		{
		    case 1:
		    	*p = *(unsigned char*)star_p;
		    	break;
		    case 2:
		    	*p = *(short*)star_p;
		    	break;
		    case 4:
		    	*p = *(int*)star_p;
		    	break;
		    case 8:
		    	*p = *(long long*)star_p;
		    	break;
		    default :
		    	printf("undefined exp length in babel_ptrR\n");
		}
	}

		return PL_TRUE;
}

PlBool babel_ptrR_byte(PlLong* p,  PlLong* star_p, PlLong len)
{

	if (star_p == 0)
	    return PL_FALSE;
	else
	{
		switch(len)
		{
		    case 1:
		    	*p = *(unsigned char*)star_p;
		    	break;
		    case 2:
		    	*p = *(short*)star_p;
		    	break;
		    case 4:
		    	*p = *(int*)star_p;
		    	break;
		    case 8:
		    	*p = *(long long*)star_p;
		    	break;
		    default :
		    	printf("undefined exp length in babel_ptrR\n");
		}
	}

	return PL_TRUE;
}

PlBool babel_ptrE(PlLong* p,  PlLong e, PlLong len)
{
	if (p == 0)
	    return PL_FALSE;

	switch(len)
		{
		    case 1:
		    	*(unsigned char*)p = (unsigned char)e;
		    	break;
		    case 2:
		    	*(short*) p = (short)e;
		    	break;
		    case 4:
		    	*(int*)p = (int)e;
		    	break;
		    case 8:
		    	*(long long*)p = (long long)e;
		    	break;
		    default :
		    	printf("undefined exp length in babel_ptrL\n");
		}

        return PL_TRUE;
}

PlBool babel_ptrFR(double* fp, PlLong ptr, PlLong len)
{
  if(len == 2)
  *(double *)fp = *(double *)ptr;
   else if (len == 1)
  *(float *)fp = *(float *)ptr;
  else
  return PL_FALSE;

  return PL_TRUE;
}

PlBool babel_ptrFW(PlLong ptr, double f, PlLong len)
{
  if (len == 2)
  *(double *)ptr = f;
   else if (len == 1)
  *(float *)ptr = f;
  else
  return PL_FALSE;
  
  return PL_TRUE;
}

PlBool babel__implicit_watchdog_defer_watchedc_0(watchdog_t * arg_0, PlLong * babel_ret) 
{
*babel_ret = invariant(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_defer_watchedc_1(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_defer_watchedc_2(pthread_mutex_t * arg_0) 
{
pthread_mutex_lock(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_defer_watchedc_3(watchdog_t * arg_0, watched_t * arg_1) 
{
delete(arg_0, arg_1);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_defer_watchedc_4(watchdog_t * arg_0, watched_t * arg_1) 
{
insert(arg_0, arg_1);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_defer_watchedc_5(pthread_mutex_t * arg_0) 
{
pthread_mutex_unlock(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_defer_watchedc_6(watchdog_t * arg_0, PlLong * babel_ret) 
{
*babel_ret = invariant(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_defer_watchedc_7(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_remove_watchedc_8(watchdog_t * arg_0, PlLong * babel_ret) 
{
*babel_ret = invariant(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_remove_watchedc_9(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_remove_watchedc_10(pthread_mutex_t * arg_0) 
{
pthread_mutex_lock(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_remove_watchedc_11(watchdog_t * arg_0, watched_t * arg_1) 
{
delete(arg_0, arg_1);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_remove_watchedc_12(pthread_mutex_t * arg_0) 
{
pthread_mutex_unlock(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_remove_watchedc_13(watchdog_t * arg_0, PlLong * babel_ret) 
{
*babel_ret = invariant(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_watchdog_remove_watchedc_14(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_insertc_15(time_t * arg_0, PlLong * babel_ret) 
{
*babel_ret = time(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_deletec_16(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_deletec_17(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_deletec_18(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_deletec_19(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
