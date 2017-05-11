:-foreign(babel_ptrR_byte(-byte, +integer, +integer)).
:-foreign(babel_ptrR(-integer, +integer, +integer)).
:-foreign(babel_ptrE(+integer, +integer, +integer)).




babelPtrR_byte(E, P, L) :- babel_ptrR_byte(T, P, L), E is T.
babelPtrR(E, P, L) :- babel_ptrR(T, P, L), E is T.
babelPtrL(P, E, L) :- babel_ptrE(P, E, L).



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



%:- foreign(babel__implicit_regrepeatc_8(+integer,  -positive)).
%:- foreign(babel__implicit_regrepeatc_9(+integer, +integer, +integer)).
%:- foreign(babel__implicit_regrepeatc_10(+integer, +integer,  -positive)).
%:- foreign(babel__implicit_regrepeatc_11(+integer, +integer,  -positive)).
%:- foreign(babel__implicit_regrepeatc_12(+integer)).
%
%regrepeat(__CIL_PP_COUNT, __CIL_FP_COUNT, EP, NODE, R) :- 
%
%
% BabelExp_63 is NODE,
%babelPtrR_byte(NV_SSA_1, BabelExp_63, 1),
%
%(NV_SSA_1 =:= 3 ,
%__CIL_TMP20 is 1
%; __CIL_TMP20 is 0),
%
%(__CIL_TMP20 \= 0 ->
%MEM_24 is EP,
%BabelExp_64 is MEM_24,
%babelPtrR(__CIL_TMP24, BabelExp_64, 8),
%babel__implicit_regrepeatc_8(__CIL_TMP24 , TMP_SSA_1),R is TMP_SSA_1
%; (NV_SSA_1 =:= 8 ,
%__CIL_TMP21 is 1
%; __CIL_TMP21 is 0),
%
%(__CIL_TMP21 \= 0 ->
%__CIL_TMP25 is NODE +1* 3,
%BabelExp_65 is __CIL_TMP25,
%babelPtrR_byte(CH_SSA_1, BabelExp_65, 1),
%COUNT_SSA_1 is 0,
%MEM_25 is EP,
%BabelExp_66 is MEM_25,
%babelPtrR(SCAN_SSA_1, BabelExp_66, 8),
%BabelExp_67 is COUNT_SSA_1,
%babel_ptrE(__CIL_FP_COUNT, BabelExp_67, 8),
%babel__implicit_regrepeatc_9(__CIL_PP_COUNT, SCAN_SSA_1, CH_SSA_1),
%BabelExp_68 is __CIL_FP_COUNT,
%babelPtrR(COUNT_SSA_2, BabelExp_68, 8),R is COUNT_SSA_2
%; (NV_SSA_1 =:= 4 ,
%__CIL_TMP22 is 1
%; __CIL_TMP22 is 0),
%
%(__CIL_TMP22 \= 0 ->
%MEM_26 is EP,
%BabelExp_69 is MEM_26,
%babelPtrR(__CIL_TMP26, BabelExp_69, 8),
%__CIL_TMP27 is NODE +1* 3,
%babel__implicit_regrepeatc_10(__CIL_TMP26, __CIL_TMP27 , TMP___0_SSA_1),R is TMP___0_SSA_1
%; (NV_SSA_1 =:= 5 ,
%__CIL_TMP23 is 1
%; __CIL_TMP23 is 0),
%
%(__CIL_TMP23 \= 0 ->
%MEM_27 is EP,
%BabelExp_70 is MEM_27,
%babelPtrR(__CIL_TMP28, BabelExp_70, 8),
%__CIL_TMP29 is NODE +1* 3,
%babel__implicit_regrepeatc_11(__CIL_TMP28, __CIL_TMP29 , TMP___1_SSA_1),R is TMP___1_SSA_1
%; babel__implicit_regrepeatc_12('INTERNAL ERROR: BAD CALL OF REGREPEAT'),R is 0)))). 
%
% 
%regnext(P, R) :- 
%
%__CIL_TMP8 is P +1* 1,
%BabelExp_71 is __CIL_TMP8,
%babelPtrR_byte(__CIL_TMP9, BabelExp_71, 1),
%__CIL_TMP10 is __CIL_TMP9,
%BabelExp_72 is __CIL_TMP10 /\ 127,
%__CIL_TMP11 is BabelExp_72,
%__CIL_TMP12 is P +1* 2,
%BabelExp_73 is __CIL_TMP12,
%babelPtrR_byte(__CIL_TMP13, BabelExp_73, 1),
%__CIL_TMP14 is __CIL_TMP13,
%BabelExp_74 is __CIL_TMP11 << 8,
%__CIL_TMP15 is BabelExp_74,
%BabelExp_75 is __CIL_TMP14 /\ 255,
%__CIL_TMP16 is BabelExp_75,
%BabelExp_76 is __CIL_TMP15 + __CIL_TMP16,
%OFFSET_SSA_1 is BabelExp_76,
%
%(OFFSET_SSA_1 =:= 0 ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%R is 0
%; BabelExp_77 is P,
%babelPtrR_byte(__CIL_TMP17, BabelExp_77, 1),
%__CIL_TMP18 is __CIL_TMP17,
%
%(__CIL_TMP18 =:= 7 ,
%__CIL_TMP7 is 1
%; __CIL_TMP7 is 0),
%
%(__CIL_TMP7 \= 0 ->
%TMP_SSA_1 is P -1* OFFSET_SSA_1
%; TMP_SSA_1 is P +1* OFFSET_SSA_1),
%R is TMP_SSA_1).
%
% 
%regrepeat_cil_lr_1(__CIL_AP_COUNT, SCAN, CH, VOID) :- 
%
%
% BabelExp_78 is SCAN,
%babelPtrR_byte(__CIL_TMP6, BabelExp_78, 1),
%__CIL_TMP7 is __CIL_TMP6,
%
%(__CIL_TMP7 =:= CH ,
%__CIL_TMP5 is 1
%; __CIL_TMP5 is 0),
%
%(__CIL_TMP5 \= 0 ->
%BabelExp_79 is __CIL_AP_COUNT,
%babelPtrR(__CIL_TMP8, BabelExp_79, 8),
%BabelExp_80 is __CIL_TMP8 + 1,
%babel_ptrE(__CIL_AP_COUNT, BabelExp_80, 8),
%SCAN_SSA_1 is SCAN +1* 1,
%regrepeat_cil_lr_1(__CIL_AP_COUNT, SCAN_SSA_1, CH, VOID),true
%; true). 
%
 
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

