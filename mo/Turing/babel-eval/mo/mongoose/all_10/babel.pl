:-foreign(babel_ptrR_byte(-byte, +integer, +integer)).
:-foreign(babel_ptrR(-integer, +integer, +integer)).
:-foreign(babel_ptrE(+integer, +integer, +integer)).
:-foreign(babel_ptrFR(-float, +integer,+integer)).
:-foreign(babel_ptrFW(+integer, +float,+integer)).


babelPtrR_byte(E, P, L) :- babel_ptrR_byte(T, P, L), E is T.
babelPtrR(E, P, L) :- babel_ptrR(T, P, L), E is T.
babelPtrL(P, E, L) :- babel_ptrE(P, E, L).

babelArrayL([_\/T], 0, X, [X\/T]).
babelArrayL([H\/T], I, X, [H\/R]):- I > -1, NI is I-1, babelArrayL(T, NI, X, R), !.
babelArrayL(L, _, _, L).

:- foreign(babel__implicit_iobuf_initc_0(+integer, +positive)).

iobuf_init(IOBUF, INITIAL_SIZE, VOID) :- 


 TMP_SSA_1 is 0,
__CIL_TMP5 is IOBUF +1* 16,
__CIL_TMP6 is __CIL_TMP5,
BabelExp_0 is TMP_SSA_1,
babel_ptrE(__CIL_TMP6, BabelExp_0, 8),
__CIL_TMP7 is IOBUF +1* 8,
__CIL_TMP8 is __CIL_TMP7,
BabelExp_1 is TMP_SSA_1,
babel_ptrE(__CIL_TMP8, BabelExp_1, 8),
MEM_8 is IOBUF,
BabelExp_2 is 0,
babel_ptrE(MEM_8, BabelExp_2, 8),
babel__implicit_iobuf_initc_0(IOBUF, INITIAL_SIZE),true. 

 :- foreign(babel__implicit_iobuf_freec_1(+integer)).
:- foreign(babel__implicit_iobuf_freec_2(+integer, +positive)).

iobuf_free(IOBUF, VOID) :- 


 (IOBUF \= 0 ,
__CIL_TMP2 is 1
; __CIL_TMP2 is 0),

(__CIL_TMP2 \= 0 ->
MEM_7 is IOBUF,
BabelExp_3 is MEM_7,
babelPtrR(__CIL_TMP4, BabelExp_3, 8),
__CIL_TMP5 is __CIL_TMP4,

(__CIL_TMP5 \= 0 ,
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ->
MEM_8 is IOBUF,
BabelExp_4 is MEM_8,
babelPtrR(__CIL_TMP6, BabelExp_4, 8),
babel__implicit_iobuf_freec_1(__CIL_TMP6)
; true),
babel__implicit_iobuf_freec_2(IOBUF, 0)
; true),
true. 

 :- foreign(babel__implicit_iobuf_appendc_3(+string, +string, +integer, +string)).
:- foreign(babel__implicit_iobuf_appendc_4(+string, +string, +integer, +string)).
:- foreign(babel__implicit_iobuf_appendc_5(+integer, +integer, +positive)).
:- foreign(babel__implicit_iobuf_appendc_6(+integer, +positive,  -integer)).
:- foreign(babel__implicit_iobuf_appendc_7(+integer, +integer, +positive)).

iobuf_append(IO, BUF, LEN, BABEL_RET) :- 


 P_SSA_1 is 0,

(IO \= 0 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 =:= 0 ->
babel__implicit_iobuf_appendc_3('io != ((void *)0)', 'mongoose.c', 354, 'iobuf_append')
; true),
__CIL_TMP16 is IO +1* 8,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is IO +1* 16,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_5 is __CIL_TMP17,
babelPtrR(__CIL_TMP20, BabelExp_5, 8),
BabelExp_6 is __CIL_TMP19,
babelPtrR(__CIL_TMP21, BabelExp_6, 8),

(__CIL_TMP20 =< __CIL_TMP21 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 =:= 0 ->
babel__implicit_iobuf_appendc_4('io->len <= io->size', 'mongoose.c', 355, 'iobuf_append')
; true),
__CIL_TMP22 is IO +1* 8,
__CIL_TMP23 is __CIL_TMP22,
MEM_63 is IO,
BabelExp_7 is MEM_63,
babelPtrR(__CIL_TMP24, BabelExp_7, 8),
BabelExp_8 is __CIL_TMP23,
babelPtrR(__CIL_TMP25, BabelExp_8, 8),
__CIL_TMP26 is __CIL_TMP24 +1* __CIL_TMP25,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_9 is -1 - __CIL_TMP27,
__CIL_TMP28 is BabelExp_9,

(LEN > __CIL_TMP28 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
BABEL_RET is 0, true
; (LEN =< 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 =:= 0 ->
__CIL_TMP29 is IO +1* 8,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_10 is __CIL_TMP30,
babelPtrR(__CIL_TMP31, BabelExp_10, 8),
__CIL_TMP32 is IO +1* 16,
__CIL_TMP33 is __CIL_TMP32,
BabelExp_11 is __CIL_TMP31 + LEN,
__CIL_TMP34 is BabelExp_11,
BabelExp_12 is __CIL_TMP33,
babelPtrR(__CIL_TMP35, BabelExp_12, 8),

(__CIL_TMP34 =< __CIL_TMP35 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
__CIL_TMP36 is IO +1* 8,
__CIL_TMP37 is __CIL_TMP36,
MEM_64 is IO,
BabelExp_13 is MEM_64,
babelPtrR(__CIL_TMP38, BabelExp_13, 8),
BabelExp_14 is __CIL_TMP37,
babelPtrR(__CIL_TMP39, BabelExp_14, 8),
__CIL_TMP40 is __CIL_TMP38 +1* __CIL_TMP39,
babel__implicit_iobuf_appendc_5(__CIL_TMP40, BUF, LEN),
__CIL_TMP41 is IO +1* 8,
__CIL_TMP42 is __CIL_TMP41,
BabelExp_15 is __CIL_TMP42,
babelPtrR(__CIL_TMP43, BabelExp_15, 8),
__CIL_TMP44 is IO +1* 8,
__CIL_TMP45 is __CIL_TMP44,
BabelExp_16 is __CIL_TMP43 + LEN,
babel_ptrE(__CIL_TMP45, BabelExp_16, 8),
LEN_SSA_1 is LEN
; MEM_65 is IO,
BabelExp_17 is MEM_65,
babelPtrR(__CIL_TMP46, BabelExp_17, 8),
__CIL_TMP47 is IO +1* 8,
__CIL_TMP48 is __CIL_TMP47,
BabelExp_18 is __CIL_TMP48,
babelPtrR(__CIL_TMP49, BabelExp_18, 8),
BabelExp_19 is __CIL_TMP49 + LEN,
__CIL_TMP50 is BabelExp_19,
babel__implicit_iobuf_appendc_6(__CIL_TMP46, __CIL_TMP50 , TMP_SSA_1),
P_SSA_2 is TMP_SSA_1,

(P_SSA_2 \= 0 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
MEM_66 is IO,
BabelExp_20 is P_SSA_2,
babel_ptrE(MEM_66, BabelExp_20, 8),
__CIL_TMP51 is IO +1* 8,
__CIL_TMP52 is __CIL_TMP51,
MEM_67 is IO,
BabelExp_21 is MEM_67,
babelPtrR(__CIL_TMP53, BabelExp_21, 8),
BabelExp_22 is __CIL_TMP52,
babelPtrR(__CIL_TMP54, BabelExp_22, 8),
__CIL_TMP55 is __CIL_TMP53 +1* __CIL_TMP54,
babel__implicit_iobuf_appendc_7(__CIL_TMP55, BUF, LEN),
__CIL_TMP56 is IO +1* 8,
__CIL_TMP57 is __CIL_TMP56,
BabelExp_23 is __CIL_TMP57,
babelPtrR(__CIL_TMP58, BabelExp_23, 8),
__CIL_TMP59 is IO +1* 8,
__CIL_TMP60 is __CIL_TMP59,
BabelExp_24 is __CIL_TMP58 + LEN,
babel_ptrE(__CIL_TMP60, BabelExp_24, 8),
__CIL_TMP61 is IO +1* 8,
__CIL_TMP62 is __CIL_TMP61,
__CIL_TMP63 is IO +1* 16,
__CIL_TMP64 is __CIL_TMP63,
babelPtrR(BabelExp_25, __CIL_TMP62, 8),
babel_ptrE(__CIL_TMP64, BabelExp_25, 8),
LEN_SSA_1 is LEN
; LEN_SSA_1 is 0))
; true),
BABEL_RET is LEN_SSA_1, true),
BABEL_RET is LEN, true. 

 :- foreign(babel__implicit_iobuf_removec_8(+integer, +integer, +positive)).

iobuf_remove(IO, N___0, VOID) :- 


 (N___0 > 0 ,
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ->
__CIL_TMP5 is IO +1* 8,
__CIL_TMP6 is __CIL_TMP5,
BabelExp_26 is __CIL_TMP6,
babelPtrR(__CIL_TMP7, BabelExp_26, 8),

(N___0 =< __CIL_TMP7 ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
MEM_20 is IO,
BabelExp_27 is MEM_20,
babelPtrR(__CIL_TMP8, BabelExp_27, 8),
MEM_21 is IO,
BabelExp_28 is MEM_21,
babelPtrR(__CIL_TMP9, BabelExp_28, 8),
__CIL_TMP10 is __CIL_TMP9 +1* N___0,
__CIL_TMP11 is IO +1* 8,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_29 is __CIL_TMP12,
babelPtrR(__CIL_TMP13, BabelExp_29, 8),
BabelExp_30 is __CIL_TMP13 - N___0,
__CIL_TMP14 is BabelExp_30,
babel__implicit_iobuf_removec_8(__CIL_TMP8, __CIL_TMP10, __CIL_TMP14),
__CIL_TMP15 is IO +1* 8,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_31 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_31, 8),
__CIL_TMP18 is IO +1* 8,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_32 is __CIL_TMP17 - N___0,
babel_ptrE(__CIL_TMP19, BabelExp_32, 8)
; true)
; true),
true. 

 :- foreign(babel__implicit_ns_outc_9(+integer, +integer, +positive, +integer, +integer, +positive,  -integer)).
:- foreign(babel__implicit_ns_outc_10(+integer, +integer, +positive,  -positive)).

ns_out(NC, BUF, LEN, BABEL_RET) :- 


 __CIL_TMP14 is NC +1* 152,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_33 is 256,
__CIL_TMP16 is BabelExp_33,
BabelExp_34 is __CIL_TMP15,
babelPtrR(__CIL_TMP17, BabelExp_34, 4),
__CIL_TMP18 is __CIL_TMP16,
BabelExp_35 is __CIL_TMP17 /\ __CIL_TMP18,
__CIL_TMP12 is BabelExp_35,
(__CIL_TMP12 \= 0 ->
__CIL_TMP19 is NC +1* 32,
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is NC +1* 36,
BabelExp_36 is __CIL_TMP20,
babelPtrR(__CIL_TMP22, BabelExp_36, 4),
MEM_20 is NC +1* 36,
babel__implicit_ns_outc_9(__CIL_TMP22, BUF, LEN, 0, __CIL_TMP21, 16 , TMP_SSA_1),
N_SSA_1 is TMP_SSA_1,

(N_SSA_1 < 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
TMP___0_SSA_1 is 0
; TMP___0_SSA_1 is N_SSA_1),
BABEL_RET is TMP___0_SSA_1, true
; __CIL_TMP23 is NC +1* 80,
babel__implicit_ns_outc_10(__CIL_TMP23, BUF, LEN , TMP___1_SSA_1),BABEL_RET is TMP___1_SSA_1, true). 

 
ns_remove_conn(CONN, VOID) :- 


 __CIL_TMP5 is CONN +1* 8,
__CIL_TMP6 is __CIL_TMP5,
BabelExp_37 is __CIL_TMP6,
babelPtrR(__CIL_TMP7, BabelExp_37, 8),
__CIL_TMP8 is __CIL_TMP7,

(__CIL_TMP8 =:= 0 ,
__CIL_TMP2 is 1
; __CIL_TMP2 is 0),

(__CIL_TMP2 \= 0 ->
__CIL_TMP9 is CONN +1* 24,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_38 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_38, 8),
__CIL_TMP12 is __CIL_TMP11,
MEM_25 is CONN,
babelPtrR(BabelExp_39, MEM_25, 8),
babel_ptrE(__CIL_TMP12, BabelExp_39, 8)
; true),
__CIL_TMP13 is CONN +1* 8,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_40 is __CIL_TMP14,
babelPtrR(__CIL_TMP3, BabelExp_40, 8),
(__CIL_TMP3 \= 0 ->
__CIL_TMP15 is CONN +1* 8,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_41 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_41, 8),
__CIL_TMP18 is __CIL_TMP17,
MEM_26 is CONN,
babelPtrR(BabelExp_42, MEM_26, 8),
babel_ptrE(__CIL_TMP18, BabelExp_42, 8)
; true),
MEM_27 is CONN,
BabelExp_43 is MEM_27,
babelPtrR(__CIL_TMP4, BabelExp_43, 8),
(__CIL_TMP4 \= 0 ->
__CIL_TMP19 is CONN +1* 8,
__CIL_TMP20 is __CIL_TMP19,
MEM_28 is CONN,
BabelExp_44 is MEM_28,
babelPtrR(__CIL_TMP21, BabelExp_44, 8),
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22 +1* 8,
__CIL_TMP24 is __CIL_TMP23,
babelPtrR(BabelExp_45, __CIL_TMP20, 8),
babel_ptrE(__CIL_TMP24, BabelExp_45, 8)
; true),
true. 

 :- foreign(babel__implicit_ns_destroy_connc_11(+integer)).
:- foreign(babel__implicit_ns_destroy_connc_12(+integer)).
:- foreign(babel__implicit_ns_destroy_connc_13(+integer)).
:- foreign(babel__implicit_ns_destroy_connc_14(+integer)).

ns_destroy_conn(CONN, VOID) :- 


 __CIL_TMP2 is CONN +1* 32,
