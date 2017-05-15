#include <stdbool.h>
 static int label = -1;/* Generated by CIL v. 1.5.1 */
/* print_CIL_Input is true */

#include <gprolog.h>

#line 216 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stddef.h"
typedef unsigned long size_t;
#line 40 "/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include/stdarg.h"
typedef __builtin_va_list __gnuc_va_list;
#line 79 "/usr/include/stdio.h"
typedef __gnuc_va_list va_list;
#line 8 "error.h"
struct __anonstruct_error_t_6 {
   int error_code ;
   char desc[128] ;
};
#line 8 "error.h"
typedef struct __anonstruct_error_t_6 error_t;
/* compiler builtin: 
   void __builtin_va_start(__builtin_va_list  ) ;  */
/* compiler builtin: 
   void __builtin_va_end(__builtin_va_list  ) ;  */
#line 398 "/usr/include/string.h"
extern  __attribute__((__nothrow__)) size_t ( __attribute__((__nonnull__(1), __leaf__)) strlen)(char const   *__s )  __attribute__((__pure__)) ;
#line 390 "/usr/include/stdio.h"
extern  __attribute__((__nothrow__)) int vsnprintf(char * __restrict  __s , size_t __maxlen ,
                                                   char const   * __restrict  __format ,
                                                   __gnuc_va_list __arg ) ;
#line 10 "daemon_assert.h"
extern void daemon_assert_fail(char const   *assertion , char const   *file , int line ,
                               char const   *function ) ;
#line 14 "error.h"
void error_init(error_t *err , int error_code , char const   *desc_fmt  , ...) ;
#line 15
int error_get_error_code(error_t const   *err ) ;
#line 16
char const   *error_get_desc(error_t const   *err ) ;
#line 20 "error.c"
static int invariant(error_t const   *err ) ;
   int  babel_wrapper_error_get_error_code(error_t const   * err)                           // function name insert
      {
        // wrapper for function error_get_error_code        // function name insert
         int  return_value; //  return value type (how about array type)

        //rountine code
        int func;
        PlTerm arg[2];    //  function variable + return value insert
        PlBool res;

        func = Pl_Find_Atom("error_get_error_code"); // function name insert

      //routine code
        Pl_Query_Begin(PL_FALSE);

      //prepare parameters
      //partial routine code, pass in parameter  // we need to init arguments and return value
      arg[0] = Pl_Mk_Integer(err);

      //routine code, reserve a place for return value
      arg[1] = Pl_Mk_Variable();

      //partial routine code, 2 is not routine. (number of arguments) + 1
        res = Pl_Query_Call(func, 2, arg);          // insert (variable+return value)

      //get return value, partial routine code, 1 is not routine
        return_value = Pl_Rd_Integer(arg[1]);        // insert ()

      //routine code
        Pl_Query_End(PL_KEEP_FOR_PROLOG);

      //routine code
        return return_value;
        }
      
   char const   * babel_wrapper_error_get_desc(error_t const   * err)                           // function name insert
      {
        // wrapper for function error_get_desc        // function name insert
         char const   * return_value; //  return value type (how about array type)

        //rountine code
        int func;
        PlTerm arg[2];    //  function variable + return value insert
        PlBool res;

        func = Pl_Find_Atom("error_get_desc"); // function name insert

      //routine code
        Pl_Query_Begin(PL_FALSE);

      //prepare parameters
      //partial routine code, pass in parameter  // we need to init arguments and return value
      arg[0] = Pl_Mk_Integer(err);

      //routine code, reserve a place for return value
      arg[1] = Pl_Mk_Variable();

      //partial routine code, 2 is not routine. (number of arguments) + 1
        res = Pl_Query_Call(func, 2, arg);          // insert (variable+return value)

      //get return value, partial routine code, 1 is not routine
        return_value = Pl_Rd_Integer(arg[1]);        // insert ()

      //routine code
        Pl_Query_End(PL_KEEP_FOR_PROLOG);

      //routine code
        return return_value;
        }
      
   int  babel_wrapper_invariant(error_t const   * err)                           // function name insert
      {
        // wrapper for function invariant        // function name insert
         int  return_value; //  return value type (how about array type)

        //rountine code
        int func;
        PlTerm arg[2];    //  function variable + return value insert
        PlBool res;

        func = Pl_Find_Atom("invariant"); // function name insert

      //routine code
        Pl_Query_Begin(PL_FALSE);

      //prepare parameters
      //partial routine code, pass in parameter  // we need to init arguments and return value
      arg[0] = Pl_Mk_Integer(err);

      //routine code, reserve a place for return value
      arg[1] = Pl_Mk_Variable();

      //partial routine code, 2 is not routine. (number of arguments) + 1
        res = Pl_Query_Call(func, 2, arg);          // insert (variable+return value)

      //get return value, partial routine code, 1 is not routine
        return_value = Pl_Rd_Integer(arg[1]);        // insert ()

      //routine code
        Pl_Query_End(PL_KEEP_FOR_PROLOG);

      //routine code
        return return_value;
        }
      
