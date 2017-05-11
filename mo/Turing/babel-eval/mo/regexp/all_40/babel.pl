:-foreign(babel_ptrR(-integer, +integer, +integer)).
:-foreign(babel_ptrE(+integer, +integer, +integer)).

:- foreign(babel__implicit_regbranchc_0(+integer, +integer,  -integer)).
:- foreign(babel__implicit_regbranchc_1(+integer, +integer, +integer, +integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_regbranchc_2(+integer, +integer)).

babelPtrR(A, B, C):-babel_ptrR(A, B, C).
babelPtrR_byte(A, B, C):-babel_ptrR(A, B, 1).


regbranch(__CIL_PP_CP, __CIL_PP_RET, __CIL_PP_CHAIN, __CIL_PP___CIL_RET8, __CIL_FP_CP, __CIL_FP_RET, __CIL_FP_CHAIN, __CIL_FP___CIL_RET8, CP, FLAGP, R) :- 


BabelExp_0 is 0,
babel_ptrE(FLAGP, BabelExp_0, 4),
babel__implicit_regbranchc_0(CP, 6 , RET_SSA_1),
CHAIN_SSA_1 is 0,
BabelExp_1 is CP,
babel_ptrE(__CIL_FP_CP, BabelExp_1, 8),
BabelExp_2 is RET_SSA_1,
babel_ptrE(__CIL_FP_RET, BabelExp_2, 8),
BabelExp_3 is CHAIN_SSA_1,
babel_ptrE(__CIL_FP_CHAIN, BabelExp_3, 8),
__CIL_RET8 is 1,
BabelExp_4 is __CIL_RET8,
babel_ptrE(__CIL_FP___CIL_RET8, BabelExp_4, 8),
FLAGS is 1,
babel__implicit_regbranchc_1(__CIL_PP_CP, __CIL_PP_RET, __CIL_PP_CHAIN, __CIL_PP___CIL_RET8, FLAGP, FLAGS , RETFLAG9_SSA_1),
BabelExp_5 is __CIL_FP_CP,
babelPtrR(CP_SSA_1, BabelExp_5, 8),
BabelExp_6 is __CIL_FP_RET,
babelPtrR(RET_SSA_2, BabelExp_6, 8),
BabelExp_7 is __CIL_FP_CHAIN,
babelPtrR(CHAIN_SSA_2, BabelExp_7, 8),
BabelExp_8 is __CIL_FP___CIL_RET8,
babelPtrR(__CIL_RET8_SSA_1, BabelExp_8, 8),
(RETFLAG9_SSA_1 \= 0 ->
R is __CIL_RET8_SSA_1
; (CHAIN_SSA_2 =:= 0 ,
__CIL_TMP25 is 1
; __CIL_TMP25 is 0),

(__CIL_TMP25 \= 0 ->
babel__implicit_regbranchc_2(CP_SSA_1, 9)
; true),
R is RET_SSA_2).

 
regnode(CP, OP, R) :- 


 __CIL_TMP17 is CP +1* 16,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_9 is __CIL_TMP18,
babelPtrR(RET_SSA_1, BabelExp_9, 8),
__CIL_TMP19 is CP +1* 16,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_10 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_10, 8),
__CIL_TMP22 is CP +1* 24,
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is __CIL_TMP23,
__CIL_TMP25 is __CIL_TMP21,
__CIL_TMP26 is __CIL_TMP24,

(__CIL_TMP25 \= __CIL_TMP26 ->
__CIL_TMP27 is 1
; __CIL_TMP27 is 0),


