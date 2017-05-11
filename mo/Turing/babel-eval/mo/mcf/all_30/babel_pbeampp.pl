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
:- foreign(babel__implicit_sort_basketc_0(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_sort_basketc_1(+integer, +integer)).
:- foreign(babel__implicit_sort_basketc_2(+integer, +integer)).

sort_basket(__CIL_PP_MIN, __CIL_PP_MAX, __CIL_PP_L, __CIL_PP_R, __CIL_FP_MIN, __CIL_FP_MAX, __CIL_FP_L, __CIL_FP_R, MIN, MAX, PERM, VOID) :- 


L_SSA_1 is MIN,
R_SSA_1 is MAX,
BabelExp_0 is L_SSA_1 + R_SSA_1,
__CIL_TMP25 is BabelExp_0,
BabelExp_1 is __CIL_TMP25 // 2,
__CIL_TMP26 is BabelExp_1,
__CIL_TMP27 is PERM +8* __CIL_TMP26,
BabelExp_2 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_2, 8),
__CIL_TMP29 is __CIL_TMP28,
__CIL_TMP30 is __CIL_TMP29 +1* 16,
__CIL_TMP31 is __CIL_TMP30,
BabelExp_3 is __CIL_TMP31,
babelPtrR(CUT_SSA_1, BabelExp_3, 8),
BabelExp_4 is MIN,
babel_ptrE(__CIL_FP_MIN, BabelExp_4, 8),
BabelExp_5 is MAX,
babel_ptrE(__CIL_FP_MAX, BabelExp_5, 8),
BabelExp_6 is L_SSA_1,
babel_ptrE(__CIL_FP_L, BabelExp_6, 8),
BabelExp_7 is R_SSA_1,
babel_ptrE(__CIL_FP_R, BabelExp_7, 8),
babel__implicit_sort_basketc_0(__CIL_PP_MIN, __CIL_PP_MAX, __CIL_PP_L, __CIL_PP_R, CUT_SSA_1),
BabelExp_8 is __CIL_FP_MIN,
babelPtrR(MIN_SSA_1, BabelExp_8, 8),
BabelExp_9 is __CIL_FP_MAX,
babelPtrR(MAX_SSA_1, BabelExp_9, 8),
BabelExp_10 is __CIL_FP_L,
babelPtrR(L_SSA_2, BabelExp_10, 8),
BabelExp_11 is __CIL_FP_R,
babelPtrR(R_SSA_2, BabelExp_11, 8),

(MIN_SSA_1 < R_SSA_2 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ,
babel__implicit_sort_basketc_1(MIN_SSA_1, R_SSA_2)
; true),