#line 22 "error.c"
void error_init(error_t *err , int error_code , char const   *desc_fmt  , ...) 
{ 
  va_list args ;
  int tmp ;

  {
#line 26
  if ((unsigned long )err == (unsigned long )((void *)0)) {
#line 26
    daemon_assert_fail("err != ((void *)0)", "error.c", 26, "error_init");
  } else {

  }
#line 27
  if (error_code < 0) {
#line 27
    daemon_assert_fail("error_code >= 0", "error.c", 27, "error_init");
  } else {

  }
#line 28
  if ((unsigned long )desc_fmt == (unsigned long )((void *)0)) {
#line 28
    daemon_assert_fail("desc_fmt != ((void *)0)", "error.c", 28, "error_init");
  } else {

  }
#line 30
  err->error_code = error_code;
#line 31
  __builtin_va_start(args, desc_fmt);
#line 32
  vsnprintf((char * __restrict  )(err->desc), sizeof(err->desc), (char const   * __restrict  )desc_fmt,
            args);
#line 33
  __builtin_va_end(args);
#line 35
  tmp = invariant((error_t const   *)err);
#line 35
  if (tmp == 0) {
#line 35
    daemon_assert_fail("invariant(err)", "error.c", 35, "error_init");
  } else {

  }
#line 36
  return;
}
}
#line 38 "error.c"
int error_get_error_code(error_t const   *err ) 
{ 
  int tmp_ssa_1 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int *mem_5 ;

  {

#line 40
  return babel_wrapper_error_get_error_code(err);
#line 40
  tmp_ssa_1 = invariant(err);
#line 40
  if (tmp_ssa_1 == 0) {
#line 40
    daemon_assert_fail("invariant(err)", "error.c", 40, "error_get_error_code");
  } else {

  }
#line 41
  mem_5 = (int *)err;
#line 41
  __cil_tmp5 = *mem_5;
#line 41
  __cil_tmp4 = __cil_tmp5;
#line 41
  return (__cil_tmp4);
}
}
#line 44 "error.c"
char const   *error_get_desc(error_t const   *err ) 
{ 
  int tmp_ssa_1 ;
  char const   *__cil_tmp4 ;
  unsigned char *__cil_tmp5 ;
  char (*__cil_tmp6)[128] ;
  char *__cil_tmp7 ;

  {

#line 46
  return babel_wrapper_error_get_desc(err);
#line 46
  tmp_ssa_1 = invariant(err);
#line 46
  if (tmp_ssa_1 == 0) {
#line 46
    daemon_assert_fail("invariant(err)", "error.c", 46, "error_get_desc");
  } else {

  }
#line 47
  __cil_tmp5 = (unsigned char *)err + 4;
#line 47
  __cil_tmp6 = (char (*)[128])__cil_tmp5;
#line 47
  __cil_tmp7 = *__cil_tmp6;
#line 47
  __cil_tmp4 = (char const   *)__cil_tmp7;
#line 47
  return (__cil_tmp4);
}
}
#line 51 "error.c"
static int invariant(error_t const   *err ) 
{ 
  size_t tmp_ssa_1 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  char (*__cil_tmp9)[128] ;
  char *__cil_tmp10 ;
  int *mem_10 ;
  char (*mem_11)[128] ;

  {

#line 53
  return babel_wrapper_invariant(err);
#line 53
  __cil_tmp4 = (unsigned long )err == (unsigned long )((void *)0);
#line 53
  if (__cil_tmp4 != 0) {
#line 54
    return (0);
  } else {
#line 56
    mem_10 = (int *)err;
#line 56
    __cil_tmp7 = *mem_10;
#line 56
    __cil_tmp5 = __cil_tmp7 < 0;
#line 56
    if (__cil_tmp5 != 0) {
#line 57
      return (0);
    } else {
#line 59
      __cil_tmp8 = (unsigned char *)err + 4;
#line 59
      __cil_tmp9 = (char (*)[128])__cil_tmp8;
#line 59
      __cil_tmp10 = *__cil_tmp9;
#line 59
      tmp_ssa_1 = strlen((char const   *)__cil_tmp10);
#line 59
      mem_11 = (char (*)[128])((unsigned char *)err + 4);
#line 59
      __cil_tmp6 = tmp_ssa_1 >= sizeof(*mem_11);
#line 59
      if (__cil_tmp6 != 0) {
#line 60
        return (0);
      } else {
#line 62
        return (1);
      }
    }
  }
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

PlBool babel__implicit_error_get_error_codec_0(error_t const   * arg_0, PlLong * babel_ret) 
{
*babel_ret = invariant(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_error_get_error_codec_1(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_error_get_descc_2(error_t const   * arg_0, PlLong * babel_ret) 
{
*babel_ret = invariant(arg_0);
return PL_TRUE;
}
PlBool babel__implicit_error_get_descc_3(char* arg_0, char* arg_1, int arg_2, char* arg_3) 
{
daemon_assert_fail(arg_0, arg_1, arg_2, arg_3);
return PL_TRUE;
}
PlBool babel__implicit_invariantc_4(char const   * arg_0, PlLong * babel_ret) 
{
*babel_ret = strlen(arg_0);
return PL_TRUE;
}