(__CIL_TMP27 =:= 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
__CIL_TMP28 is CP +1* 32,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_11 is __CIL_TMP29,
babelPtrR(__CIL_TMP30, BabelExp_11, 8),
__CIL_TMP31 is CP +1* 32,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_12 is __CIL_TMP30 + 3,
babel_ptrE(__CIL_TMP32, BabelExp_12, 8),R is RET_SSA_1
; PTR_SSA_1 is RET_SSA_1,
TMP_SSA_1 is PTR_SSA_1,
PTR_SSA_2 is PTR_SSA_1 +1* 1,
BabelExp_13 is OP,
babel_ptrE(TMP_SSA_1, BabelExp_13, 1),
TMP___0_SSA_1 is PTR_SSA_2,
PTR_SSA_3 is PTR_SSA_2 +1* 1,
BabelExp_14 is 0,
babel_ptrE(TMP___0_SSA_1, BabelExp_14, 1),
TMP___1_SSA_1 is PTR_SSA_3,
PTR_SSA_4 is PTR_SSA_3 +1* 1,
BabelExp_15 is 0,
babel_ptrE(TMP___1_SSA_1, BabelExp_15, 1),
__CIL_TMP33 is CP +1* 16,
__CIL_TMP34 is __CIL_TMP33,
BabelExp_16 is PTR_SSA_4,
babel_ptrE(__CIL_TMP34, BabelExp_16, 8),R is RET_SSA_1). 

 
regc(CP, B, VOID) :- 


 __CIL_TMP6 is CP +1* 16,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_17 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_17, 8),
__CIL_TMP9 is CP +1* 24,
__CIL_TMP10 is __CIL_TMP9,
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP8,
__CIL_TMP13 is __CIL_TMP11,

(__CIL_TMP12 \= __CIL_TMP13 ->
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
__CIL_TMP14 is CP +1* 16,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_18 is __CIL_TMP15,
babelPtrR(TMP_SSA_1, BabelExp_18, 8),
__CIL_TMP16 is CP +1* 16,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_19 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_19, 8),
__CIL_TMP19 is CP +1* 16,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_20 is __CIL_TMP18 + 1,
babel_ptrE(__CIL_TMP20, BabelExp_20, 8),
BabelExp_21 is B,
babel_ptrE(TMP_SSA_1, BabelExp_21, 1)
; __CIL_TMP21 is CP +1* 32,
__CIL_TMP22 is __CIL_TMP21,
BabelExp_22 is __CIL_TMP22,
babelPtrR(__CIL_TMP23, BabelExp_22, 8),
__CIL_TMP24 is CP +1* 32,
__CIL_TMP25 is __CIL_TMP24,
BabelExp_23 is __CIL_TMP23 + 1,
babel_ptrE(__CIL_TMP25, BabelExp_23, 8)),
true. 

 :- foreign(babel__implicit_reginsertc_3(+integer, +integer, +positive)).

reginsert(CP, OP, OPND, VOID) :- 


 __CIL_TMP16 is CP +1* 16,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_24 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_24, 8),
__CIL_TMP19 is CP +1* 24,
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is __CIL_TMP18,
__CIL_TMP23 is __CIL_TMP21,

(__CIL_TMP22 \= __CIL_TMP23 ->
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),