(L_SSA_2 < MAX_SSA_1 ,
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ,
(L_SSA_2 =< 50 ,
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ,
babel__implicit_sort_basketc_2(L_SSA_2, MAX_SSA_1)
; true)
; true),
true. 

 :- foreign(babel__implicit_primal_bea_mppc_3(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_primal_bea_mppc_4(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_primal_bea_mppc_5(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_primal_bea_mppc_6(+integer, +integer)).

primal_bea_mpp(__CIL_PP_M, __CIL_PP_ARCS, __CIL_PP_STOP_ARCS, __CIL_PP_RED_COST_OF_BEA, __CIL_PP_NR_GROUP, __CIL_PP_GROUP_POS, __CIL_PP_NEXT, __CIL_PP_BASKET_SIZE, __CIL_GP_INITIALIZE, __CIL_GP_NR_GROUP, __CIL_GP_GROUP_POS, __CIL_GP_BASKET_SIZE, __CIL_FP_M, __CIL_FP_ARCS, __CIL_FP_STOP_ARCS, __CIL_FP_RED_COST_OF_BEA, __CIL_FP_NEXT, M, ARCS, STOP_ARCS, RED_COST_OF_BEA, PERM, BABEL_RET) :- 


 COND_SSA_1 is 0,
BabelExp_12 is __CIL_GP_INITIALIZE,
babelPtrR(__CIL_TMP44, BabelExp_12, 8),
(__CIL_TMP44 \= 0 ,
I_SSA_1 is 1,
BabelExp_13 is M,
babel_ptrE(__CIL_FP_M, BabelExp_13, 8),
BabelExp_14 is ARCS,
babel_ptrE(__CIL_FP_ARCS, BabelExp_14, 8),
BabelExp_15 is STOP_ARCS,
babel_ptrE(__CIL_FP_STOP_ARCS, BabelExp_15, 8),
BabelExp_16 is RED_COST_OF_BEA,
babel_ptrE(__CIL_FP_RED_COST_OF_BEA, BabelExp_16, 8),
babel__implicit_primal_bea_mppc_3(__CIL_PP_M, __CIL_PP_ARCS, __CIL_PP_STOP_ARCS, __CIL_PP_RED_COST_OF_BEA, I_SSA_1),
BabelExp_17 is __CIL_FP_M,
babelPtrR(M_SSA_1, BabelExp_17, 8),
BabelExp_18 is __CIL_FP_ARCS,
babelPtrR(ARCS_SSA_1, BabelExp_18, 8),
BabelExp_19 is __CIL_FP_STOP_ARCS,
babelPtrR(STOP_ARCS_SSA_1, BabelExp_19, 8),
BabelExp_20 is __CIL_FP_RED_COST_OF_BEA,
babelPtrR(RED_COST_OF_BEA_SSA_1, BabelExp_20, 8),
BabelExp_21 is M_SSA_1 - 1,
__CIL_TMP49 is BabelExp_21,
BabelExp_22 is __CIL_TMP49 // 300,
__CIL_TMP50 is BabelExp_22,
BabelExp_23 is __CIL_TMP50 + 1,
babel_ptrE(__CIL_GP_NR_GROUP, BabelExp_23, 8),
BabelExp_24 is 0,
babel_ptrE(__CIL_GP_GROUP_POS, BabelExp_24, 8),
BabelExp_25 is 0,
babel_ptrE(__CIL_GP_BASKET_SIZE, BabelExp_25, 8),
BabelExp_26 is 0,
babel_ptrE(__CIL_GP_INITIALIZE, BabelExp_26, 8)
; I_SSA_1 is 2,

(I_SSA_1 =< 50 ,
__CIL_TMP45 is 1
; __CIL_TMP45 is 0),

(__CIL_TMP45 \= 0 ,
BabelExp_27 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP51, BabelExp_27, 8),

(I_SSA_1 =< __CIL_TMP51 ,
__CIL_TMP46 is 1
; __CIL_TMP46 is 0),

(__CIL_TMP46 \= 0 ,
TMP_SSA_1 is 1
; TMP_SSA_1 is 0)
; TMP_SSA_1 is 0),
COND_SSA_2 is TMP_SSA_1,
NEXT_SSA_1 is 0,
BabelExp_28 is ARCS,
babel_ptrE(__CIL_FP_ARCS, BabelExp_28, 8),
BabelExp_29 is STOP_ARCS,
babel_ptrE(__CIL_FP_STOP_ARCS, BabelExp_29, 8),
BabelExp_30 is RED_COST_OF_BEA,
babel_ptrE(__CIL_FP_RED_COST_OF_BEA, BabelExp_30, 8),
BabelExp_31 is NEXT_SSA_1,
babel_ptrE(__CIL_FP_NEXT, BabelExp_31, 8),
babel__implicit_primal_bea_mppc_4(__CIL_PP_NR_GROUP, __CIL_PP_GROUP_POS, __CIL_PP_ARCS, __CIL_PP_STOP_ARCS, __CIL_PP_RED_COST_OF_BEA, __CIL_PP_NEXT, I_SSA_1, COND_SSA_2),
BabelExp_32 is __CIL_FP_ARCS,
babelPtrR(ARCS_SSA_1, BabelExp_32, 8),
BabelExp_33 is __CIL_FP_STOP_ARCS,
babelPtrR(STOP_ARCS_SSA_1, BabelExp_33, 8),
BabelExp_34 is __CIL_FP_RED_COST_OF_BEA,
babelPtrR(RED_COST_OF_BEA_SSA_1, BabelExp_34, 8),
BabelExp_35 is __CIL_FP_NEXT,
babelPtrR(NEXT_SSA_2, BabelExp_35, 8),
BabelExp_36 is NEXT_SSA_2,
babel_ptrE(__CIL_GP_BASKET_SIZE, BabelExp_36, 8)),
BabelExp_37 is __CIL_GP_GROUP_POS,
babelPtrR(OLD_GROUP_POS_SSA_1, BabelExp_37, 8),
BabelExp_38 is RED_COST_OF_BEA_SSA_1,
babel_ptrE(__CIL_FP_RED_COST_OF_BEA, BabelExp_38, 8),
babel__implicit_primal_bea_mppc_5(__CIL_PP_BASKET_SIZE, __CIL_PP_RED_COST_OF_BEA, ARCS_SSA_1, STOP_ARCS_SSA_1, OLD_GROUP_POS_SSA_1),
BabelExp_39 is __CIL_FP_RED_COST_OF_BEA,
babelPtrR(RED_COST_OF_BEA_SSA_2, BabelExp_39, 8),
BabelExp_40 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP52, BabelExp_40, 8),

(__CIL_TMP52 =:= 0 ,
__CIL_TMP47 is 1
; __CIL_TMP47 is 0),

(__CIL_TMP47 \= 0 ,
BabelExp_41 is 1,
babel_ptrE(__CIL_GP_INITIALIZE, BabelExp_41, 8),
BabelExp_42 is 0,
babel_ptrE(RED_COST_OF_BEA_SSA_2, BabelExp_42, 8),BABEL_RET is 0, true
; BabelExp_43 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP53, BabelExp_43, 8),
babel__implicit_primal_bea_mppc_6(1, __CIL_TMP53),
__CIL_TMP54 is PERM +8* 1,
BabelExp_44 is __CIL_TMP54,
babelPtrR(__CIL_TMP55, BabelExp_44, 8),
__CIL_TMP56 is __CIL_TMP55,
__CIL_TMP57 is __CIL_TMP56 +1* 8,
__CIL_TMP58 is __CIL_TMP57,
babelPtrR(BabelExp_45, __CIL_TMP58, 8),
babel_ptrE(RED_COST_OF_BEA_SSA_2, BabelExp_45, 8),
__CIL_TMP59 is PERM +8* 1,
BabelExp_46 is __CIL_TMP59,
babelPtrR(__CIL_TMP60, BabelExp_46, 8),
__CIL_TMP61 is __CIL_TMP60,
BabelExp_47 is __CIL_TMP61,
babelPtrR(__CIL_TMP48, BabelExp_47, 8),BABEL_RET is __CIL_TMP48, true). 

 :- foreign(babel__implicit_primal_bea_mpp_cil_lr_3_cil_lr_1c_7(+integer, +integer,  -integer)).
