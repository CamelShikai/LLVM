/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is false */

#line 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
typedef unsigned long size_t;
#line 68 "defines.h"
typedef long flow_t;
#line 69 "defines.h"
typedef long cost_t;
#line 99
struct node;
#line 100 "defines.h"
typedef struct node *node_p;
#line 102
struct arc;
#line 103 "defines.h"
typedef struct arc *arc_p;
#line 107 "defines.h"
struct node {
   cost_t potential ;
   int orientation ;
   node_p child ;
   node_p pred ;
   node_p sibling ;
   node_p sibling_prev ;
   arc_p basic_arc ;
   arc_p firstout ;
   arc_p firstin ;
   arc_p arc_tmp ;
   flow_t flow ;
   long depth ;
   int number ;
   int time ;
};
#line 126 "defines.h"
struct arc {
   cost_t cost ;
   node_p tail ;
   node_p head ;
   int ident ;
   arc_p nextout ;
   arc_p nextin ;
   flow_t flow ;
   cost_t org_cost ;
};
#line 138 "defines.h"
struct network {
   char inputfile[200] ;
   char clustfile[200] ;
   long n ;
   long n_trips ;
   long max_m ;
   long m ;
   long m_org ;
   long m_impl ;
   long max_residual_new_m ;
   long max_new_m ;
   long primal_unbounded ;
   long dual_unbounded ;
   long perturbed ;
   long feasible ;
   long eps ;
   long opt_tol ;
   long feas_tol ;
   long pert_val ;
   long bigM ;
   double optcost ;
   cost_t ignore_impl ;
   node_p nodes ;
   node_p stop_nodes ;
   arc_p arcs ;
   arc_p stop_arcs ;
   arc_p dummy_arcs ;
   arc_p stop_dummy ;
   long iterations ;
   long bound_exchanges ;
   long checksum ;
};
#line 138 "defines.h"
typedef struct network network_t;
#line 362 "/usr/include/stdio.h"
extern int printf(char const   * __restrict  __format  , ...) ;
#line 543 "/usr/include/stdlib.h"
extern  __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) exit)(int __status ) ;
#line 66 "/usr/include/string.h"
extern  __attribute__((__nothrow__)) void *( __attribute__((__nonnull__(1), __leaf__)) memset)(void *__s ,
                                                                                               int __c ,
                                                                                               size_t __n ) ;
#line 129
extern  __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strcpy)(char * __restrict  __dest ,
                                                                                                 char const   * __restrict  __src ) ;