__CIL_TMP3 is __CIL_TMP2,
BabelExp_46 is __CIL_TMP3,
babelPtrR(__CIL_TMP4, BabelExp_46, 4),
babel__implicit_ns_destroy_connc_11(__CIL_TMP4),
__CIL_TMP5 is CONN +1* 56,
babel__implicit_ns_destroy_connc_12(__CIL_TMP5),
__CIL_TMP6 is CONN +1* 80,
babel__implicit_ns_destroy_connc_13(__CIL_TMP6),
babel__implicit_ns_destroy_connc_14(CONN),true. 

 :- foreign(babel__implicit_ns_close_connc_15(+integer, +integer, +integer)).
:- foreign(babel__implicit_ns_close_connc_16(+integer)).
:- foreign(babel__implicit_ns_close_connc_17(+integer)).

ns_close_conn(CONN, VOID) :- 


 babel__implicit_ns_close_connc_15(CONN, 5, 0),
babel__implicit_ns_close_connc_16(CONN),
babel__implicit_ns_close_connc_17(CONN),true. 

 :- foreign(babel__implicit_ns_set_close_on_execc_18(+integer, +integer, +integer)).

ns_set_close_on_exec(SOCK, VOID) :- 


 babel__implicit_ns_set_close_on_execc_18(SOCK, 2, 1),true. 

 :- foreign(babel__implicit_ns_socketpairc_19(+integer, +integer,  -integer)).

ns_socketpair(SP, BABEL_RET) :- 


 babel__implicit_ns_socketpairc_19(SP, 1 , TMP_SSA_1),BABEL_RET is TMP_SSA_1, true. 

 :- foreign(babel__implicit_ns_resolve2c_20(+integer,  -integer)).
:- foreign(babel__implicit_ns_resolve2c_21(+integer, +integer, +integer)).

ns_resolve2(HOST, INA, BABEL_RET) :- 


 babel__implicit_ns_resolve2c_20(HOST , HE_SSA_1),

(HE_SSA_1 =:= 0 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
BABEL_RET is 0, true
; __CIL_TMP6 is HE_SSA_1 +1* 24,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_47 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_47, 8),
__CIL_TMP9 is __CIL_TMP8 +8* 0,
BabelExp_48 is __CIL_TMP9,
babelPtrR(__CIL_TMP10, BabelExp_48, 8),
babel__implicit_ns_resolve2c_21(INA, __CIL_TMP10, 4),BABEL_RET is 1, true). 

 :- foreign(babel__implicit_accept_connc_22(+integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_accept_connc_23(+integer, +integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_accept_connc_24(+integer)).
:- foreign(babel__implicit_accept_connc_25(+integer, +integer, +integer)).

accept_conn(__CIL_PP_SA, __CIL_PP_LEN, __CIL_FP_LEN, LS, BABEL_RET) :- 


 BabelExp_49 is 16,
LEN_SSA_1 is BabelExp_49,
BabelExp_50 is LEN_SSA_1,
babel_ptrE(__CIL_FP_LEN, BabelExp_50, 4),
__CIL_TMP16 is LS +1* 32,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_51 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_51, 4),
babel__implicit_accept_connc_22(__CIL_TMP18, __CIL_PP_SA, __CIL_PP_LEN , SOCK_SSA_2),

(SOCK_SSA_2 =:= -1 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 =:= 0 ->
__CIL_TMP19 is LS +1* 24,
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is LS +1* 144,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is LS +1* 120,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_52 is __CIL_TMP20,
babelPtrR(__CIL_TMP25, BabelExp_52, 8),
BabelExp_53 is __CIL_TMP22,
babelPtrR(__CIL_TMP26, BabelExp_53, 8),
BabelExp_54 is __CIL_TMP24,
babelPtrR(__CIL_TMP27, BabelExp_54, 8),
babel__implicit_accept_connc_23(__CIL_TMP25, SOCK_SSA_2, __CIL_TMP26, __CIL_TMP27 , C_SSA_2),

(C_SSA_2 =:= 0 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
babel__implicit_accept_connc_24(SOCK_SSA_2)
; __CIL_TMP28 is C_SSA_2 +1* 16,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_55 is LS,
babel_ptrE(__CIL_TMP29, BabelExp_55, 8),
__CIL_TMP30 is LS +1* 128,
__CIL_TMP31 is __CIL_TMP30,
__CIL_TMP32 is C_SSA_2 +1* 128,
__CIL_TMP33 is __CIL_TMP32,
babelPtrR(BabelExp_56, __CIL_TMP31, 8),
babel_ptrE(__CIL_TMP33, BabelExp_56, 8),
babel__implicit_accept_connc_25(C_SSA_2, 1, __CIL_PP_SA))
; true),
BABEL_RET is C_SSA_2, true. 

 :- foreign(babel__implicit_ns_is_errorc_26( -integer)).
:- foreign(babel__implicit_ns_is_errorc_27( -integer)).
:- foreign(babel__implicit_ns_is_errorc_28( -integer)).
:- foreign(babel__implicit_ns_is_errorc_29( -integer)).

ns_is_error(N___0, BABEL_RET) :- 


 (N___0 =:= 0 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
TMP___3_SSA_1 is 1
; (N___0 < 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
babel__implicit_ns_is_errorc_26(TMP_SSA_1),
BabelExp_57 is TMP_SSA_1,
babelPtrR(__CIL_TMP18, BabelExp_57, 4),

(__CIL_TMP18 \= 4 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
babel__implicit_ns_is_errorc_27(TMP___0_SSA_1),
BabelExp_58 is TMP___0_SSA_1,
babelPtrR(__CIL_TMP19, BabelExp_58, 4),

(__CIL_TMP19 \= 115 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
babel__implicit_ns_is_errorc_28(TMP___1_SSA_1),
BabelExp_59 is TMP___1_SSA_1,
babelPtrR(__CIL_TMP20, BabelExp_59, 4),

(__CIL_TMP20 \= 11 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
babel__implicit_ns_is_errorc_29(TMP___2_SSA_1),
BabelExp_60 is TMP___2_SSA_1,
babelPtrR(__CIL_TMP21, BabelExp_60, 4),

(__CIL_TMP21 \= 11 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
TMP___3_SSA_1 is 1
; TMP___3_SSA_1 is 0)
; TMP___3_SSA_1 is 0)
; TMP___3_SSA_1 is 0)
; TMP___3_SSA_1 is 0)
; TMP___3_SSA_1 is 0)),
BABEL_RET is TMP___3_SSA_1, true. 

 :- foreign(babel__implicit_ns_hexdumpc_30(+integer, +integer, +integer, +integer, +integer, +positive)).
:- foreign(babel__implicit_ns_hexdumpc_31(+integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_ns_hexdumpc_32(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_ns_hexdumpc_33(+integer, +positive, +integer, +integer,  -integer)).

ns_hexdump(__CIL_PP_LEN, __CIL_PP_DST, __CIL_PP_DST_LEN, __CIL_PP_P, __CIL_PP_I, __CIL_PP_N, __CIL_FP_LEN, __CIL_FP_DST, __CIL_FP_DST_LEN, __CIL_FP_P, __CIL_FP_I, __CIL_FP_N, BUF, LEN, DST, DST_LEN, BABEL_RET) :- 


 P_SSA_1 is BUF,
BabelExp_61 is 0,
babelArrayL(ascii, 0, BabelExp_61, ascii),
TMP_SSA_1 is 1,
BabelExp_62 is LEN,
babel_ptrE(__CIL_FP_LEN, BabelExp_62, 4),
BabelExp_63 is DST,
babel_ptrE(__CIL_FP_DST, BabelExp_63, 8),
BabelExp_64 is DST_LEN,
babel_ptrE(__CIL_FP_DST_LEN, BabelExp_64, 4),
BabelExp_65 is P_SSA_1,
babel_ptrE(__CIL_FP_P, BabelExp_65, 8),
babel__implicit_ns_hexdumpc_30(__CIL_PP_LEN, __CIL_PP_DST, __CIL_PP_DST_LEN, __CIL_PP_P, ASCII, TMP_SSA_1),
BabelExp_66 is __CIL_FP_LEN,
babelPtrR(LEN_SSA_1, BabelExp_66, 4),
BabelExp_67 is __CIL_FP_DST,
babelPtrR(DST_SSA_1, BabelExp_67, 8),
BabelExp_68 is __CIL_FP_DST_LEN,
babelPtrR(DST_LEN_SSA_1, BabelExp_68, 4),
BabelExp_69 is __CIL_FP_P,
babelPtrR(P_SSA_2, BabelExp_69, 8),
N_SSA_1 is 0,
I_SSA_1 is 0,
BabelExp_70 is DST_SSA_1,
babel_ptrE(__CIL_FP_DST, BabelExp_70, 8),
BabelExp_71 is DST_LEN_SSA_1,
babel_ptrE(__CIL_FP_DST_LEN, BabelExp_71, 4),
BabelExp_72 is I_SSA_1,
babel_ptrE(__CIL_FP_I, BabelExp_72, 4),
BabelExp_73 is N_SSA_1,
babel_ptrE(__CIL_FP_N, BabelExp_73, 4),
babel__implicit_ns_hexdumpc_31(__CIL_PP_DST, __CIL_PP_DST_LEN, __CIL_PP_I, __CIL_PP_N, LEN_SSA_1, P_SSA_2, ASCII),
BabelExp_74 is __CIL_FP_DST,
babelPtrR(DST_SSA_2, BabelExp_74, 8),
BabelExp_75 is __CIL_FP_DST_LEN,
babelPtrR(DST_LEN_SSA_2, BabelExp_75, 4),
BabelExp_76 is __CIL_FP_I,
babelPtrR(I_SSA_2, BabelExp_76, 4),
BabelExp_77 is __CIL_FP_N,
babelPtrR(N_SSA_2, BabelExp_77, 4),
BabelExp_78 is DST_SSA_2,
babel_ptrE(__CIL_FP_DST, BabelExp_78, 8),
BabelExp_79 is DST_LEN_SSA_2,
babel_ptrE(__CIL_FP_DST_LEN, BabelExp_79, 4),
BabelExp_80 is N_SSA_2,
babel_ptrE(__CIL_FP_N, BabelExp_80, 4),
babel__implicit_ns_hexdumpc_32(__CIL_PP_DST, __CIL_PP_DST_LEN, __CIL_PP_N, I_SSA_2),
BabelExp_81 is __CIL_FP_DST,
babelPtrR(DST_SSA_3, BabelExp_81, 8),
BabelExp_82 is __CIL_FP_DST_LEN,
babelPtrR(DST_LEN_SSA_3, BabelExp_82, 4),
BabelExp_83 is __CIL_FP_N,
babelPtrR(N_SSA_3, BabelExp_83, 4),
__CIL_TMP46 is DST_SSA_3 +1* N_SSA_3,
BabelExp_84 is DST_LEN_SSA_3 - N_SSA_3,
__CIL_TMP47 is BabelExp_84,
BabelExp_85 is ASCII,
__CIL_TMP48 is BabelExp_85,
babel__implicit_ns_hexdumpc_33(__CIL_TMP46, __CIL_TMP47, '  %S\\N\\N', __CIL_TMP48 , TMP___5_SSA_1),
BabelExp_86 is N_SSA_3 + TMP___5_SSA_1,
N_SSA_4 is BabelExp_86,BABEL_RET is N_SSA_4, true. 

 :- foreign(babel__implicit_ns_write_to_socketc_34(+integer, +integer, +positive, +integer,  -integer)).
:- foreign(babel__implicit_ns_write_to_socketc_35(+integer, +integer, +integer)).
:- foreign(babel__implicit_ns_write_to_socketc_36(+integer,  -integer)).
:- foreign(babel__implicit_ns_write_to_socketc_37(+integer, +positive)).

ns_write_to_socket(__CIL_PP_N, __CIL_FP_N, CONN, VOID) :- 


 __CIL_TMP15 is CONN +1* 80,
IO_SSA_1 is __CIL_TMP15,
__CIL_TMP16 is CONN +1* 32,
__CIL_TMP17 is __CIL_TMP16,
MEM_26 is IO_SSA_1,
BabelExp_87 is MEM_26,
babelPtrR(__CIL_TMP18, BabelExp_87, 8),
__CIL_TMP19 is IO_SSA_1 +1* 8,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_88 is __CIL_TMP17,
babelPtrR(__CIL_TMP21, BabelExp_88, 4),
BabelExp_89 is __CIL_TMP20,
babelPtrR(__CIL_TMP22, BabelExp_89, 8),
babel__implicit_ns_write_to_socketc_34(__CIL_TMP21, __CIL_TMP18, __CIL_TMP22, 0 , TMP_SSA_1),
N_SSA_2 is TMP_SSA_1,
BabelExp_90 is N_SSA_2,
babel_ptrE(__CIL_FP_N, BabelExp_90, 4),
babel__implicit_ns_write_to_socketc_35(CONN, 4, __CIL_PP_N),
BabelExp_91 is __CIL_FP_N,
babelPtrR(N_SSA_3, BabelExp_91, 4),
babel__implicit_ns_write_to_socketc_36(N_SSA_3 , TMP___0_SSA_1),
(TMP___0_SSA_1 \= 0 ->
__CIL_TMP23 is CONN +1* 152,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_92 is 16,
__CIL_TMP25 is BabelExp_92,
BabelExp_93 is __CIL_TMP24,
babelPtrR(__CIL_TMP26, BabelExp_93, 4),
__CIL_TMP27 is __CIL_TMP25,
__CIL_TMP28 is CONN +1* 152,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_94 is __CIL_TMP26 \/ __CIL_TMP27,
babel_ptrE(__CIL_TMP29, BabelExp_94, 4)
; (N_SSA_3 > 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
babel__implicit_ns_write_to_socketc_37(IO_SSA_1, N_SSA_3)
; true)),
true. 

 :- foreign(babel__implicit_ns_sendc_38(+integer, +integer, +positive,  -positive)).

ns_send(CONN, BUF, LEN, BABEL_RET) :- 


 babel__implicit_ns_sendc_38(CONN, BUF, LEN , TMP_SSA_1),BABEL_RET is TMP_SSA_1, true. 

 
ns_next(S, CONN, BABEL_RET) :- 


 (CONN =:= 0 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
MEM_5 is S,
BabelExp_112 is MEM_5,
babelPtrR(TMP_SSA_1, BabelExp_112, 8)
; MEM_6 is CONN,
BabelExp_113 is MEM_6,
babelPtrR(TMP_SSA_1, BabelExp_113, 8)),
BABEL_RET is TMP_SSA_1, true. 

 :- foreign(babel__implicit_ns_mgr_initc_42(+integer, +integer, +integer)).
:- foreign(babel__implicit_ns_mgr_initc_43(+integer, +integer)).
:- foreign(babel__implicit_ns_mgr_initc_44(+integer)).

ns_mgr_init(S, USER_DATA, VOID) :- 


 babel__implicit_ns_mgr_initc_42(S, 0, 32),
TMP_SSA_1 is -1,
__CIL_TMP5 is S +1* 16,
__CIL_TMP6 is __CIL_TMP5,
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7 +4* 1,
BabelExp_114 is TMP_SSA_1,
babel_ptrE(__CIL_TMP8, BabelExp_114, 4),
__CIL_TMP9 is S +1* 16,
__CIL_TMP10 is __CIL_TMP9,
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_115 is TMP_SSA_1,
babel_ptrE(__CIL_TMP12, BabelExp_115, 4),
__CIL_TMP13 is S +1* 24,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_116 is USER_DATA,
babel_ptrE(__CIL_TMP14, BabelExp_116, 8),
babel__implicit_ns_mgr_initc_43(13, 1),
babel__implicit_ns_mgr_initc_44(S),true. 

 :- foreign(babel__implicit_ns_mgr_freec_45(+integer, +integer)).
:- foreign(babel__implicit_ns_mgr_freec_46(+integer)).
:- foreign(babel__implicit_ns_mgr_freec_47(+integer)).
:- foreign(babel__implicit_ns_mgr_freec_48(+integer)).
:- foreign(babel__implicit_ns_mgr_freec_49(+integer)).
:- foreign(babel__implicit_ns_mgr_freec_50(+integer)).

ns_mgr_free(S, VOID) :- 


 (S =:= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
true
; babel__implicit_ns_mgr_freec_45(S, 0),
__CIL_TMP11 is S +1* 16,
__CIL_TMP12 is __CIL_TMP11,
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_117 is __CIL_TMP14,
babelPtrR(__CIL_TMP15, BabelExp_117, 4),

(__CIL_TMP15 \= -1 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
__CIL_TMP16 is S +1* 16,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_118 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_118, 4),
babel__implicit_ns_mgr_freec_46(__CIL_TMP20)
; true),
__CIL_TMP21 is S +1* 16,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is __CIL_TMP23 +4* 1,
BabelExp_119 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_119, 4),

(__CIL_TMP25 \= -1 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
__CIL_TMP26 is S +1* 16,
__CIL_TMP27 is __CIL_TMP26,
__CIL_TMP28 is __CIL_TMP27,
__CIL_TMP29 is __CIL_TMP28 +4* 1,
BabelExp_120 is __CIL_TMP29,
babelPtrR(__CIL_TMP30, BabelExp_120, 4),
babel__implicit_ns_mgr_freec_47(__CIL_TMP30)
; true),
TMP_SSA_1 is -1,
__CIL_TMP31 is S +1* 16,
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32,
__CIL_TMP34 is __CIL_TMP33 +4* 1,
BabelExp_121 is TMP_SSA_1,
babel_ptrE(__CIL_TMP34, BabelExp_121, 4),
__CIL_TMP35 is S +1* 16,
__CIL_TMP36 is __CIL_TMP35,
__CIL_TMP37 is __CIL_TMP36,
__CIL_TMP38 is __CIL_TMP37,
BabelExp_122 is TMP_SSA_1,
babel_ptrE(__CIL_TMP38, BabelExp_122, 4),
MEM_54 is S,
BabelExp_123 is MEM_54,
babelPtrR(CONN_SSA_1, BabelExp_123, 8),
babel__implicit_ns_mgr_freec_48(CONN_SSA_1),true),
__CIL_TMP39 is S +1* 16,
__CIL_TMP40 is __CIL_TMP39,
__CIL_TMP41 is __CIL_TMP40,
__CIL_TMP42 is __CIL_TMP41 +4* 1,
BabelExp_124 is __CIL_TMP42,
babelPtrR(__CIL_TMP43, BabelExp_124, 4),

(__CIL_TMP43 \= -1 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ->
__CIL_TMP44 is S +1* 16,
__CIL_TMP45 is __CIL_TMP44,
__CIL_TMP46 is __CIL_TMP45,
__CIL_TMP47 is __CIL_TMP46 +4* 1,
BabelExp_125 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_125, 4),
babel__implicit_ns_mgr_freec_49(__CIL_TMP48)
; true),
TMP_SSA_1 is -1,
__CIL_TMP49 is S +1* 16,
__CIL_TMP50 is __CIL_TMP49,
__CIL_TMP51 is __CIL_TMP50,
__CIL_TMP52 is __CIL_TMP51 +4* 1,
BabelExp_126 is TMP_SSA_1,
babel_ptrE(__CIL_TMP52, BabelExp_126, 4),
__CIL_TMP53 is S +1* 16,
__CIL_TMP54 is __CIL_TMP53,
__CIL_TMP55 is __CIL_TMP54,
__CIL_TMP56 is __CIL_TMP55,
BabelExp_127 is TMP_SSA_1,
babel_ptrE(__CIL_TMP56, BabelExp_127, 4),
MEM_55 is S,
BabelExp_128 is MEM_55,
babelPtrR(CONN_SSA_1, BabelExp_128, 8),
babel__implicit_ns_mgr_freec_50(CONN_SSA_1),true. 

 :- foreign(babel__implicit_mg_mmapc_51(+integer,  -integer)).