:- foreign(babel__implicit_primal_bea_mpp_cil_lr_3_cil_lr_1c_8(+integer, +integer, +integer, +integer, +integer, +integer, +integer)).

primal_bea_mpp_cil_lr_3_cil_lr_1(__CIL_GP_BASKET_SIZE, __CIL_GP_NR_GROUP, __CIL_AP_BASKET_SIZE, __CIL_AP_NR_GROUP, __CIL_AP_GROUP_POS, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_OLD_GROUP_POS, ARC, PERM, VOID) :- 

BabelExp_48 is __CIL_AP_STOP_ARCS,
babelPtrR(__CIL_TMP18, BabelExp_48, 8),
__CIL_TMP19 is __CIL_TMP18,

(ARC < __CIL_TMP19 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ,
__CIL_TMP20 is ARC +1* 24,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_49 is __CIL_TMP21,
babelPtrR(__CIL_TMP22, BabelExp_49, 4),

(__CIL_TMP22 > 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ,
__CIL_TMP23 is ARC +1* 8,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_50 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_50, 8),
__CIL_TMP26 is __CIL_TMP25,
MEM_58 is ARC,
BabelExp_51 is MEM_58,
babelPtrR(__CIL_TMP27, BabelExp_51, 8),
BabelExp_52 is __CIL_TMP26,
babelPtrR(__CIL_TMP28, BabelExp_52, 8),
__CIL_TMP29 is ARC +1* 16,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_53 is __CIL_TMP30,
babelPtrR(__CIL_TMP31, BabelExp_53, 8),
__CIL_TMP32 is __CIL_TMP31,
BabelExp_54 is __CIL_TMP27 - __CIL_TMP28,
__CIL_TMP33 is BabelExp_54,
BabelExp_55 is __CIL_TMP32,
babelPtrR(__CIL_TMP34, BabelExp_55, 8),
BabelExp_56 is __CIL_TMP33 + __CIL_TMP34,
RED_COST_SSA_1 is BabelExp_56,
babel__implicit_primal_bea_mpp_cil_lr_3_cil_lr_1c_7(ARC, RED_COST_SSA_1 , TMP___1_SSA_1),
(TMP___1_SSA_1 \= 0 ,
BabelExp_57 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP35, BabelExp_57, 8),
BabelExp_58 is __CIL_TMP35 + 1,
babel_ptrE(__CIL_GP_BASKET_SIZE, BabelExp_58, 8),
BabelExp_59 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP36, BabelExp_59, 8),
__CIL_TMP37 is PERM +8* __CIL_TMP36,
BabelExp_60 is __CIL_TMP37,
babelPtrR(__CIL_TMP38, BabelExp_60, 8),
__CIL_TMP39 is __CIL_TMP38,
BabelExp_61 is ARC,
babel_ptrE(__CIL_TMP39, BabelExp_61, 8),
BabelExp_62 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP40, BabelExp_62, 8),
__CIL_TMP41 is PERM +8* __CIL_TMP40,
BabelExp_63 is __CIL_TMP41,
babelPtrR(__CIL_TMP42, BabelExp_63, 8),
__CIL_TMP43 is __CIL_TMP42,
__CIL_TMP44 is __CIL_TMP43 +1* 8,
__CIL_TMP45 is __CIL_TMP44,
BabelExp_64 is RED_COST_SSA_1,
babel_ptrE(__CIL_TMP45, BabelExp_64, 8),

