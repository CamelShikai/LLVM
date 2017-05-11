:-foreign(babel_ptrR_byte(-byte, +integer, +integer)).
:-foreign(babel_ptrR(-integer, +integer, +integer)).
:-foreign(babel_ptrE(+integer, +integer, +integer)).
:-foreign(babel_ptrFR(-float, +integer,+integer)).
:-foreign(babel_ptrFW(+integer, +float,+integer)).


babelPtrR(E, P, L) :- babel_ptrR(T, P, L), E is T.
babelPtrL(P, E, L) :- babel_ptrE(P, E, L).

:- foreign(babel__implicit_resize_probc_0(+string, +string, +integer, +string)).
:- foreign(babel__implicit_resize_probc_1(+integer, +positive,  -integer)).
:- foreign(babel__implicit_resize_probc_2(+integer, +integer)).
:- foreign(babel__implicit_resize_probc_3(+integer)).
:- foreign(babel__implicit_resize_probc_4(+integer, +integer, +integer, +positive)).

resize_prob(__CIL_GP_STDOUT, NET, BABEL_RET) :- 
 __CIL_TMP17 is NET +1* 456,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_0 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_0, 8),

(__CIL_TMP19 >= 3 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 =:= 0 ->
babel__implicit_resize_probc_0('net->max_new_m >= 3', 'implicit.c', 39, 'resize_prob')
; true),
__CIL_TMP20 is NET +1* 416,
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is NET +1* 456,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_1 is __CIL_TMP21,
babelPtrR(__CIL_TMP24, BabelExp_1, 8),
BabelExp_2 is __CIL_TMP23,
babelPtrR(__CIL_TMP25, BabelExp_2, 8),
__CIL_TMP26 is NET +1* 416,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_3 is __CIL_TMP24 + __CIL_TMP25,
babel_ptrE(__CIL_TMP27, BabelExp_3, 8),
__CIL_TMP28 is NET +1* 448,
__CIL_TMP29 is __CIL_TMP28,
__CIL_TMP30 is NET +1* 456,
__CIL_TMP31 is __CIL_TMP30,
BabelExp_4 is __CIL_TMP29,
babelPtrR(__CIL_TMP32, BabelExp_4, 8),
BabelExp_5 is __CIL_TMP31,
babelPtrR(__CIL_TMP33, BabelExp_5, 8),
__CIL_TMP34 is NET +1* 448,
__CIL_TMP35 is __CIL_TMP34,
BabelExp_6 is __CIL_TMP32 + __CIL_TMP33,
babel_ptrE(__CIL_TMP35, BabelExp_6, 8),
__CIL_TMP36 is NET +1* 568,
__CIL_TMP37 is __CIL_TMP36,
BabelExp_7 is __CIL_TMP37,
babelPtrR(__CIL_TMP38, BabelExp_7, 8),
__CIL_TMP39 is NET +1* 416,
__CIL_TMP40 is __CIL_TMP39,
BabelExp_8 is __CIL_TMP40,
babelPtrR(__CIL_TMP41, BabelExp_8, 8),
__CIL_TMP42 is __CIL_TMP41,
BabelExp_9 is __CIL_TMP42 * 64,
__CIL_TMP43 is BabelExp_9,
babel__implicit_resize_probc_1(__CIL_TMP38, __CIL_TMP43 , TMP_SSA_1),
ARC_SSA_1 is TMP_SSA_1,
(ARC_SSA_1 =:= 0 ->
MEM_56 is NET,
__CIL_TMP44 is MEM_56,
babel__implicit_resize_probc_2('NETWORK %S: NOT ENOUGH MEMORY\\N', __CIL_TMP44),
BabelExp_10 is __CIL_GP_STDOUT,
babelPtrR(__CIL_TMP45, BabelExp_10, 8),
babel__implicit_resize_probc_3(__CIL_TMP45),BABEL_RET is -1, true
; __CIL_TMP46 is NET +1* 568,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_11 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_11, 8),
__CIL_TMP49 is __CIL_TMP48,
BabelExp_12 is ARC_SSA_1 - __CIL_TMP49,
OFF_SSA_1 is BabelExp_12,
__CIL_TMP50 is NET +1* 568,
__CIL_TMP51 is __CIL_TMP50,
BabelExp_13 is ARC_SSA_1,
babel_ptrE(__CIL_TMP51, BabelExp_13, 8),
__CIL_TMP52 is NET +1* 424,
__CIL_TMP53 is __CIL_TMP52,
BabelExp_14 is __CIL_TMP53,
babelPtrR(__CIL_TMP54, BabelExp_14, 8),
__CIL_TMP55 is NET +1* 576,
__CIL_TMP56 is __CIL_TMP55,
BabelExp_15 is ARC_SSA_1 +64* __CIL_TMP54,
babel_ptrE(__CIL_TMP56, BabelExp_15, 8),
__CIL_TMP57 is NET +1* 552,
__CIL_TMP58 is __CIL_TMP57,
BabelExp_16 is __CIL_TMP58,
babelPtrR(NODE_SSA_1, BabelExp_16, 8),
ROOT_SSA_1 is NODE_SSA_1,
NODE_SSA_2 is NODE_SSA_1 +104* 1,
__CIL_TMP59 is NET +1* 560,
__CIL_TMP60 is __CIL_TMP59,
BabelExp_17 is __CIL_TMP60,
babelPtrR(__CIL_TMP61, BabelExp_17, 8),
STOP_SSA_1 is __CIL_TMP61,
babel__implicit_resize_probc_4(NODE_SSA_2, STOP_SSA_1, ROOT_SSA_1, OFF_SSA_1),BABEL_RET is 0, true). 

 :- foreign(babel__implicit_insert_new_arcc_5(+integer, +integer, +integer, +integer, +integer, +integer)).

