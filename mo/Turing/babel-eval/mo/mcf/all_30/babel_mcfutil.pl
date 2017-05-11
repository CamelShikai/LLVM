babelJcc(OP, L, R) :-
    (  OP =:= 12 -> L =:= R
    ;  OP =:= 13 -> L \= R
    ;  OP =:= 14 -> L > R
    ;  OP =:= 15 -> L =< R
    ;  OP =:= 16 -> L < R
    ;  OP =:= 17 -> L >= R
    ).

:-foreign(babel_ptrR_byte(-byte, +integer, +integer)).
:-foreign(babel_ptrR(-integer, +integer, +integer)).
:-foreign(babel_ptrE(+integer, +integer, +integer)).
:-foreign(babel_ptrFR(-float, +integer,+integer)).
:-foreign(babel_ptrFW(+integer, +float,+integer)).


babelPtrR_byte(E, P, L) :- babel_ptrR_byte(T, P, L), E is T.
babelPtrR(E, P, L) :- babel_ptrR(T, P, L), E is T.
babelPtrL(P, E, L) :- babel_ptrE(P, E, L).

babelAssign(Var, Val) :- Var is Val.
babelAssignStr(Var, Val) :- Var = Val.
babelAssignBool(Var, Val) :- Var = Val.

babelArrayL([_\/T], 0, X, [X\/T]).
babelArrayL([H\/T], I, X, [H\/R]):- I > -1, NI is I-1, babelArrayL(T, NI, X, R), !.
babelArrayL(L, _, _, L).

babelArrayR(X, [X\/_], 0).
babelArrayR(X, [_\/T], I):- I > 0, NI is I-1, babelArrayR(X, T, NI), !.
:- foreign(babel__implicit_refresh_neighbour_listsc_0(+integer, +integer, +integer)).
:- foreign(babel__implicit_refresh_neighbour_listsc_1(+integer, +integer)).

refresh_neighbour_lists(__CIL_PP_NET, __CIL_FP_NET, NET, VOID) :- 


 __CIL_TMP12 is NET +1* 552,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_0 is __CIL_TMP13,
babelPtrR(NODE_SSA_1, BabelExp_0, 8),
__CIL_TMP14 is NET +1* 560,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_1 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_1, 8),
STOP_SSA_1 is __CIL_TMP16,
BabelExp_2 is NET,
babel_ptrE(__CIL_FP_NET, BabelExp_2, 8),
babel__implicit_refresh_neighbour_listsc_0(__CIL_PP_NET, NODE_SSA_1, STOP_SSA_1),
BabelExp_3 is __CIL_FP_NET,
babelPtrR(NET_SSA_1, BabelExp_3, 8),
__CIL_TMP17 is NET_SSA_1 +1* 568,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_4 is __CIL_TMP18,
babelPtrR(ARC_SSA_1, BabelExp_4, 8),
__CIL_TMP19 is NET_SSA_1 +1* 576,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_5 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_5, 8),
STOP_SSA_2 is __CIL_TMP21,
babel__implicit_refresh_neighbour_listsc_1(ARC_SSA_1, STOP_SSA_2),true. 

 :- foreign(babel__implicit_refresh_potentialc_2(+integer, +integer, +integer, +integer)).

refresh_potential(__CIL_PP_CHECKSUM, __CIL_FP_CHECKSUM, NET, BABEL_RET) :- 


 __CIL_TMP13 is NET +1* 552,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_6 is __CIL_TMP14,