(RED_COST_SSA_1 >= 0 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ,
BabelExp_65 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP46, BabelExp_65, 8),
__CIL_TMP47 is PERM +8* __CIL_TMP46,
BabelExp_66 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_66, 8),
__CIL_TMP49 is __CIL_TMP48,
__CIL_TMP50 is __CIL_TMP49 +1* 16,
__CIL_TMP51 is __CIL_TMP50,
BabelExp_67 is RED_COST_SSA_1,
babel_ptrE(__CIL_TMP51, BabelExp_67, 8)
; BabelExp_68 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP52, BabelExp_68, 8),
__CIL_TMP53 is PERM +8* __CIL_TMP52,
BabelExp_69 is __CIL_TMP53,
babelPtrR(__CIL_TMP54, BabelExp_69, 8),
__CIL_TMP55 is __CIL_TMP54,
__CIL_TMP56 is __CIL_TMP55 +1* 16,
__CIL_TMP57 is __CIL_TMP56,
BabelExp_70 is - RED_COST_SSA_1,
babel_ptrE(__CIL_TMP57, BabelExp_70, 8))
; true)
; true),
BabelExp_71 is __CIL_GP_NR_GROUP,
babelPtrR(__CIL_TMP58, BabelExp_71, 8),
ARC_SSA_1 is ARC +64* __CIL_TMP58,
primal_bea_mpp_cil_lr_3_cil_lr_1(__CIL_GP_BASKET_SIZE, __CIL_GP_NR_GROUP, __CIL_AP_BASKET_SIZE, __CIL_AP_NR_GROUP, __CIL_AP_GROUP_POS, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_OLD_GROUP_POS, ARC_SSA_1, PERM, VOID),true
; true). 

 
sort_basket_cil_lr_1_cil_lr_1(__CIL_AP_CUT, __CIL_AP_L, PERM, VOID) :- 


 BabelExp_72 is __CIL_AP_L,
babelPtrR(__CIL_TMP4, BabelExp_72, 8),
__CIL_TMP5 is PERM +8* __CIL_TMP4,
BabelExp_73 is __CIL_TMP5,
babelPtrR(__CIL_TMP6, BabelExp_73, 8),
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7 +1* 16,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_74 is __CIL_TMP9,
babelPtrR(__CIL_TMP10, BabelExp_74, 8),
BabelExp_75 is __CIL_AP_CUT,
babelPtrR(__CIL_TMP11, BabelExp_75, 8),

(__CIL_TMP10 > __CIL_TMP11 ,
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ,
BabelExp_76 is __CIL_AP_L,
babelPtrR(__CIL_TMP12, BabelExp_76, 8),
BabelExp_77 is __CIL_TMP12 + 1,
babel_ptrE(__CIL_AP_L, BabelExp_77, 8),
sort_basket_cil_lr_1_cil_lr_1(__CIL_AP_CUT, __CIL_AP_L, PERM, VOID),true
; true). 

 
sort_basket_cil_lr_1_cil_lr_2(__CIL_AP_CUT, __CIL_AP_R, PERM, VOID) :- 


 BabelExp_78 is __CIL_AP_R,
babelPtrR(__CIL_TMP4, BabelExp_78, 8),
__CIL_TMP5 is PERM +8* __CIL_TMP4,
BabelExp_79 is __CIL_TMP5,
babelPtrR(__CIL_TMP6, BabelExp_79, 8),
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7 +1* 16,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_80 is __CIL_AP_CUT,
babelPtrR(__CIL_TMP10, BabelExp_80, 8),
BabelExp_81 is __CIL_TMP9,
babelPtrR(__CIL_TMP11, BabelExp_81, 8),

(__CIL_TMP10 > __CIL_TMP11 ,
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ,
BabelExp_82 is __CIL_AP_R,
babelPtrR(__CIL_TMP12, BabelExp_82, 8),
BabelExp_83 is __CIL_TMP12 - 1,
babel_ptrE(__CIL_AP_R, BabelExp_83, 8),
sort_basket_cil_lr_1_cil_lr_2(__CIL_AP_CUT, __CIL_AP_R, PERM, VOID),true
; true). 

 
primal_bea_mpp_cil_lr_1(__CIL_AP_M, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, I, PERM, BASKET, VOID) :- 


 (I < 351 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
__CIL_TMP8 is PERM +8* I,
BabelExp_84 is BASKET +24* I,
babel_ptrE(__CIL_TMP8, BabelExp_84, 8),
BabelExp_85 is I + 1,
I_SSA_1 is BabelExp_85,
primal_bea_mpp_cil_lr_1(__CIL_AP_M, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, I_SSA_1, PERM, BASKET, VOID),true
; true). 