insert_new_arc(NEW, NEWPOS, TAIL, HEAD, COST, RED_COST, VOID) :- 


 __CIL_TMP9 is NEW +64* NEWPOS,
__CIL_TMP10 is __CIL_TMP9,
__CIL_TMP11 is __CIL_TMP10 +1* 8,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_18 is TAIL,
babel_ptrE(__CIL_TMP12, BabelExp_18, 8),
__CIL_TMP13 is NEW +64* NEWPOS,
__CIL_TMP14 is __CIL_TMP13,
__CIL_TMP15 is __CIL_TMP14 +1* 16,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_19 is HEAD,
babel_ptrE(__CIL_TMP16, BabelExp_19, 8),
__CIL_TMP17 is NEW +64* NEWPOS,
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18 +1* 56,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_20 is COST,
babel_ptrE(__CIL_TMP20, BabelExp_20, 8),
__CIL_TMP21 is NEW +64* NEWPOS,
__CIL_TMP22 is __CIL_TMP21,
BabelExp_21 is COST,
babel_ptrE(__CIL_TMP22, BabelExp_21, 8),
__CIL_TMP23 is NEW +64* NEWPOS,
__CIL_TMP24 is __CIL_TMP23,
__CIL_TMP25 is __CIL_TMP24 +1* 48,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_22 is RED_COST,
babel_ptrE(__CIL_TMP26, BabelExp_22, 8),
BabelExp_23 is NEWPOS + 1,
POS_SSA_1 is BabelExp_23,
babel__implicit_insert_new_arcc_5(NEW, TAIL, HEAD, COST, RED_COST, POS_SSA_1),true. 

insert_new_arc_cil_lr_1(NEW, TAIL, HEAD, COST, RED_COST, POS, VOID) :- 


 BabelExp_374 is POS - 1,
__CIL_TMP8 is BabelExp_374,
(__CIL_TMP8 \= 0 ->
BabelExp_375 is POS // 2,
__CIL_TMP10 is BabelExp_375,
BabelExp_376 is __CIL_TMP10 - 1,
__CIL_TMP11 is BabelExp_376,
__CIL_TMP12 is NEW +64* __CIL_TMP11,
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13 +1* 48,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_377 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_377, 8),