babelPtrR(ROOT_SSA_1, BabelExp_6, 8),
CHECKSUM_SSA_1 is 0,
MEM_14 is ROOT_SSA_1,
BabelExp_7 is -100000000,
babel_ptrE(MEM_14, BabelExp_7, 8),
__CIL_TMP15 is ROOT_SSA_1 +1* 16,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_8 is __CIL_TMP16,
babelPtrR(NODE_SSA_1, BabelExp_8, 8),
TMP_SSA_1 is NODE_SSA_1,
BabelExp_9 is CHECKSUM_SSA_1,
babel_ptrE(__CIL_FP_CHECKSUM, BabelExp_9, 8),
babel__implicit_refresh_potentialc_2(__CIL_PP_CHECKSUM, NODE_SSA_1, TMP_SSA_1, ROOT_SSA_1),
BabelExp_10 is __CIL_FP_CHECKSUM,
babelPtrR(CHECKSUM_SSA_2, BabelExp_10, 8),BABEL_RET is CHECKSUM_SSA_2, true. 

 :- foreign(babel__implicit_flow_org_costc_3(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_flow_org_costc_4(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_flow_org_costc_5(+integer, +integer, +integer, +integer, +integer)).

flow_org_cost(__CIL_PP_NET, __CIL_PP_FLEET, __CIL_PP_OPERATIONAL_COST, __CIL_FP_NET, __CIL_FP_FLEET, __CIL_FP_OPERATIONAL_COST, NET, BABEL_RET) :- 


 FLEET_SSA_1 is 0,
OPERATIONAL_COST_SSA_1 is 0,
__CIL_TMP32 is NET +1* 576,
__CIL_TMP33 is __CIL_TMP32,
BabelExp_11 is __CIL_TMP33,
babelPtrR(__CIL_TMP34, BabelExp_11, 8),
STOP_SSA_1 is __CIL_TMP34,
__CIL_TMP35 is NET +1* 568,
__CIL_TMP36 is __CIL_TMP35,
BabelExp_12 is __CIL_TMP36,
babelPtrR(ARC_SSA_1, BabelExp_12, 8),
BabelExp_13 is NET,
babel_ptrE(__CIL_FP_NET, BabelExp_13, 8),
BabelExp_14 is FLEET_SSA_1,
babel_ptrE(__CIL_FP_FLEET, BabelExp_14, 8),
BabelExp_15 is OPERATIONAL_COST_SSA_1,
babel_ptrE(__CIL_FP_OPERATIONAL_COST, BabelExp_15, 8),
babel__implicit_flow_org_costc_3(__CIL_PP_NET, __CIL_PP_FLEET, __CIL_PP_OPERATIONAL_COST, ARC_SSA_1, STOP_SSA_1),
BabelExp_16 is __CIL_FP_NET,
babelPtrR(NET_SSA_1, BabelExp_16, 8),
BabelExp_17 is __CIL_FP_FLEET,
babelPtrR(FLEET_SSA_2, BabelExp_17, 8),
BabelExp_18 is __CIL_FP_OPERATIONAL_COST,
babelPtrR(OPERATIONAL_COST_SSA_2, BabelExp_18, 8),
__CIL_TMP37 is NET_SSA_1 +1* 560,
__CIL_TMP38 is __CIL_TMP37,
BabelExp_19 is __CIL_TMP38,
babelPtrR(__CIL_TMP39, BabelExp_19, 8),
STOP_SSA_2 is __CIL_TMP39,
__CIL_TMP40 is NET_SSA_1 +1* 552,
__CIL_TMP41 is __CIL_TMP40,
BabelExp_20 is __CIL_TMP41,
babelPtrR(NODE_SSA_1, BabelExp_20, 8),
NODE_SSA_2 is NODE_SSA_1 +104* 1,
BabelExp_21 is NET_SSA_1,
babel_ptrE(__CIL_FP_NET, BabelExp_21, 8),
BabelExp_22 is FLEET_SSA_2,
babel_ptrE(__CIL_FP_FLEET, BabelExp_22, 8),
BabelExp_23 is OPERATIONAL_COST_SSA_2,
babel_ptrE(__CIL_FP_OPERATIONAL_COST, BabelExp_23, 8),
babel__implicit_flow_org_costc_4(__CIL_PP_NET, __CIL_PP_FLEET, __CIL_PP_OPERATIONAL_COST, NODE_SSA_2, STOP_SSA_2),
BabelExp_24 is __CIL_FP_NET,
babelPtrR(NET_SSA_2, BabelExp_24, 8),
BabelExp_25 is __CIL_FP_FLEET,
babelPtrR(FLEET_SSA_3, BabelExp_25, 8),
BabelExp_26 is __CIL_FP_OPERATIONAL_COST,
babelPtrR(OPERATIONAL_COST_SSA_3, BabelExp_26, 8),
__CIL_TMP42 is NET_SSA_2 +1* 576,
__CIL_TMP43 is __CIL_TMP42,
BabelExp_27 is __CIL_TMP43,
babelPtrR(__CIL_TMP44, BabelExp_27, 8),
STOP_SSA_3 is __CIL_TMP44,
__CIL_TMP45 is NET_SSA_2 +1* 568,
__CIL_TMP46 is __CIL_TMP45,
BabelExp_28 is __CIL_TMP46,
babelPtrR(ARC_SSA_2, BabelExp_28, 8),
BabelExp_29 is NET_SSA_2,
babel_ptrE(__CIL_FP_NET, BabelExp_29, 8),
BabelExp_30 is FLEET_SSA_3,
babel_ptrE(__CIL_FP_FLEET, BabelExp_30, 8),
BabelExp_31 is OPERATIONAL_COST_SSA_3,
babel_ptrE(__CIL_FP_OPERATIONAL_COST, BabelExp_31, 8),
babel__implicit_flow_org_costc_5(__CIL_PP_NET, __CIL_PP_FLEET, __CIL_PP_OPERATIONAL_COST, ARC_SSA_2, STOP_SSA_3),
BabelExp_32 is __CIL_FP_NET,
babelPtrR(NET_SSA_3, BabelExp_32, 8),
BabelExp_33 is __CIL_FP_FLEET,
babelPtrR(FLEET_SSA_4, BabelExp_33, 8),
BabelExp_34 is __CIL_FP_OPERATIONAL_COST,
babelPtrR(OPERATIONAL_COST_SSA_4, BabelExp_34, 8),
__CIL_TMP47 is NET_SSA_3 +1* 528,
__CIL_TMP48 is __CIL_TMP47,
BabelExp_35 is __CIL_TMP48,
babelPtrR(__CIL_TMP49, BabelExp_35, 8),
__CIL_TMP50 is __CIL_TMP49,
BabelExp_36 is FLEET_SSA_4 * __CIL_TMP50,
__CIL_TMP51 is BabelExp_36,
BabelExp_37 is __CIL_TMP51 + OPERATIONAL_COST_SSA_4,
__CIL_TMP31 is BabelExp_37,BABEL_RET is __CIL_TMP31, true. 

 :- foreign(babel__implicit_primal_feasiblec_6(+integer, +integer, +integer, +integer, +integer, +integer,  -integer)).

primal_feasible(__CIL_PP_NET, __CIL_PP___CIL_RET12, __CIL_FP_NET, __CIL_FP___CIL_RET12, NET, BABEL_RET) :- 


 __CIL_TMP27 is NET +1* 584,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_38 is __CIL_TMP28,
babelPtrR(DUMMY_SSA_1, BabelExp_38, 8),
__CIL_TMP29 is NET +1* 592,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_39 is __CIL_TMP30,
babelPtrR(STOP_DUMMY_SSA_1, BabelExp_39, 8),
__CIL_TMP31 is NET +1* 552,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_40 is __CIL_TMP32,
babelPtrR(NODE_SSA_1, BabelExp_40, 8),
__CIL_TMP33 is NET +1* 560,
__CIL_TMP34 is __CIL_TMP33,
BabelExp_41 is __CIL_TMP34,
babelPtrR(__CIL_TMP35, BabelExp_41, 8),
STOP_SSA_1 is __CIL_TMP35,
NODE_SSA_2 is NODE_SSA_1 +104* 1,
BabelExp_42 is NET,
babel_ptrE(__CIL_FP_NET, BabelExp_42, 8),
__CIL_RET12 is 1,
BabelExp_43 is __CIL_RET12,
babel_ptrE(__CIL_FP___CIL_RET12, BabelExp_43, 8),
babel__implicit_primal_feasiblec_6(__CIL_PP_NET, __CIL_PP___CIL_RET12, STOP_SSA_1, NODE_SSA_2, DUMMY_SSA_1, STOP_DUMMY_SSA_1 , RETFLAG13_SSA_1),
BabelExp_44 is __CIL_FP_NET,
babelPtrR(NET_SSA_1, BabelExp_44, 8),
BabelExp_45 is __CIL_FP___CIL_RET12,
babelPtrR(__CIL_RET12_SSA_1, BabelExp_45, 8),
(RETFLAG13_SSA_1 \= 0 ,
BABEL_RET is __CIL_RET12_SSA_1, true
; __CIL_TMP36 is NET_SSA_1 +1* 488,
__CIL_TMP37 is __CIL_TMP36,
BabelExp_46 is 1,
babel_ptrE(__CIL_TMP37, BabelExp_46, 8),BABEL_RET is 0, true). 

 :- foreign(babel__implicit_dual_feasiblec_7(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_dual_feasiblec_8(+integer, +integer)).
:- foreign(babel__implicit_dual_feasiblec_9(+integer, +integer)).

dual_feasible(__CIL_PP_STDERR, __CIL_PP_COND, __CIL_GP_STDERR, __CIL_FP_COND, NET, BABEL_RET) :- 


 __CIL_TMP15 is NET +1* 576,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_47 is __CIL_TMP16,
babelPtrR(STOP_SSA_1, BabelExp_47, 8),
COND_SSA_1 is 0,
__CIL_TMP17 is NET +1* 568,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_48 is __CIL_TMP18,
babelPtrR(ARC_SSA_1, BabelExp_48, 8),
BabelExp_49 is COND_SSA_1,
babel_ptrE(__CIL_FP_COND, BabelExp_49, 4),
babel__implicit_dual_feasiblec_7(__CIL_PP_STDERR, __CIL_PP_COND, NET, ARC_SSA_1, STOP_SSA_1),
BabelExp_50 is __CIL_FP_COND,
babelPtrR(COND_SSA_2, BabelExp_50, 4),

(COND_SSA_2 =:= 1 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ,
BabelExp_51 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP19, BabelExp_51, 8),
babel__implicit_dual_feasiblec_8(__CIL_TMP19, 'DUAL NETWORK SIMPLEX: '),
BabelExp_52 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP20, BabelExp_52, 8),
babel__implicit_dual_feasiblec_9(__CIL_TMP20, 'BASIS DUAL INFEASIBLE\\N'),BABEL_RET is 1, true
; BABEL_RET is 0, true). 

 :- foreign(babel__implicit_getfreec_10(+integer)).
:- foreign(babel__implicit_getfreec_11(+integer)).
:- foreign(babel__implicit_getfreec_12(+integer)).

getfree(NET, BABEL_RET) :- 


 __CIL_TMP11 is NET +1* 552,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_53 is __CIL_TMP12,
babelPtrR(__CIL_TMP8, BabelExp_53, 8),
(__CIL_TMP8 \= 0 ,
__CIL_TMP13 is NET +1* 552,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_54 is __CIL_TMP14,
babelPtrR(__CIL_TMP15, BabelExp_54, 8),
babel__implicit_getfreec_10(__CIL_TMP15)
; true),
__CIL_TMP16 is NET +1* 568,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_55 is __CIL_TMP17,
babelPtrR(__CIL_TMP9, BabelExp_55, 8),
(__CIL_TMP9 \= 0 ,
__CIL_TMP18 is NET +1* 568,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_56 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_56, 8),
babel__implicit_getfreec_11(__CIL_TMP20)
; true),
__CIL_TMP21 is NET +1* 584,
__CIL_TMP22 is __CIL_TMP21,
BabelExp_57 is __CIL_TMP22,
babelPtrR(__CIL_TMP10, BabelExp_57, 8),
(__CIL_TMP10 \= 0 ,
__CIL_TMP23 is NET +1* 584,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_58 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_58, 8),
babel__implicit_getfreec_12(__CIL_TMP25)
; true),
TMP_SSA_1 is 0,
__CIL_TMP26 is NET +1* 560,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_59 is TMP_SSA_1,
babel_ptrE(__CIL_TMP27, BabelExp_59, 8),
__CIL_TMP28 is NET +1* 552,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_60 is TMP_SSA_1,
babel_ptrE(__CIL_TMP29, BabelExp_60, 8),
TMP___0_SSA_1 is 0,
__CIL_TMP30 is NET +1* 576,
__CIL_TMP31 is __CIL_TMP30,
BabelExp_61 is TMP___0_SSA_1,
babel_ptrE(__CIL_TMP31, BabelExp_61, 8),
__CIL_TMP32 is NET +1* 568,
__CIL_TMP33 is __CIL_TMP32,
BabelExp_62 is TMP___0_SSA_1,
babel_ptrE(__CIL_TMP33, BabelExp_62, 8),
TMP___1_SSA_1 is 0,
__CIL_TMP34 is NET +1* 592,
__CIL_TMP35 is __CIL_TMP34,
BabelExp_63 is TMP___1_SSA_1,
babel_ptrE(__CIL_TMP35, BabelExp_63, 8),
__CIL_TMP36 is NET +1* 584,
__CIL_TMP37 is __CIL_TMP36,
BabelExp_64 is TMP___1_SSA_1,
babel_ptrE(__CIL_TMP37, BabelExp_64, 8),BABEL_RET is 0, true. 

 
refresh_potential_cil_lr_1_cil_lr_1(__CIL_AP_TMP, __CIL_AP_ROOT, __CIL_AP_CHECKSUM, NODE, VOID) :- 


 (NODE \= 0 ,
__CIL_TMP7 is NODE +1* 8,
__CIL_TMP8 is __CIL_TMP7,
BabelExp_65 is __CIL_TMP8,
babelPtrR(__CIL_TMP9, BabelExp_65, 4),

(__CIL_TMP9 =:= 1 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ,
__CIL_TMP10 is NODE +1* 48,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_66 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_66, 8),
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is NODE +1* 24,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_67 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_67, 8),
__CIL_TMP17 is __CIL_TMP16,
BabelExp_68 is __CIL_TMP13,
babelPtrR(__CIL_TMP18, BabelExp_68, 8),
BabelExp_69 is __CIL_TMP17,
babelPtrR(__CIL_TMP19, BabelExp_69, 8),
MEM_35 is NODE,
BabelExp_70 is __CIL_TMP18 + __CIL_TMP19,
babel_ptrE(MEM_35, BabelExp_70, 8)
; __CIL_TMP20 is NODE +1* 24,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_71 is __CIL_TMP21,
babelPtrR(__CIL_TMP22, BabelExp_71, 8),
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is NODE +1* 48,
__CIL_TMP25 is __CIL_TMP24,
BabelExp_72 is __CIL_TMP25,
babelPtrR(__CIL_TMP26, BabelExp_72, 8),
__CIL_TMP27 is __CIL_TMP26,
BabelExp_73 is __CIL_TMP23,
babelPtrR(__CIL_TMP28, BabelExp_73, 8),
BabelExp_74 is __CIL_TMP27,
babelPtrR(__CIL_TMP29, BabelExp_74, 8),
MEM_36 is NODE,
BabelExp_75 is __CIL_TMP28 - __CIL_TMP29,
babel_ptrE(MEM_36, BabelExp_75, 8),
BabelExp_76 is __CIL_AP_CHECKSUM,
babelPtrR(__CIL_TMP30, BabelExp_76, 8),
BabelExp_77 is __CIL_TMP30 + 1,
babel_ptrE(__CIL_AP_CHECKSUM, BabelExp_77, 8)),
BabelExp_78 is NODE,
babel_ptrE(__CIL_AP_TMP, BabelExp_78, 8),
__CIL_TMP31 is NODE +1* 16,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_79 is __CIL_TMP32,
babelPtrR(NODE_SSA_1, BabelExp_79, 8),
refresh_potential_cil_lr_1_cil_lr_1(__CIL_AP_TMP, __CIL_AP_ROOT, __CIL_AP_CHECKSUM, NODE_SSA_1, VOID),true
; true). 

 
refresh_potential_cil_lr_1_cil_lr_2(__CIL_AP_NODE, __CIL_AP_TMP, __CIL_AP_ROOT, VOID) :- 


 BabelExp_80 is __CIL_AP_NODE,