:- foreign(babel__implicit_primal_bea_mpp_cil_lr_2c_12(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).

primal_bea_mpp_cil_lr_2(__CIL_GP_BASKET_SIZE, __CIL_AP_NR_GROUP, __CIL_AP_GROUP_POS, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, __CIL_AP_NEXT, I, COND, PERM, VOID) :- 


 (COND \= 0 ,
__CIL_TMP31 is PERM +8* I,
BabelExp_86 is __CIL_TMP31,
babelPtrR(__CIL_TMP32, BabelExp_86, 8),
__CIL_TMP33 is __CIL_TMP32,
BabelExp_87 is __CIL_TMP33,
babelPtrR(ARC_SSA_1, BabelExp_87, 8),
__CIL_TMP34 is ARC_SSA_1 +1* 8,
__CIL_TMP35 is __CIL_TMP34,
BabelExp_88 is __CIL_TMP35,
babelPtrR(__CIL_TMP36, BabelExp_88, 8),
__CIL_TMP37 is __CIL_TMP36,
MEM_123 is ARC_SSA_1,
BabelExp_89 is MEM_123,
babelPtrR(__CIL_TMP38, BabelExp_89, 8),
BabelExp_90 is __CIL_TMP37,
babelPtrR(__CIL_TMP39, BabelExp_90, 8),
__CIL_TMP40 is ARC_SSA_1 +1* 16,
__CIL_TMP41 is __CIL_TMP40,
BabelExp_91 is __CIL_TMP41,
babelPtrR(__CIL_TMP42, BabelExp_91, 8),
__CIL_TMP43 is __CIL_TMP42,
BabelExp_92 is __CIL_TMP38 - __CIL_TMP39,
__CIL_TMP44 is BabelExp_92,
BabelExp_93 is __CIL_TMP43,
babelPtrR(__CIL_TMP45, BabelExp_93, 8),
BabelExp_94 is __CIL_TMP44 + __CIL_TMP45,
RED_COST_SSA_1 is BabelExp_94,

(RED_COST_SSA_1 < 0 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ,
__CIL_TMP46 is ARC_SSA_1 +1* 24,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_95 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_95, 4),

(__CIL_TMP48 =:= 1 ,
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ,
BabelExp_96 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP49, BabelExp_96, 8),
BabelExp_97 is __CIL_TMP49 + 1,
babel_ptrE(__CIL_AP_NEXT, BabelExp_97, 8),
BabelExp_98 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP50, BabelExp_98, 8),
__CIL_TMP51 is PERM +8* __CIL_TMP50,
BabelExp_99 is __CIL_TMP51,
babelPtrR(__CIL_TMP52, BabelExp_99, 8),
__CIL_TMP53 is __CIL_TMP52,
BabelExp_100 is ARC_SSA_1,
babel_ptrE(__CIL_TMP53, BabelExp_100, 8),
BabelExp_101 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP54, BabelExp_101, 8),
__CIL_TMP55 is PERM +8* __CIL_TMP54,
BabelExp_102 is __CIL_TMP55,
babelPtrR(__CIL_TMP56, BabelExp_102, 8),
__CIL_TMP57 is __CIL_TMP56,
__CIL_TMP58 is __CIL_TMP57 +1* 8,
__CIL_TMP59 is __CIL_TMP58,
BabelExp_103 is RED_COST_SSA_1,
babel_ptrE(__CIL_TMP59, BabelExp_103, 8),

(RED_COST_SSA_1 >= 0 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ,
BabelExp_104 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP60, BabelExp_104, 8),
__CIL_TMP61 is PERM +8* __CIL_TMP60,
BabelExp_105 is __CIL_TMP61,
babelPtrR(__CIL_TMP62, BabelExp_105, 8),
__CIL_TMP63 is __CIL_TMP62,
__CIL_TMP64 is __CIL_TMP63 +1* 16,
__CIL_TMP65 is __CIL_TMP64,
BabelExp_106 is RED_COST_SSA_1,
babel_ptrE(__CIL_TMP65, BabelExp_106, 8)
; BabelExp_107 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP66, BabelExp_107, 8),
__CIL_TMP67 is PERM +8* __CIL_TMP66,
BabelExp_108 is __CIL_TMP67,
babelPtrR(__CIL_TMP68, BabelExp_108, 8),
__CIL_TMP69 is __CIL_TMP68,
__CIL_TMP70 is __CIL_TMP69 +1* 16,
__CIL_TMP71 is __CIL_TMP70,
BabelExp_109 is - RED_COST_SSA_1,
babel_ptrE(__CIL_TMP71, BabelExp_109, 8))
; (RED_COST_SSA_1 > 0 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ,
__CIL_TMP72 is ARC_SSA_1 +1* 24,
__CIL_TMP73 is __CIL_TMP72,
BabelExp_110 is __CIL_TMP73,
babelPtrR(__CIL_TMP74, BabelExp_110, 4),

(__CIL_TMP74 =:= 2 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ,
BabelExp_111 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP75, BabelExp_111, 8),
BabelExp_112 is __CIL_TMP75 + 1,
babel_ptrE(__CIL_AP_NEXT, BabelExp_112, 8),
BabelExp_113 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP76, BabelExp_113, 8),
__CIL_TMP77 is PERM +8* __CIL_TMP76,
BabelExp_114 is __CIL_TMP77,
babelPtrR(__CIL_TMP78, BabelExp_114, 8),
__CIL_TMP79 is __CIL_TMP78,
BabelExp_115 is ARC_SSA_1,
babel_ptrE(__CIL_TMP79, BabelExp_115, 8),
BabelExp_116 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP80, BabelExp_116, 8),
__CIL_TMP81 is PERM +8* __CIL_TMP80,
BabelExp_117 is __CIL_TMP81,
babelPtrR(__CIL_TMP82, BabelExp_117, 8),
__CIL_TMP83 is __CIL_TMP82,
__CIL_TMP84 is __CIL_TMP83 +1* 8,
__CIL_TMP85 is __CIL_TMP84,
BabelExp_118 is RED_COST_SSA_1,
babel_ptrE(__CIL_TMP85, BabelExp_118, 8),