#line 32 "mcfutil.h"
extern double flow_cost(network_t * ) ;
#line 36
extern long getfree(network_t * ) ;
#line 32 "readmin.h"
extern long read_min(network_t * ) ;
#line 30 "output.h"
extern long write_circulations(char * , network_t * ) ;
#line 30 "pstart.h"
extern long primal_start_artificial(network_t * ) ;
#line 35 "psimplex.h"
extern long primal_net_simplex(network_t * ) ;
#line 30 "implicit.h"
extern long price_out_impl(network_t * ) ;
#line 31
extern long suspend_impl(network_t * , cost_t  , long  ) ;
#line 28 "mcf.c"
network_t net  ;
void global_opt_cil_lr_1(network_t *__cil_ap_net , long new_arcs , long residual_nb_it ) ;
#line 35 "mcf.c"
long global_opt(void) 
{ 
  network_t *__cil_pp_net  = & net;
  long new_arcs_ssa_1 ;
  long residual_nb_it_ssa_1 ;
  int __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  long *__cil_tmp9 ;
  long __cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  long *__cil_tmp12 ;
  long __cil_tmp13 ;

  {
  {
#line 44
  new_arcs_ssa_1 = -1L;
  }
  {
#line 45
  __cil_tmp8 = (unsigned char *)__cil_pp_net + 408;
#line 45
  __cil_tmp9 = (long *)__cil_tmp8;
#line 45
  __cil_tmp10 = *__cil_tmp9;
#line 45
  __cil_tmp7 = __cil_tmp10 <= 15000L;
#line 45
  if (__cil_tmp7) {
    {
#line 45
    residual_nb_it_ssa_1 = 5L;
    }
  } else {
    {
#line 45
    residual_nb_it_ssa_1 = 5L;
    }
  }
  }
  {
#line 48
  global_opt_cil_lr_1(__cil_pp_net, new_arcs_ssa_1, residual_nb_it_ssa_1);
  }
  {
#line 106
  __cil_tmp11 = (unsigned char *)__cil_pp_net + 616;
#line 106
  __cil_tmp12 = (long *)__cil_tmp11;
#line 106
  __cil_tmp13 = *__cil_tmp12;
#line 106
  printf((char const   */* __restrict  */)"checksum                   : %ld\n", __cil_tmp13);
  }
#line 108
  return (0L);
}
}
#line 117 "mcf.c"
int main(int argc , char **argv ) 
{ 
  network_t *__cil_pp_net  = & net;
  long tmp_ssa_1 ;
  long tmp___0_ssa_1 ;
  int __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  long *__cil_tmp10 ;
  char *__cil_tmp11 ;
  char **__cil_tmp12 ;
  char *__cil_tmp13 ;
  unsigned char *__cil_tmp14 ;
  long *__cil_tmp15 ;
  long __cil_tmp16 ;

  {
  {
#line 124
  __cil_tmp8 = argc < 2;
#line 124
  if (__cil_tmp8) {
#line 125
    return (-1);
  } else {
    {
#line 128
    printf((char const   */* __restrict  */)"\nMCF SPEC CPU2006 version 1.10\n");
#line 129
    printf((char const   */* __restrict  */)"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\n");
#line 130
    printf((char const   */* __restrict  */)"Copyright (c) 2000-2002 Andreas Loebel & ZIB\n");
#line 131
    printf((char const   */* __restrict  */)"Copyright (c) 2003-2005 Andreas Loebel\n");
#line 132
    printf((char const   */* __restrict  */)"\n");
#line 136
    memset((void *)__cil_pp_net, 0, sizeof(network_t ));
#line 137
    __cil_tmp9 = (unsigned char *)__cil_pp_net + 528;
#line 137
    __cil_tmp10 = (long *)__cil_tmp9;
#line 137
    *__cil_tmp10 = (long )1.0e7;
#line 139
    __cil_tmp11 = *((char (*)[200])__cil_pp_net);
#line 139
    __cil_tmp12 = argv + 1;
#line 139
    __cil_tmp13 = *__cil_tmp12;
#line 139
    strcpy((char */* __restrict  */)__cil_tmp11, (char const   */* __restrict  */)__cil_tmp13);
#line 141
    tmp_ssa_1 = read_min(__cil_pp_net);
    }
#line 141
    if (tmp_ssa_1) {
      {
#line 143
      printf((char const   */* __restrict  */)"read error, exit\n");
#line 144
      getfree(__cil_pp_net);
      }
#line 145
      return (-1);
    } else {
      {
#line 150
      __cil_tmp14 = (unsigned char *)__cil_pp_net + 408;
#line 150
      __cil_tmp15 = (long *)__cil_tmp14;
#line 150
      __cil_tmp16 = *__cil_tmp15;
#line 150
      printf((char const   */* __restrict  */)"nodes                      : %ld\n",
             __cil_tmp16);
#line 154
      primal_start_artificial(__cil_pp_net);
#line 155
      global_opt();
#line 159
      printf((char const   */* __restrict  */)"done\n");
#line 164
      tmp___0_ssa_1 = write_circulations((char *)"mcf.out", __cil_pp_net);
      }
#line 164
      if (tmp___0_ssa_1) {
        {
#line 166
        getfree(__cil_pp_net);
        }
#line 167
        return (-1);
      } else {
        {
#line 171
        getfree(__cil_pp_net);
        }
#line 172
        return (0);
      }
    }
  }
  }
}
}
void global_opt_cil_lr_1(network_t *__cil_ap_net , long new_arcs , long residual_nb_it ) 
{ 
  network_t *__cil_pp_net  = & net;
  double tmp_ssa_1 ;
  long new_arcs_ssa_1 ;
  long new_arcs_ssa_2 ;
  long residual_nb_it_ssa_1 ;
  long __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned char *__cil_tmp14 ;
  long *__cil_tmp15 ;
  long __cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  long *__cil_tmp18 ;
  long __cil_tmp19 ;
  unsigned char *__cil_tmp20 ;
  long *__cil_tmp21 ;

  {
#line 48
  if (new_arcs) {
    {
#line 51
    __cil_tmp14 = (unsigned char *)__cil_pp_net + 424;
#line 51
    __cil_tmp15 = (long *)__cil_tmp14;
#line 51
    __cil_tmp16 = *__cil_tmp15;
#line 51
    printf((char const   */* __restrict  */)"active arcs                : %ld\n",
           __cil_tmp16);
#line 54
    primal_net_simplex(__cil_pp_net);
#line 58
    __cil_tmp17 = (unsigned char *)__cil_pp_net + 600;
#line 58
    __cil_tmp18 = (long *)__cil_tmp17;
#line 58
    __cil_tmp19 = *__cil_tmp18;
#line 58
    printf((char const   */* __restrict  */)"simplex iterations         : %ld\n",
           __cil_tmp19);
#line 59
    tmp_ssa_1 = flow_cost(__cil_pp_net);
#line 59
    printf((char const   */* __restrict  */)"objective value            : %0.0f\n",
           tmp_ssa_1);
    }
#line 67
    if (! residual_nb_it) {
      return;
    } else {
      {
#line 71
      __cil_tmp20 = (unsigned char *)__cil_pp_net + 440;
#line 71
      __cil_tmp21 = (long *)__cil_tmp20;
#line 71
      __cil_tmp10 = *__cil_tmp21;
#line 71
      if (__cil_tmp10) {
        {
#line 73
        new_arcs_ssa_1 = suspend_impl(__cil_pp_net, (cost_t )-1, 0L);
        }
#line 76
        if (new_arcs_ssa_1) {
          {
#line 77
          printf((char const   */* __restrict  */)"erased arcs                : %ld\n",
                 new_arcs_ssa_1);
          }
        } else {

        }
      } else {

      }
      }
      {
#line 82
      new_arcs_ssa_2 = price_out_impl(__cil_pp_net);
      }
#line 85
      if (new_arcs_ssa_2) {
        {
#line 86
        printf((char const   */* __restrict  */)"new implicit arcs          : %ld\n",
               new_arcs_ssa_2);
        }
      } else {

      }
      {
#line 89
      __cil_tmp11 = new_arcs_ssa_2 < 0L;
#line 89
      if (__cil_tmp11) {
        {
#line 92
        printf((char const   */* __restrict  */)"not enough memory, exit(-1)\n");
#line 95
        exit(-1);
        }
      } else {

      }
      }
      {
#line 103
      residual_nb_it_ssa_1 = residual_nb_it - 1L;
      }
      {
      global_opt_cil_lr_1(__cil_ap_net, new_arcs_ssa_2, residual_nb_it_ssa_1);
      }
      return;
    }
    {
#line 82
    new_arcs_ssa_1 = price_out_impl(__cil_pp_net);
    }
#line 85
    if (new_arcs_ssa_1) {
      {
#line 86
      printf((char const   */* __restrict  */)"new implicit arcs          : %ld\n",
             new_arcs_ssa_1);
      }
    } else {

    }
    {
#line 89
    __cil_tmp12 = new_arcs_ssa_1 < 0L;
#line 89
    if (__cil_tmp12) {
      {
#line 92
      printf((char const   */* __restrict  */)"not enough memory, exit(-1)\n");
#line 95
      exit(-1);
      }
    } else {

    }
    }
    {
#line 103
    residual_nb_it_ssa_1 = residual_nb_it - 1L;
    }
    {
    global_opt_cil_lr_1(__cil_ap_net, new_arcs_ssa_1, residual_nb_it_ssa_1);
    }
    return;
  } else {
    return;
  }
  {
#line 82
  new_arcs_ssa_1 = price_out_impl(__cil_pp_net);
  }
#line 85
  if (new_arcs_ssa_1) {
    {
#line 86
    printf((char const   */* __restrict  */)"new implicit arcs          : %ld\n",
           new_arcs_ssa_1);
    }
  } else {

  }
  {
#line 89
  __cil_tmp13 = new_arcs_ssa_1 < 0L;
#line 89
  if (__cil_tmp13) {
    {
#line 92
    printf((char const   */* __restrict  */)"not enough memory, exit(-1)\n");
#line 95
    exit(-1);
    }
  } else {

  }
  }
  {
#line 103
  residual_nb_it_ssa_1 = residual_nb_it - 1L;
  }
  {
  global_opt_cil_lr_1(__cil_ap_net, new_arcs_ssa_1, residual_nb_it_ssa_1);
  }
  return;
}
}