babelPtrR(__CIL_TMP6, BabelExp_80, 8),
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7 +1* 24,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_81 is __CIL_TMP9,
babelPtrR(__CIL_TMP4, BabelExp_81, 8),
(__CIL_TMP4 \= 0 ,
BabelExp_82 is __CIL_AP_NODE,
babelPtrR(__CIL_TMP10, BabelExp_82, 8),
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP11 +1* 32,
__CIL_TMP13 is __CIL_TMP12,
babelPtrR(BabelExp_83, __CIL_TMP13, 8),
babel_ptrE(__CIL_AP_TMP, BabelExp_83, 8),
BabelExp_84 is __CIL_AP_TMP,
babelPtrR(__CIL_TMP5, BabelExp_84, 8),
(__CIL_TMP5 \= 0 ,
babelPtrR(BabelExp_85, __CIL_AP_TMP, 8),
babel_ptrE(__CIL_AP_NODE, BabelExp_85, 8),true
; BabelExp_86 is __CIL_AP_NODE,
babelPtrR(__CIL_TMP14, BabelExp_86, 8),
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_TMP15 +1* 24,
__CIL_TMP17 is __CIL_TMP16,
babelPtrR(BabelExp_87, __CIL_TMP17, 8),
babel_ptrE(__CIL_AP_NODE, BabelExp_87, 8),
refresh_potential_cil_lr_1_cil_lr_2(__CIL_AP_NODE, __CIL_AP_TMP, __CIL_AP_ROOT, VOID),true)
; true). 

 
flow_org_cost_cil_lr_1(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, ARC, STOP, VOID) :- 


 (ARC \= STOP ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
__CIL_TMP9 is ARC +1* 24,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_88 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_88, 4),