(RED_COST_SSA_1 >= 0 ,
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ,
BabelExp_119 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP86, BabelExp_119, 8),
__CIL_TMP87 is PERM +8* __CIL_TMP86,
BabelExp_120 is __CIL_TMP87,
babelPtrR(__CIL_TMP88, BabelExp_120, 8),
__CIL_TMP89 is __CIL_TMP88,
__CIL_TMP90 is __CIL_TMP89 +1* 16,
__CIL_TMP91 is __CIL_TMP90,
BabelExp_121 is RED_COST_SSA_1,
babel_ptrE(__CIL_TMP91, BabelExp_121, 8)
; BabelExp_122 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP92, BabelExp_122, 8),
__CIL_TMP93 is PERM +8* __CIL_TMP92,
BabelExp_123 is __CIL_TMP93,
babelPtrR(__CIL_TMP94, BabelExp_123, 8),
__CIL_TMP95 is __CIL_TMP94,
__CIL_TMP96 is __CIL_TMP95 +1* 16,
__CIL_TMP97 is __CIL_TMP96,
BabelExp_124 is - RED_COST_SSA_1,
babel_ptrE(__CIL_TMP97, BabelExp_124, 8))
; true)
; true))
; (RED_COST_SSA_1 > 0 ,
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ,
__CIL_TMP98 is ARC_SSA_1 +1* 24,
__CIL_TMP99 is __CIL_TMP98,
BabelExp_125 is __CIL_TMP99,
babelPtrR(__CIL_TMP100, BabelExp_125, 4),

(__CIL_TMP100 =:= 2 ,
__CIL_TMP25 is 1
; __CIL_TMP25 is 0),

(__CIL_TMP25 \= 0 ,
BabelExp_126 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP101, BabelExp_126, 8),
BabelExp_127 is __CIL_TMP101 + 1,
babel_ptrE(__CIL_AP_NEXT, BabelExp_127, 8),
BabelExp_128 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP102, BabelExp_128, 8),
__CIL_TMP103 is PERM +8* __CIL_TMP102,
BabelExp_129 is __CIL_TMP103,
babelPtrR(__CIL_TMP104, BabelExp_129, 8),
__CIL_TMP105 is __CIL_TMP104,
BabelExp_130 is ARC_SSA_1,
babel_ptrE(__CIL_TMP105, BabelExp_130, 8),
BabelExp_131 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP106, BabelExp_131, 8),
__CIL_TMP107 is PERM +8* __CIL_TMP106,
BabelExp_132 is __CIL_TMP107,
babelPtrR(__CIL_TMP108, BabelExp_132, 8),
__CIL_TMP109 is __CIL_TMP108,
__CIL_TMP110 is __CIL_TMP109 +1* 8,
__CIL_TMP111 is __CIL_TMP110,
BabelExp_133 is RED_COST_SSA_1,
babel_ptrE(__CIL_TMP111, BabelExp_133, 8),

(RED_COST_SSA_1 >= 0 ,
__CIL_TMP26 is 1
; __CIL_TMP26 is 0),

(__CIL_TMP26 \= 0 ,
BabelExp_134 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP112, BabelExp_134, 8),
__CIL_TMP113 is PERM +8* __CIL_TMP112,
BabelExp_135 is __CIL_TMP113,
babelPtrR(__CIL_TMP114, BabelExp_135, 8),
__CIL_TMP115 is __CIL_TMP114,
__CIL_TMP116 is __CIL_TMP115 +1* 16,
__CIL_TMP117 is __CIL_TMP116,
BabelExp_136 is RED_COST_SSA_1,
babel_ptrE(__CIL_TMP117, BabelExp_136, 8)
; BabelExp_137 is __CIL_AP_NEXT,
babelPtrR(__CIL_TMP118, BabelExp_137, 8),
__CIL_TMP119 is PERM +8* __CIL_TMP118,
BabelExp_138 is __CIL_TMP119,
babelPtrR(__CIL_TMP120, BabelExp_138, 8),
__CIL_TMP121 is __CIL_TMP120,
__CIL_TMP122 is __CIL_TMP121 +1* 16,
__CIL_TMP123 is __CIL_TMP122,
BabelExp_139 is - RED_COST_SSA_1,
babel_ptrE(__CIL_TMP123, BabelExp_139, 8))
; true)
; true)),
BabelExp_140 is I + 1,
I_SSA_1 is BabelExp_140,