(__CIL_TMP24 =:= 0 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
__CIL_TMP25 is CP +1* 32,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_25 is __CIL_TMP26,
babelPtrR(__CIL_TMP27, BabelExp_25, 8),
__CIL_TMP28 is CP +1* 32,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_26 is __CIL_TMP27 + 3,
babel_ptrE(__CIL_TMP29, BabelExp_26, 8),true
; __CIL_TMP30 is OPND +1* 3,
__CIL_TMP31 is CP +1* 16,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_27 is __CIL_TMP32,
babelPtrR(__CIL_TMP33, BabelExp_27, 8),
BabelExp_28 is __CIL_TMP33 - OPND,
__CIL_TMP34 is BabelExp_28,
babel__implicit_reginsertc_3(__CIL_TMP30, OPND, __CIL_TMP34),
__CIL_TMP35 is CP +1* 16,
__CIL_TMP36 is __CIL_TMP35,
BabelExp_29 is __CIL_TMP36,
babelPtrR(__CIL_TMP37, BabelExp_29, 8),
__CIL_TMP38 is CP +1* 16,
__CIL_TMP39 is __CIL_TMP38,
BabelExp_30 is __CIL_TMP37 + 3,
babel_ptrE(__CIL_TMP39, BabelExp_30, 8),
PLACE_SSA_1 is OPND,
TMP_SSA_1 is PLACE_SSA_1,
PLACE_SSA_2 is PLACE_SSA_1 +1* 1,
BabelExp_31 is OP,
babel_ptrE(TMP_SSA_1, BabelExp_31, 1),
TMP___0_SSA_1 is PLACE_SSA_2,
PLACE_SSA_3 is PLACE_SSA_2 +1* 1,
BabelExp_32 is 0,
babel_ptrE(TMP___0_SSA_1, BabelExp_32, 1),
TMP___1_SSA_1 is PLACE_SSA_3,
BabelExp_33 is 0,
babel_ptrE(TMP___1_SSA_1, BabelExp_33, 1),true). 

 :- foreign(babel__implicit_regtailc_4(+integer, +integer)).

regtail(__CIL_PP_VAL, __CIL_PP_SCAN, __CIL_FP_VAL, __CIL_FP_SCAN, CP, P, VAL, VOID) :- 

__CIL_TMP17 is CP +1* 16,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_34 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_34, 8),
__CIL_TMP20 is CP +1* 24,
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP19,
__CIL_TMP24 is __CIL_TMP22,

(__CIL_TMP23 =:= __CIL_TMP24 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
true
; SCAN_SSA_1 is P,
BabelExp_35 is VAL,
babel_ptrE(__CIL_FP_VAL, BabelExp_35, 8),
BabelExp_36 is SCAN_SSA_1,
babel_ptrE(__CIL_FP_SCAN, BabelExp_36, 8),
babel__implicit_regtailc_4(__CIL_PP_VAL, __CIL_PP_SCAN),
BabelExp_37 is __CIL_FP_VAL,
babelPtrR(VAL_SSA_1, BabelExp_37, 8),
BabelExp_38 is __CIL_FP_SCAN,
babelPtrR(SCAN_SSA_2, BabelExp_38, 8),
BabelExp_39 is SCAN_SSA_2,
babelPtrR_byte(__CIL_TMP25, BabelExp_39, 1),
__CIL_TMP26 is __CIL_TMP25,

(__CIL_TMP26 =:= 7 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
BabelExp_40 is SCAN_SSA_2 - VAL_SSA_1,
__CIL_TMP27 is BabelExp_40,
OFFSET_SSA_1 is __CIL_TMP27
; BabelExp_41 is VAL_SSA_1 - SCAN_SSA_2,
__CIL_TMP28 is BabelExp_41,
OFFSET_SSA_1 is __CIL_TMP28),
BabelExp_42 is OFFSET_SSA_1 >> 8,
__CIL_TMP29 is BabelExp_42,
BabelExp_43 is __CIL_TMP29 /\ 127,
__CIL_TMP30 is BabelExp_43,
__CIL_TMP31 is SCAN_SSA_2 +1* 1,
BabelExp_44 is __CIL_TMP30,
babel_ptrE(__CIL_TMP31, BabelExp_44, 1),
BabelExp_45 is OFFSET_SSA_1 /\ 255,
__CIL_TMP32 is BabelExp_45,
__CIL_TMP33 is SCAN_SSA_2 +1* 2,
BabelExp_46 is __CIL_TMP32,
babel_ptrE(__CIL_TMP33, BabelExp_46, 1),true),
BabelExp_47 is OFFSET_SSA_1 >> 8,
__CIL_TMP34 is BabelExp_47,
BabelExp_48 is __CIL_TMP34 /\ 127,
__CIL_TMP35 is BabelExp_48,
__CIL_TMP36 is SCAN_SSA_2 +1* 1,
BabelExp_49 is __CIL_TMP35,
babel_ptrE(__CIL_TMP36, BabelExp_49, 1),
BabelExp_50 is OFFSET_SSA_1 /\ 255,
__CIL_TMP37 is BabelExp_50,
__CIL_TMP38 is SCAN_SSA_2 +1* 2,
BabelExp_51 is __CIL_TMP37,
babel_ptrE(__CIL_TMP38, BabelExp_51, 1),true. 

 :- foreign(babel__implicit_regoptailc_5(+integer, +integer, +integer)).