(__CIL_TMP11 =:= 2 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
__CIL_TMP12 is ARC +1* 48,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_89 is 1,
babel_ptrE(__CIL_TMP13, BabelExp_89, 8)
; __CIL_TMP14 is ARC +1* 48,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_90 is 0,
babel_ptrE(__CIL_TMP15, BabelExp_90, 8)),
ARC_SSA_1 is ARC +64* 1,
flow_org_cost_cil_lr_1(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, ARC_SSA_1, STOP, VOID),true
; true),
ARC_SSA_1 is ARC +64* 1,
flow_org_cost_cil_lr_1(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, ARC_SSA_1, STOP, VOID),true. 

 
flow_org_cost_cil_lr_2(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, NODE, STOP, VOID) :- 


 (NODE \= STOP ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
__CIL_TMP8 is NODE +1* 80,
__CIL_TMP9 is __CIL_TMP8,
__CIL_TMP10 is NODE +1* 48,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_91 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_91, 8),
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13 +1* 48,
__CIL_TMP15 is __CIL_TMP14,
babelPtrR(BabelExp_92, __CIL_TMP9, 8),
babel_ptrE(__CIL_TMP15, BabelExp_92, 8),
NODE_SSA_1 is NODE +104* 1,
flow_org_cost_cil_lr_2(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, NODE_SSA_1, STOP, VOID),true
; true). 

 
flow_org_cost_cil_lr_3(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, ARC, STOP, VOID) :- 


 (ARC \= STOP ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
__CIL_TMP13 is ARC +1* 48,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_93 is __CIL_TMP14,
babelPtrR(__CIL_TMP8, BabelExp_93, 8),
(__CIL_TMP8 \= 0 ,
__CIL_TMP15 is ARC +1* 8,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_94 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_94, 8),
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18 +1* 96,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_95 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_95, 4),