(I_SSA_1 =< 50 ,
__CIL_TMP27 is 1
; __CIL_TMP27 is 0),

(__CIL_TMP27 \= 0 ,
BabelExp_141 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP124, BabelExp_141, 8),

(I_SSA_1 =< __CIL_TMP124 ,
__CIL_TMP28 is 1
; __CIL_TMP28 is 0),

(__CIL_TMP28 \= 0 ,
TMP___0_SSA_1 is 1
; TMP___0_SSA_1 is 0)
; TMP___0_SSA_1 is 0),
COND_SSA_1 is TMP___0_SSA_1,
primal_bea_mpp_cil_lr_2(__CIL_GP_BASKET_SIZE, __CIL_AP_NR_GROUP, __CIL_AP_GROUP_POS, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, __CIL_AP_NEXT, I_SSA_1, COND_SSA_1, PERM, VOID),true
; true). 

:- foreign(babel__implicit_primal_bea_mpp_cil_lr_3c_13(+integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_primal_bea_mpp_cil_lr_3c_14(+integer, +integer, +integer, +integer, +integer)).

primal_bea_mpp_cil_lr_3(__CIL_PP_BASKET_SIZE, __CIL_PP_NR_GROUP, __CIL_PP_GROUP_POS, __CIL_PP_ARCS, __CIL_PP_STOP_ARCS, __CIL_PP_OLD_GROUP_POS, __CIL_GP_GROUP_POS, __CIL_GP_NR_GROUP, __CIL_GP_BASKET_SIZE, __CIL_FP_ARCS, __CIL_FP_STOP_ARCS, __CIL_FP_OLD_GROUP_POS, __CIL_AP_BASKET_SIZE, __CIL_AP_RED_COST_OF_BEA, ARCS, STOP_ARCS, OLD_GROUP_POS, VOID) :- 


 BabelExp_142 is __CIL_GP_GROUP_POS,
babelPtrR(__CIL_TMP32, BabelExp_142, 8),
ARC_SSA_1 is ARCS +64* __CIL_TMP32,
BabelExp_143 is ARCS,
babel_ptrE(__CIL_FP_ARCS, BabelExp_143, 8),
BabelExp_144 is STOP_ARCS,
babel_ptrE(__CIL_FP_STOP_ARCS, BabelExp_144, 8),
BabelExp_145 is OLD_GROUP_POS,
babel_ptrE(__CIL_FP_OLD_GROUP_POS, BabelExp_145, 8),
babel__implicit_primal_bea_mpp_cil_lr_3c_13(__CIL_PP_BASKET_SIZE, __CIL_PP_NR_GROUP, __CIL_PP_GROUP_POS, __CIL_PP_ARCS, __CIL_PP_STOP_ARCS, __CIL_PP_OLD_GROUP_POS, ARC_SSA_1),
BabelExp_146 is __CIL_FP_ARCS,
babelPtrR(ARCS_SSA_1, BabelExp_146, 8),
BabelExp_147 is __CIL_FP_STOP_ARCS,
babelPtrR(STOP_ARCS_SSA_1, BabelExp_147, 8),
BabelExp_148 is __CIL_FP_OLD_GROUP_POS,
babelPtrR(OLD_GROUP_POS_SSA_1, BabelExp_148, 8),
BabelExp_149 is __CIL_GP_GROUP_POS,
babelPtrR(__CIL_TMP33, BabelExp_149, 8),
BabelExp_150 is __CIL_TMP33 + 1,
babel_ptrE(__CIL_GP_GROUP_POS, BabelExp_150, 8),
BabelExp_151 is __CIL_GP_GROUP_POS,
babelPtrR(__CIL_TMP34, BabelExp_151, 8),
BabelExp_152 is __CIL_GP_NR_GROUP,
babelPtrR(__CIL_TMP35, BabelExp_152, 8),

(__CIL_TMP34 =:= __CIL_TMP35 ,
__CIL_TMP29 is 1
; __CIL_TMP29 is 0),

(__CIL_TMP29 \= 0 ,
BabelExp_153 is 0,
babel_ptrE(__CIL_GP_GROUP_POS, BabelExp_153, 8)
; true),
BabelExp_154 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP36, BabelExp_154, 8),

(__CIL_TMP36 < 50 ,
__CIL_TMP30 is 1
; __CIL_TMP30 is 0),