(RED_COST > __CIL_TMP16 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
BabelExp_378 is POS // 2,
__CIL_TMP17 is BabelExp_378,
BabelExp_379 is __CIL_TMP17 - 1,
__CIL_TMP18 is BabelExp_379,
__CIL_TMP19 is NEW +64* __CIL_TMP18,
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is __CIL_TMP20 +1* 8,
__CIL_TMP22 is __CIL_TMP21,
BabelExp_380 is POS - 1,
__CIL_TMP23 is BabelExp_380,
__CIL_TMP24 is NEW +64* __CIL_TMP23,
__CIL_TMP25 is __CIL_TMP24,
__CIL_TMP26 is __CIL_TMP25 +1* 8,
__CIL_TMP27 is __CIL_TMP26,
babelPtrR(BabelExp_381, __CIL_TMP22, 8),
babel_ptrE(__CIL_TMP27, BabelExp_381, 8),
BabelExp_382 is POS // 2,
__CIL_TMP28 is BabelExp_382,
BabelExp_383 is __CIL_TMP28 - 1,
__CIL_TMP29 is BabelExp_383,
__CIL_TMP30 is NEW +64* __CIL_TMP29,
__CIL_TMP31 is __CIL_TMP30,
__CIL_TMP32 is __CIL_TMP31 +1* 16,
__CIL_TMP33 is __CIL_TMP32,
BabelExp_384 is POS - 1,
__CIL_TMP34 is BabelExp_384,
__CIL_TMP35 is NEW +64* __CIL_TMP34,
__CIL_TMP36 is __CIL_TMP35,
__CIL_TMP37 is __CIL_TMP36 +1* 16,
__CIL_TMP38 is __CIL_TMP37,
babelPtrR(BabelExp_385, __CIL_TMP33, 8),
babel_ptrE(__CIL_TMP38, BabelExp_385, 8),
BabelExp_386 is POS // 2,
__CIL_TMP39 is BabelExp_386,
BabelExp_387 is __CIL_TMP39 - 1,
__CIL_TMP40 is BabelExp_387,
__CIL_TMP41 is NEW +64* __CIL_TMP40,
__CIL_TMP42 is __CIL_TMP41,
BabelExp_388 is POS - 1,
__CIL_TMP43 is BabelExp_388,
__CIL_TMP44 is NEW +64* __CIL_TMP43,
__CIL_TMP45 is __CIL_TMP44,
babelPtrR(BabelExp_389, __CIL_TMP42, 8),
babel_ptrE(__CIL_TMP45, BabelExp_389, 8),
BabelExp_390 is POS // 2,
__CIL_TMP46 is BabelExp_390,
BabelExp_391 is __CIL_TMP46 - 1,
__CIL_TMP47 is BabelExp_391,
__CIL_TMP48 is NEW +64* __CIL_TMP47,
__CIL_TMP49 is __CIL_TMP48,
BabelExp_392 is POS - 1,
__CIL_TMP50 is BabelExp_392,
__CIL_TMP51 is NEW +64* __CIL_TMP50,
__CIL_TMP52 is __CIL_TMP51,
__CIL_TMP53 is __CIL_TMP52 +1* 56,
__CIL_TMP54 is __CIL_TMP53,
babelPtrR(BabelExp_393, __CIL_TMP49, 8),
babel_ptrE(__CIL_TMP54, BabelExp_393, 8),
BabelExp_394 is POS // 2,
__CIL_TMP55 is BabelExp_394,
BabelExp_395 is __CIL_TMP55 - 1,
__CIL_TMP56 is BabelExp_395,
__CIL_TMP57 is NEW +64* __CIL_TMP56,
__CIL_TMP58 is __CIL_TMP57,
__CIL_TMP59 is __CIL_TMP58 +1* 48,
__CIL_TMP60 is __CIL_TMP59,
BabelExp_396 is POS - 1,
__CIL_TMP61 is BabelExp_396,
__CIL_TMP62 is NEW +64* __CIL_TMP61,
__CIL_TMP63 is __CIL_TMP62,
__CIL_TMP64 is __CIL_TMP63 +1* 48,
__CIL_TMP65 is __CIL_TMP64,
babelPtrR(BabelExp_397, __CIL_TMP60, 8),
babel_ptrE(__CIL_TMP65, BabelExp_397, 8),
BabelExp_398 is POS // 2,
POS_SSA_1 is BabelExp_398,
BabelExp_399 is POS_SSA_1 - 1,
__CIL_TMP66 is BabelExp_399,
__CIL_TMP67 is NEW +64* __CIL_TMP66,
__CIL_TMP68 is __CIL_TMP67,
__CIL_TMP69 is __CIL_TMP68 +1* 8,
__CIL_TMP70 is __CIL_TMP69,
BabelExp_400 is TAIL,
babel_ptrE(__CIL_TMP70, BabelExp_400, 8),
BabelExp_401 is POS_SSA_1 - 1,
__CIL_TMP71 is BabelExp_401,
__CIL_TMP72 is NEW +64* __CIL_TMP71,
__CIL_TMP73 is __CIL_TMP72,
__CIL_TMP74 is __CIL_TMP73 +1* 16,
__CIL_TMP75 is __CIL_TMP74,
BabelExp_402 is HEAD,
babel_ptrE(__CIL_TMP75, BabelExp_402, 8),
BabelExp_403 is POS_SSA_1 - 1,
__CIL_TMP76 is BabelExp_403,
__CIL_TMP77 is NEW +64* __CIL_TMP76,
__CIL_TMP78 is __CIL_TMP77,
BabelExp_404 is COST,
babel_ptrE(__CIL_TMP78, BabelExp_404, 8),
BabelExp_405 is POS_SSA_1 - 1,
__CIL_TMP79 is BabelExp_405,
__CIL_TMP80 is NEW +64* __CIL_TMP79,
__CIL_TMP81 is __CIL_TMP80,
__CIL_TMP82 is __CIL_TMP81 +1* 56,
__CIL_TMP83 is __CIL_TMP82,
BabelExp_406 is COST,
babel_ptrE(__CIL_TMP83, BabelExp_406, 8),
BabelExp_407 is POS_SSA_1 - 1,
__CIL_TMP84 is BabelExp_407,
__CIL_TMP85 is NEW +64* __CIL_TMP84,
__CIL_TMP86 is __CIL_TMP85,
__CIL_TMP87 is __CIL_TMP86 +1* 48,
__CIL_TMP88 is __CIL_TMP87,
BabelExp_408 is RED_COST,
babel_ptrE(__CIL_TMP88, BabelExp_408, 8),
insert_new_arc_cil_lr_1(NEW, TAIL, HEAD, COST, RED_COST, POS_SSA_1, VOID),true
; true)
; true). 

 
resize_prob_cil_lr_1(NODE, STOP, ROOT, OFF, VOID) :- 


 (NODE < STOP ->
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
__CIL_TMP8 is NODE +1* 24,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_409 is __CIL_TMP9,
babelPtrR(__CIL_TMP10, BabelExp_409, 8),
__CIL_TMP11 is __CIL_TMP10,

(__CIL_TMP11 \= ROOT ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
__CIL_TMP12 is NODE +1* 48,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_410 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_410, 8),
__CIL_TMP15 is __CIL_TMP14,
BabelExp_411 is __CIL_TMP15 + OFF,
__CIL_TMP16 is BabelExp_411,
__CIL_TMP17 is NODE +1* 48,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_412 is __CIL_TMP16,
babel_ptrE(__CIL_TMP18, BabelExp_412, 8)
; true),
NODE_SSA_1 is NODE +104* 1,
resize_prob_cil_lr_1(NODE_SSA_1, STOP, ROOT, OFF, VOID),true
; true). 


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



 

 
refresh_neighbour_lists_cil_lr_1(__CIL_AP_NET, NODE, STOP, VOID) :- 


 (NODE < STOP ->
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
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


 (ARC < STOP ->
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
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