(__CIL_TMP21 >= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ,
__CIL_TMP22 is ARC +1* 8,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_96 is __CIL_TMP23,
babelPtrR(__CIL_TMP24, BabelExp_96, 8),
__CIL_TMP25 is __CIL_TMP24,
__CIL_TMP26 is __CIL_TMP25 +1* 96,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_97 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_97, 4),

(__CIL_TMP28 =:= 0 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ,
__CIL_TMP29 is ARC +1* 56,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_98 is __CIL_AP_NET,
babelPtrR(__CIL_TMP31, BabelExp_98, 8),
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32 +1* 528,
__CIL_TMP34 is __CIL_TMP33,
BabelExp_99 is __CIL_TMP30,
babelPtrR(__CIL_TMP35, BabelExp_99, 8),
BabelExp_100 is __CIL_TMP34,
babelPtrR(__CIL_TMP36, BabelExp_100, 8),
BabelExp_101 is __CIL_AP_OPERATIONAL_COST,
babelPtrR(__CIL_TMP37, BabelExp_101, 8),
BabelExp_102 is __CIL_TMP35 - __CIL_TMP36,
__CIL_TMP38 is BabelExp_102,
BabelExp_103 is __CIL_TMP37 + __CIL_TMP38,
babel_ptrE(__CIL_AP_OPERATIONAL_COST, BabelExp_103, 8),
BabelExp_104 is __CIL_AP_FLEET,
babelPtrR(__CIL_TMP39, BabelExp_104, 8),
BabelExp_105 is __CIL_TMP39 + 1,
babel_ptrE(__CIL_AP_FLEET, BabelExp_105, 8)
; __CIL_TMP40 is ARC +1* 56,
__CIL_TMP41 is __CIL_TMP40,
BabelExp_106 is __CIL_AP_OPERATIONAL_COST,
babelPtrR(__CIL_TMP42, BabelExp_106, 8),
BabelExp_107 is __CIL_TMP41,
babelPtrR(__CIL_TMP43, BabelExp_107, 8),
BabelExp_108 is __CIL_TMP42 + __CIL_TMP43,
babel_ptrE(__CIL_AP_OPERATIONAL_COST, BabelExp_108, 8))
; __CIL_TMP44 is ARC +1* 16,
__CIL_TMP45 is __CIL_TMP44,
BabelExp_109 is __CIL_TMP45,
babelPtrR(__CIL_TMP46, BabelExp_109, 8),
__CIL_TMP47 is __CIL_TMP46,
__CIL_TMP48 is __CIL_TMP47 +1* 96,
__CIL_TMP49 is __CIL_TMP48,
BabelExp_110 is __CIL_TMP49,
babelPtrR(__CIL_TMP50, BabelExp_110, 4),

