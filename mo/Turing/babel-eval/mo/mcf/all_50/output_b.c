#include <stdbool.h>
 static int label = -1;/* Generated by CIL v. 1.5.1 */
/* print_CIL_Input is true */

#include <gprolog.h>

#line 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
typedef unsigned long size_t;
#line 131 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off_t;
#line 132 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off64_t;
#line 44 "/usr/include/stdio.h"
struct _IO_FILE;
#line 44
struct _IO_FILE;
#line 44
struct _IO_FILE;
#line 48 "/usr/include/stdio.h"
typedef struct _IO_FILE FILE;
#line 144 "/usr/include/libio.h"
struct _IO_FILE;
#line 154 "/usr/include/libio.h"
typedef void _IO_lock_t;
#line 160 "/usr/include/libio.h"
struct _IO_marker {
   struct _IO_marker *_next ;
   struct _IO_FILE *_sbuf ;
   int _pos ;
};
#line 245 "/usr/include/libio.h"
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
#line 68 "defines.h"
typedef long flow_t;
#line 69 "defines.h"
typedef long cost_t;
#line 99
struct node;
#line 99
struct node;
#line 100 "defines.h"
typedef struct node *node_p;
#line 102
struct arc;
#line 102
struct arc;
#line 102 "defines.h"
typedef struct arc arc_t;
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
#line 237 "/usr/include/stdio.h"
extern int fclose(FILE *__stream ) ;
#line 272
extern FILE *fopen(char const   * __restrict  __filename , char const   * __restrict  __modes ) ;
#line 356
extern int fprintf(FILE * __restrict  __stream , char const   * __restrict  __format 
                   , ...) ;
#line 30 "mcfutil.h"
extern void refresh_neighbour_lists(network_t * ) ;
#line 30 "output.h"
long write_circulations(char *outfile , network_t *net ) ;
#line 31
void write_circulations_cil_lr_1_cil_lr_1_cil_lr_1(arc_t **__cil_ap_arc2 ) ;
#line 32
int write_circulations_cil_lr_1_cil_lr_1(network_t **__cil_ap_net , arc_t **__cil_ap_block ,
                                         arc_t **__cil_ap_first_impl , int *__cil_ap___cil_ret9 ,
                                         FILE **__cil_ap_out , arc_t *arc ) ;
#line 35
int write_circulations_cil_lr_1(FILE **__cil_ap_out , long *__cil_ap___cil_ret8 ,
                                network_t *net , arc_t *block , arc_t *first_impl ) ;
   int  babel_wrapper_write_circulations_cil_lr_1(network_t ** __cil_pp_net, arc_t ** __cil_pp_block, arc_t ** __cil_pp_first_impl, int * __cil_pp___cil_ret9, network_t ** __cil_fp_net, arc_t ** __cil_fp_block, arc_t ** __cil_fp_first_impl, int * __cil_fp___cil_ret9, FILE ** __cil_ap_out, long * __cil_ap___cil_ret8, network_t * net, arc_t * block, arc_t * first_impl)                           // function name insert
      {
        // wrapper for function write_circulations_cil_lr_1        // function name insert
         int  return_value; //  return value type (how about array type)

        //rountine code
        int func;
        PlTerm arg[14];    //  function variable + return value insert
        PlBool res;

        func = Pl_Find_Atom("write_circulations_cil_lr_1"); // function name insert

      //routine code
        Pl_Query_Begin(PL_FALSE);

      //prepare parameters
      //partial routine code, pass in parameter  // we need to init arguments and return value
      arg[0] = Pl_Mk_Integer(__cil_pp_net);
arg[1] = Pl_Mk_Integer(__cil_pp_block);
arg[2] = Pl_Mk_Integer(__cil_pp_first_impl);
arg[3] = Pl_Mk_Integer(__cil_pp___cil_ret9);
arg[4] = Pl_Mk_Integer(__cil_fp_net);
arg[5] = Pl_Mk_Integer(__cil_fp_block);
arg[6] = Pl_Mk_Integer(__cil_fp_first_impl);
arg[7] = Pl_Mk_Integer(__cil_fp___cil_ret9);
arg[8] = Pl_Mk_Integer(__cil_ap_out);
arg[9] = Pl_Mk_Integer(__cil_ap___cil_ret8);
arg[10] = Pl_Mk_Integer(net);
arg[11] = Pl_Mk_Integer(block);
arg[12] = Pl_Mk_Integer(first_impl);

      //routine code, reserve a place for return value
      arg[13] = Pl_Mk_Variable();

      //partial routine code, 2 is not routine. (number of arguments) + 1
        res = Pl_Query_Call(func, 14, arg);          // insert (variable+return value)

      //get return value, partial routine code, 1 is not routine
        return_value = Pl_Rd_Integer(arg[13]);        // insert ()

      //routine code
        Pl_Query_End(PL_KEEP_FOR_PROLOG);

      //routine code
        return return_value;
        }
      
