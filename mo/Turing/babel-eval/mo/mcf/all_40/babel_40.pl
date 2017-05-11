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
(RETFLAG13_SSA_1 \= 0 ->
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

(COND_SSA_2 =:= 1 ->
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
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
(__CIL_TMP8 \= 0 ->
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
(__CIL_TMP9 \= 0 ->
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
(__CIL_TMP10 \= 0 ->
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


 (NODE \= 0 ->
__CIL_TMP7 is NODE +1* 8,
__CIL_TMP8 is __CIL_TMP7,
BabelExp_65 is __CIL_TMP8,
babelPtrR(__CIL_TMP9, BabelExp_65, 4),

(__CIL_TMP9 =:= 1 ->
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
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
(__CIL_TMP4 \= 0 ->
BabelExp_82 is __CIL_AP_NODE,
babelPtrR(__CIL_TMP10, BabelExp_82, 8),
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP11 +1* 32,
__CIL_TMP13 is __CIL_TMP12,
babelPtrR(BabelExp_83, __CIL_TMP13, 8),
babel_ptrE(__CIL_AP_TMP, BabelExp_83, 8),
BabelExp_84 is __CIL_AP_TMP,
babelPtrR(__CIL_TMP5, BabelExp_84, 8),
(__CIL_TMP5 \= 0 ->
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


 (ARC \= STOP ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
__CIL_TMP9 is ARC +1* 24,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_88 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_88, 4),

(__CIL_TMP11 =:= 2 ->
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
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
; true).

 
flow_org_cost_cil_lr_2(__CIL_AP_NET, __CIL_AP_FLEET, __CIL_AP_OPERATIONAL_COST, NODE, STOP, VOID) :- 


 (NODE \= STOP ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
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


 (ARC \= STOP ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
__CIL_TMP13 is ARC +1* 48,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_93 is __CIL_TMP14,
babelPtrR(__CIL_TMP8, BabelExp_93, 8),
(__CIL_TMP8 \= 0 ->
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

(__CIL_TMP9 \= 0 ->
__CIL_TMP22 is ARC +1* 8,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_96 is __CIL_TMP23,
babelPtrR(__CIL_TMP24, BabelExp_96, 8),
__CIL_TMP25 is __CIL_TMP24,
__CIL_TMP26 is __CIL_TMP25 +1* 96,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_97 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_97, 4),

(__CIL_TMP28 =:= 0 ->
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ->
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

(__CIL_TMP50 =< 0 ->
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
__CIL_TMP51 is ARC +1* 8,
__CIL_TMP52 is __CIL_TMP51,
BabelExp_111 is __CIL_TMP52,
babelPtrR(__CIL_TMP53, BabelExp_111, 8),
__CIL_TMP54 is __CIL_TMP53,
__CIL_TMP55 is __CIL_TMP54 +1* 96,
__CIL_TMP56 is __CIL_TMP55,
BabelExp_112 is __CIL_TMP56,
babelPtrR(__CIL_TMP57, BabelExp_112, 4),

(__CIL_TMP57 =:= 0 ->
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
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
; true).

 :- foreign(babel__implicit_refresh_potential_cil_lr_1c_20(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_refresh_potential_cil_lr_1c_21(+integer, +integer, +integer)).
:- foreign(babel__implicit_refresh_potential_cil_lr_1c_22(+integer, +integer, +integer, +integer)).

refresh_potential_cil_lr_1(__CIL_PP_TMP, __CIL_PP_ROOT, __CIL_PP_NODE, __CIL_FP_TMP, __CIL_FP_ROOT, __CIL_FP_NODE, __CIL_AP_CHECKSUM, NODE, TMP, ROOT, VOID) :- 


 (NODE \= ROOT ->
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
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

(MIN_SSA_1 < R_SSA_2 ->
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
babel__implicit_sort_basketc_1(MIN_SSA_1, R_SSA_2)
; true),

(L_SSA_2 < MAX_SSA_1 ->
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ->
(L_SSA_2 =< 50 ->
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ->
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
(__CIL_TMP44 \= 0 ->
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

(I_SSA_1 =< 50 ->
__CIL_TMP45 is 1
; __CIL_TMP45 is 0),

(__CIL_TMP45 \= 0 ->
BabelExp_27 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP51, BabelExp_27, 8),

(I_SSA_1 =< __CIL_TMP51 ->
__CIL_TMP46 is 1
; __CIL_TMP46 is 0),

(__CIL_TMP46 \= 0 ->
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

(__CIL_TMP52 =:= 0 ->
__CIL_TMP47 is 1
; __CIL_TMP47 is 0),

(__CIL_TMP47 \= 0 ->
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

(ARC < __CIL_TMP19 ->
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
__CIL_TMP20 is ARC +1* 24,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_49 is __CIL_TMP21,
babelPtrR(__CIL_TMP22, BabelExp_49, 4),

(__CIL_TMP22 > 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
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
(TMP___1_SSA_1 \= 0 ->
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

(__CIL_TMP17 \= 0 ->
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

(__CIL_TMP3 \= 0 ->
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

(__CIL_TMP3 \= 0 ->
BabelExp_82 is __CIL_AP_R,
babelPtrR(__CIL_TMP12, BabelExp_82, 8),
BabelExp_83 is __CIL_TMP12 - 1,
babel_ptrE(__CIL_AP_R, BabelExp_83, 8),
sort_basket_cil_lr_1_cil_lr_2(__CIL_AP_CUT, __CIL_AP_R, PERM, VOID),true
; true). 

 
primal_bea_mpp_cil_lr_1(__CIL_AP_M, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, I, PERM, BASKET, VOID) :- 


 (I < 351 ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
__CIL_TMP8 is PERM +8* I,
BabelExp_84 is BASKET +24* I,
babel_ptrE(__CIL_TMP8, BabelExp_84, 8),
BabelExp_85 is I + 1,
I_SSA_1 is BabelExp_85,
primal_bea_mpp_cil_lr_1(__CIL_AP_M, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, I_SSA_1, PERM, BASKET, VOID),true
; true). 

:- foreign(babel__implicit_primal_bea_mpp_cil_lr_2c_12(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).

primal_bea_mpp_cil_lr_2(__CIL_GP_BASKET_SIZE, __CIL_AP_NR_GROUP, __CIL_AP_GROUP_POS, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, __CIL_AP_NEXT, I, COND, PERM, VOID) :- 


 (COND \= 0 ->
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

(RED_COST_SSA_1 < 0 ->
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
__CIL_TMP46 is ARC_SSA_1 +1* 24,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_95 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_95, 4),

(__CIL_TMP48 =:= 1 ->
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ->
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

(__CIL_TMP20 \= 0 ->
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

(__CIL_TMP21 \= 0 ->
__CIL_TMP72 is ARC_SSA_1 +1* 24,
__CIL_TMP73 is __CIL_TMP72,
BabelExp_110 is __CIL_TMP73,
babelPtrR(__CIL_TMP74, BabelExp_110, 4),

(__CIL_TMP74 =:= 2 ->
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
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

(__CIL_TMP23 \= 0 ->
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

(__CIL_TMP24 \= 0 ->
__CIL_TMP98 is ARC_SSA_1 +1* 24,
__CIL_TMP99 is __CIL_TMP98,
BabelExp_125 is __CIL_TMP99,
babelPtrR(__CIL_TMP100, BabelExp_125, 4),

(__CIL_TMP100 =:= 2 ->
__CIL_TMP25 is 1
; __CIL_TMP25 is 0),

(__CIL_TMP25 \= 0 ->
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

(__CIL_TMP26 \= 0 ->
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

(I_SSA_1 =< 50 ->
__CIL_TMP27 is 1
; __CIL_TMP27 is 0),

(__CIL_TMP27 \= 0 ->
BabelExp_141 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP124, BabelExp_141, 8),

(I_SSA_1 =< __CIL_TMP124 ->
__CIL_TMP28 is 1
; __CIL_TMP28 is 0),

(__CIL_TMP28 \= 0 ->
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

(__CIL_TMP34 =:= __CIL_TMP35 ->
__CIL_TMP29 is 1
; __CIL_TMP29 is 0),

(__CIL_TMP29 \= 0 ->
BabelExp_153 is 0,
babel_ptrE(__CIL_GP_GROUP_POS, BabelExp_153, 8)
; true),
BabelExp_154 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP36, BabelExp_154, 8),

(__CIL_TMP36 < 50 ->
__CIL_TMP30 is 1
; __CIL_TMP30 is 0),

(__CIL_TMP30 \= 0 ->
BabelExp_155 is __CIL_GP_GROUP_POS,
babelPtrR(__CIL_TMP37, BabelExp_155, 8),

(__CIL_TMP37 \= OLD_GROUP_POS_SSA_1 ->
__CIL_TMP31 is 1
; __CIL_TMP31 is 0),

(__CIL_TMP31 \= 0 ->
TMP___2_SSA_1 is 1
; TMP___2_SSA_1 is 0)
; TMP___2_SSA_1 is 0),
COND_SSA_1 is TMP___2_SSA_1,
(COND_SSA_1 \= 0 ->
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

(__CIL_TMP15 < __CIL_TMP16 ->
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
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

(__CIL_TMP25 =< __CIL_TMP26 ->
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
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

(__CIL_TMP29 =< __CIL_TMP30 ->
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
sort_basket_cil_lr_1(__CIL_PP_CUT, __CIL_FP_CUT, __CIL_AP_MIN, __CIL_AP_MAX, __CIL_AP_L, __CIL_AP_R, CUT_SSA_2, PERM, VOID),true
; true). 

 

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

(MIN_SSA_1 < R_SSA_2 ->
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
babel__implicit_sort_basketc_1(MIN_SSA_1, R_SSA_2)
; true),

(L_SSA_2 < MAX_SSA_1 ->
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ->
(L_SSA_2 =< 50 ->
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ->
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
(__CIL_TMP44 \= 0 ->
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

(I_SSA_1 =< 50 ->
__CIL_TMP45 is 1
; __CIL_TMP45 is 0),

(__CIL_TMP45 \= 0 ->
BabelExp_27 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP51, BabelExp_27, 8),

(I_SSA_1 =< __CIL_TMP51 ->
__CIL_TMP46 is 1
; __CIL_TMP46 is 0),

(__CIL_TMP46 \= 0 ->
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

(__CIL_TMP52 =:= 0 ->
__CIL_TMP47 is 1
; __CIL_TMP47 is 0),

(__CIL_TMP47 \= 0 ->
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

(ARC < __CIL_TMP19 ->
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
__CIL_TMP20 is ARC +1* 24,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_49 is __CIL_TMP21,
babelPtrR(__CIL_TMP22, BabelExp_49, 4),

(__CIL_TMP22 > 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
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
(TMP___1_SSA_1 \= 0 ->
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

(__CIL_TMP17 \= 0 ->
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

(__CIL_TMP3 \= 0 ->
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

(__CIL_TMP3 \= 0 ->
BabelExp_82 is __CIL_AP_R,
babelPtrR(__CIL_TMP12, BabelExp_82, 8),
BabelExp_83 is __CIL_TMP12 - 1,
babel_ptrE(__CIL_AP_R, BabelExp_83, 8),
sort_basket_cil_lr_1_cil_lr_2(__CIL_AP_CUT, __CIL_AP_R, PERM, VOID),true
; true). 

 
primal_bea_mpp_cil_lr_1(__CIL_AP_M, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, I, PERM, BASKET, VOID) :- 


 (I < 351 ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
__CIL_TMP8 is PERM +8* I,
BabelExp_84 is BASKET +24* I,
babel_ptrE(__CIL_TMP8, BabelExp_84, 8),
BabelExp_85 is I + 1,
I_SSA_1 is BabelExp_85,
primal_bea_mpp_cil_lr_1(__CIL_AP_M, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, I_SSA_1, PERM, BASKET, VOID),true
; true). 

:- foreign(babel__implicit_primal_bea_mpp_cil_lr_2c_12(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).

primal_bea_mpp_cil_lr_2(__CIL_GP_BASKET_SIZE, __CIL_AP_NR_GROUP, __CIL_AP_GROUP_POS, __CIL_AP_ARCS, __CIL_AP_STOP_ARCS, __CIL_AP_RED_COST_OF_BEA, __CIL_AP_NEXT, I, COND, PERM, VOID) :- 


 (COND \= 0 ->
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

(RED_COST_SSA_1 < 0 ->
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
__CIL_TMP46 is ARC_SSA_1 +1* 24,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_95 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_95, 4),

(__CIL_TMP48 =:= 1 ->
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ->
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

(__CIL_TMP20 \= 0 ->
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

(__CIL_TMP21 \= 0 ->
__CIL_TMP72 is ARC_SSA_1 +1* 24,
__CIL_TMP73 is __CIL_TMP72,
BabelExp_110 is __CIL_TMP73,
babelPtrR(__CIL_TMP74, BabelExp_110, 4),

(__CIL_TMP74 =:= 2 ->
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
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

(__CIL_TMP23 \= 0 ->
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

(__CIL_TMP24 \= 0 ->
__CIL_TMP98 is ARC_SSA_1 +1* 24,
__CIL_TMP99 is __CIL_TMP98,
BabelExp_125 is __CIL_TMP99,
babelPtrR(__CIL_TMP100, BabelExp_125, 4),

(__CIL_TMP100 =:= 2 ->
__CIL_TMP25 is 1
; __CIL_TMP25 is 0),

(__CIL_TMP25 \= 0 ->
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

(__CIL_TMP26 \= 0 ->
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

(I_SSA_1 =< 50 ->
__CIL_TMP27 is 1
; __CIL_TMP27 is 0),

(__CIL_TMP27 \= 0 ->
BabelExp_141 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP124, BabelExp_141, 8),

(I_SSA_1 =< __CIL_TMP124 ->
__CIL_TMP28 is 1
; __CIL_TMP28 is 0),

(__CIL_TMP28 \= 0 ->
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

(__CIL_TMP34 =:= __CIL_TMP35 ->
__CIL_TMP29 is 1
; __CIL_TMP29 is 0),

(__CIL_TMP29 \= 0 ->
BabelExp_153 is 0,
babel_ptrE(__CIL_GP_GROUP_POS, BabelExp_153, 8)
; true),
BabelExp_154 is __CIL_GP_BASKET_SIZE,
babelPtrR(__CIL_TMP36, BabelExp_154, 8),

(__CIL_TMP36 < 50 ->
__CIL_TMP30 is 1
; __CIL_TMP30 is 0),

(__CIL_TMP30 \= 0 ->
BabelExp_155 is __CIL_GP_GROUP_POS,
babelPtrR(__CIL_TMP37, BabelExp_155, 8),

(__CIL_TMP37 \= OLD_GROUP_POS_SSA_1 ->
__CIL_TMP31 is 1
; __CIL_TMP31 is 0),

(__CIL_TMP31 \= 0 ->
TMP___2_SSA_1 is 1
; TMP___2_SSA_1 is 0)
; TMP___2_SSA_1 is 0),
COND_SSA_1 is TMP___2_SSA_1,
(COND_SSA_1 \= 0 ->
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

(__CIL_TMP15 < __CIL_TMP16 ->
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
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

(__CIL_TMP25 =< __CIL_TMP26 ->
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
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

(__CIL_TMP29 =< __CIL_TMP30 ->
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
sort_basket_cil_lr_1(__CIL_PP_CUT, __CIL_FP_CUT, __CIL_AP_MIN, __CIL_AP_MAX, __CIL_AP_L, __CIL_AP_R, CUT_SSA_2, PERM, VOID),true
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