:- foreign(babel__implicit_mg_mmapc_52(+integer, +positive, +integer, +integer, +integer, +integer,  -integer)).

mg_mmap(FP, SIZE, BABEL_RET) :- 


 babel__implicit_mg_mmapc_51(FP , TMP_SSA_1),
babel__implicit_mg_mmapc_52(0, SIZE, 1, 2, TMP_SSA_1, 0 , TMP___0_SSA_1),
P_SSA_1 is TMP___0_SSA_1,

(P_SSA_1 =:= -1 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
TMP___1_SSA_1 is 0
; TMP___1_SSA_1 is P_SSA_1),
BABEL_RET is TMP___1_SSA_1, true. 


% :- foreign(babel__implicit_mg_send_digest_auth_requestc_5(+integer,  -integer)).
%:- foreign(babel__implicit_mg_send_digest_auth_requestc_6(+integer, +string, +integer, +positive)).
%:- foreign(babel__implicit_mg_send_digest_auth_requestc_7(+integer)).
%
%mg_send_digest_auth_request(C, VOID) :- 
%
%
% BabelExp_12 is 0 + 8,
%__CIL_TMP6 is BabelExp_12,
%__CIL_TMP7 is __CIL_TMP6,
%__CIL_TMP8 is __CIL_TMP7,
%BabelExp_13 is C - __CIL_TMP8,
%__CIL_TMP9 is BabelExp_13,
%CONN_SSA_1 is __CIL_TMP9,
%__CIL_TMP10 is C +1* 636,
%__CIL_TMP11 is __CIL_TMP10,
%BabelExp_14 is 401,
%babel_ptrE(__CIL_TMP11, BabelExp_14, 4),
%babel__implicit_mg_send_digest_auth_requestc_5(0 , TMP_SSA_1),
%__CIL_TMP12 is CONN_SSA_1 +1* 680,
%__CIL_TMP13 is __CIL_TMP12,
%BabelExp_15 is __CIL_TMP13,
%babelPtrR(__CIL_TMP14, BabelExp_15, 8),
%__CIL_TMP15 is __CIL_TMP14,
%__CIL_TMP16 is __CIL_TMP15 +1* 56,
%__CIL_TMP17 is __CIL_TMP16,
%__CIL_TMP18 is __CIL_TMP17,
%__CIL_TMP19 is __CIL_TMP18 +8* 2,
%BabelExp_16 is __CIL_TMP19,
%babelPtrR(__CIL_TMP20, BabelExp_16, 8),
%babel__implicit_mg_send_digest_auth_requestc_6(C, 'HTTP/1.1 401 Unauthorized\r\nWWW-Authenticate: Digest qop=\'auth\', realm=\'%s\', nonce=\'%lu\'\r\n\r\n', __CIL_TMP20, TMP_SSA_1),
%babel__implicit_mg_send_digest_auth_requestc_7(CONN_SSA_1),true. 
%
% :- foreign(babel__implicit_byteReversec_8( -integer)).
%:- foreign(babel__implicit_byteReversec_9(+integer, +positive)).
%
%byteReverse(BUF, LONGS, VOID) :- 
%
%
% babel__implicit_byteReversec_8(TMP_SSA_1),
%(TMP_SSA_1 \= 0 ->
%babel__implicit_byteReversec_9(BUF, LONGS)
%; true),
%true. 
%
% 
%mD5Init(CTX, VOID) :- 
%
%
% MEM_18 is CTX,
%__CIL_TMP2 is MEM_18,
%__CIL_TMP3 is __CIL_TMP2,
%BabelExp_17 is 1732584193,
%babel_ptrE(__CIL_TMP3, BabelExp_17, 4),
%MEM_19 is CTX,
%__CIL_TMP4 is MEM_19,
%__CIL_TMP5 is __CIL_TMP4 +4* 1,
%BabelExp_18 is 4023233417,
%babel_ptrE(__CIL_TMP5, BabelExp_18, 4),
%MEM_20 is CTX,
%__CIL_TMP6 is MEM_20,
%__CIL_TMP7 is __CIL_TMP6 +4* 2,
%BabelExp_19 is 2562383102,
%babel_ptrE(__CIL_TMP7, BabelExp_19, 4),
%MEM_21 is CTX,
%__CIL_TMP8 is MEM_21,
%__CIL_TMP9 is __CIL_TMP8 +4* 3,
%BabelExp_20 is 271733878,
%babel_ptrE(__CIL_TMP9, BabelExp_20, 4),
%__CIL_TMP10 is CTX +1* 16,
%__CIL_TMP11 is __CIL_TMP10,
%__CIL_TMP12 is __CIL_TMP11,
%__CIL_TMP13 is __CIL_TMP12,
%BabelExp_21 is 0,
%babel_ptrE(__CIL_TMP13, BabelExp_21, 4),
%__CIL_TMP14 is CTX +1* 16,
%__CIL_TMP15 is __CIL_TMP14,
%__CIL_TMP16 is __CIL_TMP15,
%__CIL_TMP17 is __CIL_TMP16 +4* 1,
%BabelExp_22 is 0,
%babel_ptrE(__CIL_TMP17, BabelExp_22, 4),true. 
%
% :- foreign(babel__implicit_MD5Updatec_10(+integer, +integer, +positive)).
%:- foreign(babel__implicit_MD5Updatec_11(+integer, +integer, +positive)).
%:- foreign(babel__implicit_MD5Updatec_12(+integer, +integer)).
%:- foreign(babel__implicit_MD5Updatec_13(+integer, +integer)).
%:- foreign(babel__implicit_MD5Updatec_14(+integer, +integer, +integer)).
%:- foreign(babel__implicit_MD5Updatec_15(+integer, +integer, +positive)).
%:- foreign(babel__implicit_MD5Updatec_16(+integer, +integer, +integer)).
%:- foreign(babel__implicit_MD5Updatec_17(+integer, +integer, +positive)).
%
%mD5Update(__CIL_PP_CTX, __CIL_PP_BUF, __CIL_PP_LEN, __CIL_FP_CTX, __CIL_FP_BUF, __CIL_FP_LEN, CTX, BUF, LEN, VOID) :- 
%
%
% __CIL_TMP25 is CTX +1* 16,
%__CIL_TMP26 is __CIL_TMP25,
%__CIL_TMP27 is __CIL_TMP26,
%__CIL_TMP28 is __CIL_TMP27,
%BabelExp_23 is __CIL_TMP28,
%babelPtrR(T_SSA_1, BabelExp_23, 4),
%BabelExp_24 is LEN << 3,
%__CIL_TMP29 is BabelExp_24,
%BabelExp_25 is T_SSA_1 + __CIL_TMP29,
%TMP_SSA_1 is BabelExp_25,
%__CIL_TMP30 is CTX +1* 16,
%__CIL_TMP31 is __CIL_TMP30,
%__CIL_TMP32 is __CIL_TMP31,
%__CIL_TMP33 is __CIL_TMP32,
%BabelExp_26 is TMP_SSA_1,
%babel_ptrE(__CIL_TMP33, BabelExp_26, 4),
%
%(TMP_SSA_1 < T_SSA_1 ,
%__CIL_TMP23 is 1
%; __CIL_TMP23 is 0),
%
%(__CIL_TMP23 \= 0 ->
%__CIL_TMP34 is CTX +1* 16,
%__CIL_TMP35 is __CIL_TMP34,
%__CIL_TMP36 is __CIL_TMP35,
%__CIL_TMP37 is __CIL_TMP36 +4* 1,
%BabelExp_27 is __CIL_TMP37,
%babelPtrR(__CIL_TMP38, BabelExp_27, 4),
%__CIL_TMP39 is CTX +1* 16,
%__CIL_TMP40 is __CIL_TMP39,
%__CIL_TMP41 is __CIL_TMP40,
%__CIL_TMP42 is __CIL_TMP41 +4* 1,
%BabelExp_28 is __CIL_TMP38 + 1,
%babel_ptrE(__CIL_TMP42, BabelExp_28, 4)
%; true),
%__CIL_TMP43 is CTX +1* 16,
%__CIL_TMP44 is __CIL_TMP43,
%__CIL_TMP45 is __CIL_TMP44,
%__CIL_TMP46 is __CIL_TMP45 +4* 1,
%BabelExp_29 is __CIL_TMP46,
%babelPtrR(__CIL_TMP47, BabelExp_29, 4),
%BabelExp_30 is LEN >> 29,
%__CIL_TMP48 is BabelExp_30,
%__CIL_TMP49 is CTX +1* 16,
%__CIL_TMP50 is __CIL_TMP49,
%__CIL_TMP51 is __CIL_TMP50,
%__CIL_TMP52 is __CIL_TMP51 +4* 1,
%BabelExp_31 is __CIL_TMP47 + __CIL_TMP48,
%babel_ptrE(__CIL_TMP52, BabelExp_31, 4),
%BabelExp_32 is T_SSA_1 >> 3,
%__CIL_TMP53 is BabelExp_32,
%BabelExp_33 is __CIL_TMP53 /\ 63,
%T_SSA_2 is BabelExp_33,
%(T_SSA_2 \= 0 ->
%__CIL_TMP54 is CTX +1* 24,
%__CIL_TMP55 is __CIL_TMP54,
%__CIL_TMP56 is __CIL_TMP55,
%P_SSA_1 is __CIL_TMP56 +1* T_SSA_2,
%BabelExp_34 is 64 - T_SSA_2,
%T_SSA_3 is BabelExp_34,
%
%(LEN < T_SSA_3 ,
%__CIL_TMP24 is 1
%; __CIL_TMP24 is 0),
%
%(__CIL_TMP24 \= 0 ->
%babel__implicit_MD5Updatec_10(P_SSA_1, BUF, LEN),true
%; babel__implicit_MD5Updatec_11(P_SSA_1, BUF, T_SSA_3),
%__CIL_TMP57 is CTX +1* 24,
%__CIL_TMP58 is __CIL_TMP57,
%__CIL_TMP59 is __CIL_TMP58,
%babel__implicit_MD5Updatec_12(__CIL_TMP59, 16),
%MEM_67 is CTX,
%__CIL_TMP60 is MEM_67,
%__CIL_TMP61 is CTX +1* 24,
%__CIL_TMP62 is __CIL_TMP61,
%__CIL_TMP63 is __CIL_TMP62,
%babel__implicit_MD5Updatec_13(__CIL_TMP60, __CIL_TMP63),
%BUF_SSA_1 is BUF +1* T_SSA_3,
%BabelExp_35 is LEN - T_SSA_3,
%LEN_SSA_1 is BabelExp_35,
%BabelExp_36 is CTX,
%babel_ptrE(__CIL_FP_CTX, BabelExp_36, 8),
%BabelExp_37 is BUF_SSA_1,
%babel_ptrE(__CIL_FP_BUF, BabelExp_37, 8),
%BabelExp_38 is LEN_SSA_1,
%babel_ptrE(__CIL_FP_LEN, BabelExp_38, 4),
%babel__implicit_MD5Updatec_14(__CIL_PP_CTX, __CIL_PP_BUF, __CIL_PP_LEN),
%BabelExp_39 is __CIL_FP_CTX,
%babelPtrR(CTX_SSA_1, BabelExp_39, 8),
%BabelExp_40 is __CIL_FP_BUF,
%babelPtrR(BUF_SSA_2, BabelExp_40, 8),
%BabelExp_41 is __CIL_FP_LEN,
%babelPtrR(LEN_SSA_2, BabelExp_41, 4),
%__CIL_TMP64 is CTX_SSA_1 +1* 24,
%__CIL_TMP65 is __CIL_TMP64,
%__CIL_TMP66 is __CIL_TMP65,
%babel__implicit_MD5Updatec_15(__CIL_TMP66, BUF_SSA_2, LEN_SSA_2),true)
%; BabelExp_42 is CTX,
%babel_ptrE(__CIL_FP_CTX, BabelExp_42, 8),
%BabelExp_43 is BUF,
%babel_ptrE(__CIL_FP_BUF, BabelExp_43, 8),
%BabelExp_44 is LEN,
%babel_ptrE(__CIL_FP_LEN, BabelExp_44, 4),
%babel__implicit_MD5Updatec_16(__CIL_PP_CTX, __CIL_PP_BUF, __CIL_PP_LEN),
%BabelExp_45 is __CIL_FP_CTX,
%babelPtrR(CTX_SSA_1, BabelExp_45, 8),
%BabelExp_46 is __CIL_FP_BUF,
%babelPtrR(BUF_SSA_1, BabelExp_46, 8),
%BabelExp_47 is __CIL_FP_LEN,
%babelPtrR(LEN_SSA_1, BabelExp_47, 4),
%__CIL_TMP67 is CTX_SSA_1 +1* 24,
%__CIL_TMP68 is __CIL_TMP67,
%__CIL_TMP69 is __CIL_TMP68,
%babel__implicit_MD5Updatec_17(__CIL_TMP69, BUF_SSA_1, LEN_SSA_1),true). 
%
% :- foreign(babel__implicit_MD5Finalc_18(+integer, +integer, +positive)).
%:- foreign(babel__implicit_MD5Finalc_19(+integer, +integer)).
%:- foreign(babel__implicit_MD5Finalc_20(+integer, +integer)).
%:- foreign(babel__implicit_MD5Finalc_21(+integer, +integer, +positive)).
%:- foreign(babel__implicit_MD5Finalc_22(+integer, +integer, +positive)).
%:- foreign(babel__implicit_MD5Finalc_23(+integer, +integer)).
%:- foreign(babel__implicit_MD5Finalc_24(+integer, +integer)).
%:- foreign(babel__implicit_MD5Finalc_25(+integer, +integer)).
%:- foreign(babel__implicit_MD5Finalc_26(+integer, +integer, +positive)).
%:- foreign(babel__implicit_MD5Finalc_27(+integer, +integer, +integer)).
%
%mD5Final(DIGEST, CTX, VOID) :- 
%
%
% __CIL_TMP14 is CTX +1* 16,
%__CIL_TMP15 is __CIL_TMP14,
%__CIL_TMP16 is __CIL_TMP15,
%__CIL_TMP17 is __CIL_TMP16,
%BabelExp_48 is __CIL_TMP17,
%babelPtrR(__CIL_TMP18, BabelExp_48, 4),
%BabelExp_49 is __CIL_TMP18 >> 3,
%__CIL_TMP19 is BabelExp_49,
%BabelExp_50 is __CIL_TMP19 /\ 63,
%COUNT_SSA_1 is BabelExp_50,
%__CIL_TMP20 is CTX +1* 24,
%__CIL_TMP21 is __CIL_TMP20,
%__CIL_TMP22 is __CIL_TMP21,
%P_SSA_1 is __CIL_TMP22 +1* COUNT_SSA_1,
%TMP_SSA_1 is P_SSA_1,
%P_SSA_2 is P_SSA_1 +1* 1,
%BabelExp_51 is 128,
%babel_ptrE(TMP_SSA_1, BabelExp_51, 1),
%BabelExp_52 is 63 - COUNT_SSA_1,
%COUNT_SSA_2 is BabelExp_52,
%
%(COUNT_SSA_2 < 8 ,
%__CIL_TMP13 is 1
%; __CIL_TMP13 is 0),
%
%(__CIL_TMP13 \= 0 ->
%babel__implicit_MD5Finalc_18(P_SSA_2, 0, COUNT_SSA_2),
%__CIL_TMP23 is CTX +1* 24,
%__CIL_TMP24 is __CIL_TMP23,
%__CIL_TMP25 is __CIL_TMP24,
%babel__implicit_MD5Finalc_19(__CIL_TMP25, 16),
%MEM_52 is CTX,
%__CIL_TMP26 is MEM_52,
%__CIL_TMP27 is CTX +1* 24,
%__CIL_TMP28 is __CIL_TMP27,
%__CIL_TMP29 is __CIL_TMP28,
%babel__implicit_MD5Finalc_20(__CIL_TMP26, __CIL_TMP29),
%__CIL_TMP30 is CTX +1* 24,
%__CIL_TMP31 is __CIL_TMP30,
%__CIL_TMP32 is __CIL_TMP31,
%babel__implicit_MD5Finalc_21(__CIL_TMP32, 0, 56)
%; BabelExp_53 is COUNT_SSA_2 - 8,
%__CIL_TMP33 is BabelExp_53,
%babel__implicit_MD5Finalc_22(P_SSA_2, 0, __CIL_TMP33)),
%__CIL_TMP34 is CTX +1* 24,
%__CIL_TMP35 is __CIL_TMP34,
%__CIL_TMP36 is __CIL_TMP35,
%babel__implicit_MD5Finalc_23(__CIL_TMP36, 14),
%__CIL_TMP37 is CTX +1* 24,
%__CIL_TMP38 is __CIL_TMP37,
%__CIL_TMP39 is __CIL_TMP38,
%A_SSA_1 is __CIL_TMP39,
%__CIL_TMP40 is CTX +1* 16,
%__CIL_TMP41 is __CIL_TMP40,
%__CIL_TMP42 is __CIL_TMP41,
%__CIL_TMP43 is __CIL_TMP42,
%__CIL_TMP44 is A_SSA_1 +4* 14,
%babelPtrR(BabelExp_54, __CIL_TMP43, 4),
%babel_ptrE(__CIL_TMP44, BabelExp_54, 4),
%__CIL_TMP45 is CTX +1* 16,
%__CIL_TMP46 is __CIL_TMP45,
%__CIL_TMP47 is __CIL_TMP46,
%__CIL_TMP48 is __CIL_TMP47 +4* 1,
%__CIL_TMP49 is A_SSA_1 +4* 15,
%babelPtrR(BabelExp_55, __CIL_TMP48, 4),
%babel_ptrE(__CIL_TMP49, BabelExp_55, 4),
%MEM_53 is CTX,
%__CIL_TMP50 is MEM_53,
%__CIL_TMP51 is CTX +1* 24,
%__CIL_TMP52 is __CIL_TMP51,
%__CIL_TMP53 is __CIL_TMP52,
%babel__implicit_MD5Finalc_24(__CIL_TMP50, __CIL_TMP53),
%MEM_54 is CTX,
%__CIL_TMP54 is MEM_54,
%babel__implicit_MD5Finalc_25(__CIL_TMP54, 4),
%MEM_55 is CTX,
%__CIL_TMP55 is MEM_55,
%babel__implicit_MD5Finalc_26(DIGEST, __CIL_TMP55, 16),
%babel__implicit_MD5Finalc_27(CTX, 0, 88),true. 
%
% :- foreign(babel__implicit_bin2strc_28(+integer, +integer, +positive)).
%
%bin2str(__CIL_PP_TO, __CIL_FP_TO, TO, P, LEN, VOID) :- 
%
%
% BabelExp_56 is TO,
%babel_ptrE(__CIL_FP_TO, BabelExp_56, 8),
%babel__implicit_bin2strc_28(__CIL_PP_TO, P, LEN),
%BabelExp_57 is __CIL_FP_TO,
%babelPtrR(TO_SSA_1, BabelExp_57, 8),
%BabelExp_58 is 0,
%babel_ptrE(TO_SSA_1, BabelExp_58, 1),true. 
%
%
%:- foreign(babel__implicit_is_authorizedc_32(+integer, +integer, +integer,  -integer)).
%:- foreign(babel__implicit_is_authorizedc_33(+integer, +integer,  -integer)).
%:- foreign(babel__implicit_is_authorizedc_34(+integer)).
%
%is_authorized(CONN, PATH, IS_DIRECTORY, BABEL_RET) :- 
%
%
% AUTHORIZED_SSA_1 is 1,
%babel__implicit_is_authorizedc_32(CONN, PATH, IS_DIRECTORY , FP_SSA_1),
%
%(FP_SSA_1 \= 0 ,
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%__CIL_TMP10 is CONN +1* 8,
%babel__implicit_is_authorizedc_33(__CIL_TMP10, FP_SSA_1 , AUTHORIZED_SSA_2),
%babel__implicit_is_authorizedc_34(FP_SSA_1)
%; AUTHORIZED_SSA_2 is AUTHORIZED_SSA_1),
%BABEL_RET is AUTHORIZED_SSA_2, true. 
%
% :- foreign(babel__implicit_mg_parse_headerc_35(+integer,  -positive)).
%:- foreign(babel__implicit_mg_parse_headerc_36(+integer, +positive, +integer, +integer, +positive,  -integer)).
%
%mg_parse_header(S, VAR_NAME, BUF, BUF_SIZE, BABEL_RET) :- 
%
%
% (S =:= 0 ,
%__CIL_TMP11 is 1
%; __CIL_TMP11 is 0),
%
%(__CIL_TMP11 \= 0 ->
%TMP___0_SSA_1 is 0
%; babel__implicit_mg_parse_headerc_35(S , TMP_SSA_1),
%TMP___0_SSA_1 is TMP_SSA_1),
%babel__implicit_mg_parse_headerc_36(S, TMP___0_SSA_1, VAR_NAME, BUF, BUF_SIZE , TMP___1_SSA_1),BABEL_RET is TMP___1_SSA_1, true. 
%
% :- foreign(babel__implicit_send_file_datac_37(+integer, +integer, +integer)).
%
%send_file_data(CONN, FP, VOID) :- 
%
%
% babel__implicit_send_file_datac_37(CONN, FP, BUF),true. 
%
%
%
% :- foreign(babel__implicit_handle_ssi_requestc_46(+integer, +integer,  -integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_47( -integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_48(+integer,  -integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_49(+integer, +integer, +string, +integer, +integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_50(+integer,  -integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_51(+integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_52(+integer, +integer, +integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_53(+integer, +string, +integer, +integer, +integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_54(+integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_55(+integer)).
%:- foreign(babel__implicit_handle_ssi_requestc_56(+integer)).
%
%handle_ssi_request(__CIL_PP_MIME_VEC, CONN, PATH, VOID) :- 
%
%
% babel__implicit_handle_ssi_requestc_46(PATH, 'RB' , FP_SSA_1),
%
%(FP_SSA_1 =:= 0 ,
%__CIL_TMP13 is 1
%; __CIL_TMP13 is 0),
%
%(__CIL_TMP13 \= 0 ->
%babel__implicit_handle_ssi_requestc_47(TMP_SSA_1),
%BabelExp_67 is TMP_SSA_1,
%babelPtrR(__CIL_TMP14, BabelExp_67, 4),
%babel__implicit_handle_ssi_requestc_48(__CIL_TMP14 , TMP___0_SSA_1),
%babel__implicit_handle_ssi_requestc_49(CONN, 500, 'fopen(%s): %s', PATH, TMP___0_SSA_1)
%; babel__implicit_handle_ssi_requestc_50(FP_SSA_1 , TMP___1_SSA_1),
%babel__implicit_handle_ssi_requestc_51(TMP___1_SSA_1),
%__CIL_TMP15 is CONN +1* 680,
%__CIL_TMP16 is __CIL_TMP15,
%BabelExp_68 is __CIL_TMP16,
%babelPtrR(__CIL_TMP17, BabelExp_68, 8),
%babel__implicit_handle_ssi_requestc_52(__CIL_TMP17, PATH, __CIL_PP_MIME_VEC),
%__CIL_TMP18 is CONN +1* 644,
%__CIL_TMP19 is __CIL_TMP18,
%BabelExp_69 is 200,
%babel_ptrE(__CIL_TMP19, BabelExp_69, 4),
%__CIL_TMP20 is CONN +1* 8,
%__CIL_TMP21 is CONN +1* 644,
%__CIL_TMP22 is __CIL_TMP21,
%__CIL_TMP23 is __CIL_PP_MIME_VEC +1* 8,
%__CIL_TMP24 is __CIL_TMP23,
%BabelExp_70 is __CIL_TMP24,
%babelPtrR(__CIL_TMP25, BabelExp_70, 8),
%BabelExp_71 is __CIL_TMP22,
%babelPtrR(__CIL_TMP26, BabelExp_71, 4),
%MEM_25 is __CIL_PP_MIME_VEC,
%BabelExp_72 is MEM_25,
%babelPtrR(__CIL_TMP27, BabelExp_72, 8),
%babel__implicit_handle_ssi_requestc_53(__CIL_TMP20, 'HTTP/1.1 %d OK\r\nContent-Type: %.*s\r\nConnection: close\r\n\r\n', __CIL_TMP26, __CIL_TMP25, __CIL_TMP27),
%__CIL_TMP28 is CONN +1* 8,
%babel__implicit_handle_ssi_requestc_54(__CIL_TMP28, PATH, FP_SSA_1, 0),
%babel__implicit_handle_ssi_requestc_55(FP_SSA_1),
%babel__implicit_handle_ssi_requestc_56(CONN)),
%true. 
%
% :- foreign(babel__implicit_proxy_requestc_57(+integer, +string, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_proxy_requestc_58(+integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_proxy_requestc_59(+integer, +string, +string, +string)).
%:- foreign(babel__implicit_proxy_requestc_60(+integer, +string, +string)).
%:- foreign(babel__implicit_proxy_requestc_61(+integer, +integer, +positive)).
%
%proxy_request(__CIL_PP_PC, __CIL_PP_C, __CIL_PP_SENT_CLOSE_HEADER, __CIL_FP_PC, __CIL_FP_C, __CIL_FP_SENT_CLOSE_HEADER, PC, C, VOID) :- 
%
%
% SENT_CLOSE_HEADER_SSA_1 is 0,
%__CIL_TMP23 is C +1* 24,
%__CIL_TMP24 is __CIL_TMP23,
%BabelExp_73 is __CIL_TMP24,
%babelPtrR(__CIL_TMP21, BabelExp_73, 8),
%(__CIL_TMP21 \= 0 ->
%__CIL_TMP25 is C +1* 24,
%__CIL_TMP26 is __CIL_TMP25,
%BabelExp_74 is __CIL_TMP26,
%babelPtrR(TMP_SSA_1, BabelExp_74, 8)
%; babelAssignStr(TMP_SSA_1, '')),
%__CIL_TMP27 is C +1* 24,
%__CIL_TMP28 is __CIL_TMP27,
%BabelExp_75 is __CIL_TMP28,
%babelPtrR(__CIL_TMP22, BabelExp_75, 8),
%(__CIL_TMP22 \= 0 ->
%babelAssignStr(TMP___0_SSA_1, '?')
%; babelAssignStr(TMP___0_SSA_1, '')),
%__CIL_TMP29 is C +1* 8,
%__CIL_TMP30 is __CIL_TMP29,
%__CIL_TMP31 is C +1* 16,
%__CIL_TMP32 is __CIL_TMP31,
%MEM_38 is C,
%BabelExp_76 is MEM_38,
%babelPtrR(__CIL_TMP33, BabelExp_76, 8),
%BabelExp_77 is __CIL_TMP30,
%babelPtrR(__CIL_TMP34, BabelExp_77, 8),
%BabelExp_78 is __CIL_TMP32,
%babelPtrR(__CIL_TMP35, BabelExp_78, 8),
%babel__implicit_proxy_requestc_57(PC, '%s %s%s%s HTTP/%s\r\n', __CIL_TMP33, __CIL_TMP34, TMP___0_SSA_1, TMP_SSA_1, __CIL_TMP35),
%I_SSA_1 is 0,
%BabelExp_79 is PC,
%babel_ptrE(__CIL_FP_PC, BabelExp_79, 8),
%BabelExp_80 is C,
%babel_ptrE(__CIL_FP_C, BabelExp_80, 8),
%BabelExp_81 is SENT_CLOSE_HEADER_SSA_1,
%babel_ptrE(__CIL_FP_SENT_CLOSE_HEADER, BabelExp_81, 4),
%babel__implicit_proxy_requestc_58(__CIL_PP_PC, __CIL_PP_C, __CIL_PP_SENT_CLOSE_HEADER, I_SSA_1),
%BabelExp_82 is __CIL_FP_PC,
%babelPtrR(PC_SSA_1, BabelExp_82, 8),
%BabelExp_83 is __CIL_FP_C,
%babelPtrR(C_SSA_1, BabelExp_83, 8),
%BabelExp_84 is __CIL_FP_SENT_CLOSE_HEADER,
%babelPtrR(SENT_CLOSE_HEADER_SSA_2, BabelExp_84, 4),
%(SENT_CLOSE_HEADER_SSA_2 =:= 0 ->
%babel__implicit_proxy_requestc_59(PC_SSA_1, '%s: %s\r\n', 'Connection', 'close')
%; true),
%babel__implicit_proxy_requestc_60(PC_SSA_1, '%s', '\r\n'),
%__CIL_TMP36 is C_SSA_1 +1* 616,
%__CIL_TMP37 is __CIL_TMP36,
%BabelExp_85 is __CIL_TMP37,
%babelPtrR(__CIL_TMP38, BabelExp_85, 8),
%__CIL_TMP39 is C_SSA_1 +1* 624,
%__CIL_TMP40 is __CIL_TMP39,
%BabelExp_86 is __CIL_TMP40,
%babelPtrR(__CIL_TMP41, BabelExp_86, 8),
%babel__implicit_proxy_requestc_61(PC_SSA_1, __CIL_TMP38, __CIL_TMP41),true. 
%
% :- foreign(babel__implicit_mg_send_filec_62(+integer, +integer,  -integer)).
%:- foreign(babel__implicit_mg_send_filec_63(+integer, +integer, +integer, +integer, +integer)).
%
%mg_send_file(__CIL_PP_ST, C, FILE_NAME, EXTRA_HEADERS, VOID) :- 
%
%
% babel__implicit_mg_send_filec_62(FILE_NAME, __CIL_PP_ST , TMP_SSA_1),
%
%(TMP_SSA_1 =:= 0 ,
%EXISTS_SSA_1 is 1
%; EXISTS_SSA_1 is 0),
%
%babel__implicit_mg_send_filec_63(C, FILE_NAME, __CIL_PP_ST, EXISTS_SSA_1, EXTRA_HEADERS),true. 
%
%
%
% :- foreign(babel__implicit_is_valid_uric_67(+integer, +string,  -integer)).
%:- foreign(babel__implicit_is_valid_uric_68(+integer, +string, +positive,  -integer)).
%:- foreign(babel__implicit_is_valid_uric_69(+integer, +integer, +integer,  -integer)).
%
%is_valid_uri(__CIL_PP_N___0, __CIL_FP_N___0, URI, BABEL_RET) :- 
%
%__CIL_TMP17 is URI +1* 0,
%BabelExp_90 is __CIL_TMP17,
%babelPtrR_byte(__CIL_TMP18, BabelExp_90, 1),
%__CIL_TMP19 is __CIL_TMP18,
%
%(__CIL_TMP19 =:= 47 ,
%__CIL_TMP13 is 1
%; __CIL_TMP13 is 0),
%
%(__CIL_TMP13 \= 0 ->
%TMP___2_SSA_1 is 1
%; babel__implicit_is_valid_uric_67(URI, '*' , TMP_SSA_1),
%
%(TMP_SSA_1 =:= 0 ,
%__CIL_TMP14 is 1
%; __CIL_TMP14 is 0),
%
%(__CIL_TMP14 \= 0 ->
%TMP___2_SSA_1 is 1
%; babel__implicit_is_valid_uric_68(URI, 'http', 4 , TMP___0_SSA_1),
%
%(TMP___0_SSA_1 =:= 0 ,
%__CIL_TMP15 is 1
%; __CIL_TMP15 is 0),
%
%(__CIL_TMP15 \= 0 ->
%TMP___2_SSA_1 is 1
%; 
%
%N___0 is 1,
%BabelExp_91 is N___0,
%babel_ptrE(__CIL_FP_N___0, BabelExp_91, 2),
%babel__implicit_is_valid_uric_69(URI, '%*[^ :]:%HU', __CIL_PP_N___0 , TMP___1_SSA_1),
%
%(TMP___1_SSA_1 > 0 ,
%__CIL_TMP16 is 1
%; __CIL_TMP16 is 0),
%
%(__CIL_TMP16 \= 0 ->
%TMP___2_SSA_1 is 1
%; TMP___2_SSA_1 is 0)))),
%BABEL_RET is TMP___2_SSA_1, true. 
%
% :- foreign(babel__implicit_try_parsec_70(+integer, +positive,  -integer)).
%:- foreign(babel__implicit_try_parsec_71(+positive,  -integer)).
%:- foreign(babel__implicit_try_parsec_72(+integer, +integer, +positive)).
%:- foreign(babel__implicit_try_parsec_73(+integer, +positive)).
%:- foreign(babel__implicit_try_parsec_74(+integer, +positive, +integer,  -positive)).
%:- foreign(babel__implicit_try_parsec_75(+integer, +string,  -integer)).
%:- foreign(babel__implicit_try_parsec_76(+integer, +integer, +integer,  -integer)).
%
%try_parse(CONN, VOID) :- 
%
%
% MEM_63 is CONN,
%BabelExp_92 is MEM_63,
%babelPtrR(__CIL_TMP22, BabelExp_92, 8),
%__CIL_TMP23 is __CIL_TMP22,
%__CIL_TMP24 is __CIL_TMP23 +1* 56,
%IO_SSA_1 is __CIL_TMP24,
%__CIL_TMP25 is CONN +1* 736,
%__CIL_TMP26 is __CIL_TMP25,
%BabelExp_93 is __CIL_TMP26,
%babelPtrR(__CIL_TMP27, BabelExp_93, 8),
%
%(__CIL_TMP27 =:= 0 ,
%__CIL_TMP18 is 1
%; __CIL_TMP18 is 0),
%
%(__CIL_TMP18 \= 0 ->
%MEM_64 is IO_SSA_1,
%BabelExp_94 is MEM_64,
%babelPtrR(__CIL_TMP28, BabelExp_94, 8),
%__CIL_TMP29 is IO_SSA_1 +1* 8,
%__CIL_TMP30 is __CIL_TMP29,
%BabelExp_95 is __CIL_TMP30,
%babelPtrR(__CIL_TMP31, BabelExp_95, 8),
%babel__implicit_try_parsec_70(__CIL_TMP28, __CIL_TMP31 , TMP___4_SSA_1),
%TMP___3_SSA_1 is TMP___4_SSA_1,
%__CIL_TMP32 is CONN +1* 736,
%__CIL_TMP33 is __CIL_TMP32,
%BabelExp_96 is TMP___3_SSA_1,
%babel_ptrE(__CIL_TMP33, BabelExp_96, 8),
%
%(TMP___3_SSA_1 > 0 ,
%__CIL_TMP19 is 1
%; __CIL_TMP19 is 0),
%
%(__CIL_TMP19 \= 0 ->
%__CIL_TMP34 is CONN +1* 736,
%__CIL_TMP35 is __CIL_TMP34,
%BabelExp_97 is __CIL_TMP35,
%babelPtrR(__CIL_TMP36, BabelExp_97, 8),
%babel__implicit_try_parsec_71(__CIL_TMP36 , TMP_SSA_1),
%__CIL_TMP37 is CONN +1* 712,
%__CIL_TMP38 is __CIL_TMP37,
%BabelExp_98 is TMP_SSA_1,
%babel_ptrE(__CIL_TMP38, BabelExp_98, 8),
%__CIL_TMP39 is CONN +1* 712,
%__CIL_TMP40 is __CIL_TMP39,
%BabelExp_99 is __CIL_TMP40,
%babelPtrR(__CIL_TMP41, BabelExp_99, 8),
%MEM_65 is IO_SSA_1,
%BabelExp_100 is MEM_65,
%babelPtrR(__CIL_TMP42, BabelExp_100, 8),
%__CIL_TMP43 is CONN +1* 736,
%__CIL_TMP44 is __CIL_TMP43,
%BabelExp_101 is __CIL_TMP44,
%babelPtrR(__CIL_TMP45, BabelExp_101, 8),
%babel__implicit_try_parsec_72(__CIL_TMP41, __CIL_TMP42, __CIL_TMP45),
%__CIL_TMP46 is CONN +1* 736,
%__CIL_TMP47 is __CIL_TMP46,
%BabelExp_102 is __CIL_TMP47,
%babelPtrR(__CIL_TMP48, BabelExp_102, 8),
%babel__implicit_try_parsec_73(IO_SSA_1, __CIL_TMP48),
%__CIL_TMP49 is CONN +1* 712,
%__CIL_TMP50 is __CIL_TMP49,
%__CIL_TMP51 is CONN +1* 736,
%__CIL_TMP52 is __CIL_TMP51,
%BabelExp_103 is __CIL_TMP52,
%babelPtrR(__CIL_TMP53, BabelExp_103, 8),
%__CIL_TMP54 is CONN +1* 8,
%BabelExp_104 is __CIL_TMP50,
%babelPtrR(__CIL_TMP55, BabelExp_104, 8),
%babel__implicit_try_parsec_74(__CIL_TMP55, __CIL_TMP53, __CIL_TMP54 , TMP___0_SSA_1),
%__CIL_TMP56 is CONN +1* 736,
%__CIL_TMP57 is __CIL_TMP56,
%BabelExp_105 is TMP___0_SSA_1,
%babel_ptrE(__CIL_TMP57, BabelExp_105, 8),
%__CIL_TMP58 is CONN +1* 736,
%__CIL_TMP59 is __CIL_TMP58,
%BabelExp_106 is __CIL_TMP59,
%babelPtrR(__CIL_TMP60, BabelExp_106, 8),
%
%(__CIL_TMP60 > 0 ,
%__CIL_TMP20 is 1
%; __CIL_TMP20 is 0),
%
%(__CIL_TMP20 \= 0 ->
%__CIL_TMP61 is CONN +1* 8,
%babel__implicit_try_parsec_75(__CIL_TMP61, 'Content-Length' , TMP___1_SSA_1),
%CL_HDR_SSA_1 is TMP___1_SSA_1,
%
%(CL_HDR_SSA_1 =:= 0 ,
%__CIL_TMP21 is 1
%; __CIL_TMP21 is 0),
%
%(__CIL_TMP21 \= 0 ->
%__CIL_TMP62 is CONN +1* 728,
%__CIL_TMP63 is __CIL_TMP62,
%BabelExp_107 is 0,
%babel_ptrE(__CIL_TMP63, BabelExp_107, 8)
%; babel__implicit_try_parsec_76(CL_HDR_SSA_1, 0, 10 , TMP___2_SSA_1),
%__CIL_TMP64 is CONN +1* 728,
%__CIL_TMP65 is __CIL_TMP64,
%BabelExp_108 is TMP___2_SSA_1,
%babel_ptrE(__CIL_TMP65, BabelExp_108, 8)),
%__CIL_TMP66 is CONN +1* 728,
%__CIL_TMP67 is __CIL_TMP66,
%BabelExp_109 is __CIL_TMP67,
%babelPtrR(__CIL_TMP68, BabelExp_109, 8),
%__CIL_TMP69 is CONN +1* 632,
%__CIL_TMP70 is __CIL_TMP69,
%BabelExp_110 is __CIL_TMP68,
%babel_ptrE(__CIL_TMP70, BabelExp_110, 8)
%; true)
%; true)
%; true),
%true. 
%
% :- foreign(babel__implicit_call_http_client_handlerc_77(+integer, +integer,  -integer)).
%:- foreign(babel__implicit_call_http_client_handlerc_78(+integer, +positive)).
%:- foreign(babel__implicit_call_http_client_handlerc_79(+integer)).
%
%call_http_client_handler(CONN, VOID) :- 
%
%
% __CIL_TMP10 is CONN +1* 728,
%__CIL_TMP11 is __CIL_TMP10,
%BabelExp_111 is __CIL_TMP11,
%babelPtrR(__CIL_TMP12, BabelExp_111, 8),
%
%(__CIL_TMP12 =:= 0 ,
%__CIL_TMP8 is 1
%; __CIL_TMP8 is 0),
%
%(__CIL_TMP8 \= 0 ->
%MEM_52 is CONN,
%BabelExp_112 is MEM_52,
%babelPtrR(__CIL_TMP13, BabelExp_112, 8),
%__CIL_TMP14 is __CIL_TMP13,
%__CIL_TMP15 is __CIL_TMP14 +1* 64,
%__CIL_TMP16 is __CIL_TMP15,
%__CIL_TMP17 is CONN +1* 632,
%__CIL_TMP18 is __CIL_TMP17,
%babelPtrR(BabelExp_113, __CIL_TMP16, 8),
%babel_ptrE(__CIL_TMP18, BabelExp_113, 8)
%; true),
%MEM_53 is CONN,
%BabelExp_114 is MEM_53,
%babelPtrR(__CIL_TMP19, BabelExp_114, 8),
%__CIL_TMP20 is __CIL_TMP19,
%__CIL_TMP21 is __CIL_TMP20 +1* 56,
%__CIL_TMP22 is __CIL_TMP21,
%__CIL_TMP23 is CONN +1* 624,
%__CIL_TMP24 is __CIL_TMP23,
%babelPtrR(BabelExp_115, __CIL_TMP22, 8),
%babel_ptrE(__CIL_TMP24, BabelExp_115, 8),
%babel__implicit_call_http_client_handlerc_77(CONN, 104 , TMP_SSA_1),
%
%(TMP_SSA_1 =:= 0 ,
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%MEM_54 is CONN,
%BabelExp_116 is MEM_54,
%babelPtrR(__CIL_TMP25, BabelExp_116, 8),
%__CIL_TMP26 is __CIL_TMP25,
%__CIL_TMP27 is __CIL_TMP26 +1* 152,
%__CIL_TMP28 is __CIL_TMP27,
%BabelExp_117 is 16,
%__CIL_TMP29 is BabelExp_117,
%BabelExp_118 is __CIL_TMP28,
%babelPtrR(__CIL_TMP30, BabelExp_118, 4),
%__CIL_TMP31 is __CIL_TMP29,
%MEM_55 is CONN,
%BabelExp_119 is MEM_55,
%babelPtrR(__CIL_TMP32, BabelExp_119, 8),
%__CIL_TMP33 is __CIL_TMP32,
%__CIL_TMP34 is __CIL_TMP33 +1* 152,
%__CIL_TMP35 is __CIL_TMP34,
%BabelExp_120 is __CIL_TMP30 \/ __CIL_TMP31,
%babel_ptrE(__CIL_TMP35, BabelExp_120, 4)
%; true),
%MEM_56 is CONN,
%BabelExp_121 is MEM_56,
%babelPtrR(__CIL_TMP36, BabelExp_121, 8),
%__CIL_TMP37 is __CIL_TMP36,
%__CIL_TMP38 is __CIL_TMP37 +1* 56,
%__CIL_TMP39 is CONN +1* 632,
%__CIL_TMP40 is __CIL_TMP39,
%BabelExp_122 is __CIL_TMP40,
%babelPtrR(__CIL_TMP41, BabelExp_122, 8),
%babel__implicit_call_http_client_handlerc_78(__CIL_TMP38, __CIL_TMP41),
%__CIL_TMP42 is CONN +1* 644,
%__CIL_TMP43 is __CIL_TMP42,
%BabelExp_123 is 0,
%babel_ptrE(__CIL_TMP43, BabelExp_123, 4),
%TMP___1_SSA_1 is 0,
%__CIL_TMP44 is CONN +1* 736,
%__CIL_TMP45 is __CIL_TMP44,
%BabelExp_124 is TMP___1_SSA_1,
%babel_ptrE(__CIL_TMP45, BabelExp_124, 8),
%TMP___0_SSA_1 is TMP___1_SSA_1,
%__CIL_TMP46 is CONN +1* 720,
%__CIL_TMP47 is __CIL_TMP46,
%BabelExp_125 is TMP___0_SSA_1,
%babel_ptrE(__CIL_TMP47, BabelExp_125, 8),
%__CIL_TMP48 is CONN +1* 728,
%__CIL_TMP49 is __CIL_TMP48,
%BabelExp_126 is TMP___0_SSA_1,
%babel_ptrE(__CIL_TMP49, BabelExp_126, 8),
%__CIL_TMP50 is CONN +1* 712,
%__CIL_TMP51 is __CIL_TMP50,
%BabelExp_127 is __CIL_TMP51,
%babelPtrR(__CIL_TMP52, BabelExp_127, 8),
%babel__implicit_call_http_client_handlerc_79(__CIL_TMP52),
%__CIL_TMP53 is CONN +1* 712,
%__CIL_TMP54 is __CIL_TMP53,
%BabelExp_128 is 0,
%babel_ptrE(__CIL_TMP54, BabelExp_128, 8),true. 
%
% 
%
%:- foreign(babel__implicit_mg_connectc_0(+integer, +integer, +integer, +integer,  -integer)).
%:- foreign(babel__implicit_mg_connectc_1(+integer, +positive,  -integer)).
%
%mg_connect(__CIL_PP_MG_EV_HANDLER, SERVER, ADDR, BABEL_RET) :- 
%
%
% babel__implicit_mg_connectc_0(SERVER, ADDR, __CIL_PP_MG_EV_HANDLER, 0 , NSCONN_SSA_1),
%
%(NSCONN_SSA_1 =:= 0 ,
%__CIL_TMP10 is 1
%; __CIL_TMP10 is 0),
%
%(__CIL_TMP10 \= 0 ->
%BABEL_RET is 0, true
%; babel__implicit_mg_connectc_1(1, 744 , TMP_SSA_1),
%CONN_SSA_1 is TMP_SSA_1,
%
%(CONN_SSA_1 =:= 0 ,
%__CIL_TMP11 is 1
%; __CIL_TMP11 is 0),
%
%(__CIL_TMP11 \= 0 ->
%__CIL_TMP13 is NSCONN_SSA_1 +1* 152,
%__CIL_TMP14 is __CIL_TMP13,
%BabelExp_0 is 16,
%__CIL_TMP15 is BabelExp_0,
%BabelExp_1 is __CIL_TMP14,
%babelPtrR(__CIL_TMP16, BabelExp_1, 4),
%__CIL_TMP17 is __CIL_TMP15,
%__CIL_TMP18 is NSCONN_SSA_1 +1* 152,
%__CIL_TMP19 is __CIL_TMP18,
%BabelExp_2 is __CIL_TMP16 \/ __CIL_TMP17,
%babel_ptrE(__CIL_TMP19, BabelExp_2, 4),BABEL_RET is 0, true
%; MEM_34 is CONN_SSA_1,
%BabelExp_3 is NSCONN_SSA_1,
%babel_ptrE(MEM_34, BabelExp_3, 8),
%__CIL_TMP20 is NSCONN_SSA_1 +1* 120,
%__CIL_TMP21 is __CIL_TMP20,
%BabelExp_4 is CONN_SSA_1,
%babel_ptrE(__CIL_TMP21, BabelExp_4, 8),
%__CIL_TMP22 is CONN_SSA_1 +1* 680,
%__CIL_TMP23 is __CIL_TMP22,
%BabelExp_5 is SERVER,
%babel_ptrE(__CIL_TMP23, BabelExp_5, 8),
%__CIL_TMP24 is CONN_SSA_1 +1* 696,
%__CIL_TMP25 is __CIL_TMP24,
%BabelExp_6 is 5,
%babel_ptrE(__CIL_TMP25, BabelExp_6, 4),
%__CIL_TMP26 is SERVER +1* 24,
%__CIL_TMP27 is __CIL_TMP26,
%__CIL_TMP28 is CONN_SSA_1 +1* 656,
%__CIL_TMP29 is __CIL_TMP28,
%babelPtrR(BabelExp_7, __CIL_TMP27, 8),
%babel_ptrE(__CIL_TMP29, BabelExp_7, 8),
%BabelExp_8 is 8,
%__CIL_TMP30 is BabelExp_8,
%MEM_35 is CONN_SSA_1,
%BabelExp_9 is MEM_35,
%babelPtrR(__CIL_TMP31, BabelExp_9, 8),
%__CIL_TMP32 is __CIL_TMP31,
%__CIL_TMP33 is __CIL_TMP32 +1* 152,
%__CIL_TMP34 is __CIL_TMP33,
%BabelExp_10 is __CIL_TMP30,
%babel_ptrE(__CIL_TMP34, BabelExp_10, 4),
%__CIL_TMP35 is CONN_SSA_1 +1* 8,
%__CIL_TMP12 is __CIL_TMP35,BABEL_RET is __CIL_TMP12, true)). 
%
% :- foreign(babel__implicit_log_headerc_2(+integer, +integer,  -integer)).
%:- foreign(babel__implicit_log_headerc_3(+integer, +integer, +string)).
%:- foreign(babel__implicit_log_headerc_4(+integer, +integer, +integer)).
%
%log_header(CONN, HEADER___0, FP, VOID) :- 
%
%
% babel__implicit_log_headerc_2(CONN, HEADER___0 , HEADER_VALUE_SSA_1),
%
%(HEADER_VALUE_SSA_1 =:= 0 ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%babel__implicit_log_headerc_3(FP, '%S', ' -')
%; babel__implicit_log_headerc_4(FP, ' \'%S\'', HEADER_VALUE_SSA_1)),
%true. 
%
%
%
% :- foreign(babel__implicit_mg_poll_serverc_26(+integer, +integer,  -integer)).
%
%mg_poll_server(SERVER, MILLISECONDS, BABEL_RET) :- 
%
%
% babel__implicit_mg_poll_serverc_26(SERVER, MILLISECONDS , TMP_SSA_1),BABEL_RET is TMP_SSA_1, true. 
%
% :- foreign(babel__implicit_mg_destroy_serverc_27(+integer)).
%:- foreign(babel__implicit_mg_destroy_serverc_28(+integer, +integer, +integer)).
%:- foreign(babel__implicit_mg_destroy_serverc_29(+integer)).
%
%mg_destroy_server(__CIL_PP_SERVER, __CIL_PP_S, __CIL_FP_SERVER, __CIL_FP_S, SERVER, VOID) :- 
%
%
% (SERVER \= 0 ,
%__CIL_TMP12 is 1
%; __CIL_TMP12 is 0),
%
%(__CIL_TMP12 \= 0 ->
%BabelExp_34 is SERVER,
%babelPtrR(__CIL_TMP14, BabelExp_34, 8),
%__CIL_TMP15 is __CIL_TMP14,
%
%(__CIL_TMP15 \= 0 ,
%__CIL_TMP13 is 1
%; __CIL_TMP13 is 0),
%
%(__CIL_TMP13 \= 0 ->
%BabelExp_35 is SERVER,
%babelPtrR(S_SSA_1, BabelExp_35, 8),
%babel__implicit_mg_destroy_serverc_27(S_SSA_1),
%I_SSA_1 is 0,
%BabelExp_36 is SERVER,
%babel_ptrE(__CIL_FP_SERVER, BabelExp_36, 8),
%BabelExp_37 is S_SSA_1,
%babel_ptrE(__CIL_FP_S, BabelExp_37, 8),
%babel__implicit_mg_destroy_serverc_28(__CIL_PP_SERVER, __CIL_PP_S, I_SSA_1),
%BabelExp_38 is __CIL_FP_SERVER,
%babelPtrR(SERVER_SSA_1, BabelExp_38, 8),
%BabelExp_39 is __CIL_FP_S,
%babelPtrR(S_SSA_2, BabelExp_39, 8),
%babel__implicit_mg_destroy_serverc_29(S_SSA_2),
%BabelExp_40 is 0,
%babel_ptrE(SERVER_SSA_1, BabelExp_40, 8)
%; true)
%; true),
%true. 
%
% :- foreign(babel__implicit_mg_nextc_30(+integer, +integer,  -integer)).
%
%mg_next(S, C, BABEL_RET) :- 
%
%
% (C =:= 0 ,
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%TMP_SSA_1 is 0
%; BabelExp_41 is 0 + 8,
%__CIL_TMP13 is BabelExp_41,
%__CIL_TMP14 is __CIL_TMP13,
%__CIL_TMP15 is __CIL_TMP14,
%BabelExp_42 is C - __CIL_TMP15,
%__CIL_TMP16 is BabelExp_42,
%__CIL_TMP17 is __CIL_TMP16,
%__CIL_TMP18 is __CIL_TMP17,
%BabelExp_43 is __CIL_TMP18,
%babelPtrR(TMP_SSA_1, BabelExp_43, 8)),
%babel__implicit_mg_nextc_30(S, TMP_SSA_1 , TMP___0_SSA_1),
%NC_SSA_1 is TMP___0_SSA_1,
%
%(NC_SSA_1 \= 0 ,
%__CIL_TMP10 is 1
%; __CIL_TMP10 is 0),
%
%(__CIL_TMP10 \= 0 ->
%__CIL_TMP19 is NC_SSA_1 +1* 120,
%__CIL_TMP20 is __CIL_TMP19,
%BabelExp_44 is __CIL_TMP20,
%babelPtrR(__CIL_TMP21, BabelExp_44, 8),
%__CIL_TMP22 is __CIL_TMP21,
%
%(__CIL_TMP22 \= 0 ,
%__CIL_TMP11 is 1
%; __CIL_TMP11 is 0),
%
%(__CIL_TMP11 \= 0 ->
%__CIL_TMP23 is NC_SSA_1 +1* 120,
%__CIL_TMP24 is __CIL_TMP23,
%BabelExp_45 is __CIL_TMP24,
%babelPtrR(__CIL_TMP25, BabelExp_45, 8),
%__CIL_TMP26 is __CIL_TMP25,
%__CIL_TMP27 is __CIL_TMP26 +1* 8,
%__CIL_TMP12 is __CIL_TMP27,BABEL_RET is __CIL_TMP12, true
%; BABEL_RET is 0, true)
%; BABEL_RET is 0, true). 
%
%
%:- foreign(babel__implicit_proxy_request_cil_lr_1c_0(+integer, +string,  -integer)).
%:- foreign(babel__implicit_proxy_request_cil_lr_1c_1(+integer, +string, +string, +string)).
%:- foreign(babel__implicit_proxy_request_cil_lr_1c_2(+integer, +string, +integer, +integer)).
%
%proxy_request_cil_lr_1(__CIL_AP_PC, __CIL_AP_C, __CIL_AP_SENT_CLOSE_HEADER, I, VOID) :- 
%
%
% BabelExp_0 is __CIL_AP_C,
%babelPtrR(__CIL_TMP10, BabelExp_0, 8),
%__CIL_TMP11 is __CIL_TMP10,
%__CIL_TMP12 is __CIL_TMP11 +1* 132,
%__CIL_TMP13 is __CIL_TMP12,
%BabelExp_1 is __CIL_TMP13,
%babelPtrR(__CIL_TMP14, BabelExp_1, 4),
%
%(I < __CIL_TMP14 ,
%__CIL_TMP8 is 1
%; __CIL_TMP8 is 0),
%
%(__CIL_TMP8 \= 0 ->
%BabelExp_2 is __CIL_AP_C,
%babelPtrR(__CIL_TMP15, BabelExp_2, 8),
%__CIL_TMP16 is __CIL_TMP15,
%__CIL_TMP17 is __CIL_TMP16 +1* 136,
%__CIL_TMP18 is __CIL_TMP17,
%__CIL_TMP19 is __CIL_TMP18,
%__CIL_TMP20 is __CIL_TMP19 +16* I,
%__CIL_TMP21 is __CIL_TMP20,
%BabelExp_3 is __CIL_TMP21,
%babelPtrR(__CIL_TMP22, BabelExp_3, 8),
%babel__implicit_proxy_request_cil_lr_1c_0(__CIL_TMP22, 'Connection' , TMP___1_SSA_1),
%
%(TMP___1_SSA_1 =:= 0 ,
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%BabelExp_4 is __CIL_AP_PC,
%babelPtrR(__CIL_TMP23, BabelExp_4, 8),
%babel__implicit_proxy_request_cil_lr_1c_1(__CIL_TMP23, '%s: %s\r\n', 'Connection', 'close'),
%BabelExp_5 is 1,
%babel_ptrE(__CIL_AP_SENT_CLOSE_HEADER, BabelExp_5, 4)
%; BabelExp_6 is __CIL_AP_C,
%babelPtrR(__CIL_TMP24, BabelExp_6, 8),
%__CIL_TMP25 is __CIL_TMP24,
%__CIL_TMP26 is __CIL_TMP25 +1* 136,
%__CIL_TMP27 is __CIL_TMP26,
%__CIL_TMP28 is __CIL_TMP27,
%__CIL_TMP29 is __CIL_TMP28 +16* I,
%__CIL_TMP30 is __CIL_TMP29,
%BabelExp_7 is __CIL_AP_C,
%babelPtrR(__CIL_TMP31, BabelExp_7, 8),
%__CIL_TMP32 is __CIL_TMP31,
%__CIL_TMP33 is __CIL_TMP32 +1* 136,
%__CIL_TMP34 is __CIL_TMP33,
%__CIL_TMP35 is __CIL_TMP34,
%__CIL_TMP36 is __CIL_TMP35 +16* I,
%__CIL_TMP37 is __CIL_TMP36,
%__CIL_TMP38 is __CIL_TMP37 +1* 8,
%__CIL_TMP39 is __CIL_TMP38,
%BabelExp_8 is __CIL_AP_PC,
%babelPtrR(__CIL_TMP40, BabelExp_8, 8),
%BabelExp_9 is __CIL_TMP30,
%babelPtrR(__CIL_TMP41, BabelExp_9, 8),
%BabelExp_10 is __CIL_TMP39,
%babelPtrR(__CIL_TMP42, BabelExp_10, 8),
%babel__implicit_proxy_request_cil_lr_1c_2(__CIL_TMP40, '%s: %s\r\n', __CIL_TMP41, __CIL_TMP42)),
%BabelExp_11 is I + 1,
%I_SSA_1 is BabelExp_11,
%proxy_request_cil_lr_1(__CIL_AP_PC, __CIL_AP_C, __CIL_AP_SENT_CLOSE_HEADER, I_SSA_1, VOID),true
%; true),
%BabelExp_12 is I + 1,
%I_SSA_1 is BabelExp_12,
%proxy_request_cil_lr_1(__CIL_AP_PC, __CIL_AP_C, __CIL_AP_SENT_CLOSE_HEADER, I_SSA_1, VOID),true. 
%
% :- foreign(babel__implicit_send_file_data_cil_lr_1c_5(+integer, +integer, +positive, +integer,  -positive)).
%:- foreign(babel__implicit_send_file_data_cil_lr_1c_6(+integer, +integer, +positive)).
%
%send_file_data_cil_lr_1(CONN, FP, BUF, VOID) :- 
%
%
% __CIL_TMP7 is BUF,
%babel__implicit_send_file_data_cil_lr_1c_5(__CIL_TMP7, 1, 8, FP , N___0_SSA_1),
%
%(N___0_SSA_1 > 0 ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%__CIL_TMP8 is BUF,
%babel__implicit_send_file_data_cil_lr_1c_6(CONN, __CIL_TMP8, N___0_SSA_1),
%send_file_data_cil_lr_1(CONN, FP, BUF, VOID),true
%; true). 
%
% :- foreign(babel__implicit_bin2str_cil_lr_1c_8(+integer, +integer, +positive)).
%
%bin2str_cil_lr_1(__CIL_GP_HEX___0, __CIL_AP_TO, P, LEN, VOID) :- 
%
%
% TMP___1_SSA_1 is LEN,
%BabelExp_13 is LEN - 1,
%LEN_SSA_1 is BabelExp_13,
%(TMP___1_SSA_1 \= 0 ->
%BabelExp_14 is __CIL_AP_TO,
%babelPtrR(TMP_SSA_1, BabelExp_14, 8),
%BabelExp_15 is __CIL_AP_TO,
%babelPtrR(__CIL_TMP13, BabelExp_15, 8),
%BabelExp_16 is __CIL_TMP13 +1* 1,
%babel_ptrE(__CIL_AP_TO, BabelExp_16, 8),
%__CIL_TMP14 is P +1* 0,
%BabelExp_17 is __CIL_TMP14,
%babelPtrR_byte(__CIL_TMP15, BabelExp_17, 1),
%__CIL_TMP16 is __CIL_TMP15,
%BabelExp_18 is __CIL_GP_HEX___0,
%babelPtrR(__CIL_TMP17, BabelExp_18, 8),
%BabelExp_19 is __CIL_TMP16 >> 4,
%__CIL_TMP18 is BabelExp_19,
%__CIL_TMP19 is __CIL_TMP17 +1* __CIL_TMP18,
%BabelExp_20 is __CIL_TMP19,
%babelPtrR_byte(__CIL_TMP20, BabelExp_20, 1),
%BabelExp_21 is __CIL_TMP20,
%babel_ptrE(TMP_SSA_1, BabelExp_21, 1),
%BabelExp_22 is __CIL_AP_TO,
%babelPtrR(TMP___0_SSA_1, BabelExp_22, 8),
%BabelExp_23 is __CIL_AP_TO,
%babelPtrR(__CIL_TMP21, BabelExp_23, 8),
%BabelExp_24 is __CIL_TMP21 +1* 1,
%babel_ptrE(__CIL_AP_TO, BabelExp_24, 8),
%__CIL_TMP22 is P +1* 0,
%BabelExp_25 is __CIL_TMP22,
%babelPtrR_byte(__CIL_TMP23, BabelExp_25, 1),
%__CIL_TMP24 is __CIL_TMP23,
%BabelExp_26 is __CIL_GP_HEX___0,
%babelPtrR(__CIL_TMP25, BabelExp_26, 8),
%BabelExp_27 is __CIL_TMP24 /\ 15,
%__CIL_TMP26 is BabelExp_27,
%__CIL_TMP27 is __CIL_TMP25 +1* __CIL_TMP26,
%BabelExp_28 is __CIL_TMP27,
%babelPtrR_byte(__CIL_TMP28, BabelExp_28, 1),
%BabelExp_29 is __CIL_TMP28,
%babel_ptrE(TMP___0_SSA_1, BabelExp_29, 1),
%P_SSA_1 is P +1* 1,
%babel__implicit_bin2str_cil_lr_1c_8(__CIL_AP_TO, P_SSA_1, LEN_SSA_1),true
%; true). 
%
% :- foreign(babel__implicit_MD5Update_cil_lr_1c_9(+integer, +integer, +positive)).
%:- foreign(babel__implicit_MD5Update_cil_lr_1c_10(+integer, +integer)).
%:- foreign(babel__implicit_MD5Update_cil_lr_1c_11(+integer, +integer)).
%
%mD5Update_cil_lr_1(__CIL_AP_CTX, __CIL_AP_BUF, __CIL_AP_LEN, VOID) :- 
%
%
% BabelExp_30 is __CIL_AP_LEN,
%babelPtrR(__CIL_TMP5, BabelExp_30, 4),
%
%(__CIL_TMP5 >= 64 ,
%__CIL_TMP4 is 1
%; __CIL_TMP4 is 0),
%
%(__CIL_TMP4 \= 0 ->
%BabelExp_31 is __CIL_AP_CTX,
%babelPtrR(__CIL_TMP6, BabelExp_31, 8),
%__CIL_TMP7 is __CIL_TMP6,
%__CIL_TMP8 is __CIL_TMP7 +1* 24,
%__CIL_TMP9 is __CIL_TMP8,
%__CIL_TMP10 is __CIL_TMP9,
%BabelExp_32 is __CIL_AP_BUF,
%babelPtrR(__CIL_TMP11, BabelExp_32, 8),
%babel__implicit_MD5Update_cil_lr_1c_9(__CIL_TMP10, __CIL_TMP11, 64),
%BabelExp_33 is __CIL_AP_CTX,
%babelPtrR(__CIL_TMP12, BabelExp_33, 8),
%__CIL_TMP13 is __CIL_TMP12,
%__CIL_TMP14 is __CIL_TMP13 +1* 24,
%__CIL_TMP15 is __CIL_TMP14,
%__CIL_TMP16 is __CIL_TMP15,
%babel__implicit_MD5Update_cil_lr_1c_10(__CIL_TMP16, 16),
%BabelExp_34 is __CIL_AP_CTX,
%babelPtrR(__CIL_TMP17, BabelExp_34, 8),
%__CIL_TMP18 is __CIL_TMP17,
%__CIL_TMP19 is __CIL_TMP18,
%BabelExp_35 is __CIL_AP_CTX,
%babelPtrR(__CIL_TMP20, BabelExp_35, 8),
%__CIL_TMP21 is __CIL_TMP20,
%__CIL_TMP22 is __CIL_TMP21 +1* 24,
%__CIL_TMP23 is __CIL_TMP22,
%__CIL_TMP24 is __CIL_TMP23,
%babel__implicit_MD5Update_cil_lr_1c_11(__CIL_TMP19, __CIL_TMP24),
%BabelExp_36 is __CIL_AP_BUF,
%babelPtrR(__CIL_TMP25, BabelExp_36, 8),
%BabelExp_37 is __CIL_TMP25 +1* 64,
%babel_ptrE(__CIL_AP_BUF, BabelExp_37, 8),
%BabelExp_38 is __CIL_AP_LEN,
%babelPtrR(__CIL_TMP26, BabelExp_38, 4),
%BabelExp_39 is __CIL_TMP26 - 64,
%babel_ptrE(__CIL_AP_LEN, BabelExp_39, 4),
%mD5Update_cil_lr_1(__CIL_AP_CTX, __CIL_AP_BUF, __CIL_AP_LEN, VOID),true
%; true). 


 :- foreign(babel__implicit_ns_mgr_free_cil_lr_1c_40(+integer)).

ns_mgr_free_cil_lr_1(CONN, VOID) :- 


 (CONN \= 0 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
MEM_5 is CONN,
BabelExp_114 is MEM_5,
babelPtrR(TMP_CONN_SSA_1, BabelExp_114, 8),
babel__implicit_ns_mgr_free_cil_lr_1c_40(CONN),
CONN_SSA_1 is TMP_CONN_SSA_1,
ns_mgr_free_cil_lr_1(CONN_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_ns_mgr_init_cil_lr_1c_42(+integer, +integer)).

ns_mgr_init_cil_lr_1(S, VOID) :- 


 __CIL_TMP3 is S +1* 16,
__CIL_TMP4 is __CIL_TMP3,
__CIL_TMP5 is __CIL_TMP4,
babel__implicit_ns_mgr_init_cil_lr_1c_42(__CIL_TMP5, 2),
__CIL_TMP6 is S +1* 16,
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_115 is __CIL_TMP9,
babelPtrR(__CIL_TMP10, BabelExp_115, 4),

(__CIL_TMP10 =:= -1 ,
__CIL_TMP2 is 1
; __CIL_TMP2 is 0),

(__CIL_TMP2 \= 0 ->
ns_mgr_init_cil_lr_1(S, VOID),true
; true). 

 
ns_hexdump_cil_lr_1(__CIL_AP_LEN, __CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_P, ASCII, TMP, VOID) :- 


 (TMP >= 17 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
true
; __CIL_TMP9 is ASCII +1* TMP,
BabelExp_116 is 0,
babel_ptrE(__CIL_TMP9, BabelExp_116, 1),
BabelExp_117 is TMP + 1,
TMP_SSA_1 is BabelExp_117,
ns_hexdump_cil_lr_1(__CIL_AP_LEN, __CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_P, ASCII, TMP_SSA_1, VOID),true). 

 :- foreign(babel__implicit_ns_hexdump_cil_lr_2c_45(+integer, +positive, +integer, +integer,  -integer)).
:- foreign(babel__implicit_ns_hexdump_cil_lr_2c_46(+integer, +positive, +integer, +integer,  -integer)).
:- foreign(babel__implicit_ns_hexdump_cil_lr_2c_47(+integer, +positive, +integer, +integer,  -integer)).
:- foreign(babel__implicit_ns_hexdump_cil_lr_2c_49(+integer, +positive, +integer, +integer,  -integer)).

ns_hexdump_cil_lr_2(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_I, __CIL_AP_N, LEN, P, ASCII, VOID) :- 


 BabelExp_118 is __CIL_AP_I,
babelPtrR(__CIL_TMP23, BabelExp_118, 4),

(__CIL_TMP23 < LEN ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
BabelExp_119 is __CIL_AP_I,
babelPtrR(__CIL_TMP24, BabelExp_119, 4),
BabelExp_120 is __CIL_TMP24 mod 16,
IDX_SSA_1 is BabelExp_120,

(IDX_SSA_1 =:= 0 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
BabelExp_121 is __CIL_AP_I,
babelPtrR(__CIL_TMP25, BabelExp_121, 4),

(__CIL_TMP25 > 0 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
BabelExp_122 is __CIL_AP_DST,
babelPtrR(__CIL_TMP26, BabelExp_122, 8),
BabelExp_123 is __CIL_AP_N,
babelPtrR(__CIL_TMP27, BabelExp_123, 4),
__CIL_TMP28 is __CIL_TMP26 +1* __CIL_TMP27,
BabelExp_124 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP29, BabelExp_124, 4),
BabelExp_125 is __CIL_AP_N,
babelPtrR(__CIL_TMP30, BabelExp_125, 4),
BabelExp_126 is __CIL_TMP29 - __CIL_TMP30,
__CIL_TMP31 is BabelExp_126,
__CIL_TMP32 is ASCII,
babel__implicit_ns_hexdump_cil_lr_2c_45(__CIL_TMP28, __CIL_TMP31, '  %S\\N', __CIL_TMP32 , TMP___0_SSA_1),
BabelExp_127 is __CIL_AP_N,
babelPtrR(__CIL_TMP33, BabelExp_127, 4),
BabelExp_128 is __CIL_TMP33 + TMP___0_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_128, 4)
; true),
BabelExp_129 is __CIL_AP_DST,
babelPtrR(__CIL_TMP34, BabelExp_129, 8),
BabelExp_130 is __CIL_AP_N,
babelPtrR(__CIL_TMP35, BabelExp_130, 4),
__CIL_TMP36 is __CIL_TMP34 +1* __CIL_TMP35,
BabelExp_131 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP37, BabelExp_131, 4),
BabelExp_132 is __CIL_AP_N,
babelPtrR(__CIL_TMP38, BabelExp_132, 4),
BabelExp_133 is __CIL_TMP37 - __CIL_TMP38,
__CIL_TMP39 is BabelExp_133,
BabelExp_134 is __CIL_AP_I,
babelPtrR(__CIL_TMP40, BabelExp_134, 4),
babel__implicit_ns_hexdump_cil_lr_2c_46(__CIL_TMP36, __CIL_TMP39, '%04X ', __CIL_TMP40 , TMP___1_SSA_1),
BabelExp_135 is __CIL_AP_N,
babelPtrR(__CIL_TMP41, BabelExp_135, 4),
BabelExp_136 is __CIL_TMP41 + TMP___1_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_136, 4)
; true),
BabelExp_137 is __CIL_AP_DST,
babelPtrR(__CIL_TMP42, BabelExp_137, 8),
BabelExp_138 is __CIL_AP_N,
babelPtrR(__CIL_TMP43, BabelExp_138, 4),
__CIL_TMP44 is __CIL_TMP42 +1* __CIL_TMP43,
BabelExp_139 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP45, BabelExp_139, 4),
BabelExp_140 is __CIL_AP_N,
babelPtrR(__CIL_TMP46, BabelExp_140, 4),
BabelExp_141 is __CIL_TMP45 - __CIL_TMP46,
__CIL_TMP47 is BabelExp_141,
BabelExp_142 is __CIL_AP_I,
babelPtrR(__CIL_TMP48, BabelExp_142, 4),
__CIL_TMP49 is P +1* __CIL_TMP48,
BabelExp_143 is __CIL_TMP49,
babelPtrR_byte(__CIL_TMP50, BabelExp_143, 1),
babel__implicit_ns_hexdump_cil_lr_2c_47(__CIL_TMP44, __CIL_TMP47, ' %02X', __CIL_TMP50 , TMP___2_SSA_1),
BabelExp_144 is __CIL_AP_N,
babelPtrR(__CIL_TMP51, BabelExp_144, 4),
BabelExp_145 is __CIL_TMP51 + TMP___2_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_145, 4),
BabelExp_146 is __CIL_AP_I,
babelPtrR(__CIL_TMP52, BabelExp_146, 4),
__CIL_TMP53 is P +1* __CIL_TMP52,
BabelExp_147 is __CIL_TMP53,
babelPtrR_byte(__CIL_TMP54, BabelExp_147, 1),
__CIL_TMP55 is __CIL_TMP54,

(__CIL_TMP55 < 32 ,
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ->
__CIL_TMP56 is ASCII +1* IDX_SSA_1,
BabelExp_148 is 46,
babel_ptrE(__CIL_TMP56, BabelExp_148, 1)
; BabelExp_149 is __CIL_AP_I,
babelPtrR(__CIL_TMP57, BabelExp_149, 4),
__CIL_TMP58 is P +1* __CIL_TMP57,
BabelExp_150 is __CIL_TMP58,
babelPtrR_byte(__CIL_TMP59, BabelExp_150, 1),
__CIL_TMP60 is __CIL_TMP59,

(__CIL_TMP60 > 126 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ->
__CIL_TMP61 is ASCII +1* IDX_SSA_1,
BabelExp_151 is 46,
babel_ptrE(__CIL_TMP61, BabelExp_151, 1)
; BabelExp_152 is __CIL_AP_I,
babelPtrR(__CIL_TMP62, BabelExp_152, 4),
__CIL_TMP63 is P +1* __CIL_TMP62,
BabelExp_153 is __CIL_TMP63,
babelPtrR_byte(__CIL_TMP64, BabelExp_153, 1),
__CIL_TMP65 is ASCII +1* IDX_SSA_1,
BabelExp_154 is __CIL_TMP64,
babel_ptrE(__CIL_TMP65, BabelExp_154, 1))),
BabelExp_155 is IDX_SSA_1 + 1,
__CIL_TMP66 is BabelExp_155,
__CIL_TMP67 is ASCII +1* __CIL_TMP66,
BabelExp_156 is 0,
babel_ptrE(__CIL_TMP67, BabelExp_156, 1),
BabelExp_157 is __CIL_AP_I,
babelPtrR(__CIL_TMP68, BabelExp_157, 4),
BabelExp_158 is __CIL_TMP68 + 1,
babel_ptrE(__CIL_AP_I, BabelExp_158, 4),
ns_hexdump_cil_lr_2(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_I, __CIL_AP_N, LEN, P, ASCII, VOID),true
; true),
BabelExp_159 is __CIL_AP_DST,
babelPtrR(__CIL_TMP69, BabelExp_159, 8),
BabelExp_160 is __CIL_AP_N,
babelPtrR(__CIL_TMP70, BabelExp_160, 4),
__CIL_TMP71 is __CIL_TMP69 +1* __CIL_TMP70,
BabelExp_161 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP72, BabelExp_161, 4),
BabelExp_162 is __CIL_AP_N,
babelPtrR(__CIL_TMP73, BabelExp_162, 4),
BabelExp_163 is __CIL_TMP72 - __CIL_TMP73,
__CIL_TMP74 is BabelExp_163,
BabelExp_164 is __CIL_AP_I,
babelPtrR(__CIL_TMP75, BabelExp_164, 4),
__CIL_TMP76 is P +1* __CIL_TMP75,
BabelExp_165 is __CIL_TMP76,
babelPtrR_byte(__CIL_TMP77, BabelExp_165, 1),
babel__implicit_ns_hexdump_cil_lr_2c_49(__CIL_TMP71, __CIL_TMP74, ' %02X', __CIL_TMP77 , TMP___2_SSA_1),
BabelExp_166 is __CIL_AP_N,
babelPtrR(__CIL_TMP78, BabelExp_166, 4),
BabelExp_167 is __CIL_TMP78 + TMP___2_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_167, 4),
BabelExp_168 is __CIL_AP_I,
babelPtrR(__CIL_TMP79, BabelExp_168, 4),
__CIL_TMP80 is P +1* __CIL_TMP79,
BabelExp_169 is __CIL_TMP80,
babelPtrR_byte(__CIL_TMP81, BabelExp_169, 1),
__CIL_TMP82 is __CIL_TMP81,

(__CIL_TMP82 < 32 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ->
__CIL_TMP83 is ASCII +1* IDX,
BabelExp_170 is 46,
babel_ptrE(__CIL_TMP83, BabelExp_170, 1)
; BabelExp_171 is __CIL_AP_I,
babelPtrR(__CIL_TMP84, BabelExp_171, 4),
__CIL_TMP85 is P +1* __CIL_TMP84,
BabelExp_172 is __CIL_TMP85,
babelPtrR_byte(__CIL_TMP86, BabelExp_172, 1),
__CIL_TMP87 is __CIL_TMP86,

(__CIL_TMP87 > 126 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
__CIL_TMP88 is ASCII +1* IDX,
BabelExp_173 is 46,
babel_ptrE(__CIL_TMP88, BabelExp_173, 1)
; BabelExp_174 is __CIL_AP_I,
babelPtrR(__CIL_TMP89, BabelExp_174, 4),
__CIL_TMP90 is P +1* __CIL_TMP89,
BabelExp_175 is __CIL_TMP90,
babelPtrR_byte(__CIL_TMP91, BabelExp_175, 1),
__CIL_TMP92 is ASCII +1* IDX,
BabelExp_176 is __CIL_TMP91,
babel_ptrE(__CIL_TMP92, BabelExp_176, 1))),
BabelExp_177 is IDX + 1,
__CIL_TMP93 is BabelExp_177,
__CIL_TMP94 is ASCII +1* __CIL_TMP93,
BabelExp_178 is 0,
babel_ptrE(__CIL_TMP94, BabelExp_178, 1),
BabelExp_179 is __CIL_AP_I,
babelPtrR(__CIL_TMP95, BabelExp_179, 4),
BabelExp_180 is __CIL_TMP95 + 1,
babel_ptrE(__CIL_AP_I, BabelExp_180, 4),
ns_hexdump_cil_lr_2(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_I, __CIL_AP_N, LEN, P, ASCII, VOID),true. 

 :- foreign(babel__implicit_ns_hexdump_cil_lr_3c_51(+integer, +positive, +integer, +string,  -integer)).

ns_hexdump_cil_lr_3(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_N, I, VOID) :- 


 TMP___4_SSA_1 is I,
BabelExp_181 is I + 1,
I_SSA_1 is BabelExp_181,
BabelExp_182 is TMP___4_SSA_1 mod 16,
__CIL_TMP10 is BabelExp_182,
(__CIL_TMP10 \= 0 ->
BabelExp_183 is __CIL_AP_DST,
babelPtrR(__CIL_TMP11, BabelExp_183, 8),
BabelExp_184 is __CIL_AP_N,
babelPtrR(__CIL_TMP12, BabelExp_184, 4),
__CIL_TMP13 is __CIL_TMP11 +1* __CIL_TMP12,
BabelExp_185 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP14, BabelExp_185, 4),
BabelExp_186 is __CIL_AP_N,
babelPtrR(__CIL_TMP15, BabelExp_186, 4),
BabelExp_187 is __CIL_TMP14 - __CIL_TMP15,
__CIL_TMP16 is BabelExp_187,
babel__implicit_ns_hexdump_cil_lr_3c_51(__CIL_TMP13, __CIL_TMP16, '%S', '   ' , TMP___3_SSA_1),
BabelExp_188 is __CIL_AP_N,
babelPtrR(__CIL_TMP17, BabelExp_188, 4),
BabelExp_189 is __CIL_TMP17 + TMP___3_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_189, 4),
ns_hexdump_cil_lr_3(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_N, I_SSA_1, VOID),true
; true). 

 