#line 30 "output.c"
long write_circulations(char *outfile , network_t *net ) 
{ 
  FILE *out ;
  long __cil_ret8 ;
  FILE **__cil_pp_out ;
  long *__cil_pp___cil_ret8 ;
  FILE **__cil_fp_out ;
  long *__cil_fp___cil_ret8 ;
  arc_t *first_impl_ssa_1 ;
  FILE *out_ssa_2 ;
  arc_t *block_ssa_1 ;
  int retflag9_ssa_1 ;
  FILE *out_ssa_3 ;
  long __cil_ret8_ssa_1 ;
  int __cil_tmp21 ;
  unsigned char *__cil_tmp22 ;
  arc_p *__cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  long *__cil_tmp25 ;
  arc_p __cil_tmp26 ;
  long __cil_tmp27 ;
  unsigned char *__cil_tmp28 ;
  node_p *__cil_tmp29 ;
  unsigned char *__cil_tmp30 ;
  long *__cil_tmp31 ;
  node_p __cil_tmp32 ;
  long __cil_tmp33 ;
  node_p __cil_tmp34 ;
  unsigned char *__cil_tmp35 ;
  unsigned char *__cil_tmp36 ;
  arc_p *__cil_tmp37 ;

  {
#line 34
  __cil_pp_out = & out;
#line 35
  __cil_pp___cil_ret8 = & __cil_ret8;
#line 36
  __cil_fp_out = & out;
#line 37
  __cil_fp___cil_ret8 = & __cil_ret8;
#line 44
  __cil_tmp22 = (unsigned char *)net + 576;
#line 44
  __cil_tmp23 = (arc_p *)__cil_tmp22;
#line 44
  __cil_tmp24 = (unsigned char *)net + 440;
#line 44
  __cil_tmp25 = (long *)__cil_tmp24;
#line 44
  __cil_tmp26 = *__cil_tmp23;
#line 44
  __cil_tmp27 = *__cil_tmp25;
#line 44
  first_impl_ssa_1 = __cil_tmp26 - __cil_tmp27;
#line 46
  out_ssa_2 = fopen((char const   * __restrict  )((char const   *)outfile), (char const   * __restrict  )"w");
#line 46
  __cil_tmp21 = (unsigned long )out_ssa_2 == (unsigned long )((void *)0);
#line 46
  if (__cil_tmp21 != 0) {
#line 47
    return (-1L);
  } else {
#line 49
    refresh_neighbour_lists(net);
#line 51
    __cil_tmp28 = (unsigned char *)net + 552;
#line 51
    __cil_tmp29 = (node_p *)__cil_tmp28;
#line 51
    __cil_tmp30 = (unsigned char *)net + 400;
#line 51
    __cil_tmp31 = (long *)__cil_tmp30;
#line 51
    __cil_tmp32 = *__cil_tmp29;
#line 51
    __cil_tmp33 = *__cil_tmp31;
#line 51
    __cil_tmp34 = __cil_tmp32 + __cil_tmp33;
#line 51
    __cil_tmp35 = (unsigned char *)__cil_tmp34;
#line 51
    __cil_tmp36 = __cil_tmp35 + 56;
#line 51
    __cil_tmp37 = (arc_p *)__cil_tmp36;
#line 51
    block_ssa_1 = *__cil_tmp37;
#line 55
    *__cil_fp_out = out_ssa_2;
#line 56
    *__cil_fp___cil_ret8 = __cil_ret8;
#line 51
    retflag9_ssa_1 = write_circulations_cil_lr_1(__cil_pp_out, __cil_pp___cil_ret8,
                                                 net, block_ssa_1, first_impl_ssa_1);
#line 53
    out_ssa_3 = *__cil_fp_out;
#line 54
    __cil_ret8_ssa_1 = *__cil_fp___cil_ret8;
#line 51
    if (retflag9_ssa_1 != 0) {
#line 51
      return (__cil_ret8_ssa_1);
    } else {
#line 84
      fclose(out_ssa_3);
#line 86
      return (0L);
    }
  }
}
}
#line 93 "output.c"
void write_circulations_cil_lr_1_cil_lr_1_cil_lr_1(arc_t **__cil_ap_arc2 ) 
{ 
  arc_t *__cil_tmp2 ;
  flow_t __cil_tmp3 ;
  arc_t *__cil_tmp4 ;
  unsigned char *__cil_tmp5 ;
  unsigned char *__cil_tmp6 ;
  flow_t *__cil_tmp7 ;
  arc_t *__cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  arc_p *__cil_tmp11 ;

  {
#line 65
  __cil_tmp2 = *__cil_ap_arc2;
#line 65
  if (__cil_tmp2 != 0) {
#line 66
    __cil_tmp4 = *__cil_ap_arc2;
#line 66
    __cil_tmp5 = (unsigned char *)__cil_tmp4;
#line 66
    __cil_tmp6 = __cil_tmp5 + 48;
#line 66
    __cil_tmp7 = (flow_t *)__cil_tmp6;
#line 66
    __cil_tmp3 = *__cil_tmp7;
#line 66
    if (__cil_tmp3 != 0) {
#line 67
      return;
    } else {
#line 65
      __cil_tmp8 = *__cil_ap_arc2;
#line 65
      __cil_tmp9 = (unsigned char *)__cil_tmp8;
#line 65
      __cil_tmp10 = __cil_tmp9 + 32;
#line 65
      __cil_tmp11 = (arc_p *)__cil_tmp10;
#line 65
      *__cil_ap_arc2 = *__cil_tmp11;
#line 68
      write_circulations_cil_lr_1_cil_lr_1_cil_lr_1(__cil_ap_arc2);
#line 70
      return;
    }
  } else {
#line 74
    return;
  }
}
}
#line 79 "output.c"
int write_circulations_cil_lr_1_cil_lr_1(network_t **__cil_ap_net , arc_t **__cil_ap_block ,
                                         arc_t **__cil_ap_first_impl , int *__cil_ap___cil_ret9 ,
                                         FILE **__cil_ap_out , arc_t *arc ) 
{ 
  arc_t *arc2 ;
  arc_t **__cil_pp_arc2 ;
  arc_t **__cil_fp_arc2 ;
  arc_t *arc2_ssa_1 ;
  arc_t *arc2_ssa_2 ;
  arc_t *arc_ssa_1 ;
  int retflag8_ssa_1 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  arc_t *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  FILE *__cil_tmp20 ;
  FILE *__cil_tmp21 ;
  unsigned char *__cil_tmp22 ;
  node_p *__cil_tmp23 ;
  node_p __cil_tmp24 ;
  unsigned char *__cil_tmp25 ;
  unsigned char *__cil_tmp26 ;
  int *__cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned char *__cil_tmp29 ;
  node_p *__cil_tmp30 ;
  network_t *__cil_tmp31 ;
  unsigned char *__cil_tmp32 ;
  unsigned char *__cil_tmp33 ;
  long *__cil_tmp34 ;
  node_p __cil_tmp35 ;
  long __cil_tmp36 ;
  node_p __cil_tmp37 ;
  unsigned char *__cil_tmp38 ;
  unsigned char *__cil_tmp39 ;
  arc_p *__cil_tmp40 ;
  FILE *__cil_tmp41 ;
  unsigned char *__cil_tmp42 ;
  node_p *__cil_tmp43 ;
  node_p __cil_tmp44 ;
  unsigned char *__cil_tmp45 ;
  unsigned char *__cil_tmp46 ;
  int *__cil_tmp47 ;
  FILE *__cil_tmp48 ;
  unsigned char *__cil_tmp49 ;
  node_p *__cil_tmp50 ;
  node_p __cil_tmp51 ;
  unsigned char *__cil_tmp52 ;
  unsigned char *__cil_tmp53 ;
  int *__cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned char *__cil_tmp56 ;
  node_p *__cil_tmp57 ;
  network_t *__cil_tmp58 ;
  unsigned char *__cil_tmp59 ;
  unsigned char *__cil_tmp60 ;
  long *__cil_tmp61 ;
  node_p __cil_tmp62 ;
  long __cil_tmp63 ;
  node_p __cil_tmp64 ;
  unsigned char *__cil_tmp65 ;
  unsigned char *__cil_tmp66 ;
  arc_p *__cil_tmp67 ;
  FILE *__cil_tmp68 ;
  unsigned char *__cil_tmp69 ;
  node_p *__cil_tmp70 ;
  node_p __cil_tmp71 ;
  unsigned char *__cil_tmp72 ;
  unsigned char *__cil_tmp73 ;
  int *__cil_tmp74 ;

  {
#line 84
  __cil_pp_arc2 = & arc2;
#line 85
  __cil_fp_arc2 = & arc2;
#line 58
  if (arc != 0) {
#line 60
    __cil_tmp18 = *__cil_ap_first_impl;
#line 60
    __cil_tmp19 = (unsigned long )__cil_tmp18;
#line 60
    __cil_tmp15 = (unsigned long )arc >= __cil_tmp19;
#line 60
    if (__cil_tmp15 != 0) {
#line 61
      __cil_tmp20 = *__cil_ap_out;
#line 61
      fprintf((FILE * __restrict  )__cil_tmp20, (char const   * __restrict  )"***\n");
    } else {

    }
#line 63
    __cil_tmp21 = *__cil_ap_out;
#line 63
    __cil_tmp22 = (unsigned char *)arc + 16;
#line 63
    __cil_tmp23 = (node_p *)__cil_tmp22;
#line 63
    __cil_tmp24 = *__cil_tmp23;
#line 63
    __cil_tmp25 = (unsigned char *)__cil_tmp24;
#line 63
    __cil_tmp26 = __cil_tmp25 + 96;
#line 63
    __cil_tmp27 = (int *)__cil_tmp26;
#line 63
    __cil_tmp28 = *__cil_tmp27;
#line 63
    fprintf((FILE * __restrict  )__cil_tmp21, (char const   * __restrict  )"%d\n",
            __cil_tmp28);
#line 64
    __cil_tmp29 = (unsigned char *)arc + 16;
#line 64
    __cil_tmp30 = (node_p *)__cil_tmp29;
#line 64
    __cil_tmp31 = *__cil_ap_net;
#line 64
    __cil_tmp32 = (unsigned char *)__cil_tmp31;
#line 64
    __cil_tmp33 = __cil_tmp32 + 408;
#line 64
    __cil_tmp34 = (long *)__cil_tmp33;
#line 64
    __cil_tmp35 = *__cil_tmp30;
#line 64
    __cil_tmp36 = *__cil_tmp34;
#line 64
    __cil_tmp37 = __cil_tmp35 + __cil_tmp36;
#line 64
    __cil_tmp38 = (unsigned char *)__cil_tmp37;
#line 64
    __cil_tmp39 = __cil_tmp38 + 56;
#line 64
    __cil_tmp40 = (arc_p *)__cil_tmp39;
#line 64
    arc2_ssa_1 = *__cil_tmp40;
#line 67
    *__cil_fp_arc2 = arc2_ssa_1;
#line 65
    write_circulations_cil_lr_1_cil_lr_1_cil_lr_1(__cil_pp_arc2);
#line 66
    arc2_ssa_2 = *__cil_fp_arc2;
#line 68
    if (arc2_ssa_2 == 0) {
#line 70
      __cil_tmp41 = *__cil_ap_out;
#line 70
      fclose(__cil_tmp41);
#line 71
      *__cil_ap___cil_ret9 = -1;
#line 73
      return (1);
    } else {
#line 74
      __cil_tmp42 = (unsigned char *)arc2_ssa_2 + 16;
#line 74
      __cil_tmp43 = (node_p *)__cil_tmp42;
#line 74
      __cil_tmp44 = *__cil_tmp43;
#line 74
      __cil_tmp45 = (unsigned char *)__cil_tmp44;
#line 74
      __cil_tmp46 = __cil_tmp45 + 96;
#line 74
      __cil_tmp47 = (int *)__cil_tmp46;
#line 74
      __cil_tmp16 = *__cil_tmp47;
#line 74
      if (__cil_tmp16 != 0) {
#line 75
        arc_ssa_1 = arc2_ssa_2;
      } else {
#line 77
        arc_ssa_1 = (arc_t *)0;
      }
#line 82
      retflag8_ssa_1 = write_circulations_cil_lr_1_cil_lr_1(__cil_ap_net, __cil_ap_block,
                                                            __cil_ap_first_impl, __cil_ap___cil_ret9,
                                                            __cil_ap_out, arc_ssa_1);
#line 86
      return (retflag8_ssa_1);
    }
#line 89
    retflag8_ssa_1 = write_circulations_cil_lr_1_cil_lr_1(__cil_ap_net, __cil_ap_block,
                                                          __cil_ap_first_impl, __cil_ap___cil_ret9,
                                                          __cil_ap_out, arc);
#line 93
    return (retflag8_ssa_1);
  } else {
#line 95
    return (0);
  }
#line 63
  __cil_tmp48 = *__cil_ap_out;
#line 63
  __cil_tmp49 = (unsigned char *)arc + 16;
#line 63
  __cil_tmp50 = (node_p *)__cil_tmp49;
#line 63
  __cil_tmp51 = *__cil_tmp50;
#line 63
  __cil_tmp52 = (unsigned char *)__cil_tmp51;
#line 63
  __cil_tmp53 = __cil_tmp52 + 96;
#line 63
  __cil_tmp54 = (int *)__cil_tmp53;
#line 63
  __cil_tmp55 = *__cil_tmp54;
#line 63
  fprintf((FILE * __restrict  )__cil_tmp48, (char const   * __restrict  )"%d\n", - __cil_tmp55);
#line 64
  __cil_tmp56 = (unsigned char *)arc + 16;
#line 64
  __cil_tmp57 = (node_p *)__cil_tmp56;
#line 64
  __cil_tmp58 = *__cil_ap_net;
#line 64
  __cil_tmp59 = (unsigned char *)__cil_tmp58;
#line 64
  __cil_tmp60 = __cil_tmp59 + 408;
#line 64
  __cil_tmp61 = (long *)__cil_tmp60;
#line 64
  __cil_tmp62 = *__cil_tmp57;
#line 64
  __cil_tmp63 = *__cil_tmp61;
#line 64
  __cil_tmp64 = __cil_tmp62 + __cil_tmp63;
#line 64
  __cil_tmp65 = (unsigned char *)__cil_tmp64;
#line 64
  __cil_tmp66 = __cil_tmp65 + 56;
#line 64
  __cil_tmp67 = (arc_p *)__cil_tmp66;
#line 64
  arc2_ssa_1 = *__cil_tmp67;
#line 67
  *__cil_fp_arc2 = arc2_ssa_1;
#line 65
  write_circulations_cil_lr_1_cil_lr_1_cil_lr_1(__cil_pp_arc2);
#line 66
  arc2_ssa_2 = *__cil_fp_arc2;
#line 68
  if (arc2_ssa_2 == 0) {
#line 70
    __cil_tmp68 = *__cil_ap_out;
#line 70
    fclose(__cil_tmp68);
#line 71
    *__cil_ap___cil_ret9 = -1;
#line 73
    return (1);
  } else {
#line 74
    __cil_tmp69 = (unsigned char *)arc2_ssa_2 + 16;
#line 74
    __cil_tmp70 = (node_p *)__cil_tmp69;
#line 74
    __cil_tmp71 = *__cil_tmp70;
#line 74
    __cil_tmp72 = (unsigned char *)__cil_tmp71;
#line 74
    __cil_tmp73 = __cil_tmp72 + 96;
#line 74
    __cil_tmp74 = (int *)__cil_tmp73;
#line 74
    __cil_tmp17 = *__cil_tmp74;
#line 74
    if (__cil_tmp17 != 0) {
#line 75
      arc_ssa_1 = arc2_ssa_2;
    } else {
#line 77
      arc_ssa_1 = (arc_t *)0;
    }
#line 82
    retflag8_ssa_1 = write_circulations_cil_lr_1_cil_lr_1(__cil_ap_net, __cil_ap_block,
                                                          __cil_ap_first_impl, __cil_ap___cil_ret9,
                                                          __cil_ap_out, arc_ssa_1);
#line 86
    return (retflag8_ssa_1);
  }
#line 89
  retflag8_ssa_1 = write_circulations_cil_lr_1_cil_lr_1(__cil_ap_net, __cil_ap_block,
                                                        __cil_ap_first_impl, __cil_ap___cil_ret9,
                                                        __cil_ap_out, arc);
#line 93
  return (retflag8_ssa_1);
}
}
#line 96 "output.c"
int write_circulations_cil_lr_1(FILE **__cil_ap_out , long *__cil_ap___cil_ret8 ,
                                network_t *net , arc_t *block , arc_t *first_impl ) 
{ 
  int __cil_ret9 ;
  network_t **__cil_pp_net ;
  arc_t **__cil_pp_block ;
  arc_t **__cil_pp_first_impl ;
  int *__cil_pp___cil_ret9 ;
  network_t **__cil_fp_net ;
  arc_t **__cil_fp_block ;
  arc_t **__cil_fp_first_impl ;
  int *__cil_fp___cil_ret9 ;
  arc_t *arc_ssa_1 ;
  int retflag10_ssa_1 ;
  network_t *net_ssa_1 ;
  arc_t *block_ssa_1 ;
  arc_t *first_impl_ssa_1 ;
  int __cil_ret9_ssa_1 ;
  arc_t *block_ssa_2 ;
  int retflag8_ssa_1 ;
  flow_t __cil_tmp27 ;
  unsigned char *__cil_tmp28 ;
  flow_t *__cil_tmp29 ;
  FILE *__cil_tmp30 ;
  unsigned char *__cil_tmp31 ;
  arc_p *__cil_tmp32 ;
  unsigned char *__cil_tmp33 ;
  arc_p *__cil_tmp34 ;

  {
#line 100
  __cil_fp___cil_ret9 = & __cil_ret9;
#line 100
  __cil_fp_first_impl = & first_impl;
#line 100
  __cil_fp_block = & block;
#line 100
  __cil_fp_net = & net;
#line 100
  __cil_pp___cil_ret9 = & __cil_ret9;
#line 100
  __cil_pp_first_impl = & first_impl;
#line 100
  __cil_pp_block = & block;
#line 100
  __cil_pp_net = & net;
#line 100
  return babel_wrapper_write_circulations_cil_lr_1(__cil_pp_net, __cil_pp_block, __cil_pp_first_impl,
                                                   __cil_pp___cil_ret9, __cil_fp_net,
                                                   __cil_fp_block, __cil_fp_first_impl,
                                                   __cil_fp___cil_ret9, __cil_ap_out,
                                                   __cil_ap___cil_ret8, net, block,
                                                   first_impl);
#line 100
  __cil_pp_net = & net;
#line 101
  __cil_pp_block = & block;
#line 102
  __cil_pp_first_impl = & first_impl;
#line 103
  __cil_pp___cil_ret9 = & __cil_ret9;
#line 104
  __cil_fp_net = & net;
#line 105
  __cil_fp_block = & block;
#line 106
  __cil_fp_first_impl = & first_impl;
#line 107
  __cil_fp___cil_ret9 = & __cil_ret9;
#line 51
  if (block != 0) {
#line 53
    __cil_tmp28 = (unsigned char *)block + 48;
#line 53
    __cil_tmp29 = (flow_t *)__cil_tmp28;
#line 53
    __cil_tmp27 = *__cil_tmp29;
#line 53
    if (__cil_tmp27 != 0) {
#line 55
      __cil_tmp30 = *__cil_ap_out;
#line 55
      fprintf((FILE * __restrict  )__cil_tmp30, (char const   * __restrict  )"()\n");
#line 57
      arc_ssa_1 = block;
#line 61
      *__cil_fp_net = net;
#line 62
      *__cil_fp_block = block;
#line 63
      *__cil_fp_first_impl = first_impl;
#line 64
      *__cil_fp___cil_ret9 = __cil_ret9;
#line 58
      retflag10_ssa_1 = write_circulations_cil_lr_1_cil_lr_1(__cil_pp_net, __cil_pp_block,
                                                             __cil_pp_first_impl,
                                                             __cil_pp___cil_ret9,
                                                             __cil_ap_out, arc_ssa_1);
#line 62
      net_ssa_1 = *__cil_fp_net;
#line 63
      block_ssa_1 = *__cil_fp_block;
#line 64
      first_impl_ssa_1 = *__cil_fp_first_impl;
#line 65
      __cil_ret9_ssa_1 = *__cil_fp___cil_ret9;
#line 58
      if (retflag10_ssa_1 != 0) {
#line 58
        return (__cil_ret9_ssa_1);
      } else {
#line 51
        __cil_tmp31 = (unsigned char *)block_ssa_1 + 32;
#line 51
        __cil_tmp32 = (arc_p *)__cil_tmp31;
#line 51
        block_ssa_2 = *__cil_tmp32;
#line 54
        retflag8_ssa_1 = write_circulations_cil_lr_1(__cil_ap_out, __cil_ap___cil_ret8,
                                                     net_ssa_1, block_ssa_2, first_impl_ssa_1);
#line 57
        return (retflag8_ssa_1);
      }
    } else {
#line 51
      __cil_tmp33 = (unsigned char *)block + 32;
#line 51
      __cil_tmp34 = (arc_p *)__cil_tmp33;
#line 51
      block_ssa_1 = *__cil_tmp34;
#line 54
      retflag8_ssa_1 = write_circulations_cil_lr_1(__cil_ap_out, __cil_ap___cil_ret8,
                                                   net, block_ssa_1, first_impl);
#line 57
      return (retflag8_ssa_1);
    }
  } else {
#line 61
    return (0);
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

PlBool babel__implicit_write_circulations_cil_lr_1c_0(FILE * __restrict   arg_0, char const   * __restrict   arg_1) 
{
fprintf(arg_0, arg_1);
return PL_TRUE;
}
PlBool babel__implicit_write_circulations_cil_lr_1c_1(network_t ** arg_0, arc_t ** arg_1, arc_t ** arg_2, int * arg_3, FILE ** arg_4, arc_t * arg_5, PlLong * babel_ret) 
{
*babel_ret = write_circulations_cil_lr_1_cil_lr_1(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);
return PL_TRUE;
}
PlBool babel__implicit_write_circulations_cil_lr_1c_2(FILE ** arg_0, long * arg_1, network_t * arg_2, arc_t * arg_3, arc_t * arg_4, PlLong * babel_ret) 
{
*babel_ret = write_circulations_cil_lr_1(arg_0, arg_1, arg_2, arg_3, arg_4);
return PL_TRUE;
}
PlBool babel__implicit_write_circulations_cil_lr_1c_3(FILE ** arg_0, long * arg_1, network_t * arg_2, arc_t * arg_3, arc_t * arg_4, PlLong * babel_ret) 
{
*babel_ret = write_circulations_cil_lr_1(arg_0, arg_1, arg_2, arg_3, arg_4);
return PL_TRUE;
}