(__CIL_TMP30 \= 0 ,
BabelExp_155 is __CIL_GP_GROUP_POS,
babelPtrR(__CIL_TMP37, BabelExp_155, 8),

(__CIL_TMP37 \= OLD_GROUP_POS_SSA_1 ,
__CIL_TMP31 is 1
; __CIL_TMP31 is 0),

(__CIL_TMP31 \= 0 ,
TMP___2_SSA_1 is 1
; TMP___2_SSA_1 is 0)
; TMP___2_SSA_1 is 0),
COND_SSA_1 is TMP___2_SSA_1,
(COND_SSA_1 \= 0 ,
primal_bea_mpp_cil_lr_3(__CIL_PP_BASKET_SIZE, __CIL_PP_NR_GROUP, __CIL_PP_GROUP_POS, __CIL_PP_ARCS, __CIL_PP_STOP_ARCS, __CIL_PP_OLD_GROUP_POS, __CIL_GP_GROUP_POS, __CIL_GP_NR_GROUP, __CIL_GP_BASKET_SIZE, __CIL_FP_ARCS, __CIL_FP_STOP_ARCS, __CIL_FP_OLD_GROUP_POS, __CIL_AP_BASKET_SIZE, __CIL_AP_RED_COST_OF_BEA, ARCS_SSA_1, STOP_ARCS_SSA_1, OLD_GROUP_POS_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_sort_basket_cil_lr_1c_15(+integer, +integer)).
:- foreign(babel__implicit_sort_basket_cil_lr_1c_16(+integer, +integer)).
:- foreign(babel__implicit_sort_basket_cil_lr_1c_17(+integer, +integer, +integer, +integer, +integer)).

sort_basket_cil_lr_1(__CIL_PP_CUT, __CIL_FP_CUT, __CIL_AP_MIN, __CIL_AP_MAX, __CIL_AP_L, __CIL_AP_R, CUT, PERM, VOID) :- 


 BabelExp_156 is CUT,
babel_ptrE(__CIL_FP_CUT, BabelExp_156, 8),
babel__implicit_sort_basket_cil_lr_1c_15(__CIL_PP_CUT, __CIL_AP_L),
BabelExp_157 is __CIL_FP_CUT,
babelPtrR(CUT_SSA_1, BabelExp_157, 8),
BabelExp_158 is CUT_SSA_1,
babel_ptrE(__CIL_FP_CUT, BabelExp_158, 8),
babel__implicit_sort_basket_cil_lr_1c_16(__CIL_PP_CUT, __CIL_AP_R),
BabelExp_159 is __CIL_FP_CUT,
babelPtrR(CUT_SSA_2, BabelExp_159, 8),
BabelExp_160 is __CIL_AP_L,
babelPtrR(__CIL_TMP15, BabelExp_160, 8),
BabelExp_161 is __CIL_AP_R,
babelPtrR(__CIL_TMP16, BabelExp_161, 8),

(__CIL_TMP15 < __CIL_TMP16 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ,
BabelExp_162 is __CIL_AP_L,
babelPtrR(__CIL_TMP17, BabelExp_162, 8),
__CIL_TMP18 is PERM +8* __CIL_TMP17,
BabelExp_163 is __CIL_TMP18,
babelPtrR(XCHANGE_SSA_1, BabelExp_163, 8),
BabelExp_164 is __CIL_AP_R,
babelPtrR(__CIL_TMP19, BabelExp_164, 8),
__CIL_TMP20 is PERM +8* __CIL_TMP19,
BabelExp_165 is __CIL_AP_L,
babelPtrR(__CIL_TMP21, BabelExp_165, 8),
__CIL_TMP22 is PERM +8* __CIL_TMP21,
babelPtrR(BabelExp_166, __CIL_TMP20, 8),
babel_ptrE(__CIL_TMP22, BabelExp_166, 8),
BabelExp_167 is __CIL_AP_R,
babelPtrR(__CIL_TMP23, BabelExp_167, 8),
__CIL_TMP24 is PERM +8* __CIL_TMP23,
BabelExp_168 is XCHANGE_SSA_1,
babel_ptrE(__CIL_TMP24, BabelExp_168, 8)
; true),
BabelExp_169 is __CIL_AP_L,
babelPtrR(__CIL_TMP25, BabelExp_169, 8),
BabelExp_170 is __CIL_AP_R,
babelPtrR(__CIL_TMP26, BabelExp_170, 8),

(__CIL_TMP25 =< __CIL_TMP26 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ,
BabelExp_171 is __CIL_AP_L,
babelPtrR(__CIL_TMP27, BabelExp_171, 8),
BabelExp_172 is __CIL_TMP27 + 1,
babel_ptrE(__CIL_AP_L, BabelExp_172, 8),
BabelExp_173 is __CIL_AP_R,
babelPtrR(__CIL_TMP28, BabelExp_173, 8),
BabelExp_174 is __CIL_TMP28 - 1,
babel_ptrE(__CIL_AP_R, BabelExp_174, 8)
; true),
BabelExp_175 is __CIL_AP_L,
babelPtrR(__CIL_TMP29, BabelExp_175, 8),
BabelExp_176 is __CIL_AP_R,
babelPtrR(__CIL_TMP30, BabelExp_176, 8),

(__CIL_TMP29 =< __CIL_TMP30 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ,
sort_basket_cil_lr_1(__CIL_PP_CUT, __CIL_FP_CUT, __CIL_AP_MIN, __CIL_AP_MAX, __CIL_AP_L, __CIL_AP_R, CUT_SSA_2, PERM, VOID),true
; true). 

 