regoptail(CP, P, VAL, VOID) :- 


 __CIL_TMP6 is CP +1* 16,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_52 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_52, 8),
__CIL_TMP9 is CP +1* 24,
__CIL_TMP10 is __CIL_TMP9,
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP8,
__CIL_TMP13 is __CIL_TMP11,

(__CIL_TMP12 \= __CIL_TMP13 ->
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),


(__CIL_TMP14 =:= 0 ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
true
; BabelExp_53 is P,
babelPtrR_byte(__CIL_TMP15, BabelExp_53, 1),
__CIL_TMP16 is __CIL_TMP15,

(__CIL_TMP16 \= 6 ->
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
true
; __CIL_TMP17 is P +1* 3,
babel__implicit_regoptailc_5(CP, __CIL_TMP17, VAL),true)). 

 :- foreign(babel__implicit_regtryc_6(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_regtryc_7(+integer, +integer,  -integer)).

regtry(__CIL_PP_EP, __CIL_PP_PROG, __CIL_PP_STRING, __CIL_FP_EP, __CIL_FP_PROG, __CIL_FP_STRING, EP, PROG, STRING, R) :- 


 MEM_29 is EP,
BabelExp_54 is STRING,
babel_ptrE(MEM_29, BabelExp_54, 8),
MEM_30 is PROG,
STP_SSA_1 is MEM_30,
__CIL_TMP23 is PROG +1* 80,
__CIL_TMP24 is __CIL_TMP23,
ENP_SSA_1 is __CIL_TMP24,
I_SSA_1 is 10,
BabelExp_55 is EP,
babel_ptrE(__CIL_FP_EP, BabelExp_55, 8),
BabelExp_56 is PROG,
babel_ptrE(__CIL_FP_PROG, BabelExp_56, 8),
BabelExp_57 is STRING,
babel_ptrE(__CIL_FP_STRING, BabelExp_57, 8),
babel__implicit_regtryc_6(__CIL_PP_EP, __CIL_PP_PROG, __CIL_PP_STRING, I_SSA_1, STP_SSA_1, ENP_SSA_1),
BabelExp_58 is __CIL_FP_EP,
babelPtrR(EP_SSA_1, BabelExp_58, 8),
BabelExp_59 is __CIL_FP_PROG,
babelPtrR(PROG_SSA_1, BabelExp_59, 8),
BabelExp_60 is __CIL_FP_STRING,
babelPtrR(STRING_SSA_1, BabelExp_60, 8),
__CIL_TMP25 is PROG_SSA_1 +1* 180,
__CIL_TMP26 is __CIL_TMP25,
__CIL_TMP27 is __CIL_TMP26,
__CIL_TMP28 is __CIL_TMP27 +1* 1,
babel__implicit_regtryc_7(EP_SSA_1, __CIL_TMP28 , TMP___1_SSA_1),
(TMP___1_SSA_1 \= 0 ->
MEM_31 is PROG_SSA_1,
__CIL_TMP29 is MEM_31,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_61 is STRING_SSA_1,
babel_ptrE(__CIL_TMP30, BabelExp_61, 8),
__CIL_TMP31 is PROG_SSA_1 +1* 80,
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32,
__CIL_TMP34 is __CIL_TMP33,
MEM_32 is EP_SSA_1,
babelPtrR(BabelExp_62, MEM_32, 8),
babel_ptrE(__CIL_TMP34, BabelExp_62, 8),R is 1
; R is 0). 

 :- foreign(babel__implicit_regrepeatc_8(+integer,  -positive)).
:- foreign(babel__implicit_regrepeatc_9(+integer, +integer, +integer)).
:- foreign(babel__implicit_regrepeatc_10(+integer, +integer,  -positive)).
:- foreign(babel__implicit_regrepeatc_11(+integer, +integer,  -positive)).
:- foreign(babel__implicit_regrepeatc_12(+integer)).

regrepeat(__CIL_PP_COUNT, __CIL_FP_COUNT, EP, NODE, R) :- 


 BabelExp_63 is NODE,
babelPtrR_byte(NV_SSA_1, BabelExp_63, 1),

(NV_SSA_1 =:= 3 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ->
MEM_24 is EP,
BabelExp_64 is MEM_24,
babelPtrR(__CIL_TMP24, BabelExp_64, 8),
babel__implicit_regrepeatc_8(__CIL_TMP24 , TMP_SSA_1),R is TMP_SSA_1
; (NV_SSA_1 =:= 8 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ->
__CIL_TMP25 is NODE +1* 3,
BabelExp_65 is __CIL_TMP25,
babelPtrR_byte(CH_SSA_1, BabelExp_65, 1),
COUNT_SSA_1 is 0,
MEM_25 is EP,
BabelExp_66 is MEM_25,
babelPtrR(SCAN_SSA_1, BabelExp_66, 8),
BabelExp_67 is COUNT_SSA_1,
babel_ptrE(__CIL_FP_COUNT, BabelExp_67, 8),
babel__implicit_regrepeatc_9(__CIL_PP_COUNT, SCAN_SSA_1, CH_SSA_1),
BabelExp_68 is __CIL_FP_COUNT,
babelPtrR(COUNT_SSA_2, BabelExp_68, 8),R is COUNT_SSA_2
; (NV_SSA_1 =:= 4 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
MEM_26 is EP,
BabelExp_69 is MEM_26,
babelPtrR(__CIL_TMP26, BabelExp_69, 8),
__CIL_TMP27 is NODE +1* 3,
babel__implicit_regrepeatc_10(__CIL_TMP26, __CIL_TMP27 , TMP___0_SSA_1),R is TMP___0_SSA_1
; (NV_SSA_1 =:= 5 ,
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ->
MEM_27 is EP,
BabelExp_70 is MEM_27,
babelPtrR(__CIL_TMP28, BabelExp_70, 8),
__CIL_TMP29 is NODE +1* 3,
babel__implicit_regrepeatc_11(__CIL_TMP28, __CIL_TMP29 , TMP___1_SSA_1),R is TMP___1_SSA_1
; babel__implicit_regrepeatc_12('INTERNAL ERROR: BAD CALL OF REGREPEAT'),R is 0)))). 

 
regnext(P, R) :- 

__CIL_TMP8 is P +1* 1,
BabelExp_71 is __CIL_TMP8,
babelPtrR_byte(__CIL_TMP9, BabelExp_71, 1),
__CIL_TMP10 is __CIL_TMP9,
BabelExp_72 is __CIL_TMP10 /\ 127,
__CIL_TMP11 is BabelExp_72,
__CIL_TMP12 is P +1* 2,
BabelExp_73 is __CIL_TMP12,
babelPtrR_byte(__CIL_TMP13, BabelExp_73, 1),
__CIL_TMP14 is __CIL_TMP13,
BabelExp_74 is __CIL_TMP11 << 8,
__CIL_TMP15 is BabelExp_74,
BabelExp_75 is __CIL_TMP14 /\ 255,
__CIL_TMP16 is BabelExp_75,
BabelExp_76 is __CIL_TMP15 + __CIL_TMP16,
OFFSET_SSA_1 is BabelExp_76,

(OFFSET_SSA_1 =:= 0 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
R is 0
; BabelExp_77 is P,
babelPtrR_byte(__CIL_TMP17, BabelExp_77, 1),
__CIL_TMP18 is __CIL_TMP17,

(__CIL_TMP18 =:= 7 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
TMP_SSA_1 is P -1* OFFSET_SSA_1
; TMP_SSA_1 is P +1* OFFSET_SSA_1),
R is TMP_SSA_1).

 
regrepeat_cil_lr_1(__CIL_AP_COUNT, SCAN, CH, VOID) :- 


 BabelExp_78 is SCAN,
babelPtrR_byte(__CIL_TMP6, BabelExp_78, 1),
__CIL_TMP7 is __CIL_TMP6,

(__CIL_TMP7 =:= CH ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
BabelExp_79 is __CIL_AP_COUNT,
babelPtrR(__CIL_TMP8, BabelExp_79, 8),
BabelExp_80 is __CIL_TMP8 + 1,
babel_ptrE(__CIL_AP_COUNT, BabelExp_80, 8),
SCAN_SSA_1 is SCAN +1* 1,
regrepeat_cil_lr_1(__CIL_AP_COUNT, SCAN_SSA_1, CH, VOID),true
; true). 

 
regtry_cil_lr_1(__CIL_AP_EP, __CIL_AP_PROG, __CIL_AP_STRING, I, STP, ENP, VOID) :- 


 (I > 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
TMP_SSA_1 is STP,
STP_SSA_1 is STP +8* 1,
BabelExp_81 is 0,
babel_ptrE(TMP_SSA_1, BabelExp_81, 8),
TMP___0_SSA_1 is ENP,
ENP_SSA_1 is ENP +8* 1,
BabelExp_82 is 0,
babel_ptrE(TMP___0_SSA_1, BabelExp_82, 8),
BabelExp_83 is I - 1,
I_SSA_1 is BabelExp_83,
regtry_cil_lr_1(__CIL_AP_EP, __CIL_AP_PROG, __CIL_AP_STRING, I_SSA_1, STP_SSA_1, ENP_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_regtail_cil_lr_1c_15(+integer,  -integer)).

regtail_cil_lr_1(__CIL_AP_VAL, __CIL_AP_SCAN, VOID) :- 


 BabelExp_84 is __CIL_AP_SCAN,
babelPtrR(__CIL_TMP6, BabelExp_84, 8),
babel__implicit_regtail_cil_lr_1c_15(__CIL_TMP6 , TEMP_SSA_1),

(TEMP_SSA_1 =:= 0 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
true
; BabelExp_85 is TEMP_SSA_1,
babel_ptrE(__CIL_AP_SCAN, BabelExp_85, 8),
regtail_cil_lr_1(__CIL_AP_VAL, __CIL_AP_SCAN, VOID),true). 

 :- foreign(babel__implicit_regbranch_cil_lr_1c_17(+integer, +integer,  -integer)).
:- foreign(babel__implicit_regbranch_cil_lr_1c_18(+integer, +integer, +integer)).
:- foreign(babel__implicit_regbranch_cil_lr_1c_19(+integer, +integer, +integer, +integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_regbranch_cil_lr_1c_20(+integer, +integer, +integer, +integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_regbranch_cil_lr_1c_21(+integer, +integer, +integer, +integer, +integer, +integer,  -integer)).

regbranch_cil_lr_1(__CIL_PP_FLAGS, __CIL_FP_FLAGS, __CIL_AP_CP, __CIL_AP_RET, __CIL_AP_CHAIN, __CIL_AP___CIL_RET8, FLAGP, FLAGS, R) :- 


 BabelExp_86 is __CIL_AP_CP,
babelPtrR(__CIL_TMP21, BabelExp_86, 8),
__CIL_TMP22 is __CIL_TMP21,
BabelExp_87 is __CIL_TMP22,
babelPtrR(__CIL_TMP23, BabelExp_87, 8),
BabelExp_88 is __CIL_TMP23,
babelPtrR_byte(__CIL_TMP24, BabelExp_88, 1),
C_SSA_1 is __CIL_TMP24,

(C_SSA_1 \= 0 ->
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
(C_SSA_1 \= 124 ->
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
(C_SSA_1 \= 41 ->
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
BabelExp_89 is FLAGS,
babel_ptrE(__CIL_FP_FLAGS, BabelExp_89, 4),
BabelExp_90 is __CIL_AP_CP,
babelPtrR(__CIL_TMP25, BabelExp_90, 8),
babel__implicit_regbranch_cil_lr_1c_17(__CIL_TMP25, __CIL_PP_FLAGS , LATEST_SSA_1),
BabelExp_91 is __CIL_FP_FLAGS,
babelPtrR(FLAGS_SSA_1, BabelExp_91, 4),

(LATEST_SSA_1 =:= 0 ,
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ->
BabelExp_92 is 0,
babel_ptrE(__CIL_AP___CIL_RET8, BabelExp_92, 8),R is 1
; BabelExp_93 is FLAGP,
babelPtrR(__CIL_TMP26, BabelExp_93, 4),
BabelExp_94 is FLAGS_SSA_1 /\ 1,
__CIL_TMP27 is BabelExp_94,
BabelExp_95 is __CIL_TMP26 \/ __CIL_TMP27,
babel_ptrE(FLAGP, BabelExp_95, 4),
BabelExp_96 is __CIL_AP_CHAIN,
babelPtrR(__CIL_TMP28, BabelExp_96, 8),
__CIL_TMP29 is __CIL_TMP28,

(__CIL_TMP29 =:= 0 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ->
BabelExp_97 is FLAGP,
babelPtrR(__CIL_TMP30, BabelExp_97, 4),
BabelExp_98 is FLAGS_SSA_1 /\ 4,
__CIL_TMP31 is BabelExp_98,
BabelExp_99 is __CIL_TMP30 \/ __CIL_TMP31,
babel_ptrE(FLAGP, BabelExp_99, 4)
; BabelExp_100 is __CIL_AP_CP,
babelPtrR(__CIL_TMP32, BabelExp_100, 8),
BabelExp_101 is __CIL_AP_CHAIN,
babelPtrR(__CIL_TMP33, BabelExp_101, 8),
babel__implicit_regbranch_cil_lr_1c_18(__CIL_TMP32, __CIL_TMP33, LATEST_SSA_1)),
BabelExp_102 is LATEST_SSA_1,
babel_ptrE(__CIL_AP_CHAIN, BabelExp_102, 8),
babel__implicit_regbranch_cil_lr_1c_19(__CIL_AP_CP, __CIL_AP_RET, __CIL_AP_CHAIN, __CIL_AP___CIL_RET8, FLAGP, FLAGS_SSA_1 , RETFLAG9_SSA_1),R is RETFLAG9_SSA_1),
BabelExp_103 is LATEST,
babel_ptrE(__CIL_AP_CHAIN, BabelExp_103, 8),
babel__implicit_regbranch_cil_lr_1c_20(__CIL_AP_CP, __CIL_AP_RET, __CIL_AP_CHAIN, __CIL_AP___CIL_RET8, FLAGP, FLAGS , RETFLAG9_SSA_1),R is RETFLAG9_SSA_1
; R is 0)
; R is 0)
; R is 0),
BabelExp_104 is LATEST,
babel_ptrE(__CIL_AP_CHAIN, BabelExp_104, 8),
babel__implicit_regbranch_cil_lr_1c_21(__CIL_AP_CP, __CIL_AP_RET, __CIL_AP_CHAIN, __CIL_AP___CIL_RET8, FLAGP, FLAGS , RETFLAG9_SSA_1),R is RETFLAG9_SSA_1. 

 