(__CIL_TMP50 =< 0 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ,
__CIL_TMP51 is ARC +1* 8,
__CIL_TMP52 is __CIL_TMP51,
BabelExp_111 is __CIL_TMP52,
babelPtrR(__CIL_TMP53, BabelExp_111, 8),
__CIL_TMP54 is __CIL_TMP53,
__CIL_TMP55 is __CIL_TMP54 +1* 96,
__CIL_TMP56 is __CIL_TMP55,
BabelExp_112 is __CIL_TMP56,
babelPtrR(__CIL_TMP57, BabelExp_112, 4),

(__CIL_TMP57 =:= 0 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ,
__CIL_TMP58 is ARC +1* 56,
__CIL_TMP59 is __CIL_TMP58,
BabelExp_113 is __CIL_AP_NET,
babelPtrR(__CIL_TMP60, BabelExp_113, 8),
__CIL_TMP61 is __CIL_TMP60,
__CIL_TMP62 is __CIL_TMP61 +1* 528,
__CIL_TMP63 is __CIL_TMP62,
BabelExp_114 is __CIL_TMP59,
babelPtrR(__CIL_TMP64, BabelExp_114, 8),
BabelExp_115 is __CIL_TMP63,
babelPtrR(__CIL_TMP65, BabelExp_115, 8),
BabelExp_116 is __CIL_AP_OPERATIONAL_COST,
babelPtrR(__CIL_TMP66, BabelExp_116, 8),
BabelExp_117 is __CIL_TMP64 - __CIL_TMP65,
__CIL_TMP67 is BabelExp_117,
BabelExp_118 is __CIL_TMP66 + __CIL_TMP67,
babel_ptrE(__CIL_AP_OPERATIONAL_COST, BabelExp_118, 8),
BabelExp_119 is __CIL_AP_FLEET,
babelPtrR(__CIL_TMP68, BabelExp_119, 8),
BabelExp_120 is __CIL_TMP68 + 1,
babel_ptrE(__CIL_AP_FLEET, BabelExp_120, 8)
; __CIL_TMP69 is ARC +1* 56,
__CIL_TMP70 is __CIL_TMP69,
BabelExp_121 is __CIL_AP_OPERATIONAL_COST,
babelPtrR(__CIL_TMP71, BabelExp_121, 8),
BabelExp_122 is __CIL_TMP70,
babelPtrR(__CIL_TMP72, BabelExp_122, 8),
BabelExp_123 is __CIL_TMP71 + __CIL_TMP72,
babel_ptrE(__CIL_AP_OPERATIONAL_COST, BabelExp_123, 8))
; true))
; true),
ARC_SSA_1 is ARC +64* 1,
flow_org_cost_cil_lr_3(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, ARC_SSA_1, STOP, VOID),true
; true),
ARC_SSA_1 is ARC +64* 1,
flow_org_cost_cil_lr_3(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, ARC_SSA_1, STOP, VOID),true. 

 :- foreign(babel__implicit_refresh_potential_cil_lr_1c_20(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_refresh_potential_cil_lr_1c_21(+integer, +integer, +integer)).
:- foreign(babel__implicit_refresh_potential_cil_lr_1c_22(+integer, +integer, +integer, +integer)).

refresh_potential_cil_lr_1(__CIL_PP_TMP, __CIL_PP_ROOT, __CIL_PP_NODE, __CIL_FP_TMP, __CIL_FP_ROOT, __CIL_FP_NODE, __CIL_AP_CHECKSUM, NODE, TMP, ROOT, VOID) :- 


 (NODE \= ROOT ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ,
BabelExp_124 is TMP,
babel_ptrE(__CIL_FP_TMP, BabelExp_124, 8),
BabelExp_125 is ROOT,
babel_ptrE(__CIL_FP_ROOT, BabelExp_125, 8),
babel__implicit_refresh_potential_cil_lr_1c_20(__CIL_PP_TMP, __CIL_PP_ROOT, __CIL_AP_CHECKSUM, NODE),
BabelExp_126 is __CIL_FP_TMP,
babelPtrR(TMP_SSA_1, BabelExp_126, 8),
BabelExp_127 is __CIL_FP_ROOT,
babelPtrR(ROOT_SSA_1, BabelExp_127, 8),
NODE_SSA_1 is TMP_SSA_1,
BabelExp_128 is NODE_SSA_1,
babel_ptrE(__CIL_FP_NODE, BabelExp_128, 8),
BabelExp_129 is TMP_SSA_1,
babel_ptrE(__CIL_FP_TMP, BabelExp_129, 8),
BabelExp_130 is ROOT_SSA_1,
babel_ptrE(__CIL_FP_ROOT, BabelExp_130, 8),
babel__implicit_refresh_potential_cil_lr_1c_21(__CIL_PP_NODE, __CIL_PP_TMP, __CIL_PP_ROOT),
BabelExp_131 is __CIL_FP_NODE,
babelPtrR(NODE_SSA_2, BabelExp_131, 8),
BabelExp_132 is __CIL_FP_TMP,
babelPtrR(TMP_SSA_2, BabelExp_132, 8),
BabelExp_133 is __CIL_FP_ROOT,
babelPtrR(ROOT_SSA_2, BabelExp_133, 8),
refresh_potential_cil_lr_1(__CIL_PP_TMP, __CIL_PP_ROOT, __CIL_PP_NODE, __CIL_FP_TMP, __CIL_FP_ROOT, __CIL_FP_NODE, __CIL_AP_CHECKSUM, NODE_SSA_2, TMP_SSA_2, ROOT_SSA_2, VOID),true
; true). 

 
refresh_neighbour_lists_cil_lr_1(__CIL_AP_NET, NODE, STOP, VOID) :- 


 (NODE < STOP ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ,
__CIL_TMP6 is NODE +1* 64,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_134 is 0,
babel_ptrE(__CIL_TMP7, BabelExp_134, 8),
__CIL_TMP8 is NODE +1* 56,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_135 is 0,
babel_ptrE(__CIL_TMP9, BabelExp_135, 8),
NODE_SSA_1 is NODE +104* 1,
refresh_neighbour_lists_cil_lr_1(__CIL_AP_NET, NODE_SSA_1, STOP, VOID),true
; true). 

 
refresh_neighbour_lists_cil_lr_2(ARC, STOP, VOID) :- 


 (ARC < STOP ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ,
__CIL_TMP5 is ARC +1* 8,
__CIL_TMP6 is __CIL_TMP5,
BabelExp_136 is __CIL_TMP6,
babelPtrR(__CIL_TMP7, BabelExp_136, 8),
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is __CIL_TMP8 +1* 56,
__CIL_TMP10 is __CIL_TMP9,
__CIL_TMP11 is ARC +1* 32,
__CIL_TMP12 is __CIL_TMP11,
babelPtrR(BabelExp_137, __CIL_TMP10, 8),
babel_ptrE(__CIL_TMP12, BabelExp_137, 8),
__CIL_TMP13 is ARC +1* 8,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_138 is __CIL_TMP14,
babelPtrR(__CIL_TMP15, BabelExp_138, 8),
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16 +1* 56,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_139 is ARC,
babel_ptrE(__CIL_TMP18, BabelExp_139, 8),
__CIL_TMP19 is ARC +1* 16,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_140 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_140, 8),
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22 +1* 64,
__CIL_TMP24 is __CIL_TMP23,
__CIL_TMP25 is ARC +1* 40,
__CIL_TMP26 is __CIL_TMP25,
babelPtrR(BabelExp_141, __CIL_TMP24, 8),
babel_ptrE(__CIL_TMP26, BabelExp_141, 8),
__CIL_TMP27 is ARC +1* 16,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_142 is __CIL_TMP28,
babelPtrR(__CIL_TMP29, BabelExp_142, 8),
__CIL_TMP30 is __CIL_TMP29,
__CIL_TMP31 is __CIL_TMP30 +1* 64,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_143 is ARC,
babel_ptrE(__CIL_TMP32, BabelExp_143, 8),
ARC_SSA_1 is ARC +64* 1,
refresh_neighbour_lists_cil_lr_2(ARC_SSA_1, STOP, VOID),true
; true). 

 
