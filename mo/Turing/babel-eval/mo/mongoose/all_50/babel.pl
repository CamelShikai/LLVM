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

:- foreign(babel__implicit_ns_handle_udpc_39(+integer, +integer, +integer)).
:- foreign(babel__implicit_ns_handle_udpc_40(+integer, +integer, +integer, +integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_ns_handle_udpc_41(+integer, +integer, +integer)).

ns_handle_udp(__CIL_PP_NC, __CIL_PP_S_LEN, __CIL_PP_N, __CIL_FP_S_LEN, __CIL_FP_N, LS, N_SSA_1) :- 
S_LEN_SSA_1 is 16,
babel__implicit_ns_handle_udpc_39(__CIL_PP_NC, 0, 160),
BabelExp_96 is S_LEN_SSA_1,
babel_ptrE(__CIL_FP_S_LEN, BabelExp_96, 4),
__CIL_TMP14 is LS +1* 32,
    __CIL_TMP15 is __CIL_TMP14,
    BUF is 0,
__CIL_TMP16 is 0,
__CIL_TMP17 is __CIL_PP_NC +1* 36,
BabelExp_98 is __CIL_TMP15,
babelPtrR(__CIL_TMP18, BabelExp_98, 4),
babel__implicit_ns_handle_udpc_40(__CIL_TMP18, __CIL_TMP16, 2000, 0, __CIL_TMP17, __CIL_PP_S_LEN , N_SSA_1),

(N_SSA_1 =< 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 =:= 0 ->
__CIL_TMP19 is LS +1* 24,
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is __CIL_PP_NC +1* 24,
__CIL_TMP22 is __CIL_TMP21,
babelPtrR(BabelExp_99, __CIL_TMP20, 8),
babel_ptrE(__CIL_TMP22, BabelExp_99, 8),
__CIL_TMP23 is __CIL_PP_NC +1* 56,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_100 is BUF,
babel_ptrE(__CIL_TMP24, BabelExp_100, 8),
__CIL_TMP25 is __CIL_PP_NC +1* 72,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_101 is N_SSA_1,
babel_ptrE(__CIL_TMP26, BabelExp_101, 8),
__CIL_TMP27 is __CIL_PP_NC +1* 72,
__CIL_TMP28 is __CIL_TMP27,
__CIL_TMP29 is __CIL_PP_NC +1* 64,
__CIL_TMP30 is __CIL_TMP29,
babelPtrR(BabelExp_102, __CIL_TMP28, 8),
babel_ptrE(__CIL_TMP30, BabelExp_102, 8),
__CIL_TMP31 is LS +1* 32,
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_PP_NC +1* 32,
__CIL_TMP34 is __CIL_TMP33,
babelPtrR(BabelExp_103, __CIL_TMP32, 4),
babel_ptrE(__CIL_TMP34, BabelExp_103, 4),
__CIL_TMP35 is LS +1* 144,
__CIL_TMP36 is __CIL_TMP35,
__CIL_TMP37 is __CIL_PP_NC +1* 144,
__CIL_TMP38 is __CIL_TMP37,
babelPtrR(BabelExp_104, __CIL_TMP36, 8),
babel_ptrE(__CIL_TMP38, BabelExp_104, 8),
__CIL_TMP39 is LS +1* 120,
__CIL_TMP40 is __CIL_TMP39,
__CIL_TMP41 is __CIL_PP_NC +1* 120,
__CIL_TMP42 is __CIL_TMP41,
babelPtrR(BabelExp_105, __CIL_TMP40, 8),
babel_ptrE(__CIL_TMP42, BabelExp_105, 8),
__CIL_TMP43 is LS +1* 128,
__CIL_TMP44 is __CIL_TMP43,
__CIL_TMP45 is __CIL_PP_NC +1* 128,
__CIL_TMP46 is __CIL_TMP45,
babelPtrR(BabelExp_106, __CIL_TMP44, 8),
babel_ptrE(__CIL_TMP46, BabelExp_106, 8),
__CIL_TMP47 is LS +1* 24,
__CIL_TMP48 is __CIL_TMP47,
__CIL_TMP49 is __CIL_PP_NC +1* 24,
__CIL_TMP50 is __CIL_TMP49,
babelPtrR(BabelExp_107, __CIL_TMP48, 8),
babel_ptrE(__CIL_TMP50, BabelExp_107, 8),
__CIL_TMP51 is __CIL_PP_NC +1* 16,
__CIL_TMP52 is __CIL_TMP51,
BabelExp_108 is LS,
babel_ptrE(__CIL_TMP52, BabelExp_108, 8),
BabelExp_109 is 256,
__CIL_TMP53 is BabelExp_109,
__CIL_TMP54 is __CIL_PP_NC +1* 152,
__CIL_TMP55 is __CIL_TMP54,
BabelExp_110 is __CIL_TMP53,
babel_ptrE(__CIL_TMP55, BabelExp_110, 4),
BabelExp_111 is N_SSA_1,
babel_ptrE(__CIL_FP_N, BabelExp_111, 8),
babel__implicit_ns_handle_udpc_41(__CIL_PP_NC, 3, __CIL_PP_N)
; true),
true. 

 
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

 :- foreign(babel__implicit_mg_munmapc_53(+integer, +positive)).

mg_munmap(P, SIZE, VOID) :- 


 babel__implicit_mg_munmapc_53(P, SIZE),true. 

 :- foreign(babel__implicit_next_optionc_54(+integer, +integer,  -integer)).
:- foreign(babel__implicit_next_optionc_55(+integer,  -positive)).
:- foreign(babel__implicit_next_optionc_56(+integer, +integer, +positive,  -integer)).

next_option(LIST, VAL, EQ_VAL, BABEL_RET) :- 


 (LIST =:= 0 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
LIST_SSA_1 is 0,
LIST_SSA_2 is LIST_SSA_1
; BabelExp_129 is LIST,
babelPtrR_byte(__CIL_TMP17, BabelExp_129, 1),
__CIL_TMP18 is __CIL_TMP17,

(__CIL_TMP18 =:= 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
LIST_SSA_1 is 0,
LIST_SSA_2 is LIST_SSA_1
; MEM_51 is VAL,
BabelExp_130 is LIST,
babel_ptrE(MEM_51, BabelExp_130, 8),
MEM_52 is VAL,
BabelExp_131 is MEM_52,
babelPtrR(__CIL_TMP19, BabelExp_131, 8),
babel__implicit_next_optionc_54(__CIL_TMP19, 44 , TMP___0_SSA_1),
LIST_SSA_1 is TMP___0_SSA_1,

(LIST_SSA_1 \= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
MEM_53 is VAL,
BabelExp_132 is MEM_53,
babelPtrR(__CIL_TMP20, BabelExp_132, 8),
BabelExp_133 is LIST_SSA_1 - __CIL_TMP20,
__CIL_TMP21 is BabelExp_133,
__CIL_TMP22 is VAL +1* 8,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_134 is __CIL_TMP21,
babel_ptrE(__CIL_TMP23, BabelExp_134, 8),
LIST_SSA_2 is LIST_SSA_1 +1* 1
; MEM_54 is VAL,
BabelExp_135 is MEM_54,
babelPtrR(__CIL_TMP24, BabelExp_135, 8),
babel__implicit_next_optionc_55(__CIL_TMP24 , TMP_SSA_1),
MEM_55 is VAL,
BabelExp_136 is MEM_55,
babelPtrR(__CIL_TMP25, BabelExp_136, 8),
LIST_SSA_2 is __CIL_TMP25 +1* TMP_SSA_1,
MEM_56 is VAL,
BabelExp_137 is MEM_56,
babelPtrR(__CIL_TMP26, BabelExp_137, 8),
BabelExp_138 is LIST_SSA_2 - __CIL_TMP26,
__CIL_TMP27 is BabelExp_138,
__CIL_TMP28 is VAL +1* 8,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_139 is __CIL_TMP27,
babel_ptrE(__CIL_TMP29, BabelExp_139, 8)),

(EQ_VAL \= 0 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
__CIL_TMP30 is EQ_VAL +1* 8,
__CIL_TMP31 is __CIL_TMP30,
BabelExp_140 is 0,
babel_ptrE(__CIL_TMP31, BabelExp_140, 8),
MEM_57 is VAL,
BabelExp_141 is MEM_57,
babelPtrR(__CIL_TMP32, BabelExp_141, 8),
__CIL_TMP33 is VAL +1* 8,
__CIL_TMP34 is __CIL_TMP33,
BabelExp_142 is __CIL_TMP34,
babelPtrR(__CIL_TMP35, BabelExp_142, 8),
babel__implicit_next_optionc_56(__CIL_TMP32, 61, __CIL_TMP35 , TMP___1_SSA_1),
MEM_58 is EQ_VAL,
BabelExp_143 is TMP___1_SSA_1,
babel_ptrE(MEM_58, BabelExp_143, 8),
MEM_59 is EQ_VAL,
BabelExp_144 is MEM_59,
babelPtrR(__CIL_TMP36, BabelExp_144, 8),
__CIL_TMP37 is __CIL_TMP36,

(__CIL_TMP37 \= 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
MEM_60 is EQ_VAL,
BabelExp_145 is MEM_60,
babelPtrR(__CIL_TMP38, BabelExp_145, 8),
MEM_61 is EQ_VAL,
BabelExp_146 is __CIL_TMP38 +1* 1,
babel_ptrE(MEM_61, BabelExp_146, 8),
__CIL_TMP39 is VAL +1* 8,
__CIL_TMP40 is __CIL_TMP39,
MEM_62 is VAL,
BabelExp_147 is MEM_62,
babelPtrR(__CIL_TMP41, BabelExp_147, 8),
BabelExp_148 is __CIL_TMP40,
babelPtrR(__CIL_TMP42, BabelExp_148, 8),
__CIL_TMP43 is __CIL_TMP41 +1* __CIL_TMP42,
MEM_63 is EQ_VAL,
BabelExp_149 is MEM_63,
babelPtrR(__CIL_TMP44, BabelExp_149, 8),
BabelExp_150 is __CIL_TMP43 - __CIL_TMP44,
__CIL_TMP45 is BabelExp_150,
__CIL_TMP46 is EQ_VAL +1* 8,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_151 is __CIL_TMP45,
babel_ptrE(__CIL_TMP47, BabelExp_151, 8),
MEM_64 is EQ_VAL,
BabelExp_152 is MEM_64,
babelPtrR(__CIL_TMP48, BabelExp_152, 8),
MEM_65 is VAL,
BabelExp_153 is MEM_65,
babelPtrR(__CIL_TMP49, BabelExp_153, 8),
BabelExp_154 is __CIL_TMP48 - __CIL_TMP49,
__CIL_TMP50 is BabelExp_154,
BabelExp_155 is __CIL_TMP50 - 1,
__CIL_TMP51 is BabelExp_155,
__CIL_TMP52 is VAL +1* 8,
__CIL_TMP53 is __CIL_TMP52,
BabelExp_156 is __CIL_TMP51,
babel_ptrE(__CIL_TMP53, BabelExp_156, 8)
; true)
; true))),
BABEL_RET is LIST_SSA_2, true. 

 :- foreign(babel__implicit_skipc_57(+integer, +integer,  -positive)).
:- foreign(babel__implicit_skipc_58(+integer, +integer,  -positive)).
:- foreign(babel__implicit_skipc_59(+integer, +integer, +integer, +integer)).

skip(__CIL_PP_BUF, __CIL_PP_BEGIN_WORD, __CIL_PP_END_DELIMITERS, __CIL_FP_BUF, __CIL_FP_BEGIN_WORD, __CIL_FP_END_DELIMITERS, BUF, DELIMITERS, BABEL_RET) :- 


 BabelExp_157 is BUF,
babelPtrR(BEGIN_WORD_SSA_1, BabelExp_157, 8),
babel__implicit_skipc_57(BEGIN_WORD_SSA_1, DELIMITERS , TMP_SSA_1),
END_WORD_SSA_1 is BEGIN_WORD_SSA_1 +1* TMP_SSA_1,
babel__implicit_skipc_58(END_WORD_SSA_1, DELIMITERS , TMP___0_SSA_1),
END_DELIMITERS_SSA_1 is END_WORD_SSA_1 +1* TMP___0_SSA_1,
P_SSA_1 is END_WORD_SSA_1,
BabelExp_158 is BUF,
babel_ptrE(__CIL_FP_BUF, BabelExp_158, 8),
BabelExp_159 is BEGIN_WORD_SSA_1,
babel_ptrE(__CIL_FP_BEGIN_WORD, BabelExp_159, 8),
BabelExp_160 is END_DELIMITERS_SSA_1,
babel_ptrE(__CIL_FP_END_DELIMITERS, BabelExp_160, 8),
babel__implicit_skipc_59(__CIL_PP_BUF, __CIL_PP_BEGIN_WORD, __CIL_PP_END_DELIMITERS, P_SSA_1),
BabelExp_161 is __CIL_FP_BUF,
babelPtrR(BUF_SSA_1, BabelExp_161, 8),
BabelExp_162 is __CIL_FP_BEGIN_WORD,
babelPtrR(BEGIN_WORD_SSA_2, BabelExp_162, 8),
BabelExp_163 is __CIL_FP_END_DELIMITERS,
babelPtrR(END_DELIMITERS_SSA_2, BabelExp_163, 8),
BabelExp_164 is END_DELIMITERS_SSA_2,
babel_ptrE(BUF_SSA_1, BabelExp_164, 8),BABEL_RET is BEGIN_WORD_SSA_2, true. 

 :- foreign(babel__implicit_ns_forwardc_60(+integer, +integer, +positive)).
:- foreign(babel__implicit_ns_forwardc_61(+integer, +positive)).

ns_forward(FROM, TO, VOID) :- 


 __CIL_TMP3 is FROM +1* 56,
__CIL_TMP4 is __CIL_TMP3,
BabelExp_165 is __CIL_TMP4,
babelPtrR(__CIL_TMP5, BabelExp_165, 8),
__CIL_TMP6 is FROM +1* 64,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_166 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_166, 8),
babel__implicit_ns_forwardc_60(TO, __CIL_TMP5, __CIL_TMP8),
__CIL_TMP9 is FROM +1* 56,
__CIL_TMP10 is FROM +1* 64,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_167 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_167, 8),
babel__implicit_ns_forwardc_61(__CIL_TMP9, __CIL_TMP12),true. 

 :- foreign(babel__implicit_addenv2c_62(+integer,  -integer)).
:- foreign(babel__implicit_addenv2c_63(+integer, +string, +integer, +integer)).

addenv2(BLK, NAME, VOID) :- 


 babel__implicit_addenv2c_62(NAME , TMP_SSA_1),
S_SSA_1 is TMP_SSA_1,

(S_SSA_1 \= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
babel__implicit_addenv2c_63(BLK, '%s=%s', NAME, S_SSA_1)
; true),
true. 

 
:- foreign(babel__implicit_mg_strdupc_0(+integer,  -positive)).
:- foreign(babel__implicit_mg_strdupc_1(+positive,  -integer)).
:- foreign(babel__implicit_mg_strdupc_2(+integer, +integer)).

mg_strdup(STR, BABEL_RET) :- 


 babel__implicit_mg_strdupc_0(STR , TMP_SSA_1),
BabelExp_0 is TMP_SSA_1 + 1,
__CIL_TMP9 is BabelExp_0,
babel__implicit_mg_strdupc_1(__CIL_TMP9 , TMP___0_SSA_1),
COPY_SSA_1 is TMP___0_SSA_1,

(COPY_SSA_1 \= 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
babel__implicit_mg_strdupc_2(COPY_SSA_1, STR)
; true),
BABEL_RET is COPY_SSA_1, true. 

 
isbyte(N___0, BABEL_RET) :- 


 (N___0 >= 0 ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
(N___0 =< 255 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
TMP_SSA_1 is 1
; TMP_SSA_1 is 0)
; TMP_SSA_1 is 0),
BABEL_RET is TMP_SSA_1, true. 

 :- foreign(babel__implicit_is_valid_http_methodc_3(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_http_methodc_4(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_http_methodc_5(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_http_methodc_6(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_http_methodc_7(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_http_methodc_8(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_http_methodc_9(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_http_methodc_10(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_http_methodc_11(+integer, +string,  -integer)).

is_valid_http_method(S, BABEL_RET) :- 


 babel__implicit_is_valid_http_methodc_3(S, 'GET' , TMP_SSA_1),
(TMP_SSA_1 \= 0 ->
babel__implicit_is_valid_http_methodc_4(S, 'POST' , TMP___0_SSA_1),
(TMP___0_SSA_1 \= 0 ->
babel__implicit_is_valid_http_methodc_5(S, 'HEAD' , TMP___1_SSA_1),
(TMP___1_SSA_1 \= 0 ->
babel__implicit_is_valid_http_methodc_6(S, 'CONNECT' , TMP___2_SSA_1),
(TMP___2_SSA_1 \= 0 ->
babel__implicit_is_valid_http_methodc_7(S, 'PUT' , TMP___3_SSA_1),
(TMP___3_SSA_1 \= 0 ->
babel__implicit_is_valid_http_methodc_8(S, 'DELETE' , TMP___4_SSA_1),
(TMP___4_SSA_1 \= 0 ->
babel__implicit_is_valid_http_methodc_9(S, 'OPTIONS' , TMP___5_SSA_1),
(TMP___5_SSA_1 \= 0 ->
babel__implicit_is_valid_http_methodc_10(S, 'PROPFIND' , TMP___6_SSA_1),
(TMP___6_SSA_1 \= 0 ->
babel__implicit_is_valid_http_methodc_11(S, 'MKCOL' , TMP___7_SSA_1),
(TMP___7_SSA_1 \= 0 ->
TMP___8_SSA_1 is 0
; TMP___8_SSA_1 is 1)
; TMP___8_SSA_1 is 1)
; TMP___8_SSA_1 is 1)
; TMP___8_SSA_1 is 1)
; TMP___8_SSA_1 is 1)
; TMP___8_SSA_1 is 1)
; TMP___8_SSA_1 is 1)
; TMP___8_SSA_1 is 1)
; TMP___8_SSA_1 is 1),
BABEL_RET is TMP___8_SSA_1, true. 

 :- foreign(babel__implicit_lowercasec_12(+integer,  -integer)).

lowercase(S, BABEL_RET) :- 


 MEM_4 is S,
BabelExp_1 is MEM_4,
babelPtrR_byte(__CIL_TMP4, BabelExp_1, 1),
babel__implicit_lowercasec_12(__CIL_TMP4 , TMP_SSA_1),BABEL_RET is TMP_SSA_1, true. 

 :- foreign(babel__implicit_mg_strcasecmpc_13(+integer, +integer, +integer)).

mg_strcasecmp(__CIL_PP_DIFF, __CIL_FP_DIFF, S1, S2, BABEL_RET) :- 


DIFF is 1,
 BabelExp_2 is DIFF,
babel_ptrE(__CIL_FP_DIFF, BabelExp_2, 4),
babel__implicit_mg_strcasecmpc_13(__CIL_PP_DIFF, S1, S2),
BabelExp_3 is __CIL_FP_DIFF,
babelPtrR(DIFF_SSA_1, BabelExp_3, 4),BABEL_RET is DIFF_SSA_1, true. 

 :- foreign(babel__implicit_mg_strncasecmpc_14(+integer, +integer, +integer, +positive)).

mg_strncasecmp(__CIL_PP_DIFF, __CIL_FP_DIFF, S1, S2, LEN, BABEL_RET) :- 


 DIFF_SSA_1 is 0,

(LEN > 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
BabelExp_4 is DIFF_SSA_1,
babel_ptrE(__CIL_FP_DIFF, BabelExp_4, 4),
babel__implicit_mg_strncasecmpc_14(__CIL_PP_DIFF, S1, S2, LEN),
BabelExp_5 is __CIL_FP_DIFF,
babelPtrR(DIFF_SSA_2, BabelExp_5, 4)
; DIFF_SSA_2 is DIFF_SSA_1),
BABEL_RET is DIFF_SSA_2, true. 

 :- foreign(babel__implicit_mg_get_headerc_15(+integer, +integer, +integer, +integer,  -integer)).

mg_get_header(__CIL_PP___CIL_RET5, __CIL_FP___CIL_RET5, RI, S, BABEL_RET) :- 


I_SSA_1 is 0,
__CIL_RET5 is 1,
BabelExp_6 is __CIL_RET5,
babel_ptrE(__CIL_FP___CIL_RET5, BabelExp_6, 8),
babel__implicit_mg_get_headerc_15(__CIL_PP___CIL_RET5, RI, S, I_SSA_1 , RETFLAG6_SSA_1),
BabelExp_7 is __CIL_FP___CIL_RET5,
babelPtrR(__CIL_RET5_SSA_1, BabelExp_7, 8),
(RETFLAG6_SSA_1 \= 0 ->
BABEL_RET is __CIL_RET5_SSA_1, true
; BABEL_RET is 0, true). 

 :- foreign(babel__implicit_mg_templatec_16(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_mg_templatec_17(+integer, +integer, +integer)).

mg_template(__CIL_PP_CONN, __CIL_PP_S, __CIL_PP_I, __CIL_PP_POS, __CIL_FP_CONN, __CIL_FP_S, __CIL_FP_I, __CIL_FP_POS, CONN, S, EXPANSIONS, VOID) :- 


 POS_SSA_1 is 0,
INSIDE_MARKER_SSA_1 is 0,
I_SSA_1 is 0,
BabelExp_8 is CONN,
babel_ptrE(__CIL_FP_CONN, BabelExp_8, 8),
BabelExp_9 is S,
babel_ptrE(__CIL_FP_S, BabelExp_9, 8),
BabelExp_10 is I_SSA_1,
babel_ptrE(__CIL_FP_I, BabelExp_10, 4),
BabelExp_11 is POS_SSA_1,
babel_ptrE(__CIL_FP_POS, BabelExp_11, 4),
babel__implicit_mg_templatec_16(__CIL_PP_CONN, __CIL_PP_S, __CIL_PP_I, __CIL_PP_POS, EXPANSIONS, INSIDE_MARKER_SSA_1),
BabelExp_12 is __CIL_FP_CONN,
babelPtrR(CONN_SSA_1, BabelExp_12, 8),
BabelExp_13 is __CIL_FP_S,
babelPtrR(S_SSA_1, BabelExp_13, 8),
BabelExp_14 is __CIL_FP_I,
babelPtrR(I_SSA_2, BabelExp_14, 4),
BabelExp_15 is __CIL_FP_POS,
babelPtrR(POS_SSA_2, BabelExp_15, 4),

(I_SSA_2 > POS_SSA_2 ,
__CIL_TMP28 is 1
; __CIL_TMP28 is 0),

(__CIL_TMP28 \= 0 ->
__CIL_TMP29 is S_SSA_1 +1* POS_SSA_2,
BabelExp_16 is I_SSA_2 - POS_SSA_2,
__CIL_TMP30 is BabelExp_16,
babel__implicit_mg_templatec_17(CONN_SSA_1, __CIL_TMP29, __CIL_TMP30)
; true),
true. 

 :- foreign(babel__implicit_is_dav_requestc_18(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_dav_requestc_19(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_dav_requestc_20(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_dav_requestc_21(+integer, +string,  -integer)).

is_dav_request(CONN, BABEL_RET) :- 


 __CIL_TMP14 is CONN +1* 8,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_17 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_17, 8),
S_SSA_1 is __CIL_TMP16,
babel__implicit_is_dav_requestc_18(S_SSA_1, 'PUT' , TMP_SSA_1),
(TMP_SSA_1 \= 0 ->
babel__implicit_is_dav_requestc_19(S_SSA_1, 'DELETE' , TMP___0_SSA_1),
(TMP___0_SSA_1 \= 0 ->
babel__implicit_is_dav_requestc_20(S_SSA_1, 'MKCOL' , TMP___1_SSA_1),
(TMP___1_SSA_1 \= 0 ->
babel__implicit_is_dav_requestc_21(S_SSA_1, 'PROPFIND' , TMP___2_SSA_1),
(TMP___2_SSA_1 \= 0 ->
TMP___3_SSA_1 is 0
; TMP___3_SSA_1 is 1)
; TMP___3_SSA_1 is 1)
; TMP___3_SSA_1 is 1)
; TMP___3_SSA_1 is 1),
BABEL_RET is TMP___3_SSA_1, true. 

 :- foreign(babel__implicit_mg_writec_22(+integer, +integer, +positive)).

mg_write(C, BUF, LEN, BABEL_RET) :- 


 BabelExp_18 is 0 + 8,
__CIL_TMP7 is BabelExp_18,
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_19 is C - __CIL_TMP9,
__CIL_TMP10 is BabelExp_19,
CONN_SSA_1 is __CIL_TMP10,
MEM_15 is CONN_SSA_1,
BabelExp_20 is MEM_15,
babelPtrR(__CIL_TMP11, BabelExp_20, 8),
babel__implicit_mg_writec_22(__CIL_TMP11, BUF, LEN),
MEM_16 is CONN_SSA_1,
BabelExp_21 is MEM_16,
babelPtrR(__CIL_TMP12, BabelExp_21, 8),
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13 +1* 88,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_22 is __CIL_TMP15,
babelPtrR(__CIL_TMP6, BabelExp_22, 8),BABEL_RET is __CIL_TMP6, true. 

 :- foreign(babel__implicit_mg_send_statusc_23(+integer,  -integer)).
:- foreign(babel__implicit_mg_send_statusc_24(+integer, +string, +integer, +integer)).

mg_send_status(C, STATUS, VOID) :- 


 BabelExp_23 is 0 + 8,
__CIL_TMP8 is BabelExp_23,
__CIL_TMP9 is __CIL_TMP8,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_24 is C - __CIL_TMP10,
__CIL_TMP11 is BabelExp_24,
CONN_SSA_1 is __CIL_TMP11,
__CIL_TMP12 is C +1* 636,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_25 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_25, 4),

(__CIL_TMP14 =:= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
__CIL_TMP15 is C +1* 636,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_26 is STATUS,
babel_ptrE(__CIL_TMP16, BabelExp_26, 4),
babel__implicit_mg_send_statusc_23(STATUS , TMP_SSA_1),
babel__implicit_mg_send_statusc_24(C, 'HTTP/1.1 %d %s\r\n', STATUS, TMP_SSA_1)
; true),
MEM_26 is CONN_SSA_1,
BabelExp_27 is MEM_26,
babelPtrR(__CIL_TMP17, BabelExp_27, 8),
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18 +1* 152,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_28 is 2097152,
__CIL_TMP21 is BabelExp_28,
BabelExp_29 is __CIL_TMP20,
babelPtrR(__CIL_TMP22, BabelExp_29, 4),
__CIL_TMP23 is __CIL_TMP21,
MEM_27 is CONN_SSA_1,
BabelExp_30 is MEM_27,
babelPtrR(__CIL_TMP24, BabelExp_30, 8),
__CIL_TMP25 is __CIL_TMP24,
__CIL_TMP26 is __CIL_TMP25 +1* 152,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_31 is __CIL_TMP22 \/ __CIL_TMP23,
babel_ptrE(__CIL_TMP27, BabelExp_31, 4),true. 

 :- foreign(babel__implicit_mg_send_headerc_25(+integer,  -integer)).
:- foreign(babel__implicit_mg_send_headerc_26(+integer, +string, +integer, +integer)).
:- foreign(babel__implicit_mg_send_headerc_27(+integer, +string, +integer, +integer)).

mg_send_header(C, NAME, V, VOID) :- 


 BabelExp_32 is 0 + 8,
__CIL_TMP9 is BabelExp_32,
__CIL_TMP10 is __CIL_TMP9,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_33 is C - __CIL_TMP11,
__CIL_TMP12 is BabelExp_33,
CONN_SSA_1 is __CIL_TMP12,
__CIL_TMP13 is C +1* 636,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_34 is __CIL_TMP14,
babelPtrR(__CIL_TMP15, BabelExp_34, 4),

(__CIL_TMP15 =:= 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
__CIL_TMP16 is C +1* 636,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_35 is 200,
babel_ptrE(__CIL_TMP17, BabelExp_35, 4),
babel__implicit_mg_send_headerc_25(200 , TMP_SSA_1),
babel__implicit_mg_send_headerc_26(C, 'HTTP/1.1 %d %s\r\n', 200, TMP_SSA_1)
; true),
babel__implicit_mg_send_headerc_27(C, '%s: %s\r\n', NAME, V),
MEM_27 is CONN_SSA_1,
BabelExp_36 is MEM_27,
babelPtrR(__CIL_TMP18, BabelExp_36, 8),
__CIL_TMP19 is __CIL_TMP18,
__CIL_TMP20 is __CIL_TMP19 +1* 152,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_37 is 2097152,
__CIL_TMP22 is BabelExp_37,
BabelExp_38 is __CIL_TMP21,
babelPtrR(__CIL_TMP23, BabelExp_38, 4),
__CIL_TMP24 is __CIL_TMP22,
MEM_28 is CONN_SSA_1,
BabelExp_39 is MEM_28,
babelPtrR(__CIL_TMP25, BabelExp_39, 8),
__CIL_TMP26 is __CIL_TMP25,
__CIL_TMP27 is __CIL_TMP26 +1* 152,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_40 is __CIL_TMP23 \/ __CIL_TMP24,
babel_ptrE(__CIL_TMP28, BabelExp_40, 4),true. 

 :- foreign(babel__implicit_mg_send_datac_28(+integer)).
:- foreign(babel__implicit_mg_send_datac_29(+integer, +integer, +integer)).

mg_send_data(C, DATA, DATA_LEN, BABEL_RET) :- 


 BabelExp_41 is 0 + 8,
__CIL_TMP7 is BabelExp_41,
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_42 is C - __CIL_TMP9,
__CIL_TMP10 is BabelExp_42,
CONN_SSA_1 is __CIL_TMP10,
babel__implicit_mg_send_datac_28(C),
BabelExp_43 is 0 + 8,
__CIL_TMP11 is BabelExp_43,
__CIL_TMP12 is __CIL_TMP11,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_44 is C - __CIL_TMP13,
__CIL_TMP14 is BabelExp_44,
babel__implicit_mg_send_datac_29(__CIL_TMP14, DATA, DATA_LEN),
MEM_18 is CONN_SSA_1,
BabelExp_45 is MEM_18,
babelPtrR(__CIL_TMP15, BabelExp_45, 8),
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16 +1* 88,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_46 is __CIL_TMP18,
babelPtrR(__CIL_TMP6, BabelExp_46, 8),BABEL_RET is __CIL_TMP6, true. 

 
is_big_endian(__CIL_PP_N, BABEL_RET) :- 


 __CIL_TMP3 is __CIL_PP_N +1* 0,
BabelExp_47 is __CIL_TMP3,
babelPtrR_byte(__CIL_TMP4, BabelExp_47, 1),
__CIL_TMP5 is __CIL_TMP4,

(__CIL_TMP5 =:= 0 ,
__CIL_TMP2 is 1
; __CIL_TMP2 is 0),
BABEL_RET is __CIL_TMP2, true. 

 
sHA1Init(CONTEXT, VOID) :- 


 MEM_21 is CONTEXT,
__CIL_TMP4 is MEM_21,
__CIL_TMP5 is __CIL_TMP4,
BabelExp_48 is 1732584193,
babel_ptrE(__CIL_TMP5, BabelExp_48, 4),
MEM_22 is CONTEXT,
__CIL_TMP6 is MEM_22,
__CIL_TMP7 is __CIL_TMP6 +4* 1,
BabelExp_49 is 4023233417,
babel_ptrE(__CIL_TMP7, BabelExp_49, 4),
MEM_23 is CONTEXT,
__CIL_TMP8 is MEM_23,
__CIL_TMP9 is __CIL_TMP8 +4* 2,
BabelExp_50 is 2562383102,
babel_ptrE(__CIL_TMP9, BabelExp_50, 4),
MEM_24 is CONTEXT,
__CIL_TMP10 is MEM_24,
__CIL_TMP11 is __CIL_TMP10 +4* 3,
BabelExp_51 is 271733878,
babel_ptrE(__CIL_TMP11, BabelExp_51, 4),
MEM_25 is CONTEXT,
__CIL_TMP12 is MEM_25,
__CIL_TMP13 is __CIL_TMP12 +4* 4,
BabelExp_52 is 3285377520,
babel_ptrE(__CIL_TMP13, BabelExp_52, 4),
TMP_SSA_1 is 0,
__CIL_TMP14 is CONTEXT +1* 20,
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16 +4* 1,
BabelExp_53 is TMP_SSA_1,
babel_ptrE(__CIL_TMP17, BabelExp_53, 4),
__CIL_TMP18 is CONTEXT +1* 20,
__CIL_TMP19 is __CIL_TMP18,
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_54 is TMP_SSA_1,
babel_ptrE(__CIL_TMP21, BabelExp_54, 4),true. 

 :- foreign(babel__implicit_SHA1Updatec_30(+integer, +integer, +positive)).
:- foreign(babel__implicit_SHA1Updatec_31(+integer, +integer)).
:- foreign(babel__implicit_SHA1Updatec_32(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_SHA1Updatec_33(+integer, +integer, +positive)).

sHA1Update(__CIL_PP_CONTEXT, __CIL_PP_DATA, __CIL_PP_LEN, __CIL_PP_I, __CIL_FP_CONTEXT, __CIL_FP_DATA, __CIL_FP_LEN, __CIL_FP_I, CONTEXT, DATA, LEN, VOID) :- 


 __CIL_TMP26 is CONTEXT +1* 20,
__CIL_TMP27 is __CIL_TMP26,
__CIL_TMP28 is __CIL_TMP27,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_55 is __CIL_TMP29,
babelPtrR(__CIL_TMP30, BabelExp_55, 4),
J_SSA_1 is __CIL_TMP30,
__CIL_TMP31 is CONTEXT +1* 20,
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32,
__CIL_TMP34 is __CIL_TMP33,
BabelExp_56 is __CIL_TMP34,
babelPtrR(__CIL_TMP35, BabelExp_56, 4),
__CIL_TMP36 is __CIL_TMP35,
BabelExp_57 is LEN << 3,
__CIL_TMP37 is BabelExp_57,
BabelExp_58 is __CIL_TMP36 + __CIL_TMP37,
__CIL_TMP38 is BabelExp_58,
TMP_SSA_1 is __CIL_TMP38,
__CIL_TMP39 is CONTEXT +1* 20,
__CIL_TMP40 is __CIL_TMP39,
__CIL_TMP41 is __CIL_TMP40,
__CIL_TMP42 is __CIL_TMP41,
BabelExp_59 is TMP_SSA_1,
babel_ptrE(__CIL_TMP42, BabelExp_59, 4),

(TMP_SSA_1 < J_SSA_1 ,
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ->
__CIL_TMP43 is CONTEXT +1* 20,
__CIL_TMP44 is __CIL_TMP43,
__CIL_TMP45 is __CIL_TMP44,
__CIL_TMP46 is __CIL_TMP45 +4* 1,
BabelExp_60 is __CIL_TMP46,
babelPtrR(__CIL_TMP47, BabelExp_60, 4),
__CIL_TMP48 is CONTEXT +1* 20,
__CIL_TMP49 is __CIL_TMP48,
__CIL_TMP50 is __CIL_TMP49,
__CIL_TMP51 is __CIL_TMP50 +4* 1,
BabelExp_61 is __CIL_TMP47 + 1,
babel_ptrE(__CIL_TMP51, BabelExp_61, 4)
; true),
__CIL_TMP52 is CONTEXT +1* 20,
__CIL_TMP53 is __CIL_TMP52,
__CIL_TMP54 is __CIL_TMP53,
__CIL_TMP55 is __CIL_TMP54 +4* 1,
BabelExp_62 is __CIL_TMP55,
babelPtrR(__CIL_TMP56, BabelExp_62, 4),
__CIL_TMP57 is __CIL_TMP56,
BabelExp_63 is LEN >> 29,
__CIL_TMP58 is BabelExp_63,
BabelExp_64 is __CIL_TMP57 + __CIL_TMP58,
__CIL_TMP59 is BabelExp_64,
__CIL_TMP60 is CONTEXT +1* 20,
__CIL_TMP61 is __CIL_TMP60,
__CIL_TMP62 is __CIL_TMP61,
__CIL_TMP63 is __CIL_TMP62 +4* 1,
BabelExp_65 is __CIL_TMP59,
babel_ptrE(__CIL_TMP63, BabelExp_65, 4),
BabelExp_66 is J_SSA_1 >> 3,
__CIL_TMP64 is BabelExp_66,
BabelExp_67 is __CIL_TMP64 /\ 63,
J_SSA_2 is BabelExp_67,
BabelExp_68 is J_SSA_2 + LEN,
__CIL_TMP65 is BabelExp_68,

(__CIL_TMP65 > 63 ,
__CIL_TMP25 is 1
; __CIL_TMP25 is 0),

(__CIL_TMP25 \= 0 ->
BabelExp_69 is 64 - J_SSA_2,
I_SSA_1 is BabelExp_69,
__CIL_TMP66 is CONTEXT +1* 28,
__CIL_TMP67 is __CIL_TMP66,
__CIL_TMP68 is __CIL_TMP67,
__CIL_TMP69 is __CIL_TMP68 +1* J_SSA_2,
babel__implicit_SHA1Updatec_30(__CIL_TMP69, DATA, I_SSA_1),
MEM_78 is CONTEXT,
__CIL_TMP70 is MEM_78,
__CIL_TMP71 is CONTEXT +1* 28,
__CIL_TMP72 is __CIL_TMP71,
__CIL_TMP73 is __CIL_TMP72,
babel__implicit_SHA1Updatec_31(__CIL_TMP70, __CIL_TMP73),
BabelExp_70 is CONTEXT,
babel_ptrE(__CIL_FP_CONTEXT, BabelExp_70, 8),
BabelExp_71 is DATA,
babel_ptrE(__CIL_FP_DATA, BabelExp_71, 8),
BabelExp_72 is LEN,
babel_ptrE(__CIL_FP_LEN, BabelExp_72, 8),
BabelExp_73 is I_SSA_1,
babel_ptrE(__CIL_FP_I, BabelExp_73, 8),
babel__implicit_SHA1Updatec_32(__CIL_PP_CONTEXT, __CIL_PP_DATA, __CIL_PP_LEN, __CIL_PP_I),
BabelExp_74 is __CIL_FP_CONTEXT,
babelPtrR(CONTEXT_SSA_1, BabelExp_74, 8),
BabelExp_75 is __CIL_FP_DATA,
babelPtrR(DATA_SSA_1, BabelExp_75, 8),
BabelExp_76 is __CIL_FP_LEN,
babelPtrR(LEN_SSA_1, BabelExp_76, 8),
BabelExp_77 is __CIL_FP_I,
babelPtrR(I_SSA_2, BabelExp_77, 8),
J_SSA_3 is 0
; I_SSA_1 is 0,
CONTEXT_SSA_1 is CONTEXT,
DATA_SSA_1 is DATA,
I_SSA_2 is I_SSA_1,
J_SSA_3 is J_SSA_2,
LEN_SSA_1 is LEN),
__CIL_TMP74 is CONTEXT_SSA_1 +1* 28,
__CIL_TMP75 is __CIL_TMP74,
__CIL_TMP76 is __CIL_TMP75,
__CIL_TMP77 is __CIL_TMP76 +1* J_SSA_3,
__CIL_TMP78 is DATA_SSA_1 +1* I_SSA_2,
BabelExp_78 is LEN_SSA_1 - I_SSA_2,
__CIL_TMP79 is BabelExp_78,
babel__implicit_SHA1Updatec_33(__CIL_TMP77, __CIL_TMP78, __CIL_TMP79),true. 

 :- foreign(babel__implicit_SHA1Finalc_34(+integer, +integer, +positive, +integer)).
:- foreign(babel__implicit_SHA1Finalc_35(+integer, +integer, +positive)).
:- foreign(babel__implicit_SHA1Finalc_36(+integer, +integer)).
:- foreign(babel__implicit_SHA1Finalc_37(+integer, +integer, +positive)).
:- foreign(babel__implicit_SHA1Finalc_38(+integer, +integer, +positive)).
:- foreign(babel__implicit_SHA1Finalc_39(+integer, +integer, +integer)).
:- foreign(babel__implicit_SHA1Finalc_40(+integer, +integer, +integer)).

sHA1Final(__CIL_PP_DIGEST, __CIL_PP_CONTEXT, __CIL_PP_C, __CIL_PP_FINALCOUNT, __CIL_FP_DIGEST, __CIL_FP_CONTEXT, __CIL_FP_C, DIGEST, CONTEXT, VOID) :- 


 I_SSA_1 is 0,
BabelExp_79 is DIGEST,
babel_ptrE(__CIL_FP_DIGEST, BabelExp_79, 8),
BabelExp_80 is CONTEXT,
babel_ptrE(__CIL_FP_CONTEXT, BabelExp_80, 8),
babel__implicit_SHA1Finalc_34(__CIL_PP_DIGEST, __CIL_PP_CONTEXT, I_SSA_1, FINALCOUNT),
BabelExp_81 is __CIL_FP_DIGEST,
babelPtrR(DIGEST_SSA_1, BabelExp_81, 8),
BabelExp_82 is __CIL_FP_CONTEXT,
babelPtrR(CONTEXT_SSA_1, BabelExp_82, 8),
C_SSA_1 is 128,
BabelExp_83 is C_SSA_1,
babel_ptrE(__CIL_FP_C, BabelExp_83, 1),
babel__implicit_SHA1Finalc_35(CONTEXT_SSA_1, __CIL_PP_C, 1),
BabelExp_84 is DIGEST_SSA_1,
babel_ptrE(__CIL_FP_DIGEST, BabelExp_84, 8),
BabelExp_85 is CONTEXT_SSA_1,
babel_ptrE(__CIL_FP_CONTEXT, BabelExp_85, 8),
babel__implicit_SHA1Finalc_36(__CIL_PP_DIGEST, __CIL_PP_CONTEXT),
BabelExp_86 is __CIL_FP_DIGEST,
babelPtrR(DIGEST_SSA_2, BabelExp_86, 8),
BabelExp_87 is __CIL_FP_CONTEXT,
babelPtrR(CONTEXT_SSA_2, BabelExp_87, 8),
BabelExp_88 is FINALCOUNT,
__CIL_TMP22 is BabelExp_88,
babel__implicit_SHA1Finalc_37(CONTEXT_SSA_2, __CIL_TMP22, 8),
I_SSA_2 is 0,
BabelExp_89 is CONTEXT_SSA_2,
babel_ptrE(__CIL_FP_CONTEXT, BabelExp_89, 8),
babel__implicit_SHA1Finalc_38(__CIL_PP_CONTEXT, DIGEST_SSA_2, I_SSA_2),
BabelExp_90 is __CIL_FP_CONTEXT,
babelPtrR(CONTEXT_SSA_3, BabelExp_90, 8),
babel__implicit_SHA1Finalc_39(CONTEXT_SSA_3, 0, 92),
babel__implicit_SHA1Finalc_40(__CIL_PP_FINALCOUNT, 0, 8),true. 

 :- foreign(babel__implicit_base64_encodec_41(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_base64_encodec_42(+integer, +integer)).

base64_encode(__CIL_PP_DST, __CIL_PP_J, __CIL_FP_DST, __CIL_FP_J, SRC, SRC_LEN, DST, VOID) :- 


 J_SSA_1 is 0,
I_SSA_1 is J_SSA_1,
BabelExp_91 is DST,
babel_ptrE(__CIL_FP_DST, BabelExp_91, 8),
BabelExp_92 is J_SSA_1,
babel_ptrE(__CIL_FP_J, BabelExp_92, 4),
babel__implicit_base64_encodec_41(__CIL_PP_DST, __CIL_PP_J, SRC, SRC_LEN, I_SSA_1),
BabelExp_93 is __CIL_FP_DST,
babelPtrR(DST_SSA_1, BabelExp_93, 8),
BabelExp_94 is __CIL_FP_J,
babelPtrR(J_SSA_2, BabelExp_94, 4),
BabelExp_95 is DST_SSA_1,
babel_ptrE(__CIL_FP_DST, BabelExp_95, 8),
BabelExp_96 is J_SSA_2,
babel_ptrE(__CIL_FP_J, BabelExp_96, 4),
babel__implicit_base64_encodec_42(__CIL_PP_DST, __CIL_PP_J),
BabelExp_97 is __CIL_FP_DST,
babelPtrR(DST_SSA_2, BabelExp_97, 8),
BabelExp_98 is __CIL_FP_J,
babelPtrR(J_SSA_3, BabelExp_98, 4),
TMP___4_SSA_1 is J_SSA_3,
__CIL_TMP27 is DST_SSA_2 +1* TMP___4_SSA_1,
BabelExp_99 is 0,
babel_ptrE(__CIL_TMP27, BabelExp_99, 1),true. 

 :- foreign(babel__implicit_send_websocket_handshakec_43(+integer, +integer, +string, +integer, +integer)).
:- foreign(babel__implicit_send_websocket_handshakec_44(+integer)).
:- foreign(babel__implicit_send_websocket_handshakec_45(+integer,  -positive)).
:- foreign(babel__implicit_send_websocket_handshakec_46(+integer, +integer, +positive)).
:- foreign(babel__implicit_send_websocket_handshakec_47(+integer, +integer)).
:- foreign(babel__implicit_send_websocket_handshakec_48(+integer, +integer, +integer)).
:- foreign(babel__implicit_send_websocket_handshakec_49(+integer, +string, +string, +integer, +string,+integer)).
:- foreign(babel__implicit_send_websocket_handshakec_50(+integer,  -positive)).
:- foreign(babel__implicit_send_websocket_handshakec_51(+integer, +integer, +positive)).

send_websocket_handshake(__CIL_PP_SHA_CTX, __CIL_GP_MAGIC, CONN, KEY, VOID) :-
    SHA is 0,
    B64_SHA is 0,
BUF is 0,
BabelExp_100 is BUF,
__CIL_TMP13 is BabelExp_100,
BabelExp_101 is __CIL_GP_MAGIC,
babelPtrR(__CIL_TMP14, BabelExp_101, 8),
babel__implicit_send_websocket_handshakec_43(__CIL_TMP13, 500, '%s%s', KEY, __CIL_TMP14),
babel__implicit_send_websocket_handshakec_44(__CIL_PP_SHA_CTX),
BabelExp_102 is BUF,
__CIL_TMP15 is BabelExp_102,
babel__implicit_send_websocket_handshakec_45(__CIL_TMP15 , TMP_SSA_1),
BabelExp_103 is BUF,
__CIL_TMP16 is BabelExp_103,
babel__implicit_send_websocket_handshakec_46(__CIL_PP_SHA_CTX, __CIL_TMP16, TMP_SSA_1),
BabelExp_104 is SHA,
__CIL_TMP17 is BabelExp_104,
babel__implicit_send_websocket_handshakec_47(__CIL_TMP17, __CIL_PP_SHA_CTX),
BabelExp_105 is SHA,
__CIL_TMP18 is BabelExp_105,
BabelExp_106 is B64_SHA,
__CIL_TMP19 is BabelExp_106,
babel__implicit_send_websocket_handshakec_48(__CIL_TMP18, 20, __CIL_TMP19),
BabelExp_107 is BUF,
__CIL_TMP20 is BabelExp_107,
BabelExp_108 is B64_SHA,
__CIL_TMP21 is BabelExp_108,
babel__implicit_send_websocket_handshakec_49(__CIL_TMP20, 500, '%s%s%s', 'HTTP/1.1 101 Switching Protocols\r\nUpgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Accept: ', __CIL_TMP21, '\r\n\r\n'),
BabelExp_109 is BUF,
__CIL_TMP22 is BabelExp_109,
babel__implicit_send_websocket_handshakec_50(__CIL_TMP22 , TMP___0_SSA_1),
BabelExp_110 is BUF,
__CIL_TMP23 is BabelExp_110,
babel__implicit_send_websocket_handshakec_51(CONN, __CIL_TMP23, TMP___0_SSA_1),true. 

 :- foreign(babel__implicit_mg_websocket_writec_52(+positive,  -integer)).
:- foreign(babel__implicit_mg_websocket_writec_53(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_54(+integer,  -integer)).
:- foreign(babel__implicit_mg_websocket_writec_55(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_56(+positive,  -positive)).
:- foreign(babel__implicit_mg_websocket_writec_57(+positive,  -positive)).
:- foreign(babel__implicit_mg_websocket_writec_58(+integer, +integer, +integer)).
:- foreign(babel__implicit_mg_websocket_writec_59(+integer, +integer, +integer)).
:- foreign(babel__implicit_mg_websocket_writec_60(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_61(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_62(+integer)).
:- foreign(babel__implicit_mg_websocket_writec_63(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_64(+integer,  -integer)).
:- foreign(babel__implicit_mg_websocket_writec_65(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_66(+positive,  -positive)).
:- foreign(babel__implicit_mg_websocket_writec_67(+positive,  -positive)).
:- foreign(babel__implicit_mg_websocket_writec_68(+integer, +integer, +integer)).
:- foreign(babel__implicit_mg_websocket_writec_69(+integer, +integer, +integer)).
:- foreign(babel__implicit_mg_websocket_writec_70(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_71(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_72(+integer)).
:- foreign(babel__implicit_mg_websocket_writec_73(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_74(+integer)).
:- foreign(babel__implicit_mg_websocket_writec_75(+integer, +integer, +positive)).
:- foreign(babel__implicit_mg_websocket_writec_76(+integer)).

mg_websocket_write(__CIL_PP_HI, __CIL_PP_LO, __CIL_FP_HI, __CIL_FP_LO, CONN, OPCODE, DATA, DATA_LEN, BABEL_RET) :- 
MEM is 0,

BabelExp_111 is MEM,
COPY_SSA_1 is BabelExp_111,

(DATA_LEN > -11 ,
__CIL_TMP28 is 1
; __CIL_TMP28 is 0),

(__CIL_TMP28 \= 0 ->
BABEL_RET is 0, true
; BabelExp_112 is DATA_LEN + 10,
__CIL_TMP51 is BabelExp_112,

(__CIL_TMP51 > 10,
__CIL_TMP29 is 1
; __CIL_TMP29 is 0),

(__CIL_TMP29 \= 0 ->
BabelExp_113 is DATA_LEN + 10,
__CIL_TMP52 is BabelExp_113,
babel__implicit_mg_websocket_writec_52(__CIL_TMP52 , TMP_SSA_1),
COPY_SSA_2 is TMP_SSA_1,

(COPY_SSA_2 =:= 0 ,
__CIL_TMP30 is 1
; __CIL_TMP30 is 0),

(__CIL_TMP30 \= 0 ->
BABEL_RET is 0, true
; BabelExp_114 is OPCODE /\ 15,
__CIL_TMP53 is BabelExp_114,
BabelExp_115 is 128 + __CIL_TMP53,
__CIL_TMP54 is BabelExp_115,
__CIL_TMP55 is COPY_SSA_2 +1* 0,
BabelExp_116 is __CIL_TMP54,
babel_ptrE(__CIL_TMP55, BabelExp_116, 1),

(DATA_LEN < 126 ,
__CIL_TMP31 is 1
; __CIL_TMP31 is 0),

(__CIL_TMP31 \= 0 ->
__CIL_TMP56 is COPY_SSA_2 +1* 1,
BabelExp_117 is DATA_LEN,
babel_ptrE(__CIL_TMP56, BabelExp_117, 1),
__CIL_TMP57 is COPY_SSA_2 +1* 2,
babel__implicit_mg_websocket_writec_53(__CIL_TMP57, DATA, DATA_LEN),
BabelExp_118 is 2 + DATA_LEN,
COPY_LEN_SSA_2 is BabelExp_118
; (DATA_LEN =< 65535 ,
__CIL_TMP32 is 1
; __CIL_TMP32 is 0),

(__CIL_TMP32 \= 0 ->
__CIL_TMP58 is COPY_SSA_2 +1* 1,
BabelExp_119 is 126,
babel_ptrE(__CIL_TMP58, BabelExp_119, 1),
babel__implicit_mg_websocket_writec_54(DATA_LEN , TMP___0_SSA_1),
__CIL_TMP59 is COPY_SSA_2 +1* 2,
__CIL_TMP60 is __CIL_TMP59,
BabelExp_120 is TMP___0_SSA_1,
babel_ptrE(__CIL_TMP60, BabelExp_120, 2),
__CIL_TMP61 is COPY_SSA_2 +1* 4,
babel__implicit_mg_websocket_writec_55(__CIL_TMP61, DATA, DATA_LEN),
BabelExp_121 is 4 + DATA_LEN,
COPY_LEN_SSA_2 is BabelExp_121
; BabelExp_122 is DATA_LEN >> 32,
__CIL_TMP62 is BabelExp_122,
babel__implicit_mg_websocket_writec_56(__CIL_TMP62 , TMP___1_SSA_1),
HI_SSA_1 is TMP___1_SSA_1,
BabelExp_123 is DATA_LEN /\ 4294967295,
__CIL_TMP63 is BabelExp_123,
babel__implicit_mg_websocket_writec_57(__CIL_TMP63 , TMP___2_SSA_1),
LO_SSA_1 is TMP___2_SSA_1,
__CIL_TMP64 is COPY_SSA_2 +1* 1,
BabelExp_124 is 127,
babel_ptrE(__CIL_TMP64, BabelExp_124, 1),
BabelExp_125 is HI_SSA_1,
babel_ptrE(__CIL_FP_HI, BabelExp_125, 4),
__CIL_TMP65 is COPY_SSA_2 +1* 2,
babel__implicit_mg_websocket_writec_58(__CIL_TMP65, __CIL_PP_HI, 4),
BabelExp_126 is LO_SSA_1,
babel_ptrE(__CIL_FP_LO, BabelExp_126, 4),
__CIL_TMP66 is COPY_SSA_2 +1* 6,
babel__implicit_mg_websocket_writec_59(__CIL_TMP66, __CIL_PP_LO, 4),
__CIL_TMP67 is COPY_SSA_2 +1* 10,
babel__implicit_mg_websocket_writec_60(__CIL_TMP67, DATA, DATA_LEN),
BabelExp_127 is 10 + DATA_LEN,
COPY_LEN_SSA_2 is BabelExp_127)),

(COPY_LEN_SSA_2 > 0 ,
__CIL_TMP33 is 1
; __CIL_TMP33 is 0),

(__CIL_TMP33 \= 0 ->
babel__implicit_mg_websocket_writec_61(CONN, COPY_SSA_2, COPY_LEN_SSA_2)
; true),
BabelExp_128 is MEM,
__CIL_TMP68 is BabelExp_128,
__CIL_TMP69 is __CIL_TMP68,

(COPY_SSA_2 \= __CIL_TMP69 ,
__CIL_TMP34 is 1
; __CIL_TMP34 is 0),

(__CIL_TMP34 \= 0 ->
babel__implicit_mg_websocket_writec_62(COPY_SSA_2)
; true),

(OPCODE =:= 8 ,
__CIL_TMP35 is 1
; __CIL_TMP35 is 0),

(__CIL_TMP35 \= 0 ->
BabelExp_129 is 0 + 8,
__CIL_TMP70 is BabelExp_129,
__CIL_TMP71 is __CIL_TMP70,
__CIL_TMP72 is __CIL_TMP71,
BabelExp_130 is CONN - __CIL_TMP72,
__CIL_TMP73 is BabelExp_130,
__CIL_TMP74 is __CIL_TMP73,
__CIL_TMP75 is __CIL_TMP74,
BabelExp_131 is __CIL_TMP75,
babelPtrR(__CIL_TMP76, BabelExp_131, 8),
__CIL_TMP77 is __CIL_TMP76,
__CIL_TMP78 is __CIL_TMP77 +1* 152,
__CIL_TMP79 is __CIL_TMP78,
BabelExp_132 is __CIL_TMP79,
babelPtrR(__CIL_TMP80, BabelExp_132, 4),
BabelExp_133 is 0 + 8,
__CIL_TMP81 is BabelExp_133,
__CIL_TMP82 is __CIL_TMP81,
__CIL_TMP83 is __CIL_TMP82,
BabelExp_134 is CONN - __CIL_TMP83,
__CIL_TMP84 is BabelExp_134,
__CIL_TMP85 is __CIL_TMP84,
__CIL_TMP86 is __CIL_TMP85,
BabelExp_135 is __CIL_TMP86,
babelPtrR(__CIL_TMP87, BabelExp_135, 8),
__CIL_TMP88 is __CIL_TMP87,
__CIL_TMP89 is __CIL_TMP88 +1* 152,
__CIL_TMP90 is __CIL_TMP89,
BabelExp_136 is __CIL_TMP80 \/ 1,
babel_ptrE(__CIL_TMP90, BabelExp_136, 4)
; true),
BabelExp_137 is 0 + 8,
__CIL_TMP91 is BabelExp_137,
__CIL_TMP92 is __CIL_TMP91,
__CIL_TMP93 is __CIL_TMP92,
BabelExp_138 is CONN - __CIL_TMP93,
__CIL_TMP94 is BabelExp_138,
__CIL_TMP95 is __CIL_TMP94,
__CIL_TMP96 is __CIL_TMP95,
BabelExp_139 is __CIL_TMP96,
babelPtrR(__CIL_TMP97, BabelExp_139, 8),
__CIL_TMP98 is __CIL_TMP97,
__CIL_TMP99 is __CIL_TMP98 +1* 88,
__CIL_TMP100 is __CIL_TMP99,
BabelExp_140 is __CIL_TMP100,
babelPtrR(__CIL_TMP36, BabelExp_140, 8),BABEL_RET is __CIL_TMP36, true)
; BabelExp_141 is OPCODE /\ 15,
__CIL_TMP101 is BabelExp_141,
BabelExp_142 is 128 + __CIL_TMP101,
__CIL_TMP102 is BabelExp_142,
__CIL_TMP103 is COPY_SSA_1 +1* 0,
BabelExp_143 is __CIL_TMP102,
babel_ptrE(__CIL_TMP103, BabelExp_143, 1),

(DATA_LEN < 126 ,
__CIL_TMP37 is 1
; __CIL_TMP37 is 0),

(__CIL_TMP37 \= 0 ->
__CIL_TMP104 is COPY_SSA_1 +1* 1,
BabelExp_144 is DATA_LEN,
babel_ptrE(__CIL_TMP104, BabelExp_144, 1),
__CIL_TMP105 is COPY_SSA_1 +1* 2,
babel__implicit_mg_websocket_writec_63(__CIL_TMP105, DATA, DATA_LEN),
BabelExp_145 is 2 + DATA_LEN,
COPY_LEN_SSA_2 is BabelExp_145
; (DATA_LEN =< 65535 ,
__CIL_TMP38 is 1
; __CIL_TMP38 is 0),

(__CIL_TMP38 \= 0 ->
__CIL_TMP106 is COPY_SSA_1 +1* 1,
BabelExp_146 is 126,
babel_ptrE(__CIL_TMP106, BabelExp_146, 1),
babel__implicit_mg_websocket_writec_64(DATA_LEN , TMP___0_SSA_1),
__CIL_TMP107 is COPY_SSA_1 +1* 2,
__CIL_TMP108 is __CIL_TMP107,
BabelExp_147 is TMP___0_SSA_1,
babel_ptrE(__CIL_TMP108, BabelExp_147, 2),
__CIL_TMP109 is COPY_SSA_1 +1* 4,
babel__implicit_mg_websocket_writec_65(__CIL_TMP109, DATA, DATA_LEN),
BabelExp_148 is 4 + DATA_LEN,
COPY_LEN_SSA_2 is BabelExp_148
; BabelExp_149 is DATA_LEN >> 32,
__CIL_TMP110 is BabelExp_149,
babel__implicit_mg_websocket_writec_66(__CIL_TMP110 , TMP___1_SSA_1),
HI_SSA_1 is TMP___1_SSA_1,
BabelExp_150 is DATA_LEN /\ 4294967295,
__CIL_TMP111 is BabelExp_150,
babel__implicit_mg_websocket_writec_67(__CIL_TMP111 , TMP___2_SSA_1),
LO_SSA_1 is TMP___2_SSA_1,
__CIL_TMP112 is COPY_SSA_1 +1* 1,
BabelExp_151 is 127,
babel_ptrE(__CIL_TMP112, BabelExp_151, 1),
BabelExp_152 is HI_SSA_1,
babel_ptrE(__CIL_FP_HI, BabelExp_152, 4),
__CIL_TMP113 is COPY_SSA_1 +1* 2,
babel__implicit_mg_websocket_writec_68(__CIL_TMP113, __CIL_PP_HI, 4),
BabelExp_153 is LO_SSA_1,
babel_ptrE(__CIL_FP_LO, BabelExp_153, 4),
__CIL_TMP114 is COPY_SSA_1 +1* 6,
babel__implicit_mg_websocket_writec_69(__CIL_TMP114, __CIL_PP_LO, 4),
__CIL_TMP115 is COPY_SSA_1 +1* 10,
babel__implicit_mg_websocket_writec_70(__CIL_TMP115, DATA, DATA_LEN),
BabelExp_154 is 10 + DATA_LEN,
COPY_LEN_SSA_2 is BabelExp_154)),

(COPY_LEN_SSA_2 > 0 ,
__CIL_TMP39 is 1
; __CIL_TMP39 is 0),

(__CIL_TMP39 \= 0 ->
babel__implicit_mg_websocket_writec_71(CONN, COPY_SSA_1, COPY_LEN_SSA_2)
; true),
BabelExp_155 is MEM,
__CIL_TMP116 is BabelExp_155,
__CIL_TMP117 is __CIL_TMP116,

(COPY_SSA_1 \= __CIL_TMP117 ,
__CIL_TMP40 is 1
; __CIL_TMP40 is 0),

(__CIL_TMP40 \= 0 ->
babel__implicit_mg_websocket_writec_72(COPY_SSA_1)
; true),

(OPCODE =:= 8 ,
__CIL_TMP41 is 1
; __CIL_TMP41 is 0),

(__CIL_TMP41 \= 0 ->
BabelExp_156 is 0 + 8,
__CIL_TMP118 is BabelExp_156,
__CIL_TMP119 is __CIL_TMP118,
__CIL_TMP120 is __CIL_TMP119,
BabelExp_157 is CONN - __CIL_TMP120,
__CIL_TMP121 is BabelExp_157,
__CIL_TMP122 is __CIL_TMP121,
__CIL_TMP123 is __CIL_TMP122,
BabelExp_158 is __CIL_TMP123,
babelPtrR(__CIL_TMP124, BabelExp_158, 8),
__CIL_TMP125 is __CIL_TMP124,
__CIL_TMP126 is __CIL_TMP125 +1* 152,
__CIL_TMP127 is __CIL_TMP126,
BabelExp_159 is __CIL_TMP127,
babelPtrR(__CIL_TMP128, BabelExp_159, 4),
BabelExp_160 is 0 + 8,
__CIL_TMP129 is BabelExp_160,
__CIL_TMP130 is __CIL_TMP129,
__CIL_TMP131 is __CIL_TMP130,
BabelExp_161 is CONN - __CIL_TMP131,
__CIL_TMP132 is BabelExp_161,
__CIL_TMP133 is __CIL_TMP132,
__CIL_TMP134 is __CIL_TMP133,
BabelExp_162 is __CIL_TMP134,
babelPtrR(__CIL_TMP135, BabelExp_162, 8),
__CIL_TMP136 is __CIL_TMP135,
__CIL_TMP137 is __CIL_TMP136 +1* 152,
__CIL_TMP138 is __CIL_TMP137,
BabelExp_163 is __CIL_TMP128 \/ 1,
babel_ptrE(__CIL_TMP138, BabelExp_163, 4)
; true),
BabelExp_164 is 0 + 8,
__CIL_TMP139 is BabelExp_164,
__CIL_TMP140 is __CIL_TMP139,
__CIL_TMP141 is __CIL_TMP140,
BabelExp_165 is CONN - __CIL_TMP141,
__CIL_TMP142 is BabelExp_165,
__CIL_TMP143 is __CIL_TMP142,
__CIL_TMP144 is __CIL_TMP143,
BabelExp_166 is __CIL_TMP144,
babelPtrR(__CIL_TMP145, BabelExp_166, 8),
__CIL_TMP146 is __CIL_TMP145,
__CIL_TMP147 is __CIL_TMP146 +1* 88,
__CIL_TMP148 is __CIL_TMP147,
BabelExp_167 is __CIL_TMP148,
babelPtrR(__CIL_TMP42, BabelExp_167, 8),BABEL_RET is __CIL_TMP42, true),

(COPY_LEN > 0 ,
__CIL_TMP43 is 1
; __CIL_TMP43 is 0),

(__CIL_TMP43 \= 0 ->
babel__implicit_mg_websocket_writec_73(CONN, COPY, COPY_LEN)
; true),
BabelExp_168 is MEM,
__CIL_TMP149 is BabelExp_168,
__CIL_TMP150 is __CIL_TMP149,

(COPY \= __CIL_TMP150 ,
__CIL_TMP44 is 1
; __CIL_TMP44 is 0),

(__CIL_TMP44 \= 0 ->
babel__implicit_mg_websocket_writec_74(COPY)
; true),

(OPCODE =:= 8 ,
__CIL_TMP45 is 1
; __CIL_TMP45 is 0),

(__CIL_TMP45 \= 0 ->
BabelExp_169 is 0 + 8,
__CIL_TMP151 is BabelExp_169,
__CIL_TMP152 is __CIL_TMP151,
__CIL_TMP153 is __CIL_TMP152,
BabelExp_170 is CONN - __CIL_TMP153,
__CIL_TMP154 is BabelExp_170,
__CIL_TMP155 is __CIL_TMP154,
__CIL_TMP156 is __CIL_TMP155,
BabelExp_171 is __CIL_TMP156,
babelPtrR(__CIL_TMP157, BabelExp_171, 8),
__CIL_TMP158 is __CIL_TMP157,
__CIL_TMP159 is __CIL_TMP158 +1* 152,
__CIL_TMP160 is __CIL_TMP159,
BabelExp_172 is __CIL_TMP160,
babelPtrR(__CIL_TMP161, BabelExp_172, 4),
BabelExp_173 is 0 + 8,
__CIL_TMP162 is BabelExp_173,
__CIL_TMP163 is __CIL_TMP162,
__CIL_TMP164 is __CIL_TMP163,
BabelExp_174 is CONN - __CIL_TMP164,
__CIL_TMP165 is BabelExp_174,
__CIL_TMP166 is __CIL_TMP165,
__CIL_TMP167 is __CIL_TMP166,
BabelExp_175 is __CIL_TMP167,
babelPtrR(__CIL_TMP168, BabelExp_175, 8),
__CIL_TMP169 is __CIL_TMP168,
__CIL_TMP170 is __CIL_TMP169 +1* 152,
__CIL_TMP171 is __CIL_TMP170,
BabelExp_176 is __CIL_TMP161 \/ 1,
babel_ptrE(__CIL_TMP171, BabelExp_176, 4)
; true),
BabelExp_177 is 0 + 8,
__CIL_TMP172 is BabelExp_177,
__CIL_TMP173 is __CIL_TMP172,
__CIL_TMP174 is __CIL_TMP173,
BabelExp_178 is CONN - __CIL_TMP174,
__CIL_TMP175 is BabelExp_178,
__CIL_TMP176 is __CIL_TMP175,
__CIL_TMP177 is __CIL_TMP176,
BabelExp_179 is __CIL_TMP177,
babelPtrR(__CIL_TMP178, BabelExp_179, 8),
__CIL_TMP179 is __CIL_TMP178,
__CIL_TMP180 is __CIL_TMP179 +1* 88,
__CIL_TMP181 is __CIL_TMP180,
BabelExp_180 is __CIL_TMP181,
babelPtrR(__CIL_TMP46, BabelExp_180, 8),BABEL_RET is __CIL_TMP46, true),

(COPY_LEN > 0 ,
__CIL_TMP47 is 1
; __CIL_TMP47 is 0),

(__CIL_TMP47 \= 0 ->
babel__implicit_mg_websocket_writec_75(CONN, COPY, COPY_LEN)
; true),
BabelExp_181 is MEM,
__CIL_TMP182 is BabelExp_181,
__CIL_TMP183 is __CIL_TMP182,

(COPY \= __CIL_TMP183 ,
__CIL_TMP48 is 1
; __CIL_TMP48 is 0),

(__CIL_TMP48 \= 0 ->
babel__implicit_mg_websocket_writec_76(COPY)
; true),

(OPCODE =:= 8 ,
__CIL_TMP49 is 1
; __CIL_TMP49 is 0),

(__CIL_TMP49 \= 0 ->
BabelExp_182 is 0 + 8,
__CIL_TMP184 is BabelExp_182,
__CIL_TMP185 is __CIL_TMP184,
__CIL_TMP186 is __CIL_TMP185,
BabelExp_183 is CONN - __CIL_TMP186,
__CIL_TMP187 is BabelExp_183,
__CIL_TMP188 is __CIL_TMP187,
__CIL_TMP189 is __CIL_TMP188,
BabelExp_184 is __CIL_TMP189,
babelPtrR(__CIL_TMP190, BabelExp_184, 8),
__CIL_TMP191 is __CIL_TMP190,
__CIL_TMP192 is __CIL_TMP191 +1* 152,
__CIL_TMP193 is __CIL_TMP192,
BabelExp_185 is __CIL_TMP193,
babelPtrR(__CIL_TMP194, BabelExp_185, 4),
BabelExp_186 is 0 + 8,
__CIL_TMP195 is BabelExp_186,
__CIL_TMP196 is __CIL_TMP195,
__CIL_TMP197 is __CIL_TMP196,
BabelExp_187 is CONN - __CIL_TMP197,
__CIL_TMP198 is BabelExp_187,
__CIL_TMP199 is __CIL_TMP198,
__CIL_TMP200 is __CIL_TMP199,
BabelExp_188 is __CIL_TMP200,
babelPtrR(__CIL_TMP201, BabelExp_188, 8),
__CIL_TMP202 is __CIL_TMP201,
__CIL_TMP203 is __CIL_TMP202 +1* 152,
__CIL_TMP204 is __CIL_TMP203,
BabelExp_189 is __CIL_TMP194 \/ 1,
babel_ptrE(__CIL_TMP204, BabelExp_189, 4)
; true),
BabelExp_190 is 0 + 8,
__CIL_TMP205 is BabelExp_190,
__CIL_TMP206 is __CIL_TMP205,
__CIL_TMP207 is __CIL_TMP206,
BabelExp_191 is CONN - __CIL_TMP207,
__CIL_TMP208 is BabelExp_191,
__CIL_TMP209 is __CIL_TMP208,
__CIL_TMP210 is __CIL_TMP209,
BabelExp_192 is __CIL_TMP210,
babelPtrR(__CIL_TMP211, BabelExp_192, 8),
__CIL_TMP212 is __CIL_TMP211,
__CIL_TMP213 is __CIL_TMP212 +1* 88,
__CIL_TMP214 is __CIL_TMP213,
BabelExp_193 is __CIL_TMP214,
babelPtrR(__CIL_TMP50, BabelExp_193, 8),BABEL_RET is __CIL_TMP50, true. 

 :- foreign(babel__implicit_send_websocket_handshake_if_requestedc_77(+integer, +string,  -integer)).
:- foreign(babel__implicit_send_websocket_handshake_if_requestedc_78(+integer, +string,  -integer)).
:- foreign(babel__implicit_send_websocket_handshake_if_requestedc_79(+integer, +integer,  -integer)).
:- foreign(babel__implicit_send_websocket_handshake_if_requestedc_80(+integer, +integer)).
:- foreign(babel__implicit_send_websocket_handshake_if_requestedc_81(+integer, +integer)).

send_websocket_handshake_if_requested(CONN, VOID) :- 


 babel__implicit_send_websocket_handshake_if_requestedc_77(CONN, 'Sec-WebSocket-Version' , TMP_SSA_1),
VER_SSA_1 is TMP_SSA_1,
babel__implicit_send_websocket_handshake_if_requestedc_78(CONN, 'Sec-WebSocket-Key' , TMP___0_SSA_1),
KEY_SSA_1 is TMP___0_SSA_1,

(VER_SSA_1 \= 0 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
(KEY_SSA_1 \= 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
__CIL_TMP15 is CONN +1* 632,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_194 is 1,
babel_ptrE(__CIL_TMP16, BabelExp_194, 4),
BabelExp_195 is 0 + 8,
__CIL_TMP17 is BabelExp_195,
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_196 is CONN - __CIL_TMP19,
__CIL_TMP20 is BabelExp_196,
babel__implicit_send_websocket_handshake_if_requestedc_79(__CIL_TMP20, 107 , TMP___1_SSA_1),

(TMP___1_SSA_1 =:= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
babel__implicit_send_websocket_handshake_if_requestedc_80(CONN, KEY_SSA_1)
; true),
BabelExp_197 is 0 + 8,
__CIL_TMP21 is BabelExp_197,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_198 is CONN - __CIL_TMP23,
__CIL_TMP24 is BabelExp_198,
babel__implicit_send_websocket_handshake_if_requestedc_81(__CIL_TMP24, 108)
; true)
; true),
true. 

 :- foreign(babel__implicit_ping_idle_websocket_connectionc_82(+integer, +integer, +string, +positive)).

ping_idle_websocket_connection(CONN, T, VOID) :- 


 MEM_11 is CONN,
BabelExp_199 is MEM_11,
babelPtrR(__CIL_TMP4, BabelExp_199, 8),
__CIL_TMP5 is __CIL_TMP4,
__CIL_TMP6 is __CIL_TMP5 +1* 136,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_200 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_200, 8),
BabelExp_201 is T - __CIL_TMP8,
__CIL_TMP9 is BabelExp_201,

(__CIL_TMP9 > 5 ,
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ->
__CIL_TMP10 is CONN +1* 8,
babel__implicit_ping_idle_websocket_connectionc_82(__CIL_TMP10, 9, '', 0)
; true),
true. 

 :- foreign(babel__implicit_call_request_handlerc_83(+integer, +integer,  -integer)).
:- foreign(babel__implicit_call_request_handlerc_84(+integer)).
:- foreign(babel__implicit_call_request_handlerc_85(+integer)).
:- foreign(babel__implicit_call_request_handlerc_86(+integer)).

call_request_handler(CONN, BABEL_RET) :- 


 MEM_19 is CONN,
BabelExp_202 is MEM_19,
babelPtrR(__CIL_TMP6, BabelExp_202, 8),
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7 +1* 56,
__CIL_TMP9 is __CIL_TMP8,
__CIL_TMP10 is CONN +1* 624,
__CIL_TMP11 is __CIL_TMP10,
babelPtrR(BabelExp_203, __CIL_TMP9, 8),
babel_ptrE(__CIL_TMP11, BabelExp_203, 8),
babel__implicit_call_request_handlerc_83(CONN, 103 , RESULT_SSA_1),

(RESULT_SSA_1 =:= 1 ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
MEM_20 is CONN,
BabelExp_204 is MEM_20,
babelPtrR(__CIL_TMP12, BabelExp_204, 8),
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13 +1* 152,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_205 is 2097152,
__CIL_TMP16 is BabelExp_205,
BabelExp_206 is __CIL_TMP15,
babelPtrR(__CIL_TMP17, BabelExp_206, 4),
__CIL_TMP18 is __CIL_TMP16,
BabelExp_207 is __CIL_TMP17 /\ __CIL_TMP18,
__CIL_TMP5 is BabelExp_207,
(__CIL_TMP5 \= 0 ->
__CIL_TMP19 is CONN +1* 8,
babel__implicit_call_request_handlerc_84(__CIL_TMP19),
babel__implicit_call_request_handlerc_85(CONN)
; true),
babel__implicit_call_request_handlerc_86(CONN)
; true),
BABEL_RET is RESULT_SSA_1, true. 

 :- foreign(babel__implicit_mg_get_mime_typec_87(+integer,  -positive)).
:- foreign(babel__implicit_mg_get_mime_typec_88(+integer, +integer, +integer, +positive, +positive,  -integer)).

mg_get_mime_type(__CIL_PP_DEFAULT_MIME_TYPE, __CIL_PP___CIL_RET7, __CIL_FP_DEFAULT_MIME_TYPE, __CIL_FP___CIL_RET7, PATH, DEFAULT_MIME_TYPE, BABEL_RET) :- 


__CIL_RET7 is 1,
babel__implicit_mg_get_mime_typec_87(PATH , PATH_LEN_SSA_1),
I_SSA_1 is 0,
BabelExp_208 is DEFAULT_MIME_TYPE,
babel_ptrE(__CIL_FP_DEFAULT_MIME_TYPE, BabelExp_208, 8),
BabelExp_209 is __CIL_RET7,
babel_ptrE(__CIL_FP___CIL_RET7, BabelExp_209, 8),
babel__implicit_mg_get_mime_typec_88(__CIL_PP_DEFAULT_MIME_TYPE, __CIL_PP___CIL_RET7, PATH, I_SSA_1, PATH_LEN_SSA_1 , RETFLAG8_SSA_1),
BabelExp_210 is __CIL_FP_DEFAULT_MIME_TYPE,
babelPtrR(DEFAULT_MIME_TYPE_SSA_1, BabelExp_210, 8),
BabelExp_211 is __CIL_FP___CIL_RET7,
babelPtrR(__CIL_RET7_SSA_1, BabelExp_211, 8),
(RETFLAG8_SSA_1 \= 0 ->
BABEL_RET is __CIL_RET7_SSA_1, true
; BABEL_RET is DEFAULT_MIME_TYPE_SSA_1, true). 

 :- foreign(babel__implicit_get_month_indexc_89(+integer, +integer, +integer,  -integer)).

get_month_index(__CIL_PP___CIL_RET4, __CIL_FP___CIL_RET4, S, BABEL_RET) :- 

I_SSA_1 is 0,
__CIL_RET4 is 1,
BabelExp_212 is __CIL_RET4,
babel_ptrE(__CIL_FP___CIL_RET4, BabelExp_212, 4),
babel__implicit_get_month_indexc_89(__CIL_PP___CIL_RET4, S, I_SSA_1 , RETFLAG5_SSA_1),
BabelExp_213 is __CIL_FP___CIL_RET4,
babelPtrR(__CIL_RET4_SSA_1, BabelExp_213, 4),
(RETFLAG5_SSA_1 \= 0 ->
BABEL_RET is __CIL_RET4_SSA_1, true
; BABEL_RET is -1, true). 

 
num_leap_years(YEAR, BABEL_RET) :- 


 BabelExp_214 is YEAR // 4,
__CIL_TMP3 is BabelExp_214,
BabelExp_215 is YEAR // 100,
__CIL_TMP4 is BabelExp_215,
BabelExp_216 is __CIL_TMP3 - __CIL_TMP4,
__CIL_TMP5 is BabelExp_216,
BabelExp_217 is YEAR // 400,
__CIL_TMP6 is BabelExp_217,
BabelExp_218 is __CIL_TMP5 + __CIL_TMP6,
__CIL_TMP2 is BabelExp_218,BABEL_RET is __CIL_TMP2, true. 

 :- foreign(babel__implicit_construct_etagc_90(+integer, +positive, +string, +positive, +integer)).

construct_etag(BUF, BUF_LEN, ST, VOID) :- 


 __CIL_TMP4 is ST +1* 88,
__CIL_TMP5 is __CIL_TMP4,
BabelExp_219 is __CIL_TMP5,
babelPtrR(__CIL_TMP6, BabelExp_219, 8),
__CIL_TMP7 is ST +1* 48,
__CIL_TMP8 is __CIL_TMP7,
BabelExp_220 is __CIL_TMP8,
babelPtrR(__CIL_TMP9, BabelExp_220, 8),
babel__implicit_construct_etagc_90(BUF, BUF_LEN, '\'%lx.%ld\'', __CIL_TMP6, __CIL_TMP9),true. 

 :- foreign(babel__implicit_parse_range_headerc_91(+integer, +integer, +integer, +integer,  -integer)).

parse_range_header(HEADER___0, A, B, BABEL_RET) :- 


 babel__implicit_parse_range_headerc_91(HEADER___0, 'BYTES=%LD-%LD', A, B , TMP_SSA_1),BABEL_RET is TMP_SSA_1, true. 

 :- foreign(babel__implicit_gmt_time_stringc_92(+integer,  -integer)).
:- foreign(babel__implicit_gmt_time_stringc_93(+integer, +positive, +integer, +integer)).

gmt_time_string(BUF, BUF_LEN, T, VOID) :- 


 babel__implicit_gmt_time_stringc_92(T , TMP_SSA_1),
babel__implicit_gmt_time_stringc_93(BUF, BUF_LEN, '%A, %D %B %Y %H:%M:%S GMT', TMP_SSA_1),true. 

 :- foreign(babel__implicit_mg_send_file_datac_94(+integer)).

mg_send_file_data(C, FD, VOID) :- 


 BabelExp_221 is 0 + 8,
__CIL_TMP5 is BabelExp_221,
__CIL_TMP6 is __CIL_TMP5,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_222 is C - __CIL_TMP7,
__CIL_TMP8 is BabelExp_222,
CONN_SSA_1 is __CIL_TMP8,
__CIL_TMP9 is CONN_SSA_1 +1* 696,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_223 is 1,
babel_ptrE(__CIL_TMP10, BabelExp_223, 4),
__CIL_TMP11 is CONN_SSA_1 +1* 688,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_224 is FD,
babel_ptrE(__CIL_TMP12, BabelExp_224, 4),
__CIL_TMP13 is CONN_SSA_1 +1* 688,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_225 is __CIL_TMP14,
babelPtrR(__CIL_TMP15, BabelExp_225, 4),
babel__implicit_mg_send_file_datac_94(__CIL_TMP15),true. 

 :- foreign(babel__implicit_call_request_handler_if_data_is_bufferedc_95(+integer)).
:- foreign(babel__implicit_call_request_handler_if_data_is_bufferedc_96(+integer,  -integer)).
:- foreign(babel__implicit_call_request_handler_if_data_is_bufferedc_97(+integer, +integer)).

call_request_handler_if_data_is_buffered(CONN, VOID) :- 


 __CIL_TMP8 is CONN +1* 640,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_226 is __CIL_TMP9,
babelPtrR(__CIL_TMP5, BabelExp_226, 4),
(__CIL_TMP5 \= 0 ->
babel__implicit_call_request_handler_if_data_is_bufferedc_95(CONN)
; __CIL_TMP10 is CONN +1* 720,
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is CONN +1* 728,
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is CONN +1* 736,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_227 is __CIL_TMP13,
babelPtrR(__CIL_TMP16, BabelExp_227, 8),
BabelExp_228 is __CIL_TMP15,
babelPtrR(__CIL_TMP17, BabelExp_228, 8),
BabelExp_229 is __CIL_TMP11,
babelPtrR(__CIL_TMP18, BabelExp_229, 8),
BabelExp_230 is __CIL_TMP16 + __CIL_TMP17,
__CIL_TMP19 is BabelExp_230,

(__CIL_TMP18 >= __CIL_TMP19 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
babel__implicit_call_request_handler_if_data_is_bufferedc_96(CONN , TMP___0_SSA_1),

(TMP___0_SSA_1 =:= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
babel__implicit_call_request_handler_if_data_is_bufferedc_97(CONN, 1)
; true)
; true)),
true. 

 :- foreign(babel__implicit_mg_url_encodec_98(+integer, +integer, +integer, +positive, +positive, +positive)).

mg_url_encode(__CIL_PP_DST, __CIL_PP_J, __CIL_FP_DST, __CIL_FP_J, SRC, S_LEN, DST, DST_LEN, BABEL_RET) :- 


 J_SSA_2 is 0,
I_SSA_2 is J_SSA_2,
BabelExp_231 is DST,
babel_ptrE(__CIL_FP_DST, BabelExp_231, 8),
BabelExp_232 is J_SSA_2,
babel_ptrE(__CIL_FP_J, BabelExp_232, 8),
babel__implicit_mg_url_encodec_98(__CIL_PP_DST, __CIL_PP_J, SRC, S_LEN, DST_LEN, I_SSA_2),
BabelExp_233 is __CIL_FP_DST,
babelPtrR(DST_SSA_1, BabelExp_233, 8),
BabelExp_234 is __CIL_FP_J,
babelPtrR(J_SSA_3, BabelExp_234, 8),
__CIL_TMP19 is DST_SSA_1 +1* J_SSA_3,
BabelExp_235 is 0,
babel_ptrE(__CIL_TMP19, BabelExp_235, 1),BABEL_RET is J_SSA_3, true. 

 :- foreign(babel__implicit_print_propsc_99(+integer, +integer, +integer)).
:- foreign(babel__implicit_print_propsc_100(+integer, +string, +integer, +integer, +integer, +integer)).

print_props(CONN, URI, STP, VOID) :-
    MTIME is 0,
__CIL_TMP8 is STP +1* 88,
BabelExp_236 is MTIME,
__CIL_TMP9 is BabelExp_236,
babel__implicit_print_propsc_99(__CIL_TMP9, 64, __CIL_TMP8),
__CIL_TMP10 is STP +1* 24,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_237 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_237, 4),
BabelExp_238 is __CIL_TMP12 /\ 61440,
__CIL_TMP13 is BabelExp_238,

(__CIL_TMP13 =:= 16384 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
babelAssignStr(TMP_SSA_1, '<d:collection/>')
; babelAssignStr(TMP_SSA_1, '')),
__CIL_TMP14 is CONN +1* 8,
__CIL_TMP15 is STP +1* 48,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_239 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_239, 8),
BabelExp_240 is MTIME,
__CIL_TMP18 is BabelExp_240,
babel__implicit_print_propsc_100(__CIL_TMP14, '<d:response><d:href>%s</d:href><d:propstat><d:prop><d:resourcetype>%s</d:resourcetype><d:getcontentlength>%ld</d:getcontentlength><d:getlastmodified>%s</d:getlastmodified></d:prop><d:status>HTTP/1.1 200 OK</d:status></d:propstat></d:response>\n', URI, TMP_SSA_1, __CIL_TMP17, __CIL_TMP18),true. 

 :- foreign(babel__implicit_handle_mkcolc_101(+integer, +positive,  -integer)).
:- foreign(babel__implicit_handle_mkcolc_102( -integer)).
:- foreign(babel__implicit_handle_mkcolc_103( -integer)).
:- foreign(babel__implicit_handle_mkcolc_104( -integer)).
:- foreign(babel__implicit_handle_mkcolc_105(+integer, +integer, +integer)).

handle_mkcol(CONN, PATH, VOID) :- 


 STATUS_CODE_SSA_1 is 500,
__CIL_TMP18 is CONN +1* 632,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_241 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_241, 8),

(__CIL_TMP20 > 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
STATUS_CODE_SSA_2 is 415
; babel__implicit_handle_mkcolc_101(PATH, 493 , TMP___2_SSA_1),
(TMP___2_SSA_1 \= 0 ->
babel__implicit_handle_mkcolc_102(TMP___1_SSA_1),
BabelExp_242 is TMP___1_SSA_1,
babelPtrR(__CIL_TMP21, BabelExp_242, 4),

(__CIL_TMP21 =:= 17 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
STATUS_CODE_SSA_2 is 405
; babel__implicit_handle_mkcolc_103(TMP___0_SSA_1),
BabelExp_243 is TMP___0_SSA_1,
babelPtrR(__CIL_TMP22, BabelExp_243, 4),

(__CIL_TMP22 =:= 13 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
STATUS_CODE_SSA_2 is 403
; babel__implicit_handle_mkcolc_104(TMP_SSA_1),
BabelExp_244 is TMP_SSA_1,
babelPtrR(__CIL_TMP23, BabelExp_244, 4),

(__CIL_TMP23 =:= 2 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
STATUS_CODE_SSA_2 is 409
; STATUS_CODE_SSA_2 is STATUS_CODE_SSA_1)))
; STATUS_CODE_SSA_2 is 201)),
babel__implicit_handle_mkcolc_105(CONN, STATUS_CODE_SSA_2, 0),true. 

 :- foreign(babel__implicit_handle_deletec_106(+integer, +integer,  -integer)).
:- foreign(babel__implicit_handle_deletec_107(+integer, +integer, +integer)).
:- foreign(babel__implicit_handle_deletec_108(+integer)).
:- foreign(babel__implicit_handle_deletec_109(+integer, +integer, +integer)).
:- foreign(babel__implicit_handle_deletec_110(+integer,  -integer)).
:- foreign(babel__implicit_handle_deletec_111(+integer, +integer, +integer)).
:- foreign(babel__implicit_handle_deletec_112(+integer, +integer, +integer)).

handle_delete(__CIL_PP_ST, CONN, PATH, VOID) :- 


 babel__implicit_handle_deletec_106(PATH, __CIL_PP_ST , TMP___0_SSA_1),

(TMP___0_SSA_1 \= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
babel__implicit_handle_deletec_107(CONN, 404, 0)
; __CIL_TMP12 is __CIL_PP_ST +1* 24,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_245 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_245, 4),
BabelExp_246 is __CIL_TMP14 /\ 61440,
__CIL_TMP15 is BabelExp_246,

(__CIL_TMP15 =:= 16384 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ->
babel__implicit_handle_deletec_108(PATH),
babel__implicit_handle_deletec_109(CONN, 204, 0)
; babel__implicit_handle_deletec_110(PATH , TMP_SSA_1),

(TMP_SSA_1 =:= 0 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
babel__implicit_handle_deletec_111(CONN, 204, 0)
; babel__implicit_handle_deletec_112(CONN, 423, 0)))),
true. 


put_dir(__CIL_PP___CIL_RET9, __CIL_FP___CIL_RET9, PATH, BABEL_RET) :- 

__CIL_RET9 is 1,
P_SSA_1 is PATH +1* 1,
S_SSA_1 is P_SSA_1,
BabelExp_247 is __CIL_RET9,
babel_ptrE(__CIL_FP___CIL_RET9, BabelExp_247, 4),
BabelExp_248 is __CIL_FP___CIL_RET9,
babelPtrR(__CIL_RET9_SSA_1, BabelExp_248, 4),
(RETFLAG10_SSA_1 \= 0 ->
BABEL_RET is __CIL_RET9_SSA_1, true
; BABEL_RET is 1, true). 

 :- foreign(babel__implicit_handle_putc_114(+integer, +string,  -integer)).
:- foreign(babel__implicit_handle_putc_115(+integer, +integer,  -integer)).
:- foreign(babel__implicit_handle_putc_116(+integer,  -integer)).
:- foreign(babel__implicit_handle_putc_117(+integer, +string, +integer)).
:- foreign(babel__implicit_handle_putc_118(+integer)).
:- foreign(babel__implicit_handle_putc_119( -integer)).
:- foreign(babel__implicit_handle_putc_120(+integer,  -integer)).
:- foreign(babel__implicit_handle_putc_121(+integer, +integer, +string, +integer)).
:- foreign(babel__implicit_handle_putc_122(+integer, +integer, +integer)).
:- foreign(babel__implicit_handle_putc_123(+integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_handle_putc_124( -integer)).
:- foreign(babel__implicit_handle_putc_125(+integer,  -integer)).
:- foreign(babel__implicit_handle_putc_126(+integer, +integer, +string, +integer, +integer)).
:- foreign(babel__implicit_handle_putc_127(+integer)).
:- foreign(babel__implicit_handle_putc_128(+integer, +string,  -integer)).
:- foreign(babel__implicit_handle_putc_129(+integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_handle_putc_130(+integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_handle_putc_131(+integer, +integer, +integer)).
:- foreign(babel__implicit_handle_putc_132(+integer, +string, +integer)).

handle_put(__CIL_PP_ST, __CIL_PP_R1, __CIL_PP_R2, __CIL_FP_R1, __CIL_FP_R2, CONN, PATH, VOID) :- 


 __CIL_TMP47 is CONN +1* 8,
babel__implicit_handle_putc_114(__CIL_TMP47, 'Content-Length' , TMP_SSA_1),
CL_HDR_SSA_1 is TMP_SSA_1,
babel__implicit_handle_putc_115(PATH, __CIL_PP_ST , TMP___1_SSA_1),
(TMP___1_SSA_1 \= 0 ->
__CIL_TMP48 is CONN +1* 644,
__CIL_TMP49 is __CIL_TMP48,
BabelExp_249 is 201,
babel_ptrE(__CIL_TMP49, BabelExp_249, 4)
; __CIL_TMP50 is CONN +1* 644,
__CIL_TMP51 is __CIL_TMP50,
BabelExp_250 is 200,
babel_ptrE(__CIL_TMP51, BabelExp_250, 4)),
babel__implicit_handle_putc_116(PATH , RC_SSA_1),

(RC_SSA_1 =:= 0 ,
__CIL_TMP40 is 1
; __CIL_TMP40 is 0),

(__CIL_TMP40 \= 0 ->
__CIL_TMP52 is CONN +1* 8,
__CIL_TMP53 is CONN +1* 644,
__CIL_TMP54 is __CIL_TMP53,
BabelExp_251 is __CIL_TMP54,
babelPtrR(__CIL_TMP55, BabelExp_251, 4),
babel__implicit_handle_putc_117(__CIL_TMP52, 'HTTP/1.1 %d OK\r\n\r\n', __CIL_TMP55),
babel__implicit_handle_putc_118(CONN)
; (RC_SSA_1 =:= -1 ,
__CIL_TMP41 is 1
; __CIL_TMP41 is 0),

(__CIL_TMP41 \= 0 ->
babel__implicit_handle_putc_119(TMP___2_SSA_1),
BabelExp_252 is TMP___2_SSA_1,
babelPtrR(__CIL_TMP56, BabelExp_252, 4),
babel__implicit_handle_putc_120(__CIL_TMP56 , TMP___3_SSA_1),
babel__implicit_handle_putc_121(CONN, 500, 'put_dir: %s', TMP___3_SSA_1)
; (CL_HDR_SSA_1 =:= 0 ,
__CIL_TMP42 is 1
; __CIL_TMP42 is 0),

(__CIL_TMP42 \= 0 ->
babel__implicit_handle_putc_122(CONN, 411, 0)
; babel__implicit_handle_putc_123(PATH, 578, 420 , TMP___8_SSA_1),
__CIL_TMP57 is CONN +1* 688,
__CIL_TMP58 is __CIL_TMP57,
BabelExp_253 is TMP___8_SSA_1,
babel_ptrE(__CIL_TMP58, BabelExp_253, 4),

(TMP___8_SSA_1 < 0 ,
__CIL_TMP43 is 1
; __CIL_TMP43 is 0),

(__CIL_TMP43 \= 0 ->
babel__implicit_handle_putc_124(TMP___4_SSA_1),
BabelExp_254 is TMP___4_SSA_1,
babelPtrR(__CIL_TMP59, BabelExp_254, 4),
babel__implicit_handle_putc_125(__CIL_TMP59 , TMP___5_SSA_1),
babel__implicit_handle_putc_126(CONN, 500, 'open(%s): %s', PATH, TMP___5_SSA_1)
; __CIL_TMP60 is CONN +1* 696,
__CIL_TMP61 is __CIL_TMP60,
BabelExp_255 is 4,
babel_ptrE(__CIL_TMP61, BabelExp_255, 4),
__CIL_TMP62 is CONN +1* 688,
__CIL_TMP63 is __CIL_TMP62,
BabelExp_256 is __CIL_TMP63,
babelPtrR(__CIL_TMP64, BabelExp_256, 4),
babel__implicit_handle_putc_127(__CIL_TMP64),
__CIL_TMP65 is CONN +1* 8,
babel__implicit_handle_putc_128(__CIL_TMP65, 'Content-Range' , RANGE_SSA_1),
babel__implicit_handle_putc_129(CL_HDR_SSA_1, 0, 10 , TMP___6_SSA_1),
__CIL_TMP66 is CONN +1* 728,
__CIL_TMP67 is __CIL_TMP66,
BabelExp_257 is TMP___6_SSA_1,
babel_ptrE(__CIL_TMP67, BabelExp_257, 8),
R2_SSA_1 is 0,
R1_SSA_1 is R2_SSA_1,

(RANGE_SSA_1 \= 0 ,
__CIL_TMP44 is 1
; __CIL_TMP44 is 0),

(__CIL_TMP44 \= 0 ->
BabelExp_258 is R1_SSA_1,
babel_ptrE(__CIL_FP_R1, BabelExp_258, 8),
BabelExp_259 is R2_SSA_1,
babel_ptrE(__CIL_FP_R2, BabelExp_259, 8),
babel__implicit_handle_putc_130(RANGE_SSA_1, __CIL_PP_R1, __CIL_PP_R2 , TMP___7_SSA_1),
BabelExp_260 is __CIL_FP_R1,
babelPtrR(R1_SSA_2, BabelExp_260, 8),
BabelExp_261 is __CIL_FP_R2,
babelPtrR(R2_SSA_2, BabelExp_261, 8),

(TMP___7_SSA_1 > 0 ,
__CIL_TMP45 is 1
; __CIL_TMP45 is 0),

(__CIL_TMP45 \= 0 ->
__CIL_TMP68 is CONN +1* 644,
__CIL_TMP69 is __CIL_TMP68,
BabelExp_262 is 206,
babel_ptrE(__CIL_TMP69, BabelExp_262, 4),
__CIL_TMP70 is CONN +1* 688,
__CIL_TMP71 is __CIL_TMP70,
BabelExp_263 is __CIL_TMP71,
babelPtrR(__CIL_TMP72, BabelExp_263, 4),
babel__implicit_handle_putc_131(__CIL_TMP72, R1_SSA_2, 0),

(R2_SSA_2 > R1_SSA_2 ,
__CIL_TMP46 is 1
; __CIL_TMP46 is 0),

(__CIL_TMP46 \= 0 ->
BabelExp_264 is R2_SSA_2 - R1_SSA_2,
__CIL_TMP73 is BabelExp_264,
__CIL_TMP74 is CONN +1* 728,
__CIL_TMP75 is __CIL_TMP74,
BabelExp_265 is __CIL_TMP73 + 1,
babel_ptrE(__CIL_TMP75, BabelExp_265, 8)
; __CIL_TMP76 is CONN +1* 728,
__CIL_TMP77 is __CIL_TMP76,
BabelExp_266 is __CIL_TMP77,
babelPtrR(__CIL_TMP78, BabelExp_266, 8),
__CIL_TMP79 is CONN +1* 728,
__CIL_TMP80 is __CIL_TMP79,
BabelExp_267 is __CIL_TMP78 - R1_SSA_2,
babel_ptrE(__CIL_TMP80, BabelExp_267, 8))
; true)
; true),
__CIL_TMP81 is CONN +1* 8,
__CIL_TMP82 is CONN +1* 644,
__CIL_TMP83 is __CIL_TMP82,
BabelExp_268 is __CIL_TMP83,
babelPtrR(__CIL_TMP84, BabelExp_268, 4),
babel__implicit_handle_putc_132(__CIL_TMP81, 'HTTP/1.1 %d OK\r\nContent-Length: 0\r\n\r\n', __CIL_TMP84))))),
true. 

 
:- foreign(babel__implicit_forward_put_datac_0(+integer, +integer, +positive,  -integer)).
:- foreign(babel__implicit_forward_put_datac_1(+integer, +positive)).
:- foreign(babel__implicit_forward_put_datac_2(+integer)).

forward_put_data(CONN, VOID) :- 


 MEM_39 is CONN,
BabelExp_0 is MEM_39,
babelPtrR(__CIL_TMP15, BabelExp_0, 8),
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16 +1* 56,
IO_SSA_1 is __CIL_TMP17,
__CIL_TMP18 is CONN +1* 728,
__CIL_TMP19 is __CIL_TMP18,
__CIL_TMP20 is IO_SSA_1 +1* 8,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_1 is __CIL_TMP21,
babelPtrR(__CIL_TMP22, BabelExp_1, 8),
BabelExp_2 is __CIL_TMP19,
babelPtrR(__CIL_TMP23, BabelExp_2, 8),
__CIL_TMP24 is __CIL_TMP22,

(__CIL_TMP23 < __CIL_TMP24 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
__CIL_TMP25 is CONN +1* 728,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_3 is __CIL_TMP26,
babelPtrR(TMP_SSA_1, BabelExp_3, 8)
; __CIL_TMP27 is IO_SSA_1 +1* 8,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_4 is __CIL_TMP28,
babelPtrR(__CIL_TMP29, BabelExp_4, 8),
TMP_SSA_1 is __CIL_TMP29),
K_SSA_1 is TMP_SSA_1,
__CIL_TMP30 is CONN +1* 688,
__CIL_TMP31 is __CIL_TMP30,
MEM_40 is IO_SSA_1,
BabelExp_5 is MEM_40,
babelPtrR(__CIL_TMP32, BabelExp_5, 8),
BabelExp_6 is __CIL_TMP31,
babelPtrR(__CIL_TMP33, BabelExp_6, 4),
babel__implicit_forward_put_datac_0(__CIL_TMP33, __CIL_TMP32, K_SSA_1 , TMP___0_SSA_1),
N___0_SSA_1 is TMP___0_SSA_1,

(N___0_SSA_1 > 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
babel__implicit_forward_put_datac_1(IO_SSA_1, N___0_SSA_1),
__CIL_TMP34 is CONN +1* 728,
__CIL_TMP35 is __CIL_TMP34,
BabelExp_7 is __CIL_TMP35,
babelPtrR(__CIL_TMP36, BabelExp_7, 8),
__CIL_TMP37 is __CIL_TMP36,
BabelExp_8 is __CIL_TMP37 - N___0_SSA_1,
__CIL_TMP38 is BabelExp_8,
__CIL_TMP39 is CONN +1* 728,
__CIL_TMP40 is __CIL_TMP39,
BabelExp_9 is __CIL_TMP38,
babel_ptrE(__CIL_TMP40, BabelExp_9, 8)
; true),
__CIL_TMP41 is CONN +1* 728,
__CIL_TMP42 is __CIL_TMP41,
BabelExp_10 is __CIL_TMP42,
babelPtrR(__CIL_TMP43, BabelExp_10, 8),

(__CIL_TMP43 =< 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
babel__implicit_forward_put_datac_2(CONN)
; true),
true. 

 :- foreign(babel__implicit_send_optionsc_3(+integer, +string, +string)).
:- foreign(babel__implicit_send_optionsc_4(+integer)).

send_options(CONN, VOID) :- 


 __CIL_TMP2 is CONN +1* 644,
__CIL_TMP3 is __CIL_TMP2,
BabelExp_11 is 200,
babel_ptrE(__CIL_TMP3, BabelExp_11, 4),
__CIL_TMP4 is CONN +1* 8,
babel__implicit_send_optionsc_3(__CIL_TMP4, '%s', 'HTTP/1.1 200 OK\r\nAllow: GET, POST, HEAD, CONNECT, PUT, DELETE, OPTIONS, PROPFIND, MKCOL\r\nDAV: 1\r\n\r\n'),
babel__implicit_send_optionsc_4(CONN),true. 

 :- foreign(babel__implicit_mg_send_digest_auth_requestc_5(+integer,  -integer)).
:- foreign(babel__implicit_mg_send_digest_auth_requestc_6(+integer, +string, +integer, +positive)).
:- foreign(babel__implicit_mg_send_digest_auth_requestc_7(+integer)).

mg_send_digest_auth_request(C, VOID) :- 


 BabelExp_12 is 0 + 8,
__CIL_TMP6 is BabelExp_12,
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7,
BabelExp_13 is C - __CIL_TMP8,
__CIL_TMP9 is BabelExp_13,
CONN_SSA_1 is __CIL_TMP9,
__CIL_TMP10 is C +1* 636,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_14 is 401,
babel_ptrE(__CIL_TMP11, BabelExp_14, 4),
babel__implicit_mg_send_digest_auth_requestc_5(0 , TMP_SSA_1),
__CIL_TMP12 is CONN_SSA_1 +1* 680,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_15 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_15, 8),
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_TMP15 +1* 56,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18 +8* 2,
BabelExp_16 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_16, 8),
babel__implicit_mg_send_digest_auth_requestc_6(C, 'HTTP/1.1 401 Unauthorized\r\nWWW-Authenticate: Digest qop=\'auth\', realm=\'%s\', nonce=\'%lu\'\r\n\r\n', __CIL_TMP20, TMP_SSA_1),
babel__implicit_mg_send_digest_auth_requestc_7(CONN_SSA_1),true. 

 :- foreign(babel__implicit_byteReversec_8( -integer)).
:- foreign(babel__implicit_byteReversec_9(+integer, +positive)).

byteReverse(BUF, LONGS, VOID) :- 


 babel__implicit_byteReversec_8(TMP_SSA_1),
(TMP_SSA_1 \= 0 ->
babel__implicit_byteReversec_9(BUF, LONGS)
; true),
true. 

 
mD5Init(CTX, VOID) :- 


 MEM_18 is CTX,
__CIL_TMP2 is MEM_18,
__CIL_TMP3 is __CIL_TMP2,
BabelExp_17 is 1732584193,
babel_ptrE(__CIL_TMP3, BabelExp_17, 4),
MEM_19 is CTX,
__CIL_TMP4 is MEM_19,
__CIL_TMP5 is __CIL_TMP4 +4* 1,
BabelExp_18 is 4023233417,
babel_ptrE(__CIL_TMP5, BabelExp_18, 4),
MEM_20 is CTX,
__CIL_TMP6 is MEM_20,
__CIL_TMP7 is __CIL_TMP6 +4* 2,
BabelExp_19 is 2562383102,
babel_ptrE(__CIL_TMP7, BabelExp_19, 4),
MEM_21 is CTX,
__CIL_TMP8 is MEM_21,
__CIL_TMP9 is __CIL_TMP8 +4* 3,
BabelExp_20 is 271733878,
babel_ptrE(__CIL_TMP9, BabelExp_20, 4),
__CIL_TMP10 is CTX +1* 16,
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP11,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_21 is 0,
babel_ptrE(__CIL_TMP13, BabelExp_21, 4),
__CIL_TMP14 is CTX +1* 16,
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16 +4* 1,
BabelExp_22 is 0,
babel_ptrE(__CIL_TMP17, BabelExp_22, 4),true. 

 :- foreign(babel__implicit_MD5Updatec_10(+integer, +integer, +positive)).
:- foreign(babel__implicit_MD5Updatec_11(+integer, +integer, +positive)).
:- foreign(babel__implicit_MD5Updatec_12(+integer, +integer)).
:- foreign(babel__implicit_MD5Updatec_13(+integer, +integer)).
:- foreign(babel__implicit_MD5Updatec_14(+integer, +integer, +integer)).
:- foreign(babel__implicit_MD5Updatec_15(+integer, +integer, +positive)).
:- foreign(babel__implicit_MD5Updatec_16(+integer, +integer, +integer)).
:- foreign(babel__implicit_MD5Updatec_17(+integer, +integer, +positive)).

mD5Update(__CIL_PP_CTX, __CIL_PP_BUF, __CIL_PP_LEN, __CIL_FP_CTX, __CIL_FP_BUF, __CIL_FP_LEN, CTX, BUF, LEN, VOID) :- 


 __CIL_TMP25 is CTX +1* 16,
__CIL_TMP26 is __CIL_TMP25,
__CIL_TMP27 is __CIL_TMP26,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_23 is __CIL_TMP28,
babelPtrR(T_SSA_1, BabelExp_23, 4),
BabelExp_24 is LEN << 3,
__CIL_TMP29 is BabelExp_24,
BabelExp_25 is T_SSA_1 + __CIL_TMP29,
TMP_SSA_1 is BabelExp_25,
__CIL_TMP30 is CTX +1* 16,
__CIL_TMP31 is __CIL_TMP30,
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32,
BabelExp_26 is TMP_SSA_1,
babel_ptrE(__CIL_TMP33, BabelExp_26, 4),

(TMP_SSA_1 < T_SSA_1 ,
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ->
__CIL_TMP34 is CTX +1* 16,
__CIL_TMP35 is __CIL_TMP34,
__CIL_TMP36 is __CIL_TMP35,
__CIL_TMP37 is __CIL_TMP36 +4* 1,
BabelExp_27 is __CIL_TMP37,
babelPtrR(__CIL_TMP38, BabelExp_27, 4),
__CIL_TMP39 is CTX +1* 16,
__CIL_TMP40 is __CIL_TMP39,
__CIL_TMP41 is __CIL_TMP40,
__CIL_TMP42 is __CIL_TMP41 +4* 1,
BabelExp_28 is __CIL_TMP38 + 1,
babel_ptrE(__CIL_TMP42, BabelExp_28, 4)
; true),
__CIL_TMP43 is CTX +1* 16,
__CIL_TMP44 is __CIL_TMP43,
__CIL_TMP45 is __CIL_TMP44,
__CIL_TMP46 is __CIL_TMP45 +4* 1,
BabelExp_29 is __CIL_TMP46,
babelPtrR(__CIL_TMP47, BabelExp_29, 4),
BabelExp_30 is LEN >> 29,
__CIL_TMP48 is BabelExp_30,
__CIL_TMP49 is CTX +1* 16,
__CIL_TMP50 is __CIL_TMP49,
__CIL_TMP51 is __CIL_TMP50,
__CIL_TMP52 is __CIL_TMP51 +4* 1,
BabelExp_31 is __CIL_TMP47 + __CIL_TMP48,
babel_ptrE(__CIL_TMP52, BabelExp_31, 4),
BabelExp_32 is T_SSA_1 >> 3,
__CIL_TMP53 is BabelExp_32,
BabelExp_33 is __CIL_TMP53 /\ 63,
T_SSA_2 is BabelExp_33,
(T_SSA_2 \= 0 ->
__CIL_TMP54 is CTX +1* 24,
__CIL_TMP55 is __CIL_TMP54,
__CIL_TMP56 is __CIL_TMP55,
P_SSA_1 is __CIL_TMP56 +1* T_SSA_2,
BabelExp_34 is 64 - T_SSA_2,
T_SSA_3 is BabelExp_34,

(LEN < T_SSA_3 ,
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ->
babel__implicit_MD5Updatec_10(P_SSA_1, BUF, LEN),true
; babel__implicit_MD5Updatec_11(P_SSA_1, BUF, T_SSA_3),
__CIL_TMP57 is CTX +1* 24,
__CIL_TMP58 is __CIL_TMP57,
__CIL_TMP59 is __CIL_TMP58,
babel__implicit_MD5Updatec_12(__CIL_TMP59, 16),
MEM_67 is CTX,
__CIL_TMP60 is MEM_67,
__CIL_TMP61 is CTX +1* 24,
__CIL_TMP62 is __CIL_TMP61,
__CIL_TMP63 is __CIL_TMP62,
babel__implicit_MD5Updatec_13(__CIL_TMP60, __CIL_TMP63),
BUF_SSA_1 is BUF +1* T_SSA_3,
BabelExp_35 is LEN - T_SSA_3,
LEN_SSA_1 is BabelExp_35,
BabelExp_36 is CTX,
babel_ptrE(__CIL_FP_CTX, BabelExp_36, 8),
BabelExp_37 is BUF_SSA_1,
babel_ptrE(__CIL_FP_BUF, BabelExp_37, 8),
BabelExp_38 is LEN_SSA_1,
babel_ptrE(__CIL_FP_LEN, BabelExp_38, 4),
babel__implicit_MD5Updatec_14(__CIL_PP_CTX, __CIL_PP_BUF, __CIL_PP_LEN),
BabelExp_39 is __CIL_FP_CTX,
babelPtrR(CTX_SSA_1, BabelExp_39, 8),
BabelExp_40 is __CIL_FP_BUF,
babelPtrR(BUF_SSA_2, BabelExp_40, 8),
BabelExp_41 is __CIL_FP_LEN,
babelPtrR(LEN_SSA_2, BabelExp_41, 4),
__CIL_TMP64 is CTX_SSA_1 +1* 24,
__CIL_TMP65 is __CIL_TMP64,
__CIL_TMP66 is __CIL_TMP65,
babel__implicit_MD5Updatec_15(__CIL_TMP66, BUF_SSA_2, LEN_SSA_2),true)
; BabelExp_42 is CTX,
babel_ptrE(__CIL_FP_CTX, BabelExp_42, 8),
BabelExp_43 is BUF,
babel_ptrE(__CIL_FP_BUF, BabelExp_43, 8),
BabelExp_44 is LEN,
babel_ptrE(__CIL_FP_LEN, BabelExp_44, 4),
babel__implicit_MD5Updatec_16(__CIL_PP_CTX, __CIL_PP_BUF, __CIL_PP_LEN),
BabelExp_45 is __CIL_FP_CTX,
babelPtrR(CTX_SSA_1, BabelExp_45, 8),
BabelExp_46 is __CIL_FP_BUF,
babelPtrR(BUF_SSA_1, BabelExp_46, 8),
BabelExp_47 is __CIL_FP_LEN,
babelPtrR(LEN_SSA_1, BabelExp_47, 4),
__CIL_TMP67 is CTX_SSA_1 +1* 24,
__CIL_TMP68 is __CIL_TMP67,
__CIL_TMP69 is __CIL_TMP68,
babel__implicit_MD5Updatec_17(__CIL_TMP69, BUF_SSA_1, LEN_SSA_1),true). 

 :- foreign(babel__implicit_MD5Finalc_18(+integer, +integer, +positive)).
:- foreign(babel__implicit_MD5Finalc_19(+integer, +integer)).
:- foreign(babel__implicit_MD5Finalc_20(+integer, +integer)).
:- foreign(babel__implicit_MD5Finalc_21(+integer, +integer, +positive)).
:- foreign(babel__implicit_MD5Finalc_22(+integer, +integer, +positive)).
:- foreign(babel__implicit_MD5Finalc_23(+integer, +integer)).
:- foreign(babel__implicit_MD5Finalc_24(+integer, +integer)).
:- foreign(babel__implicit_MD5Finalc_25(+integer, +integer)).
:- foreign(babel__implicit_MD5Finalc_26(+integer, +integer, +positive)).
:- foreign(babel__implicit_MD5Finalc_27(+integer, +integer, +integer)).

mD5Final(DIGEST, CTX, VOID) :- 


 __CIL_TMP14 is CTX +1* 16,
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_48 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_48, 4),
BabelExp_49 is __CIL_TMP18 >> 3,
__CIL_TMP19 is BabelExp_49,
BabelExp_50 is __CIL_TMP19 /\ 63,
COUNT_SSA_1 is BabelExp_50,
__CIL_TMP20 is CTX +1* 24,
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is __CIL_TMP21,
P_SSA_1 is __CIL_TMP22 +1* COUNT_SSA_1,
TMP_SSA_1 is P_SSA_1,
P_SSA_2 is P_SSA_1 +1* 1,
BabelExp_51 is 128,
babel_ptrE(TMP_SSA_1, BabelExp_51, 1),
BabelExp_52 is 63 - COUNT_SSA_1,
COUNT_SSA_2 is BabelExp_52,

(COUNT_SSA_2 < 8 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
babel__implicit_MD5Finalc_18(P_SSA_2, 0, COUNT_SSA_2),
__CIL_TMP23 is CTX +1* 24,
__CIL_TMP24 is __CIL_TMP23,
__CIL_TMP25 is __CIL_TMP24,
babel__implicit_MD5Finalc_19(__CIL_TMP25, 16),
MEM_52 is CTX,
__CIL_TMP26 is MEM_52,
__CIL_TMP27 is CTX +1* 24,
__CIL_TMP28 is __CIL_TMP27,
__CIL_TMP29 is __CIL_TMP28,
babel__implicit_MD5Finalc_20(__CIL_TMP26, __CIL_TMP29),
__CIL_TMP30 is CTX +1* 24,
__CIL_TMP31 is __CIL_TMP30,
__CIL_TMP32 is __CIL_TMP31,
babel__implicit_MD5Finalc_21(__CIL_TMP32, 0, 56)
; BabelExp_53 is COUNT_SSA_2 - 8,
__CIL_TMP33 is BabelExp_53,
babel__implicit_MD5Finalc_22(P_SSA_2, 0, __CIL_TMP33)),
__CIL_TMP34 is CTX +1* 24,
__CIL_TMP35 is __CIL_TMP34,
__CIL_TMP36 is __CIL_TMP35,
babel__implicit_MD5Finalc_23(__CIL_TMP36, 14),
__CIL_TMP37 is CTX +1* 24,
__CIL_TMP38 is __CIL_TMP37,
__CIL_TMP39 is __CIL_TMP38,
A_SSA_1 is __CIL_TMP39,
__CIL_TMP40 is CTX +1* 16,
__CIL_TMP41 is __CIL_TMP40,
__CIL_TMP42 is __CIL_TMP41,
__CIL_TMP43 is __CIL_TMP42,
__CIL_TMP44 is A_SSA_1 +4* 14,
babelPtrR(BabelExp_54, __CIL_TMP43, 4),
babel_ptrE(__CIL_TMP44, BabelExp_54, 4),
__CIL_TMP45 is CTX +1* 16,
__CIL_TMP46 is __CIL_TMP45,
__CIL_TMP47 is __CIL_TMP46,
__CIL_TMP48 is __CIL_TMP47 +4* 1,
__CIL_TMP49 is A_SSA_1 +4* 15,
babelPtrR(BabelExp_55, __CIL_TMP48, 4),
babel_ptrE(__CIL_TMP49, BabelExp_55, 4),
MEM_53 is CTX,
__CIL_TMP50 is MEM_53,
__CIL_TMP51 is CTX +1* 24,
__CIL_TMP52 is __CIL_TMP51,
__CIL_TMP53 is __CIL_TMP52,
babel__implicit_MD5Finalc_24(__CIL_TMP50, __CIL_TMP53),
MEM_54 is CTX,
__CIL_TMP54 is MEM_54,
babel__implicit_MD5Finalc_25(__CIL_TMP54, 4),
MEM_55 is CTX,
__CIL_TMP55 is MEM_55,
babel__implicit_MD5Finalc_26(DIGEST, __CIL_TMP55, 16),
babel__implicit_MD5Finalc_27(CTX, 0, 88),true. 

 :- foreign(babel__implicit_bin2strc_28(+integer, +integer, +positive)).

bin2str(__CIL_PP_TO, __CIL_FP_TO, TO, P, LEN, VOID) :- 


 BabelExp_56 is TO,
babel_ptrE(__CIL_FP_TO, BabelExp_56, 8),
babel__implicit_bin2strc_28(__CIL_PP_TO, P, LEN),
BabelExp_57 is __CIL_FP_TO,
babelPtrR(TO_SSA_1, BabelExp_57, 8),
BabelExp_58 is 0,
babel_ptrE(TO_SSA_1, BabelExp_58, 1),true. 

 :- foreign(babel__implicit_check_passwordc_29(+integer, +integer, +string, +integer, +integer)).
:- foreign(babel__implicit_check_passwordc_30(+integer, +integer, +string, +integer, +string, +integer, +string, +integer, +string, +integer, +string, +integer, +integer)).
:- foreign(babel__implicit_check_passwordc_31(+integer, +integer,  -integer)).

check_password(METHOD, HA1, URI, NONCE, NC, CNONCE, QOP, RESPONSE, BABEL_RET) :- 
    HA2 is 0,
    EXPECTED_RESPONSE is 0,
BabelExp_59 is HA2,
__CIL_TMP17 is BabelExp_59,
babel__implicit_check_passwordc_29(__CIL_TMP17, METHOD, ':', URI, 0),
BabelExp_60 is EXPECTED_RESPONSE,
__CIL_TMP18 is BabelExp_60,
BabelExp_61 is HA2,
__CIL_TMP19 is BabelExp_61,
babel__implicit_check_passwordc_30(__CIL_TMP18, HA1, ':', NONCE, ':', NC, ':', CNONCE, ':', QOP, ':', __CIL_TMP19, 0),
BabelExp_62 is EXPECTED_RESPONSE,
__CIL_TMP20 is BabelExp_62,
babel__implicit_check_passwordc_31(RESPONSE, __CIL_TMP20 , TMP___1_SSA_1),

(TMP___1_SSA_1 =:= 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
TMP___0_SSA_1 is 1
; TMP___0_SSA_1 is 0),
BABEL_RET is TMP___0_SSA_1, true. 

 :- foreign(babel__implicit_is_authorizedc_32(+integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_is_authorizedc_33(+integer, +integer,  -integer)).
:- foreign(babel__implicit_is_authorizedc_34(+integer)).

is_authorized(CONN, PATH, IS_DIRECTORY, BABEL_RET) :- 


 AUTHORIZED_SSA_1 is 1,
babel__implicit_is_authorizedc_32(CONN, PATH, IS_DIRECTORY , FP_SSA_1),

(FP_SSA_1 \= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
__CIL_TMP10 is CONN +1* 8,
babel__implicit_is_authorizedc_33(__CIL_TMP10, FP_SSA_1 , AUTHORIZED_SSA_2),
babel__implicit_is_authorizedc_34(FP_SSA_1)
; AUTHORIZED_SSA_2 is AUTHORIZED_SSA_1),
BABEL_RET is AUTHORIZED_SSA_2, true. 

 :- foreign(babel__implicit_mg_parse_headerc_35(+integer,  -positive)).
:- foreign(babel__implicit_mg_parse_headerc_36(+integer, +positive, +integer, +integer, +positive,  -integer)).

mg_parse_header(S, VAR_NAME, BUF, BUF_SIZE, BABEL_RET) :- 


 (S =:= 0 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
TMP___0_SSA_1 is 0
; babel__implicit_mg_parse_headerc_35(S , TMP_SSA_1),
TMP___0_SSA_1 is TMP_SSA_1),
babel__implicit_mg_parse_headerc_36(S, TMP___0_SSA_1, VAR_NAME, BUF, BUF_SIZE , TMP___1_SSA_1),BABEL_RET is TMP___1_SSA_1, true. 

 :- foreign(babel__implicit_send_file_datac_37(+integer, +integer, +integer)).

send_file_data(CONN, FP, VOID) :- 


 babel__implicit_send_file_datac_37(CONN, FP, BUF),true. 

 :- foreign(babel__implicit_do_ssi_execc_38(+integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_do_ssi_execc_39(+integer, +string, +integer)).
:- foreign(babel__implicit_do_ssi_execc_40(+integer, +string,  -integer)).
:- foreign(babel__implicit_do_ssi_execc_41( -integer)).
:- foreign(babel__implicit_do_ssi_execc_42(+integer,  -integer)).
:- foreign(babel__implicit_do_ssi_execc_43(+integer, +string, +integer, +integer)).
:- foreign(babel__implicit_do_ssi_execc_44(+integer, +integer)).
:- foreign(babel__implicit_do_ssi_execc_45(+integer)).

do_ssi_exec(CONN, TAG, CMD) :- 

BabelExp_63 is CMD,
__CIL_TMP14 is BabelExp_63,
babel__implicit_do_ssi_execc_38(TAG, ' \'%[^\']\'', __CIL_TMP14 , TMP___1_SSA_1),

(TMP___1_SSA_1 \= 1 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
babel__implicit_do_ssi_execc_39(CONN, 'Bad SSI #exec: [%s]', TAG)
; BabelExp_64 is CMD,
__CIL_TMP15 is BabelExp_64,
babel__implicit_do_ssi_execc_40(__CIL_TMP15, 'r' , FP_SSA_1),

(FP_SSA_1 =:= 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
babel__implicit_do_ssi_execc_41(TMP_SSA_1),
BabelExp_65 is TMP_SSA_1,
babelPtrR(__CIL_TMP16, BabelExp_65, 4),
babel__implicit_do_ssi_execc_42(__CIL_TMP16 , TMP___0_SSA_1),
BabelExp_66 is CMD,
__CIL_TMP17 is BabelExp_66,
babel__implicit_do_ssi_execc_43(CONN, 'Cannot SSI #exec: [%s]: %s', __CIL_TMP17, TMP___0_SSA_1)
; babel__implicit_do_ssi_execc_44(CONN, FP_SSA_1),
babel__implicit_do_ssi_execc_45(FP_SSA_1))),
true. 

 :- foreign(babel__implicit_handle_ssi_requestc_46(+integer, +integer,  -integer)).
:- foreign(babel__implicit_handle_ssi_requestc_47( -integer)).
:- foreign(babel__implicit_handle_ssi_requestc_48(+integer,  -integer)).
:- foreign(babel__implicit_handle_ssi_requestc_49(+integer, +integer, +string, +integer, +integer)).
:- foreign(babel__implicit_handle_ssi_requestc_50(+integer,  -integer)).
:- foreign(babel__implicit_handle_ssi_requestc_51(+integer)).
:- foreign(babel__implicit_handle_ssi_requestc_52(+integer, +integer, +integer)).
:- foreign(babel__implicit_handle_ssi_requestc_53(+integer, +string, +integer, +integer, +integer)).
:- foreign(babel__implicit_handle_ssi_requestc_54(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_handle_ssi_requestc_55(+integer)).
:- foreign(babel__implicit_handle_ssi_requestc_56(+integer)).

handle_ssi_request(__CIL_PP_MIME_VEC, CONN, PATH, VOID) :- 


 babel__implicit_handle_ssi_requestc_46(PATH, 'RB' , FP_SSA_1),

(FP_SSA_1 =:= 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
babel__implicit_handle_ssi_requestc_47(TMP_SSA_1),
BabelExp_67 is TMP_SSA_1,
babelPtrR(__CIL_TMP14, BabelExp_67, 4),
babel__implicit_handle_ssi_requestc_48(__CIL_TMP14 , TMP___0_SSA_1),
babel__implicit_handle_ssi_requestc_49(CONN, 500, 'fopen(%s): %s', PATH, TMP___0_SSA_1)
; babel__implicit_handle_ssi_requestc_50(FP_SSA_1 , TMP___1_SSA_1),
babel__implicit_handle_ssi_requestc_51(TMP___1_SSA_1),
__CIL_TMP15 is CONN +1* 680,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_68 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_68, 8),
babel__implicit_handle_ssi_requestc_52(__CIL_TMP17, PATH, __CIL_PP_MIME_VEC),
__CIL_TMP18 is CONN +1* 644,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_69 is 200,
babel_ptrE(__CIL_TMP19, BabelExp_69, 4),
__CIL_TMP20 is CONN +1* 8,
__CIL_TMP21 is CONN +1* 644,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_PP_MIME_VEC +1* 8,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_70 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_70, 8),
BabelExp_71 is __CIL_TMP22,
babelPtrR(__CIL_TMP26, BabelExp_71, 4),
MEM_25 is __CIL_PP_MIME_VEC,
BabelExp_72 is MEM_25,
babelPtrR(__CIL_TMP27, BabelExp_72, 8),
babel__implicit_handle_ssi_requestc_53(__CIL_TMP20, 'HTTP/1.1 %d OK\r\nContent-Type: %.*s\r\nConnection: close\r\n\r\n', __CIL_TMP26, __CIL_TMP25, __CIL_TMP27),
__CIL_TMP28 is CONN +1* 8,
babel__implicit_handle_ssi_requestc_54(__CIL_TMP28, PATH, FP_SSA_1, 0),
babel__implicit_handle_ssi_requestc_55(FP_SSA_1),
babel__implicit_handle_ssi_requestc_56(CONN)),
true. 

 :- foreign(babel__implicit_proxy_requestc_57(+integer, +string, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_proxy_requestc_58(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_proxy_requestc_59(+integer, +string, +string, +string)).
:- foreign(babel__implicit_proxy_requestc_60(+integer, +string, +string)).
:- foreign(babel__implicit_proxy_requestc_61(+integer, +integer, +positive)).

proxy_request(__CIL_PP_PC, __CIL_PP_C, __CIL_PP_SENT_CLOSE_HEADER, __CIL_FP_PC, __CIL_FP_C, __CIL_FP_SENT_CLOSE_HEADER, PC, C, VOID) :- 


 SENT_CLOSE_HEADER_SSA_1 is 0,
__CIL_TMP23 is C +1* 24,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_73 is __CIL_TMP24,
babelPtrR(__CIL_TMP21, BabelExp_73, 8),
(__CIL_TMP21 \= 0 ->
__CIL_TMP25 is C +1* 24,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_74 is __CIL_TMP26,
babelPtrR(TMP_SSA_1, BabelExp_74, 8)
; babelAssignStr(TMP_SSA_1, '')),
__CIL_TMP27 is C +1* 24,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_75 is __CIL_TMP28,
babelPtrR(__CIL_TMP22, BabelExp_75, 8),
(__CIL_TMP22 \= 0 ->
babelAssignStr(TMP___0_SSA_1, '?')
; babelAssignStr(TMP___0_SSA_1, '')),
__CIL_TMP29 is C +1* 8,
__CIL_TMP30 is __CIL_TMP29,
__CIL_TMP31 is C +1* 16,
__CIL_TMP32 is __CIL_TMP31,
MEM_38 is C,
BabelExp_76 is MEM_38,
babelPtrR(__CIL_TMP33, BabelExp_76, 8),
BabelExp_77 is __CIL_TMP30,
babelPtrR(__CIL_TMP34, BabelExp_77, 8),
BabelExp_78 is __CIL_TMP32,
babelPtrR(__CIL_TMP35, BabelExp_78, 8),
babel__implicit_proxy_requestc_57(PC, '%s %s%s%s HTTP/%s\r\n', __CIL_TMP33, __CIL_TMP34, TMP___0_SSA_1, TMP_SSA_1, __CIL_TMP35),
I_SSA_1 is 0,
BabelExp_79 is PC,
babel_ptrE(__CIL_FP_PC, BabelExp_79, 8),
BabelExp_80 is C,
babel_ptrE(__CIL_FP_C, BabelExp_80, 8),
BabelExp_81 is SENT_CLOSE_HEADER_SSA_1,
babel_ptrE(__CIL_FP_SENT_CLOSE_HEADER, BabelExp_81, 4),
babel__implicit_proxy_requestc_58(__CIL_PP_PC, __CIL_PP_C, __CIL_PP_SENT_CLOSE_HEADER, I_SSA_1),
BabelExp_82 is __CIL_FP_PC,
babelPtrR(PC_SSA_1, BabelExp_82, 8),
BabelExp_83 is __CIL_FP_C,
babelPtrR(C_SSA_1, BabelExp_83, 8),
BabelExp_84 is __CIL_FP_SENT_CLOSE_HEADER,
babelPtrR(SENT_CLOSE_HEADER_SSA_2, BabelExp_84, 4),
(SENT_CLOSE_HEADER_SSA_2 =:= 0 ->
babel__implicit_proxy_requestc_59(PC_SSA_1, '%s: %s\r\n', 'Connection', 'close')
; true),
babel__implicit_proxy_requestc_60(PC_SSA_1, '%s', '\r\n'),
__CIL_TMP36 is C_SSA_1 +1* 616,
__CIL_TMP37 is __CIL_TMP36,
BabelExp_85 is __CIL_TMP37,
babelPtrR(__CIL_TMP38, BabelExp_85, 8),
__CIL_TMP39 is C_SSA_1 +1* 624,
__CIL_TMP40 is __CIL_TMP39,
BabelExp_86 is __CIL_TMP40,
babelPtrR(__CIL_TMP41, BabelExp_86, 8),
babel__implicit_proxy_requestc_61(PC_SSA_1, __CIL_TMP38, __CIL_TMP41),true. 

 :- foreign(babel__implicit_mg_send_filec_62(+integer, +integer,  -integer)).
:- foreign(babel__implicit_mg_send_filec_63(+integer, +integer, +integer, +integer, +integer)).

mg_send_file(__CIL_PP_ST, C, FILE_NAME, EXTRA_HEADERS, VOID) :- 


 babel__implicit_mg_send_filec_62(FILE_NAME, __CIL_PP_ST , TMP_SSA_1),

(TMP_SSA_1 =:= 0 ,
EXISTS_SSA_1 is 1
; EXISTS_SSA_1 is 0),

babel__implicit_mg_send_filec_63(C, FILE_NAME, __CIL_PP_ST, EXISTS_SSA_1, EXTRA_HEADERS),true. 

 :- foreign(babel__implicit_send_continue_if_expectedc_64(+integer, +string,  -integer)).
:- foreign(babel__implicit_send_continue_if_expectedc_65(+integer, +string,  -integer)).
:- foreign(babel__implicit_send_continue_if_expectedc_66(+integer, +integer, +positive)).

send_continue_if_expected(CONN, MEM_10, TMP_SSA_1, EXPECT_RESPONSE) :- 
__CIL_TMP9 is CONN +1* 8,
babel__implicit_send_continue_if_expectedc_64(__CIL_TMP9, 'Expect' , TMP_SSA_1),
EXPECT_HDR_SSA_1 is TMP_SSA_1,

(EXPECT_HDR_SSA_1 \= 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
babel__implicit_send_continue_if_expectedc_65(EXPECT_HDR_SSA_1, '100-continue' , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
BabelExp_87 is EXPECT_RESPONSE,
__CIL_TMP10 is BabelExp_87,
MEM_10 is CONN,
BabelExp_88 is MEM_10,
babelPtrR(__CIL_TMP11, BabelExp_88, 8),
BabelExp_89 is 25,
__CIL_TMP12 is BabelExp_89,
babel__implicit_send_continue_if_expectedc_66(__CIL_TMP11, __CIL_TMP10, __CIL_TMP12)
; true)
; true),
true. 

 :- foreign(babel__implicit_is_valid_uric_67(+integer, +string,  -integer)).
:- foreign(babel__implicit_is_valid_uric_68(+integer, +string, +positive,  -integer)).
:- foreign(babel__implicit_is_valid_uric_69(+integer, +integer, +integer,  -integer)).

is_valid_uri(__CIL_PP_N___0, __CIL_FP_N___0, URI, BABEL_RET) :- 

__CIL_TMP17 is URI +1* 0,
BabelExp_90 is __CIL_TMP17,
babelPtrR_byte(__CIL_TMP18, BabelExp_90, 1),
__CIL_TMP19 is __CIL_TMP18,

(__CIL_TMP19 =:= 47 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
TMP___2_SSA_1 is 1
; babel__implicit_is_valid_uric_67(URI, '*' , TMP_SSA_1),

(TMP_SSA_1 =:= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
TMP___2_SSA_1 is 1
; babel__implicit_is_valid_uric_68(URI, 'http', 4 , TMP___0_SSA_1),

(TMP___0_SSA_1 =:= 0 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
TMP___2_SSA_1 is 1
; 

N___0 is 1,
BabelExp_91 is N___0,
babel_ptrE(__CIL_FP_N___0, BabelExp_91, 2),
babel__implicit_is_valid_uric_69(URI, '%*[^ :]:%HU', __CIL_PP_N___0 , TMP___1_SSA_1),

(TMP___1_SSA_1 > 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
TMP___2_SSA_1 is 1
; TMP___2_SSA_1 is 0)))),
BABEL_RET is TMP___2_SSA_1, true. 

 :- foreign(babel__implicit_try_parsec_70(+integer, +positive,  -integer)).
:- foreign(babel__implicit_try_parsec_71(+positive,  -integer)).
:- foreign(babel__implicit_try_parsec_72(+integer, +integer, +positive)).
:- foreign(babel__implicit_try_parsec_73(+integer, +positive)).
:- foreign(babel__implicit_try_parsec_74(+integer, +positive, +integer,  -positive)).
:- foreign(babel__implicit_try_parsec_75(+integer, +string,  -integer)).
:- foreign(babel__implicit_try_parsec_76(+integer, +integer, +integer,  -integer)).

try_parse(CONN, VOID) :- 


 MEM_63 is CONN,
BabelExp_92 is MEM_63,
babelPtrR(__CIL_TMP22, BabelExp_92, 8),
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is __CIL_TMP23 +1* 56,
IO_SSA_1 is __CIL_TMP24,
__CIL_TMP25 is CONN +1* 736,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_93 is __CIL_TMP26,
babelPtrR(__CIL_TMP27, BabelExp_93, 8),

(__CIL_TMP27 =:= 0 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
MEM_64 is IO_SSA_1,
BabelExp_94 is MEM_64,
babelPtrR(__CIL_TMP28, BabelExp_94, 8),
__CIL_TMP29 is IO_SSA_1 +1* 8,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_95 is __CIL_TMP30,
babelPtrR(__CIL_TMP31, BabelExp_95, 8),
babel__implicit_try_parsec_70(__CIL_TMP28, __CIL_TMP31 , TMP___4_SSA_1),
TMP___3_SSA_1 is TMP___4_SSA_1,
__CIL_TMP32 is CONN +1* 736,
__CIL_TMP33 is __CIL_TMP32,
BabelExp_96 is TMP___3_SSA_1,
babel_ptrE(__CIL_TMP33, BabelExp_96, 8),

(TMP___3_SSA_1 > 0 ,
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ->
__CIL_TMP34 is CONN +1* 736,
__CIL_TMP35 is __CIL_TMP34,
BabelExp_97 is __CIL_TMP35,
babelPtrR(__CIL_TMP36, BabelExp_97, 8),
babel__implicit_try_parsec_71(__CIL_TMP36 , TMP_SSA_1),
__CIL_TMP37 is CONN +1* 712,
__CIL_TMP38 is __CIL_TMP37,
BabelExp_98 is TMP_SSA_1,
babel_ptrE(__CIL_TMP38, BabelExp_98, 8),
__CIL_TMP39 is CONN +1* 712,
__CIL_TMP40 is __CIL_TMP39,
BabelExp_99 is __CIL_TMP40,
babelPtrR(__CIL_TMP41, BabelExp_99, 8),
MEM_65 is IO_SSA_1,
BabelExp_100 is MEM_65,
babelPtrR(__CIL_TMP42, BabelExp_100, 8),
__CIL_TMP43 is CONN +1* 736,
__CIL_TMP44 is __CIL_TMP43,
BabelExp_101 is __CIL_TMP44,
babelPtrR(__CIL_TMP45, BabelExp_101, 8),
babel__implicit_try_parsec_72(__CIL_TMP41, __CIL_TMP42, __CIL_TMP45),
__CIL_TMP46 is CONN +1* 736,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_102 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_102, 8),
babel__implicit_try_parsec_73(IO_SSA_1, __CIL_TMP48),
__CIL_TMP49 is CONN +1* 712,
__CIL_TMP50 is __CIL_TMP49,
__CIL_TMP51 is CONN +1* 736,
__CIL_TMP52 is __CIL_TMP51,
BabelExp_103 is __CIL_TMP52,
babelPtrR(__CIL_TMP53, BabelExp_103, 8),
__CIL_TMP54 is CONN +1* 8,
BabelExp_104 is __CIL_TMP50,
babelPtrR(__CIL_TMP55, BabelExp_104, 8),
babel__implicit_try_parsec_74(__CIL_TMP55, __CIL_TMP53, __CIL_TMP54 , TMP___0_SSA_1),
__CIL_TMP56 is CONN +1* 736,
__CIL_TMP57 is __CIL_TMP56,
BabelExp_105 is TMP___0_SSA_1,
babel_ptrE(__CIL_TMP57, BabelExp_105, 8),
__CIL_TMP58 is CONN +1* 736,
__CIL_TMP59 is __CIL_TMP58,
BabelExp_106 is __CIL_TMP59,
babelPtrR(__CIL_TMP60, BabelExp_106, 8),

(__CIL_TMP60 > 0 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ->
__CIL_TMP61 is CONN +1* 8,
babel__implicit_try_parsec_75(__CIL_TMP61, 'Content-Length' , TMP___1_SSA_1),
CL_HDR_SSA_1 is TMP___1_SSA_1,

(CL_HDR_SSA_1 =:= 0 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ->
__CIL_TMP62 is CONN +1* 728,
__CIL_TMP63 is __CIL_TMP62,
BabelExp_107 is 0,
babel_ptrE(__CIL_TMP63, BabelExp_107, 8)
; babel__implicit_try_parsec_76(CL_HDR_SSA_1, 0, 10 , TMP___2_SSA_1),
__CIL_TMP64 is CONN +1* 728,
__CIL_TMP65 is __CIL_TMP64,
BabelExp_108 is TMP___2_SSA_1,
babel_ptrE(__CIL_TMP65, BabelExp_108, 8)),
__CIL_TMP66 is CONN +1* 728,
__CIL_TMP67 is __CIL_TMP66,
BabelExp_109 is __CIL_TMP67,
babelPtrR(__CIL_TMP68, BabelExp_109, 8),
__CIL_TMP69 is CONN +1* 632,
__CIL_TMP70 is __CIL_TMP69,
BabelExp_110 is __CIL_TMP68,
babel_ptrE(__CIL_TMP70, BabelExp_110, 8)
; true)
; true)
; true),
true. 

 :- foreign(babel__implicit_call_http_client_handlerc_77(+integer, +integer,  -integer)).
:- foreign(babel__implicit_call_http_client_handlerc_78(+integer, +positive)).
:- foreign(babel__implicit_call_http_client_handlerc_79(+integer)).

call_http_client_handler(CONN, VOID) :- 


 __CIL_TMP10 is CONN +1* 728,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_111 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_111, 8),

(__CIL_TMP12 =:= 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
MEM_52 is CONN,
BabelExp_112 is MEM_52,
babelPtrR(__CIL_TMP13, BabelExp_112, 8),
__CIL_TMP14 is __CIL_TMP13,
__CIL_TMP15 is __CIL_TMP14 +1* 64,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is CONN +1* 632,
__CIL_TMP18 is __CIL_TMP17,
babelPtrR(BabelExp_113, __CIL_TMP16, 8),
babel_ptrE(__CIL_TMP18, BabelExp_113, 8)
; true),
MEM_53 is CONN,
BabelExp_114 is MEM_53,
babelPtrR(__CIL_TMP19, BabelExp_114, 8),
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is __CIL_TMP20 +1* 56,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is CONN +1* 624,
__CIL_TMP24 is __CIL_TMP23,
babelPtrR(BabelExp_115, __CIL_TMP22, 8),
babel_ptrE(__CIL_TMP24, BabelExp_115, 8),
babel__implicit_call_http_client_handlerc_77(CONN, 104 , TMP_SSA_1),

(TMP_SSA_1 =:= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
MEM_54 is CONN,
BabelExp_116 is MEM_54,
babelPtrR(__CIL_TMP25, BabelExp_116, 8),
__CIL_TMP26 is __CIL_TMP25,
__CIL_TMP27 is __CIL_TMP26 +1* 152,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_117 is 16,
__CIL_TMP29 is BabelExp_117,
BabelExp_118 is __CIL_TMP28,
babelPtrR(__CIL_TMP30, BabelExp_118, 4),
__CIL_TMP31 is __CIL_TMP29,
MEM_55 is CONN,
BabelExp_119 is MEM_55,
babelPtrR(__CIL_TMP32, BabelExp_119, 8),
__CIL_TMP33 is __CIL_TMP32,
__CIL_TMP34 is __CIL_TMP33 +1* 152,
__CIL_TMP35 is __CIL_TMP34,
BabelExp_120 is __CIL_TMP30 \/ __CIL_TMP31,
babel_ptrE(__CIL_TMP35, BabelExp_120, 4)
; true),
MEM_56 is CONN,
BabelExp_121 is MEM_56,
babelPtrR(__CIL_TMP36, BabelExp_121, 8),
__CIL_TMP37 is __CIL_TMP36,
__CIL_TMP38 is __CIL_TMP37 +1* 56,
__CIL_TMP39 is CONN +1* 632,
__CIL_TMP40 is __CIL_TMP39,
BabelExp_122 is __CIL_TMP40,
babelPtrR(__CIL_TMP41, BabelExp_122, 8),
babel__implicit_call_http_client_handlerc_78(__CIL_TMP38, __CIL_TMP41),
__CIL_TMP42 is CONN +1* 644,
__CIL_TMP43 is __CIL_TMP42,
BabelExp_123 is 0,
babel_ptrE(__CIL_TMP43, BabelExp_123, 4),
TMP___1_SSA_1 is 0,
__CIL_TMP44 is CONN +1* 736,
__CIL_TMP45 is __CIL_TMP44,
BabelExp_124 is TMP___1_SSA_1,
babel_ptrE(__CIL_TMP45, BabelExp_124, 8),
TMP___0_SSA_1 is TMP___1_SSA_1,
__CIL_TMP46 is CONN +1* 720,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_125 is TMP___0_SSA_1,
babel_ptrE(__CIL_TMP47, BabelExp_125, 8),
__CIL_TMP48 is CONN +1* 728,
__CIL_TMP49 is __CIL_TMP48,
BabelExp_126 is TMP___0_SSA_1,
babel_ptrE(__CIL_TMP49, BabelExp_126, 8),
__CIL_TMP50 is CONN +1* 712,
__CIL_TMP51 is __CIL_TMP50,
BabelExp_127 is __CIL_TMP51,
babelPtrR(__CIL_TMP52, BabelExp_127, 8),
babel__implicit_call_http_client_handlerc_79(__CIL_TMP52),
__CIL_TMP53 is CONN +1* 712,
__CIL_TMP54 is __CIL_TMP53,
BabelExp_128 is 0,
babel_ptrE(__CIL_TMP54, BabelExp_128, 8),true. 

 

:- foreign(babel__implicit_mg_connectc_0(+integer, +integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_mg_connectc_1(+integer, +positive,  -integer)).

mg_connect(__CIL_PP_MG_EV_HANDLER, SERVER, ADDR, BABEL_RET) :- 


 babel__implicit_mg_connectc_0(SERVER, ADDR, __CIL_PP_MG_EV_HANDLER, 0 , NSCONN_SSA_1),

(NSCONN_SSA_1 =:= 0 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ->
BABEL_RET is 0, true
; babel__implicit_mg_connectc_1(1, 744 , TMP_SSA_1),
CONN_SSA_1 is TMP_SSA_1,

(CONN_SSA_1 =:= 0 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
__CIL_TMP13 is NSCONN_SSA_1 +1* 152,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_0 is 16,
__CIL_TMP15 is BabelExp_0,
BabelExp_1 is __CIL_TMP14,
babelPtrR(__CIL_TMP16, BabelExp_1, 4),
__CIL_TMP17 is __CIL_TMP15,
__CIL_TMP18 is NSCONN_SSA_1 +1* 152,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_2 is __CIL_TMP16 \/ __CIL_TMP17,
babel_ptrE(__CIL_TMP19, BabelExp_2, 4),BABEL_RET is 0, true
; MEM_34 is CONN_SSA_1,
BabelExp_3 is NSCONN_SSA_1,
babel_ptrE(MEM_34, BabelExp_3, 8),
__CIL_TMP20 is NSCONN_SSA_1 +1* 120,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_4 is CONN_SSA_1,
babel_ptrE(__CIL_TMP21, BabelExp_4, 8),
__CIL_TMP22 is CONN_SSA_1 +1* 680,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_5 is SERVER,
babel_ptrE(__CIL_TMP23, BabelExp_5, 8),
__CIL_TMP24 is CONN_SSA_1 +1* 696,
__CIL_TMP25 is __CIL_TMP24,
BabelExp_6 is 5,
babel_ptrE(__CIL_TMP25, BabelExp_6, 4),
__CIL_TMP26 is SERVER +1* 24,
__CIL_TMP27 is __CIL_TMP26,
__CIL_TMP28 is CONN_SSA_1 +1* 656,
__CIL_TMP29 is __CIL_TMP28,
babelPtrR(BabelExp_7, __CIL_TMP27, 8),
babel_ptrE(__CIL_TMP29, BabelExp_7, 8),
BabelExp_8 is 8,
__CIL_TMP30 is BabelExp_8,
MEM_35 is CONN_SSA_1,
BabelExp_9 is MEM_35,
babelPtrR(__CIL_TMP31, BabelExp_9, 8),
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32 +1* 152,
__CIL_TMP34 is __CIL_TMP33,
BabelExp_10 is __CIL_TMP30,
babel_ptrE(__CIL_TMP34, BabelExp_10, 4),
__CIL_TMP35 is CONN_SSA_1 +1* 8,
__CIL_TMP12 is __CIL_TMP35,BABEL_RET is __CIL_TMP12, true)). 

 :- foreign(babel__implicit_log_headerc_2(+integer, +integer,  -integer)).
:- foreign(babel__implicit_log_headerc_3(+integer, +integer, +string)).
:- foreign(babel__implicit_log_headerc_4(+integer, +integer, +integer)).

log_header(CONN, HEADER___0, FP, VOID) :- 


 babel__implicit_log_headerc_2(CONN, HEADER___0 , HEADER_VALUE_SSA_1),

(HEADER_VALUE_SSA_1 =:= 0 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
babel__implicit_log_headerc_3(FP, '%S', ' -')
; babel__implicit_log_headerc_4(FP, ' \'%S\'', HEADER_VALUE_SSA_1)),
true. 

 :- foreign(babel__implicit_log_accessc_5(+integer, +integer,  -integer)).
:- foreign(babel__implicit_log_accessc_6(+integer,  -integer)).
:- foreign(babel__implicit_log_accessc_7(+integer,  -integer)).
:- foreign(babel__implicit_log_accessc_8(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_log_accessc_9(+integer)).
:- foreign(babel__implicit_log_accessc_10(+integer, +string,  -integer)).
:- foreign(babel__implicit_log_accessc_11(+integer, +string, +integer, +integer)).
:- foreign(babel__implicit_log_accessc_12(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_log_accessc_13(+integer, +string, +integer)).
:- foreign(babel__implicit_log_accessc_14(+integer, +string, +integer)).
:- foreign(babel__implicit_log_accessc_15(+integer, +integer)).
:- foreign(babel__implicit_log_accessc_16(+integer)).
:- foreign(babel__implicit_log_accessc_17(+integer)).
:- foreign(babel__implicit_log_accessc_18(+integer)).
:- foreign(babel__implicit_log_accessc_19(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_log_accessc_20(+integer, +string, +integer)).
:- foreign(babel__implicit_log_accessc_21(+integer, +string, +integer)).
:- foreign(babel__implicit_log_accessc_22(+integer, +integer)).
:- foreign(babel__implicit_log_accessc_23(+integer)).
:- foreign(babel__implicit_log_accessc_24(+integer)).
:- foreign(babel__implicit_log_accessc_25(+integer)).

log_access(__CIL_PP_NOW, __CIL_FP_NOW, CONN, PATH, DATE, USER, C) :- 
__CIL_TMP42 is CONN +1* 8,
C_SSA_1 is __CIL_TMP42,

(PATH =:= 0 ,
__CIL_TMP31 is 1
; __CIL_TMP31 is 0),

(__CIL_TMP31 \= 0 ->
TMP___0_SSA_1 is 0
; babel__implicit_log_accessc_5(PATH, 'A+' , TMP_SSA_1),
TMP___0_SSA_1 is TMP_SSA_1),
FP_SSA_1 is TMP___0_SSA_1,

(FP_SSA_1 =:= 0 ,
__CIL_TMP32 is 1
; __CIL_TMP32 is 0),

(__CIL_TMP32 \= 0 ->
true
; babel__implicit_log_accessc_6(0 , NOW_SSA_1),
BabelExp_11 is NOW_SSA_1,
babel_ptrE(__CIL_FP_NOW, BabelExp_11, 8),
babel__implicit_log_accessc_7(__CIL_PP_NOW , TMP___1_SSA_1),
BabelExp_12 is DATE,
__CIL_TMP43 is BabelExp_12,
babel__implicit_log_accessc_8(__CIL_TMP43, 64, '%D/%B/%Y:%H:%M:%S %Z', TMP___1_SSA_1),
babel__implicit_log_accessc_9(FP_SSA_1),
__CIL_TMP44 is CONN +1* 8,
babel__implicit_log_accessc_10(__CIL_TMP44, 'Authorization' , TMP___2_SSA_1),
BabelExp_13 is USER,
__CIL_TMP45 is BabelExp_13,
babel__implicit_log_accessc_11(TMP___2_SSA_1, 'username', __CIL_TMP45, 100),
__CIL_TMP46 is C_SSA_1 +1* 24,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_14 is __CIL_TMP47,
babelPtrR(__CIL_TMP33, BabelExp_14, 8),
(__CIL_TMP33 \= 0 ->
__CIL_TMP48 is C_SSA_1 +1* 24,
__CIL_TMP49 is __CIL_TMP48,
BabelExp_15 is __CIL_TMP49,
babelPtrR(TMP___3_SSA_1, BabelExp_15, 8)
; babelAssignStr(TMP___3_SSA_1, '')),
__CIL_TMP50 is C_SSA_1 +1* 24,
__CIL_TMP51 is __CIL_TMP50,
BabelExp_16 is __CIL_TMP51,
babelPtrR(__CIL_TMP34, BabelExp_16, 8),
(__CIL_TMP34 \= 0 ->
babelAssignStr(TMP___4_SSA_1, '?')
; babelAssignStr(TMP___4_SSA_1, '')),
__CIL_TMP52 is C_SSA_1 +1* 8,
__CIL_TMP53 is __CIL_TMP52,
BabelExp_17 is __CIL_TMP53,
babelPtrR(__CIL_TMP35, BabelExp_17, 8),
(__CIL_TMP35 \= 0 ->
__CIL_TMP54 is C_SSA_1 +1* 8,
__CIL_TMP55 is __CIL_TMP54,
BabelExp_18 is __CIL_TMP55,
babelPtrR(TMP___5_SSA_1, BabelExp_18, 8)
; babelAssignStr(TMP___5_SSA_1, '-')),
MEM_80 is C_SSA_1,
BabelExp_19 is MEM_80,
babelPtrR(__CIL_TMP36, BabelExp_19, 8),
(__CIL_TMP36 \= 0 ->
MEM_81 is C_SSA_1,
BabelExp_20 is MEM_81,
babelPtrR(TMP___6_SSA_1, BabelExp_20, 8)
; babelAssignStr(TMP___6_SSA_1, '-')),
babelArrayR(__CIL_TMP56, user, 0),
__CIL_TMP57 is __CIL_TMP56,

(__CIL_TMP57 =:= 0 ,
__CIL_TMP37 is 1
; __CIL_TMP37 is 0),

(__CIL_TMP37 \= 0 ->
babelAssignStr(TMP___7_SSA_1, '-')
; BabelExp_21 is USER,
__CIL_TMP58 is BabelExp_21,
TMP___7_SSA_1 is __CIL_TMP58),
__CIL_TMP59 is C_SSA_1 +1* 32,
__CIL_TMP60 is __CIL_TMP59,
__CIL_TMP61 is C_SSA_1 +1* 16,
__CIL_TMP62 is __CIL_TMP61,
__CIL_TMP63 is C_SSA_1 +1* 636,
__CIL_TMP64 is __CIL_TMP63,
__CIL_TMP65 is __CIL_TMP60,
BabelExp_22 is DATE,
__CIL_TMP66 is BabelExp_22,
BabelExp_23 is __CIL_TMP62,
babelPtrR(__CIL_TMP67, BabelExp_23, 8),
BabelExp_24 is __CIL_TMP64,
babelPtrR(__CIL_TMP68, BabelExp_24, 4),
babel__implicit_log_accessc_12(FP_SSA_1, '%S - %S [%S] \'%S %S%S%S HTTP/%S\' %D 0', __CIL_TMP65, TMP___7_SSA_1, __CIL_TMP66, TMP___6_SSA_1, TMP___5_SSA_1, TMP___4_SSA_1, TMP___3_SSA_1, __CIL_TMP67, __CIL_TMP68),
babel__implicit_log_accessc_13(C_SSA_1, 'Referer', FP_SSA_1),
babel__implicit_log_accessc_14(C_SSA_1, 'User-Agent', FP_SSA_1),
babel__implicit_log_accessc_15(10, FP_SSA_1),
babel__implicit_log_accessc_16(FP_SSA_1),
babel__implicit_log_accessc_17(FP_SSA_1),
babel__implicit_log_accessc_18(FP_SSA_1),true),
__CIL_TMP69 is C +1* 24,
__CIL_TMP70 is __CIL_TMP69,
BabelExp_25 is __CIL_TMP70,
babelPtrR(__CIL_TMP38, BabelExp_25, 8),
(__CIL_TMP38 \= 0 ->
babelAssignStr(TMP___4_SSA_1, '?')
; babelAssignStr(TMP___4_SSA_1, '')),
__CIL_TMP71 is C +1* 8,
__CIL_TMP72 is __CIL_TMP71,
BabelExp_26 is __CIL_TMP72,
babelPtrR(__CIL_TMP39, BabelExp_26, 8),
(__CIL_TMP39 \= 0 ->
__CIL_TMP73 is C +1* 8,
__CIL_TMP74 is __CIL_TMP73,
BabelExp_27 is __CIL_TMP74,
babelPtrR(TMP___5_SSA_1, BabelExp_27, 8)
; babelAssignStr(TMP___5_SSA_1, '-')),
MEM_82 is C,
BabelExp_28 is MEM_82,
babelPtrR(__CIL_TMP40, BabelExp_28, 8),
(__CIL_TMP40 \= 0 ->
MEM_83 is C,
BabelExp_29 is MEM_83,
babelPtrR(TMP___6_SSA_1, BabelExp_29, 8)
; babelAssignStr(TMP___6_SSA_1, '-')),
babelArrayR(__CIL_TMP75, user, 0),
__CIL_TMP76 is __CIL_TMP75,

(__CIL_TMP76 =:= 0 ,
__CIL_TMP41 is 1
; __CIL_TMP41 is 0),

(__CIL_TMP41 \= 0 ->
babelAssignStr(TMP___7_SSA_1, '-')
; BabelExp_30 is USER,
__CIL_TMP77 is BabelExp_30,
TMP___7_SSA_1 is __CIL_TMP77),
__CIL_TMP78 is C +1* 32,
__CIL_TMP79 is __CIL_TMP78,
__CIL_TMP80 is C +1* 16,
__CIL_TMP81 is __CIL_TMP80,
__CIL_TMP82 is C +1* 636,
__CIL_TMP83 is __CIL_TMP82,
__CIL_TMP84 is __CIL_TMP79,
BabelExp_31 is DATE,
__CIL_TMP85 is BabelExp_31,
BabelExp_32 is __CIL_TMP81,
babelPtrR(__CIL_TMP86, BabelExp_32, 8),
BabelExp_33 is __CIL_TMP83,
babelPtrR(__CIL_TMP87, BabelExp_33, 4),
babel__implicit_log_accessc_19(FP, '%S - %S [%S] \'%S %S%S%S HTTP/%S\' %D 0', __CIL_TMP84, TMP___7_SSA_1, __CIL_TMP85, TMP___6_SSA_1, TMP___5_SSA_1, TMP___4_SSA_1, TMP___3, __CIL_TMP86, __CIL_TMP87),
babel__implicit_log_accessc_20(C, 'Referer', FP),
babel__implicit_log_accessc_21(C, 'User-Agent', FP),
babel__implicit_log_accessc_22(10, FP),
babel__implicit_log_accessc_23(FP),
babel__implicit_log_accessc_24(FP),
babel__implicit_log_accessc_25(FP),true. 

 :- foreign(babel__implicit_mg_poll_serverc_26(+integer, +integer,  -integer)).

mg_poll_server(SERVER, MILLISECONDS, BABEL_RET) :- 


 babel__implicit_mg_poll_serverc_26(SERVER, MILLISECONDS , TMP_SSA_1),BABEL_RET is TMP_SSA_1, true. 

 :- foreign(babel__implicit_mg_destroy_serverc_27(+integer)).
:- foreign(babel__implicit_mg_destroy_serverc_28(+integer, +integer, +integer)).
:- foreign(babel__implicit_mg_destroy_serverc_29(+integer)).

mg_destroy_server(__CIL_PP_SERVER, __CIL_PP_S, __CIL_FP_SERVER, __CIL_FP_S, SERVER, VOID) :- 


 (SERVER \= 0 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
BabelExp_34 is SERVER,
babelPtrR(__CIL_TMP14, BabelExp_34, 8),
__CIL_TMP15 is __CIL_TMP14,

(__CIL_TMP15 \= 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
BabelExp_35 is SERVER,
babelPtrR(S_SSA_1, BabelExp_35, 8),
babel__implicit_mg_destroy_serverc_27(S_SSA_1),
I_SSA_1 is 0,
BabelExp_36 is SERVER,
babel_ptrE(__CIL_FP_SERVER, BabelExp_36, 8),
BabelExp_37 is S_SSA_1,
babel_ptrE(__CIL_FP_S, BabelExp_37, 8),
babel__implicit_mg_destroy_serverc_28(__CIL_PP_SERVER, __CIL_PP_S, I_SSA_1),
BabelExp_38 is __CIL_FP_SERVER,
babelPtrR(SERVER_SSA_1, BabelExp_38, 8),
BabelExp_39 is __CIL_FP_S,
babelPtrR(S_SSA_2, BabelExp_39, 8),
babel__implicit_mg_destroy_serverc_29(S_SSA_2),
BabelExp_40 is 0,
babel_ptrE(SERVER_SSA_1, BabelExp_40, 8)
; true)
; true),
true. 

 :- foreign(babel__implicit_mg_nextc_30(+integer, +integer,  -integer)).

mg_next(S, C, BABEL_RET) :- 


 (C =:= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
TMP_SSA_1 is 0
; BabelExp_41 is 0 + 8,
__CIL_TMP13 is BabelExp_41,
__CIL_TMP14 is __CIL_TMP13,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_42 is C - __CIL_TMP15,
__CIL_TMP16 is BabelExp_42,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_43 is __CIL_TMP18,
babelPtrR(TMP_SSA_1, BabelExp_43, 8)),
babel__implicit_mg_nextc_30(S, TMP_SSA_1 , TMP___0_SSA_1),
NC_SSA_1 is TMP___0_SSA_1,

(NC_SSA_1 \= 0 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ->
__CIL_TMP19 is NC_SSA_1 +1* 120,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_44 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_44, 8),
__CIL_TMP22 is __CIL_TMP21,

(__CIL_TMP22 \= 0 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
__CIL_TMP23 is NC_SSA_1 +1* 120,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_45 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_45, 8),
__CIL_TMP26 is __CIL_TMP25,
__CIL_TMP27 is __CIL_TMP26 +1* 8,
__CIL_TMP12 is __CIL_TMP27,BABEL_RET is __CIL_TMP12, true
; BABEL_RET is 0, true)
; BABEL_RET is 0, true). 

 :- foreign(babel__implicit_mg_get_varc_31(+integer,  -positive)).
:- foreign(babel__implicit_mg_get_varc_32(+integer, +positive, +integer, +integer, +positive,  -integer)).
:- foreign(babel__implicit_mg_get_varc_33(+integer, +positive, +integer, +integer, +positive,  -integer)).

mg_get_var(CONN, NAME, DST, DST_LEN, BABEL_RET) :- 


 __CIL_TMP16 is CONN +1* 24,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_46 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_46, 8),
__CIL_TMP19 is __CIL_TMP18,

(__CIL_TMP19 =:= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
TMP___0_SSA_1 is 0
; __CIL_TMP20 is CONN +1* 24,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_47 is __CIL_TMP21,
babelPtrR(__CIL_TMP22, BabelExp_47, 8),
babel__implicit_mg_get_varc_31(__CIL_TMP22 , TMP_SSA_1),
TMP___0_SSA_1 is TMP_SSA_1),
__CIL_TMP23 is CONN +1* 24,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_48 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_48, 8),
babel__implicit_mg_get_varc_32(__CIL_TMP25, TMP___0_SSA_1, NAME, DST, DST_LEN , TMP___1_SSA_1),
LEN_SSA_1 is TMP___1_SSA_1,

(LEN_SSA_1 < 0 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
__CIL_TMP26 is CONN +1* 616,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_49 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_49, 8),
__CIL_TMP29 is CONN +1* 624,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_50 is __CIL_TMP30,
babelPtrR(__CIL_TMP31, BabelExp_50, 8),
babel__implicit_mg_get_varc_33(__CIL_TMP28, __CIL_TMP31, NAME, DST, DST_LEN , LEN_SSA_2)
; LEN_SSA_2 is LEN_SSA_1),
BABEL_RET is LEN_SSA_2, true. 

 :- foreign(babel__implicit_get_line_lenc_34(+integer, +integer, +integer)).

get_line_len(__CIL_PP_BUF, __CIL_PP_LEN, __CIL_FP_BUF, __CIL_FP_LEN, BUF, BUF_LEN, BABEL_RET) :- 


 LEN_SSA_1 is 0,
BabelExp_51 is BUF,
babel_ptrE(__CIL_FP_BUF, BabelExp_51, 8),
BabelExp_52 is LEN_SSA_1,
babel_ptrE(__CIL_FP_LEN, BabelExp_52, 4),
babel__implicit_get_line_lenc_34(__CIL_PP_BUF, __CIL_PP_LEN, BUF_LEN),
BabelExp_53 is __CIL_FP_BUF,
babelPtrR(BUF_SSA_1, BabelExp_53, 8),
BabelExp_54 is __CIL_FP_LEN,
babelPtrR(LEN_SSA_2, BabelExp_54, 4),
__CIL_TMP14 is BUF_SSA_1 +1* LEN_SSA_2,
BabelExp_55 is __CIL_TMP14,
babelPtrR_byte(__CIL_TMP15, BabelExp_55, 1),
__CIL_TMP16 is __CIL_TMP15,

(__CIL_TMP16 =:= 10 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
BabelExp_56 is LEN_SSA_2 + 1,
TMP_SSA_1 is BabelExp_56
; TMP_SSA_1 is -1),
BABEL_RET is TMP_SSA_1, true. 

 :- foreign(babel__implicit_mg_parse_multipartc_35(+integer, +positive,  -integer)).
:- foreign(babel__implicit_mg_parse_multipartc_36(+integer, +integer,  -integer)).
:- foreign(babel__implicit_mg_parse_multipartc_37(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_mg_parse_multipartc_38(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer,  -integer)).

mg_parse_multipart(__CIL_PP_BUF, __CIL_PP_BUF_LEN, __CIL_PP_DATA, __CIL_PP_DATA_LEN, __CIL_PP_HL, __CIL_PP_BL, __CIL_PP___CIL_RET18, __CIL_FP_BUF, __CIL_FP_BUF_LEN, __CIL_FP_DATA, __CIL_FP_DATA_LEN, __CIL_FP_HL, __CIL_FP_BL, __CIL_FP___CIL_RET18, BUF, BUF_LEN, VAR_NAME, VAR_NAME_LEN, FILE_NAME, FILE_NAME_LEN, DATA, DATA_LEN, BABEL_RET) :- 


 BabelExp_57 is 21,
__CIL_TMP54 is BabelExp_57,
CDL_SSA_1 is __CIL_TMP54,

(BUF =:= 0 ,
__CIL_TMP48 is 1
; __CIL_TMP48 is 0),

(__CIL_TMP48 \= 0 ->
BABEL_RET is 0, true
; (BUF_LEN =< 0 ,
__CIL_TMP49 is 1
; __CIL_TMP49 is 0),

(__CIL_TMP49 \= 0 ->
BABEL_RET is 0, true
; babel__implicit_mg_parse_multipartc_35(BUF, BUF_LEN , HL_SSA_1),

(HL_SSA_1 =< 0 ,
__CIL_TMP50 is 1
; __CIL_TMP50 is 0),

(__CIL_TMP50 \= 0 ->
BABEL_RET is 0, true
; __CIL_TMP55 is BUF +1* 0,
BabelExp_58 is __CIL_TMP55,
babelPtrR_byte(__CIL_TMP56, BabelExp_58, 1),
__CIL_TMP57 is __CIL_TMP56,

(__CIL_TMP57 \= 45 ,
__CIL_TMP51 is 1
; __CIL_TMP51 is 0),

(__CIL_TMP51 \= 0 ->
BABEL_RET is 0, true
; __CIL_TMP58 is BUF +1* 1,
BabelExp_59 is __CIL_TMP58,
babelPtrR_byte(__CIL_TMP59, BabelExp_59, 1),
__CIL_TMP60 is __CIL_TMP59,

(__CIL_TMP60 \= 45 ,
__CIL_TMP52 is 1
; __CIL_TMP52 is 0),

(__CIL_TMP52 \= 0 ->
BABEL_RET is 0, true
; __CIL_TMP61 is BUF +1* 2,
BabelExp_60 is __CIL_TMP61,
babelPtrR_byte(__CIL_TMP62, BabelExp_60, 1),
__CIL_TMP63 is __CIL_TMP62,

(__CIL_TMP63 =:= 10 ,
__CIL_TMP53 is 1
; __CIL_TMP53 is 0),

(__CIL_TMP53 \= 0 ->
BABEL_RET is 0, true
; babel__implicit_mg_parse_multipartc_36(BUF, BUF_LEN , BL_SSA_1),
TMP_SSA_1 is 0,
__CIL_TMP64 is FILE_NAME +1* 0,
BabelExp_61 is TMP_SSA_1,
babel_ptrE(__CIL_TMP64, BabelExp_61, 1),
__CIL_TMP65 is VAR_NAME +1* 0,
BabelExp_62 is TMP_SSA_1,
babel_ptrE(__CIL_TMP65, BabelExp_62, 1),
N___0_SSA_1 is BL_SSA_1,
BabelExp_63 is BUF,
babel_ptrE(__CIL_FP_BUF, BabelExp_63, 8),
BabelExp_64 is BUF_LEN,
babel_ptrE(__CIL_FP_BUF_LEN, BabelExp_64, 4),
BabelExp_65 is DATA,
babel_ptrE(__CIL_FP_DATA, BabelExp_65, 8),
BabelExp_66 is DATA_LEN,
babel_ptrE(__CIL_FP_DATA_LEN, BabelExp_66, 8),
BabelExp_67 is HL_SSA_1,
babel_ptrE(__CIL_FP_HL, BabelExp_67, 4),
BabelExp_68 is BL_SSA_1,
babel_ptrE(__CIL_FP_BL, BabelExp_68, 4),
babel__implicit_mg_parse_multipartc_37(__CIL_PP_BUF, __CIL_PP_BUF_LEN, __CIL_PP_DATA, __CIL_PP_DATA_LEN, __CIL_PP_HL, __CIL_PP_BL, VAR_NAME, VAR_NAME_LEN, FILE_NAME, FILE_NAME_LEN, N___0_SSA_1, CDL_SSA_1),
BabelExp_69 is __CIL_FP_BUF,
babelPtrR(BUF_SSA_1, BabelExp_69, 8),
BabelExp_70 is __CIL_FP_BUF_LEN,
babelPtrR(BUF_LEN_SSA_1, BabelExp_70, 4),
BabelExp_71 is __CIL_FP_DATA,
babelPtrR(DATA_SSA_1, BabelExp_71, 8),
BabelExp_72 is __CIL_FP_DATA_LEN,
babelPtrR(DATA_LEN_SSA_1, BabelExp_72, 8),
BabelExp_73 is __CIL_FP_HL,
babelPtrR(HL_SSA_2, BabelExp_73, 4),
BabelExp_74 is __CIL_FP_BL,
babelPtrR(BL_SSA_2, BabelExp_74, 4),
POS_SSA_1 is HL_SSA_2,
__CIL_RET18 is 1,
BabelExp_75 is __CIL_RET18,
babel_ptrE(__CIL_FP___CIL_RET18, BabelExp_75, 4),
babel__implicit_mg_parse_multipartc_38(__CIL_PP___CIL_RET18, BUF_SSA_1, BUF_LEN_SSA_1, DATA_SSA_1, DATA_LEN_SSA_1, HL_SSA_2, BL_SSA_2, POS_SSA_1 , RETFLAG19_SSA_1),
BabelExp_76 is __CIL_FP___CIL_RET18,
babelPtrR(__CIL_RET18_SSA_1, BabelExp_76, 4),
(RETFLAG19_SSA_1 \= 0 ->
BABEL_RET is __CIL_RET18_SSA_1, true
; BABEL_RET is 0, true))))))). 

 :- foreign(babel__implicit_mg_copy_listenersc_39(+integer, +integer,  -integer)).
:- foreign(babel__implicit_mg_copy_listenersc_40(+integer, +integer, +integer)).

mg_copy_listeners(S, TO, VOID) :- 


 babel__implicit_mg_copy_listenersc_39(S, 0 , C_SSA_1),
babel__implicit_mg_copy_listenersc_40(S, TO, C_SSA_1),true. 

 :- foreign(babel__implicit_get_option_indexc_41(+integer, +integer, +integer,  -integer)).

get_option_index(__CIL_PP___CIL_RET4, __CIL_FP___CIL_RET4, NAME, BABEL_RET) :- 


I_SSA_1 is 0,
__CIL_RET4 is 1,
BabelExp_77 is __CIL_RET4,
babel_ptrE(__CIL_FP___CIL_RET4, BabelExp_77, 4),
babel__implicit_get_option_indexc_41(__CIL_PP___CIL_RET4, NAME, I_SSA_1 , RETFLAG5_SSA_1),
BabelExp_78 is __CIL_FP___CIL_RET4,
babelPtrR(__CIL_RET4_SSA_1, BabelExp_78, 4),
(RETFLAG5_SSA_1 \= 0 ->
BABEL_RET is __CIL_RET4_SSA_1, true
; BABEL_RET is -1, true). 

 :- foreign(babel__implicit_set_default_option_valuesc_42( -integer)).
:- foreign(babel__implicit_set_default_option_valuesc_43(+integer, +integer, +integer)).

set_default_option_values(OPTS, VOID) :- 


 babel__implicit_set_default_option_valuesc_42(TMP_SSA_1),
ALL_OPTS_SSA_1 is TMP_SSA_1,
I_SSA_1 is 0,
babel__implicit_set_default_option_valuesc_43(OPTS, ALL_OPTS_SSA_1, I_SSA_1),true. 

 :- foreign(babel__implicit_set_ipsc_44(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_set_ipsc_45(+integer, +integer, +integer, +integer)).

set_ips(NC, IS_REM, BUF) :- 

__CIL_TMP14 is NC +1* 120,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_79 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_79, 8),
CONN_SSA_1 is __CIL_TMP16,
__CIL_TMP17 is CONN_SSA_1 +1* 8,
C_SSA_1 is __CIL_TMP17,
(IS_REM \= 0 ->
TMP_SSA_1 is 7
; TMP_SSA_1 is 3),
__CIL_TMP18 is NC +1* 32,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_80 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_80, 4),
BabelExp_81 is BUF,
__CIL_TMP21 is BabelExp_81,
babel__implicit_set_ipsc_44(__CIL_TMP20, __CIL_TMP21, 100, TMP_SSA_1),
(IS_REM \= 0 ->
__CIL_TMP22 is C_SSA_1 +1* 128,
TMP___0_SSA_1 is __CIL_TMP22
; __CIL_TMP23 is C_SSA_1 +1* 130,
TMP___0_SSA_1 is __CIL_TMP23),

(IS_REM \= 0 ->
__CIL_TMP24 is C_SSA_1 +1* 32,
__CIL_TMP25 is __CIL_TMP24,
TMP___1_SSA_1 is __CIL_TMP25
; __CIL_TMP26 is C_SSA_1 +1* 80,
__CIL_TMP27 is __CIL_TMP26,
TMP___1_SSA_1 is __CIL_TMP27),
BabelExp_82 is BUF,
__CIL_TMP28 is BabelExp_82,
babel__implicit_set_ipsc_45(__CIL_TMP28, '%47[^:]:%HU', TMP___1_SSA_1, TMP___0_SSA_1),true. 

 :- foreign(babel__implicit_process_udpc_46(+integer, +integer, +integer)).
:- foreign(babel__implicit_process_udpc_47(+integer, +positive, +integer,  -positive)).
:- foreign(babel__implicit_process_udpc_48(+integer)).

process_udp(__CIL_PP_CONN, NC, VOID) :- 


 __CIL_TMP8 is NC +1* 56,
IO_SSA_1 is __CIL_TMP8,
babel__implicit_process_udpc_46(__CIL_PP_CONN, 0, 744),
MEM_19 is __CIL_PP_CONN,
BabelExp_83 is NC,
babel_ptrE(MEM_19, BabelExp_83, 8),
__CIL_TMP9 is NC +1* 24,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_84 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_84, 8),
__CIL_TMP12 is __CIL_PP_CONN +1* 680,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_85 is __CIL_TMP11,
babel_ptrE(__CIL_TMP13, BabelExp_85, 8),
__CIL_TMP14 is IO_SSA_1 +1* 8,
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_PP_CONN +1* 8,
MEM_20 is IO_SSA_1,
BabelExp_86 is MEM_20,
babelPtrR(__CIL_TMP17, BabelExp_86, 8),
BabelExp_87 is __CIL_TMP15,
babelPtrR(__CIL_TMP18, BabelExp_87, 8),
babel__implicit_process_udpc_47(__CIL_TMP17, __CIL_TMP18, __CIL_TMP16 , TMP_SSA_1),
__CIL_TMP19 is __CIL_PP_CONN +1* 736,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_88 is TMP_SSA_1,
babel_ptrE(__CIL_TMP20, BabelExp_88, 8),
babel__implicit_process_udpc_48(__CIL_PP_CONN),true. 

 :- foreign(babel__implicit_mg_wakeup_serverc_49(+integer, +integer, +integer, +positive)).

mg_wakeup_server(SERVER, VOID) :- 


 babel__implicit_mg_wakeup_serverc_49(SERVER, 0, '', 0),true. 

 :- foreign(babel__implicit_mg_get_optionc_50(+integer,  -integer)).

mg_get_option(SERVER, NAME, BABEL_RET) :- 


 __CIL_TMP15 is SERVER +1* 56,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16,
OPTS_SSA_1 is __CIL_TMP17,
babel__implicit_mg_get_optionc_50(NAME , TMP_SSA_1),
I_SSA_1 is TMP_SSA_1,

(I_SSA_1 =:= -1 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
TMP___1_SSA_1 is 0
; __CIL_TMP18 is OPTS_SSA_1 +8* I_SSA_1,
BabelExp_89 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_89, 8),
__CIL_TMP20 is __CIL_TMP19,

(__CIL_TMP20 =:= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
babelAssignStr(TMP___0_SSA_1, '')
; __CIL_TMP21 is OPTS_SSA_1 +8* I_SSA_1,
BabelExp_90 is __CIL_TMP21,
babelPtrR(TMP___0_SSA_1, BabelExp_90, 8)),
TMP___1_SSA_1 is TMP___0_SSA_1),
BABEL_RET is TMP___1_SSA_1, true. 

 :- foreign(babel__implicit_mg_create_serverc_51(+integer, +positive,  -integer)).
:- foreign(babel__implicit_mg_create_serverc_52(+integer, +integer)).
:- foreign(babel__implicit_mg_create_serverc_53(+integer)).

mg_create_server(SERVER_DATA, HANDLER, BABEL_RET) :- 


 babel__implicit_mg_create_serverc_51(1, 208 , TMP_SSA_1),
SERVER_SSA_1 is TMP_SSA_1,
babel__implicit_mg_create_serverc_52(SERVER_SSA_1, SERVER_DATA),
__CIL_TMP7 is SERVER_SSA_1 +1* 56,
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is __CIL_TMP8,
babel__implicit_mg_create_serverc_53(__CIL_TMP9),
__CIL_TMP10 is SERVER_SSA_1 +1* 48,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_91 is HANDLER,
babel_ptrE(__CIL_TMP11, BabelExp_91, 8),BABEL_RET is SERVER_SSA_1, true. 

 
:- foreign(babel__implicit_mg_copy_listeners_cil_lr_1c_0(+integer, -integer)).
:- foreign(babel__implicit_mg_copy_listeners_cil_lr_1c_1(+integer, +integer, +integer)).
:- foreign(babel__implicit_mg_copy_listeners_cil_lr_1c_2(+integer, +integer)).
:- foreign(babel__implicit_mg_copy_listeners_cil_lr_1c_3(+integer, +integer,  -integer)).
:- foreign(babel__implicit_mg_copy_listeners_cil_lr_1c_5(+integer, +integer,  -integer)).

mg_copy_listeners_cil_lr_1(S, TO, C, VOID) :- 


 (C \= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
__CIL_TMP12 is C +1* 152,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_0 is 128,
__CIL_TMP14 is BabelExp_0,
BabelExp_1 is __CIL_TMP13,
babelPtrR(__CIL_TMP15, BabelExp_1, 4),
__CIL_TMP16 is __CIL_TMP14,
BabelExp_2 is __CIL_TMP15 /\ __CIL_TMP16,
__CIL_TMP10 is BabelExp_2,
(__CIL_TMP10 \= 0 ->
babel__implicit_mg_copy_listeners_cil_lr_1c_0(160 , TMP___0_SSA_1),
TMP_SSA_1 is TMP___0_SSA_1,

(TMP_SSA_1 \= 0 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
babel__implicit_mg_copy_listeners_cil_lr_1c_1(TMP_SSA_1, C, 160),
__CIL_TMP17 is TMP_SSA_1 +1* 24,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_3 is TO,
babel_ptrE(__CIL_TMP18, BabelExp_3, 8),
__CIL_TMP19 is TMP_SSA_1 +1* 24,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_4 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_4, 8),
babel__implicit_mg_copy_listeners_cil_lr_1c_2(__CIL_TMP21, TMP_SSA_1)
; true)
; true),
babel__implicit_mg_copy_listeners_cil_lr_1c_3(S, C , C_SSA_1),
mg_copy_listeners_cil_lr_1(S, TO, C_SSA_1, VOID),true
; true),
babel__implicit_mg_copy_listeners_cil_lr_1c_5(S, C , C_SSA_1),
mg_copy_listeners_cil_lr_1(S, TO, C_SSA_1, VOID),true. 

 :- foreign(babel__implicit_mg_parse_multipart_cil_lr_2c_7(+integer, +integer, +positive,  -integer)).

mg_parse_multipart_cil_lr_2(__CIL_AP___CIL_RET18, BUF, BUF_LEN, DATA, DATA_LEN, HL, BL, POS, BABEL_RET) :- 


 BabelExp_5 is BL - 2,
__CIL_TMP18 is BabelExp_5,
BabelExp_6 is POS + __CIL_TMP18,
__CIL_TMP19 is BabelExp_6,

(__CIL_TMP19 < BUF_LEN ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
__CIL_TMP20 is BUF +1* POS,
BabelExp_7 is __CIL_TMP20,
babelPtrR_byte(__CIL_TMP21, BabelExp_7, 1),
__CIL_TMP22 is __CIL_TMP21,

(__CIL_TMP22 =:= 45 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
__CIL_TMP23 is BUF +1* POS,
BabelExp_8 is BL - 2,
__CIL_TMP24 is BabelExp_8,
babel__implicit_mg_parse_multipart_cil_lr_2c_7(BUF, __CIL_TMP23, __CIL_TMP24 , TMP___1_SSA_1),
(TMP___1_SSA_1 \= 0 ->
BabelExp_9 is POS + 1,
POS_SSA_1 is BabelExp_9,
mg_parse_multipart_cil_lr_2(__CIL_AP___CIL_RET18, BUF, BUF_LEN, DATA, DATA_LEN, HL, BL, POS_SSA_1 , RETFLAG10_SSA_1),BABEL_RET is RETFLAG10_SSA_1, true
; (DATA_LEN \= 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
BabelExp_10 is POS - 2,
__CIL_TMP25 is BabelExp_10,
BabelExp_11 is __CIL_TMP25 - HL,
babel_ptrE(DATA_LEN, BabelExp_11, 4)
; true),

(DATA \= 0 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
BabelExp_12 is BUF +1* HL,
babel_ptrE(DATA, BabelExp_12, 8)
; true),
BabelExp_13 is POS,
babel_ptrE(__CIL_AP___CIL_RET18, BabelExp_13, 4),BABEL_RET is 1, true)
; BabelExp_14 is POS + 1,
POS_SSA_1 is BabelExp_14,
mg_parse_multipart_cil_lr_2(__CIL_AP___CIL_RET18, BUF, BUF_LEN, DATA, DATA_LEN, HL, BL, POS_SSA_1 , RETFLAG10_SSA_1),BABEL_RET is RETFLAG10_SSA_1, true)
; BABEL_RET is 0, true). 

 
get_line_len_cil_lr_1(__CIL_AP_BUF, __CIL_AP_LEN, BUF_LEN, VOID) :- 


 BabelExp_15 is __CIL_AP_LEN,
babelPtrR(__CIL_TMP6, BabelExp_15, 4),

(__CIL_TMP6 < BUF_LEN ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
BabelExp_16 is __CIL_AP_BUF,
babelPtrR(__CIL_TMP7, BabelExp_16, 8),
BabelExp_17 is __CIL_AP_LEN,
babelPtrR(__CIL_TMP8, BabelExp_17, 4),
__CIL_TMP9 is __CIL_TMP7 +1* __CIL_TMP8,
BabelExp_18 is __CIL_TMP9,
babelPtrR_byte(__CIL_TMP10, BabelExp_18, 1),
__CIL_TMP11 is __CIL_TMP10,

(__CIL_TMP11 \= 10 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
BabelExp_19 is __CIL_AP_LEN,
babelPtrR(__CIL_TMP12, BabelExp_19, 4),
BabelExp_20 is __CIL_TMP12 + 1,
babel_ptrE(__CIL_AP_LEN, BabelExp_20, 4),
get_line_len_cil_lr_1(__CIL_AP_BUF, __CIL_AP_LEN, BUF_LEN, VOID),true
; true)
; true). 

 :- foreign(babel__implicit_proxy_request_cil_lr_1c_11(+integer, +string,  -integer)).
:- foreign(babel__implicit_proxy_request_cil_lr_1c_12(+integer, +string, +string, +string)).
:- foreign(babel__implicit_proxy_request_cil_lr_1c_13(+integer, +string, +integer, +integer)).

proxy_request_cil_lr_1(__CIL_AP_PC, __CIL_AP_C, __CIL_AP_SENT_CLOSE_HEADER, I, VOID) :- 


 BabelExp_21 is __CIL_AP_C,
babelPtrR(__CIL_TMP10, BabelExp_21, 8),
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP11 +1* 132,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_22 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_22, 4),

(I < __CIL_TMP14 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
BabelExp_23 is __CIL_AP_C,
babelPtrR(__CIL_TMP15, BabelExp_23, 8),
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16 +1* 136,
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18,
__CIL_TMP20 is __CIL_TMP19 +16* I,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_24 is __CIL_TMP21,
babelPtrR(__CIL_TMP22, BabelExp_24, 8),
babel__implicit_proxy_request_cil_lr_1c_11(__CIL_TMP22, 'Connection' , TMP___1_SSA_1),

(TMP___1_SSA_1 =:= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
BabelExp_25 is __CIL_AP_PC,
babelPtrR(__CIL_TMP23, BabelExp_25, 8),
babel__implicit_proxy_request_cil_lr_1c_12(__CIL_TMP23, '%s: %s\r\n', 'Connection', 'close'),
BabelExp_26 is 1,
babel_ptrE(__CIL_AP_SENT_CLOSE_HEADER, BabelExp_26, 4)
; BabelExp_27 is __CIL_AP_C,
babelPtrR(__CIL_TMP24, BabelExp_27, 8),
__CIL_TMP25 is __CIL_TMP24,
__CIL_TMP26 is __CIL_TMP25 +1* 136,
__CIL_TMP27 is __CIL_TMP26,
__CIL_TMP28 is __CIL_TMP27,
__CIL_TMP29 is __CIL_TMP28 +16* I,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_28 is __CIL_AP_C,
babelPtrR(__CIL_TMP31, BabelExp_28, 8),
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32 +1* 136,
__CIL_TMP34 is __CIL_TMP33,
__CIL_TMP35 is __CIL_TMP34,
__CIL_TMP36 is __CIL_TMP35 +16* I,
__CIL_TMP37 is __CIL_TMP36,
__CIL_TMP38 is __CIL_TMP37 +1* 8,
__CIL_TMP39 is __CIL_TMP38,
BabelExp_29 is __CIL_AP_PC,
babelPtrR(__CIL_TMP40, BabelExp_29, 8),
BabelExp_30 is __CIL_TMP30,
babelPtrR(__CIL_TMP41, BabelExp_30, 8),
BabelExp_31 is __CIL_TMP39,
babelPtrR(__CIL_TMP42, BabelExp_31, 8),
babel__implicit_proxy_request_cil_lr_1c_13(__CIL_TMP40, '%s: %s\r\n', __CIL_TMP41, __CIL_TMP42)),
BabelExp_32 is I + 1,
I_SSA_1 is BabelExp_32,
proxy_request_cil_lr_1(__CIL_AP_PC, __CIL_AP_C, __CIL_AP_SENT_CLOSE_HEADER, I_SSA_1, VOID),true
; true),
BabelExp_33 is I + 1,
I_SSA_1 is BabelExp_33,
proxy_request_cil_lr_1(__CIL_AP_PC, __CIL_AP_C, __CIL_AP_SENT_CLOSE_HEADER, I_SSA_1, VOID),true. 

 :- foreign(babel__implicit_send_file_data_cil_lr_1c_16(+integer, +integer, +positive, +integer,  -positive)).
:- foreign(babel__implicit_send_file_data_cil_lr_1c_17(+integer, +integer, +positive)).

send_file_data_cil_lr_1(CONN, FP, BUF, VOID) :- 


 __CIL_TMP7 is BUF,
babel__implicit_send_file_data_cil_lr_1c_16(__CIL_TMP7, 1, 8, FP , N___0_SSA_1),

(N___0_SSA_1 > 0 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
__CIL_TMP8 is BUF,
babel__implicit_send_file_data_cil_lr_1c_17(CONN, __CIL_TMP8, N___0_SSA_1),
send_file_data_cil_lr_1(CONN, FP, BUF, VOID),true
; true). 

 :- foreign(babel__implicit_bin2str_cil_lr_1c_19(+integer, +integer, +positive)).

bin2str_cil_lr_1(__CIL_GP_HEX___0, __CIL_AP_TO, P, LEN, VOID) :- 


 TMP___1_SSA_1 is LEN,
BabelExp_34 is LEN - 1,
LEN_SSA_1 is BabelExp_34,
(TMP___1_SSA_1 \= 0 ->
BabelExp_35 is __CIL_AP_TO,
babelPtrR(TMP_SSA_1, BabelExp_35, 8),
BabelExp_36 is __CIL_AP_TO,
babelPtrR(__CIL_TMP13, BabelExp_36, 8),
BabelExp_37 is __CIL_TMP13 +1* 1,
babel_ptrE(__CIL_AP_TO, BabelExp_37, 8),
__CIL_TMP14 is P +1* 0,
BabelExp_38 is __CIL_TMP14,
babelPtrR_byte(__CIL_TMP15, BabelExp_38, 1),
__CIL_TMP16 is __CIL_TMP15,
BabelExp_39 is __CIL_GP_HEX___0,
babelPtrR(__CIL_TMP17, BabelExp_39, 8),
BabelExp_40 is __CIL_TMP16 >> 4,
__CIL_TMP18 is BabelExp_40,
__CIL_TMP19 is __CIL_TMP17 +1* __CIL_TMP18,
BabelExp_41 is __CIL_TMP19,
babelPtrR_byte(__CIL_TMP20, BabelExp_41, 1),
BabelExp_42 is __CIL_TMP20,
babel_ptrE(TMP_SSA_1, BabelExp_42, 1),
BabelExp_43 is __CIL_AP_TO,
babelPtrR(TMP___0_SSA_1, BabelExp_43, 8),
BabelExp_44 is __CIL_AP_TO,
babelPtrR(__CIL_TMP21, BabelExp_44, 8),
BabelExp_45 is __CIL_TMP21 +1* 1,
babel_ptrE(__CIL_AP_TO, BabelExp_45, 8),
__CIL_TMP22 is P +1* 0,
BabelExp_46 is __CIL_TMP22,
babelPtrR_byte(__CIL_TMP23, BabelExp_46, 1),
__CIL_TMP24 is __CIL_TMP23,
BabelExp_47 is __CIL_GP_HEX___0,
babelPtrR(__CIL_TMP25, BabelExp_47, 8),
BabelExp_48 is __CIL_TMP24 /\ 15,
__CIL_TMP26 is BabelExp_48,
__CIL_TMP27 is __CIL_TMP25 +1* __CIL_TMP26,
BabelExp_49 is __CIL_TMP27,
babelPtrR_byte(__CIL_TMP28, BabelExp_49, 1),
BabelExp_50 is __CIL_TMP28,
babel_ptrE(TMP___0_SSA_1, BabelExp_50, 1),
P_SSA_1 is P +1* 1,
babel__implicit_bin2str_cil_lr_1c_19(__CIL_AP_TO, P_SSA_1, LEN_SSA_1),true
; true). 

 :- foreign(babel__implicit_MD5Update_cil_lr_1c_20(+integer, +integer, +positive)).
:- foreign(babel__implicit_MD5Update_cil_lr_1c_21(+integer, +integer)).
:- foreign(babel__implicit_MD5Update_cil_lr_1c_22(+integer, +integer)).

mD5Update_cil_lr_1(__CIL_AP_CTX, __CIL_AP_BUF, __CIL_AP_LEN, VOID) :- 


 BabelExp_51 is __CIL_AP_LEN,
babelPtrR(__CIL_TMP5, BabelExp_51, 4),

(__CIL_TMP5 >= 64 ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
BabelExp_52 is __CIL_AP_CTX,
babelPtrR(__CIL_TMP6, BabelExp_52, 8),
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7 +1* 24,
__CIL_TMP9 is __CIL_TMP8,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_53 is __CIL_AP_BUF,
babelPtrR(__CIL_TMP11, BabelExp_53, 8),
babel__implicit_MD5Update_cil_lr_1c_20(__CIL_TMP10, __CIL_TMP11, 64),
BabelExp_54 is __CIL_AP_CTX,
babelPtrR(__CIL_TMP12, BabelExp_54, 8),
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13 +1* 24,
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_TMP15,
babel__implicit_MD5Update_cil_lr_1c_21(__CIL_TMP16, 16),
BabelExp_55 is __CIL_AP_CTX,
babelPtrR(__CIL_TMP17, BabelExp_55, 8),
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_56 is __CIL_AP_CTX,
babelPtrR(__CIL_TMP20, BabelExp_56, 8),
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is __CIL_TMP21 +1* 24,
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is __CIL_TMP23,
babel__implicit_MD5Update_cil_lr_1c_22(__CIL_TMP19, __CIL_TMP24),
BabelExp_57 is __CIL_AP_BUF,
babelPtrR(__CIL_TMP25, BabelExp_57, 8),
BabelExp_58 is __CIL_TMP25 +1* 64,
babel_ptrE(__CIL_AP_BUF, BabelExp_58, 8),
BabelExp_59 is __CIL_AP_LEN,
babelPtrR(__CIL_TMP26, BabelExp_59, 4),
BabelExp_60 is __CIL_TMP26 - 64,
babel_ptrE(__CIL_AP_LEN, BabelExp_60, 4),
mD5Update_cil_lr_1(__CIL_AP_CTX, __CIL_AP_BUF, __CIL_AP_LEN, VOID),true
; true). 

 :- foreign(babel__implicit_call_request_handler_if_data_is_buffered_cil_lr_1c_24(+integer,  -positive)).

call_request_handler_if_data_is_buffered_cil_lr_1(CONN, VOID) :- 


 babel__implicit_call_request_handler_if_data_is_buffered_cil_lr_1c_24(CONN , TMP_SSA_1),
(TMP_SSA_1 \= 0 ->
call_request_handler_if_data_is_buffered_cil_lr_1(CONN, VOID),true
; true). 

 :- foreign(babel__implicit_get_month_index_cil_lr_1c_26(+integer, +integer,  -integer)).

get_month_index_cil_lr_1(__CIL_AP___CIL_RET4, S, I, BABEL_RET) :- 

MONTH_NAMES  is 1,

 BabelExp_61 is 12,
__CIL_TMP10 is BabelExp_61,
__CIL_TMP11 is __CIL_TMP10,

(I < __CIL_TMP11 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
__CIL_TMP12 is MONTH_NAMES +8* I,
BabelExp_62 is __CIL_TMP12,
babelPtrR(__CIL_TMP13, BabelExp_62, 8),
babel__implicit_get_month_index_cil_lr_1c_26(S, __CIL_TMP13 , TMP_SSA_1),
(TMP_SSA_1 \= 0 ->
BabelExp_63 is I + 1,
I_SSA_1 is BabelExp_63,
get_month_index_cil_lr_1(__CIL_AP___CIL_RET4, S, I_SSA_1 , RETFLAG5_SSA_1),BABEL_RET is RETFLAG5_SSA_1, true
; BabelExp_64 is I,
babel_ptrE(__CIL_AP___CIL_RET4, BabelExp_64, 4),BABEL_RET is 1, true)
; BABEL_RET is 0, true). 

 
base64_encode_cil_lr_2(__CIL_AP_DST, __CIL_AP_J, VOID) :- 


 BabelExp_65 is __CIL_AP_J,
babelPtrR(__CIL_TMP6, BabelExp_65, 4),
BabelExp_66 is __CIL_TMP6 mod 4,
__CIL_TMP7 is BabelExp_66,

(__CIL_TMP7 \= 0 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
BabelExp_67 is __CIL_AP_J,
babelPtrR(TMP___3_SSA_1, BabelExp_67, 4),
BabelExp_68 is __CIL_AP_J,
babelPtrR(__CIL_TMP8, BabelExp_68, 4),
BabelExp_69 is __CIL_TMP8 + 1,
babel_ptrE(__CIL_AP_J, BabelExp_69, 4),
BabelExp_70 is __CIL_AP_DST,
babelPtrR(__CIL_TMP9, BabelExp_70, 8),
__CIL_TMP10 is __CIL_TMP9 +1* TMP___3_SSA_1,
BabelExp_71 is 61,
babel_ptrE(__CIL_TMP10, BabelExp_71, 1),
base64_encode_cil_lr_2(__CIL_AP_DST, __CIL_AP_J, VOID),true
; true). 

 :- foreign(babel__implicit_SHA1Final_cil_lr_2c_29(+integer, +integer, +positive)).
:- foreign(babel__implicit_SHA1Final_cil_lr_2c_30(+integer, +integer)).

sHA1Final_cil_lr_2(__CIL_PP_C, __CIL_FP_C, __CIL_AP_DIGEST, __CIL_AP_CONTEXT, VOID) :- 


 BabelExp_72 is __CIL_AP_CONTEXT,
babelPtrR(__CIL_TMP8, BabelExp_72, 8),
__CIL_TMP9 is __CIL_TMP8,
__CIL_TMP10 is __CIL_TMP9 +1* 20,
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP11,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_73 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_73, 4),
BabelExp_74 is __CIL_TMP14 /\ 504,
__CIL_TMP15 is BabelExp_74,

(__CIL_TMP15 \= 448 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
C_SSA_1 is 0,
BabelExp_75 is C_SSA_1,
babel_ptrE(__CIL_FP_C, BabelExp_75, 1),
BabelExp_76 is __CIL_AP_CONTEXT,
babelPtrR(__CIL_TMP16, BabelExp_76, 8),
babel__implicit_SHA1Final_cil_lr_2c_29(__CIL_TMP16, __CIL_PP_C, 1),
babel__implicit_SHA1Final_cil_lr_2c_30(__CIL_AP_DIGEST, __CIL_AP_CONTEXT),true
; true). 

 
sHA1Final_cil_lr_3(__CIL_AP_CONTEXT, DIGEST, I, VOID) :- 


 (I < 20 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
BabelExp_77 is __CIL_AP_CONTEXT,
babelPtrR(__CIL_TMP6, BabelExp_77, 8),
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7,
BabelExp_78 is I >> 2,
__CIL_TMP9 is BabelExp_78,
__CIL_TMP10 is __CIL_TMP8 +4* __CIL_TMP9,
BabelExp_79 is I /\ 3,
__CIL_TMP11 is BabelExp_79,
BabelExp_80 is 3 - __CIL_TMP11,
__CIL_TMP12 is BabelExp_80,
BabelExp_81 is __CIL_TMP10,
babelPtrR(__CIL_TMP13, BabelExp_81, 4),
BabelExp_82 is __CIL_TMP12 * 8,
__CIL_TMP14 is BabelExp_82,
BabelExp_83 is __CIL_TMP13 >> __CIL_TMP14,
__CIL_TMP15 is BabelExp_83,
BabelExp_84 is __CIL_TMP15 /\ 255,
__CIL_TMP16 is BabelExp_84,
__CIL_TMP17 is DIGEST +1* I,
BabelExp_85 is __CIL_TMP16,
babel_ptrE(__CIL_TMP17, BabelExp_85, 1),
BabelExp_86 is I + 1,
I_SSA_1 is BabelExp_86,
sHA1Final_cil_lr_3(__CIL_AP_CONTEXT, DIGEST, I_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_SHA1Update_cil_lr_1c_32(+integer, +integer)).

sHA1Update_cil_lr_1(__CIL_AP_CONTEXT, __CIL_AP_DATA, __CIL_AP_LEN, __CIL_AP_I, VOID) :- 


 BabelExp_87 is __CIL_AP_I,
babelPtrR(__CIL_TMP6, BabelExp_87, 8),
BabelExp_88 is __CIL_TMP6 + 63,
__CIL_TMP7 is BabelExp_88,
BabelExp_89 is __CIL_AP_LEN,
babelPtrR(__CIL_TMP8, BabelExp_89, 8),

(__CIL_TMP7 < __CIL_TMP8 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
BabelExp_90 is __CIL_AP_CONTEXT,
babelPtrR(__CIL_TMP9, BabelExp_90, 8),
__CIL_TMP10 is __CIL_TMP9,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_91 is __CIL_AP_DATA,
babelPtrR(__CIL_TMP12, BabelExp_91, 8),
BabelExp_92 is __CIL_AP_I,
babelPtrR(__CIL_TMP13, BabelExp_92, 8),
__CIL_TMP14 is __CIL_TMP12 +1* __CIL_TMP13,
babel__implicit_SHA1Update_cil_lr_1c_32(__CIL_TMP11, __CIL_TMP14),
BabelExp_93 is __CIL_AP_I,
babelPtrR(__CIL_TMP15, BabelExp_93, 8),
BabelExp_94 is __CIL_TMP15 + 64,
babel_ptrE(__CIL_AP_I, BabelExp_94, 8),
sHA1Update_cil_lr_1(__CIL_AP_CONTEXT, __CIL_AP_DATA, __CIL_AP_LEN, __CIL_AP_I, VOID),true
; true). 

 :- foreign(babel__implicit_mg_template_cil_lr_1c_34(+integer, +integer, +positive,  -integer)).
:- foreign(babel__implicit_mg_template_cil_lr_1c_35(+integer, +integer, +integer)).
:- foreign(babel__implicit_mg_template_cil_lr_1c_36(+integer, +integer, +positive,  -integer)).
:- foreign(babel__implicit_mg_template_cil_lr_1c_37(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_mg_template_cil_lr_1c_38(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_mg_template_cil_lr_1c_39(+integer, +integer, +positive,  -integer)).
:- foreign(babel__implicit_mg_template_cil_lr_1c_40(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_mg_template_cil_lr_1c_41(+integer, +integer, +integer, +integer, +integer, +integer)).

mg_template_cil_lr_1(__CIL_PP_EXPANSIONS, __CIL_FP_EXPANSIONS, __CIL_AP_CONN, __CIL_AP_S, __CIL_AP_I, __CIL_AP_POS, EXPANSIONS, INSIDE_MARKER, J, TMP___2) :- 


BabelExp_95 is __CIL_AP_S,
babelPtrR(__CIL_TMP26, BabelExp_95, 8),
BabelExp_96 is __CIL_AP_I,
babelPtrR(__CIL_TMP27, BabelExp_96, 4),
__CIL_TMP28 is __CIL_TMP26 +1* __CIL_TMP27,
BabelExp_97 is __CIL_TMP28,
babelPtrR_byte(__CIL_TMP29, BabelExp_97, 1),
__CIL_TMP30 is __CIL_TMP29,

(__CIL_TMP30 \= 0 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ->
(INSIDE_MARKER =:= 0 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
BabelExp_98 is __CIL_AP_S,
babelPtrR(__CIL_TMP31, BabelExp_98, 8),
BabelExp_99 is __CIL_AP_I,
babelPtrR(__CIL_TMP32, BabelExp_99, 4),
__CIL_TMP33 is __CIL_TMP31 +1* __CIL_TMP32,
babel__implicit_mg_template_cil_lr_1c_34(__CIL_TMP33, '{{', 2 , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
BabelExp_100 is __CIL_AP_I,
babelPtrR(__CIL_TMP34, BabelExp_100, 4),
BabelExp_101 is __CIL_AP_POS,
babelPtrR(__CIL_TMP35, BabelExp_101, 4),

(__CIL_TMP34 > __CIL_TMP35 ,
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ->
BabelExp_102 is __CIL_AP_S,
babelPtrR(__CIL_TMP36, BabelExp_102, 8),
BabelExp_103 is __CIL_AP_POS,
babelPtrR(__CIL_TMP37, BabelExp_103, 4),
__CIL_TMP38 is __CIL_TMP36 +1* __CIL_TMP37,
BabelExp_104 is __CIL_AP_I,
babelPtrR(__CIL_TMP39, BabelExp_104, 4),
BabelExp_105 is __CIL_AP_POS,
babelPtrR(__CIL_TMP40, BabelExp_105, 4),
BabelExp_106 is __CIL_AP_CONN,
babelPtrR(__CIL_TMP41, BabelExp_106, 8),
BabelExp_107 is __CIL_TMP39 - __CIL_TMP40,
__CIL_TMP42 is BabelExp_107,
babel__implicit_mg_template_cil_lr_1c_35(__CIL_TMP41, __CIL_TMP38, __CIL_TMP42)
; true),
babelPtrR(BabelExp_108, __CIL_AP_I, 4),
babel_ptrE(__CIL_AP_POS, BabelExp_108, 4),
INSIDE_MARKER_SSA_1 is 1
; true)
; INSIDE_MARKER_SSA_1 is INSIDE_MARKER),

(INSIDE_MARKER_SSA_1 =:= 1 ,
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ->
BabelExp_109 is __CIL_AP_S,
babelPtrR(__CIL_TMP43, BabelExp_109, 8),
BabelExp_110 is __CIL_AP_I,
babelPtrR(__CIL_TMP44, BabelExp_110, 4),
__CIL_TMP45 is __CIL_TMP43 +1* __CIL_TMP44,
babel__implicit_mg_template_cil_lr_1c_36(__CIL_TMP45, '}}', 2 , TMP___2_SSA_1),
(TMP___2_SSA_1 =:= 0 ->
J_SSA_1 is 0,
BabelExp_111 is EXPANSIONS,
babel_ptrE(__CIL_FP_EXPANSIONS, BabelExp_111, 8),
babel__implicit_mg_template_cil_lr_1c_37(__CIL_PP_EXPANSIONS, __CIL_AP_CONN, __CIL_AP_S, __CIL_AP_I, __CIL_AP_POS, J_SSA_1),
BabelExp_112 is __CIL_FP_EXPANSIONS,
babelPtrR(EXPANSIONS_SSA_1, BabelExp_112, 8),
INSIDE_MARKER_SSA_2 is 0
; true)
; EXPANSIONS_SSA_1 is EXPANSIONS,
INSIDE_MARKER_SSA_2 is INSIDE_MARKER_SSA_1),
BabelExp_113 is __CIL_AP_I,
babelPtrR(__CIL_TMP46, BabelExp_113, 4),
BabelExp_114 is __CIL_TMP46 + 1,
babel_ptrE(__CIL_AP_I, BabelExp_114, 4),
babel__implicit_mg_template_cil_lr_1c_38(__CIL_AP_CONN, __CIL_AP_S, __CIL_AP_I, __CIL_AP_POS, EXPANSIONS_SSA_1, INSIDE_MARKER_SSA_2),true
; true),

(INSIDE_MARKER =:= 1 ,
__CIL_TMP25 is 1
; __CIL_TMP25 is 0),

(__CIL_TMP25 \= 0 ->
BabelExp_115 is __CIL_AP_S,
babelPtrR(__CIL_TMP47, BabelExp_115, 8),
BabelExp_116 is __CIL_AP_I,
babelPtrR(__CIL_TMP48, BabelExp_116, 4),
__CIL_TMP49 is __CIL_TMP47 +1* __CIL_TMP48,
babel__implicit_mg_template_cil_lr_1c_39(__CIL_TMP49, '}}', 2 , TMP___2_SSA_1),
(TMP___2_SSA_1 =:= 0 ->
J_SSA_1 is 0,
BabelExp_117 is EXPANSIONS,
babel_ptrE(__CIL_FP_EXPANSIONS, BabelExp_117, 8),
babel__implicit_mg_template_cil_lr_1c_40(__CIL_PP_EXPANSIONS, __CIL_AP_CONN, __CIL_AP_S, __CIL_AP_I, __CIL_AP_POS, J_SSA_1),
BabelExp_118 is __CIL_FP_EXPANSIONS,
babelPtrR(EXPANSIONS_SSA_1, BabelExp_118, 8),
INSIDE_MARKER_SSA_1 is 0
; true)
; EXPANSIONS_SSA_1 is EXPANSIONS,
INSIDE_MARKER_SSA_1 is INSIDE_MARKER,
J_SSA_1 is J,
TMP___2_SSA_1 is TMP___2),
BabelExp_119 is __CIL_AP_I,
babelPtrR(__CIL_TMP50, BabelExp_119, 4),
BabelExp_120 is __CIL_TMP50 + 1,
babel_ptrE(__CIL_AP_I, BabelExp_120, 4),
babel__implicit_mg_template_cil_lr_1c_41(__CIL_AP_CONN, __CIL_AP_S, __CIL_AP_I, __CIL_AP_POS, EXPANSIONS_SSA_1, INSIDE_MARKER_SSA_1),true. 

 :- foreign(babel__implicit_mg_get_header_cil_lr_1c_42(+integer, +integer,  -integer)).

mg_get_header_cil_lr_1(__CIL_AP___CIL_RET5, RI, S, I, BABEL_RET) :- 


 __CIL_TMP11 is RI +1* 132,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_121 is __CIL_TMP12,
babelPtrR(__CIL_TMP13, BabelExp_121, 4),
__CIL_TMP14 is __CIL_TMP13,

(I < __CIL_TMP14 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ->
__CIL_TMP15 is RI +1* 136,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is __CIL_TMP17 +16* I,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_122 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_122, 8),
babel__implicit_mg_get_header_cil_lr_1c_42(S, __CIL_TMP20 , TMP_SSA_1),
(TMP_SSA_1 \= 0 ->
BabelExp_123 is I + 1,
I_SSA_1 is BabelExp_123,
mg_get_header_cil_lr_1(__CIL_AP___CIL_RET5, RI, S, I_SSA_1 , RETFLAG6_SSA_1),BABEL_RET is RETFLAG6_SSA_1, true
; __CIL_TMP21 is RI +1* 136,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is __CIL_TMP23 +16* I,
__CIL_TMP25 is __CIL_TMP24,
__CIL_TMP26 is __CIL_TMP25 +1* 8,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_124 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_124, 8),
BabelExp_125 is __CIL_TMP28,
babel_ptrE(__CIL_AP___CIL_RET5, BabelExp_125, 8),BABEL_RET is 1, true)
; BABEL_RET is 0, true). 

 :- foreign(babel__implicit_mg_strncasecmp_cil_lr_1c_44(+integer,  -integer)).
:- foreign(babel__implicit_mg_strncasecmp_cil_lr_1c_45(+integer,  -integer)).

mg_strncasecmp_cil_lr_1(__CIL_AP_DIFF, S1, S2, LEN, VOID) :- 


 TMP_SSA_1 is S1,
S1_SSA_1 is S1 +1* 1,
babel__implicit_mg_strncasecmp_cil_lr_1c_44(TMP_SSA_1 , TMP___0_SSA_1),
TMP___1_SSA_1 is S2,
S2_SSA_1 is S2 +1* 1,
babel__implicit_mg_strncasecmp_cil_lr_1c_45(TMP___1_SSA_1 , TMP___2_SSA_1),
BabelExp_126 is TMP___0_SSA_1 - TMP___2_SSA_1,
babel_ptrE(__CIL_AP_DIFF, BabelExp_126, 4),
BabelExp_127 is __CIL_AP_DIFF,
babelPtrR(__CIL_TMP19, BabelExp_127, 4),

(__CIL_TMP19 =:= 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
__CIL_TMP20 is S1_SSA_1 +1* -1*1,
BabelExp_128 is __CIL_TMP20,
babelPtrR_byte(__CIL_TMP21, BabelExp_128, 1),
__CIL_TMP22 is __CIL_TMP21,

(__CIL_TMP22 \= 0 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
BabelExp_129 is LEN - 1,
LEN_SSA_1 is BabelExp_129,

(LEN_SSA_1 > 0 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
mg_strncasecmp_cil_lr_1(__CIL_AP_DIFF, S1_SSA_1, S2_SSA_1, LEN_SSA_1, VOID),true
; true)
; true)
; true). 

 :- foreign(babel__implicit_mg_strcasecmp_cil_lr_1c_47(+integer,  -integer)).
:- foreign(babel__implicit_mg_strcasecmp_cil_lr_1c_48(+integer,  -integer)).

mg_strcasecmp_cil_lr_1(__CIL_AP_DIFF, S1, S2, VOID) :- 


 TMP_SSA_1 is S1,
S1_SSA_1 is S1 +1* 1,
babel__implicit_mg_strcasecmp_cil_lr_1c_47(TMP_SSA_1 , TMP___0_SSA_1),
TMP___1_SSA_1 is S2,
S2_SSA_1 is S2 +1* 1,
babel__implicit_mg_strcasecmp_cil_lr_1c_48(TMP___1_SSA_1 , TMP___2_SSA_1),
BabelExp_130 is TMP___0_SSA_1 - TMP___2_SSA_1,
babel_ptrE(__CIL_AP_DIFF, BabelExp_130, 4),
BabelExp_131 is __CIL_AP_DIFF,
babelPtrR(__CIL_TMP16, BabelExp_131, 4),

(__CIL_TMP16 =:= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
__CIL_TMP17 is S1_SSA_1 +1* -1*1,
BabelExp_132 is __CIL_TMP17,
babelPtrR_byte(__CIL_TMP18, BabelExp_132, 1),
__CIL_TMP19 is __CIL_TMP18,

(__CIL_TMP19 \= 0 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
mg_strcasecmp_cil_lr_1(__CIL_AP_DIFF, S1_SSA_1, S2_SSA_1, VOID),true
; true)
; true). 

 
skip_cil_lr_1(__CIL_AP_BUF, __CIL_AP_BEGIN_WORD, __CIL_AP_END_DELIMITERS, P, VOID) :- 


 BabelExp_133 is __CIL_AP_END_DELIMITERS,
babelPtrR(__CIL_TMP7, BabelExp_133, 8),
__CIL_TMP8 is __CIL_TMP7,

(P < __CIL_TMP8 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
BabelExp_134 is 0,
babel_ptrE(P, BabelExp_134, 1),
P_SSA_1 is P +1* 1,
skip_cil_lr_1(__CIL_AP_BUF, __CIL_AP_BEGIN_WORD, __CIL_AP_END_DELIMITERS, P_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_ns_mgr_free_cil_lr_1c_51(+integer)).

ns_mgr_free_cil_lr_1(CONN, VOID) :- 


 (CONN \= 0 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
MEM_5 is CONN,
BabelExp_135 is MEM_5,
babelPtrR(TMP_CONN_SSA_1, BabelExp_135, 8),
babel__implicit_ns_mgr_free_cil_lr_1c_51(CONN),
CONN_SSA_1 is TMP_CONN_SSA_1,
ns_mgr_free_cil_lr_1(CONN_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_ns_mgr_init_cil_lr_1c_53(+integer, +integer)).

ns_mgr_init_cil_lr_1(S, VOID) :- 


 __CIL_TMP3 is S +1* 16,
__CIL_TMP4 is __CIL_TMP3,
__CIL_TMP5 is __CIL_TMP4,
babel__implicit_ns_mgr_init_cil_lr_1c_53(__CIL_TMP5, 2),
__CIL_TMP6 is S +1* 16,
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_136 is __CIL_TMP9,
babelPtrR(__CIL_TMP10, BabelExp_136, 4),

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
BabelExp_137 is 0,
babel_ptrE(__CIL_TMP9, BabelExp_137, 1),
BabelExp_138 is TMP + 1,
TMP_SSA_1 is BabelExp_138,
ns_hexdump_cil_lr_1(__CIL_AP_LEN, __CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_P, ASCII, TMP_SSA_1, VOID),true). 

 :- foreign(babel__implicit_ns_hexdump_cil_lr_2c_56(+integer, +positive, +integer, +integer,  -integer)).
:- foreign(babel__implicit_ns_hexdump_cil_lr_2c_57(+integer, +positive, +integer, +integer,  -integer)).
:- foreign(babel__implicit_ns_hexdump_cil_lr_2c_58(+integer, +positive, +integer, +integer,  -integer)).
:- foreign(babel__implicit_ns_hexdump_cil_lr_2c_60(+integer, +positive, +integer, +integer,  -integer)).

ns_hexdump_cil_lr_2(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_I, __CIL_AP_N, LEN, P, ASCII, VOID) :- 


 BabelExp_139 is __CIL_AP_I,
babelPtrR(__CIL_TMP23, BabelExp_139, 4),

(__CIL_TMP23 < LEN ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
BabelExp_140 is __CIL_AP_I,
babelPtrR(__CIL_TMP24, BabelExp_140, 4),
BabelExp_141 is __CIL_TMP24 mod 16,
IDX_SSA_1 is BabelExp_141,

(IDX_SSA_1 =:= 0 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
BabelExp_142 is __CIL_AP_I,
babelPtrR(__CIL_TMP25, BabelExp_142, 4),

(__CIL_TMP25 > 0 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
BabelExp_143 is __CIL_AP_DST,
babelPtrR(__CIL_TMP26, BabelExp_143, 8),
BabelExp_144 is __CIL_AP_N,
babelPtrR(__CIL_TMP27, BabelExp_144, 4),
__CIL_TMP28 is __CIL_TMP26 +1* __CIL_TMP27,
BabelExp_145 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP29, BabelExp_145, 4),
BabelExp_146 is __CIL_AP_N,
babelPtrR(__CIL_TMP30, BabelExp_146, 4),
BabelExp_147 is __CIL_TMP29 - __CIL_TMP30,
__CIL_TMP31 is BabelExp_147,
__CIL_TMP32 is ASCII,
babel__implicit_ns_hexdump_cil_lr_2c_56(__CIL_TMP28, __CIL_TMP31, '  %S\\N', __CIL_TMP32 , TMP___0_SSA_1),
BabelExp_148 is __CIL_AP_N,
babelPtrR(__CIL_TMP33, BabelExp_148, 4),
BabelExp_149 is __CIL_TMP33 + TMP___0_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_149, 4)
; true),
BabelExp_150 is __CIL_AP_DST,
babelPtrR(__CIL_TMP34, BabelExp_150, 8),
BabelExp_151 is __CIL_AP_N,
babelPtrR(__CIL_TMP35, BabelExp_151, 4),
__CIL_TMP36 is __CIL_TMP34 +1* __CIL_TMP35,
BabelExp_152 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP37, BabelExp_152, 4),
BabelExp_153 is __CIL_AP_N,
babelPtrR(__CIL_TMP38, BabelExp_153, 4),
BabelExp_154 is __CIL_TMP37 - __CIL_TMP38,
__CIL_TMP39 is BabelExp_154,
BabelExp_155 is __CIL_AP_I,
babelPtrR(__CIL_TMP40, BabelExp_155, 4),
babel__implicit_ns_hexdump_cil_lr_2c_57(__CIL_TMP36, __CIL_TMP39, '%04X ', __CIL_TMP40 , TMP___1_SSA_1),
BabelExp_156 is __CIL_AP_N,
babelPtrR(__CIL_TMP41, BabelExp_156, 4),
BabelExp_157 is __CIL_TMP41 + TMP___1_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_157, 4)
; true),
BabelExp_158 is __CIL_AP_DST,
babelPtrR(__CIL_TMP42, BabelExp_158, 8),
BabelExp_159 is __CIL_AP_N,
babelPtrR(__CIL_TMP43, BabelExp_159, 4),
__CIL_TMP44 is __CIL_TMP42 +1* __CIL_TMP43,
BabelExp_160 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP45, BabelExp_160, 4),
BabelExp_161 is __CIL_AP_N,
babelPtrR(__CIL_TMP46, BabelExp_161, 4),
BabelExp_162 is __CIL_TMP45 - __CIL_TMP46,
__CIL_TMP47 is BabelExp_162,
BabelExp_163 is __CIL_AP_I,
babelPtrR(__CIL_TMP48, BabelExp_163, 4),
__CIL_TMP49 is P +1* __CIL_TMP48,
BabelExp_164 is __CIL_TMP49,
babelPtrR_byte(__CIL_TMP50, BabelExp_164, 1),
babel__implicit_ns_hexdump_cil_lr_2c_58(__CIL_TMP44, __CIL_TMP47, ' %02X', __CIL_TMP50 , TMP___2_SSA_1),
BabelExp_165 is __CIL_AP_N,
babelPtrR(__CIL_TMP51, BabelExp_165, 4),
BabelExp_166 is __CIL_TMP51 + TMP___2_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_166, 4),
BabelExp_167 is __CIL_AP_I,
babelPtrR(__CIL_TMP52, BabelExp_167, 4),
__CIL_TMP53 is P +1* __CIL_TMP52,
BabelExp_168 is __CIL_TMP53,
babelPtrR_byte(__CIL_TMP54, BabelExp_168, 1),
__CIL_TMP55 is __CIL_TMP54,

(__CIL_TMP55 < 32 ,
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ->
__CIL_TMP56 is ASCII +1* IDX_SSA_1,
BabelExp_169 is 46,
babel_ptrE(__CIL_TMP56, BabelExp_169, 1)
; BabelExp_170 is __CIL_AP_I,
babelPtrR(__CIL_TMP57, BabelExp_170, 4),
__CIL_TMP58 is P +1* __CIL_TMP57,
BabelExp_171 is __CIL_TMP58,
babelPtrR_byte(__CIL_TMP59, BabelExp_171, 1),
__CIL_TMP60 is __CIL_TMP59,

(__CIL_TMP60 > 126 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ->
__CIL_TMP61 is ASCII +1* IDX_SSA_1,
BabelExp_172 is 46,
babel_ptrE(__CIL_TMP61, BabelExp_172, 1)
; BabelExp_173 is __CIL_AP_I,
babelPtrR(__CIL_TMP62, BabelExp_173, 4),
__CIL_TMP63 is P +1* __CIL_TMP62,
BabelExp_174 is __CIL_TMP63,
babelPtrR_byte(__CIL_TMP64, BabelExp_174, 1),
__CIL_TMP65 is ASCII +1* IDX_SSA_1,
BabelExp_175 is __CIL_TMP64,
babel_ptrE(__CIL_TMP65, BabelExp_175, 1))),
BabelExp_176 is IDX_SSA_1 + 1,
__CIL_TMP66 is BabelExp_176,
__CIL_TMP67 is ASCII +1* __CIL_TMP66,
BabelExp_177 is 0,
babel_ptrE(__CIL_TMP67, BabelExp_177, 1),
BabelExp_178 is __CIL_AP_I,
babelPtrR(__CIL_TMP68, BabelExp_178, 4),
BabelExp_179 is __CIL_TMP68 + 1,
babel_ptrE(__CIL_AP_I, BabelExp_179, 4),
ns_hexdump_cil_lr_2(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_I, __CIL_AP_N, LEN, P, ASCII, VOID),true
; true),
BabelExp_180 is __CIL_AP_DST,
babelPtrR(__CIL_TMP69, BabelExp_180, 8),
BabelExp_181 is __CIL_AP_N,
babelPtrR(__CIL_TMP70, BabelExp_181, 4),
__CIL_TMP71 is __CIL_TMP69 +1* __CIL_TMP70,
BabelExp_182 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP72, BabelExp_182, 4),
BabelExp_183 is __CIL_AP_N,
babelPtrR(__CIL_TMP73, BabelExp_183, 4),
BabelExp_184 is __CIL_TMP72 - __CIL_TMP73,
__CIL_TMP74 is BabelExp_184,
BabelExp_185 is __CIL_AP_I,
babelPtrR(__CIL_TMP75, BabelExp_185, 4),
__CIL_TMP76 is P +1* __CIL_TMP75,
BabelExp_186 is __CIL_TMP76,
babelPtrR_byte(__CIL_TMP77, BabelExp_186, 1),
babel__implicit_ns_hexdump_cil_lr_2c_60(__CIL_TMP71, __CIL_TMP74, ' %02X', __CIL_TMP77 , TMP___2_SSA_1),
BabelExp_187 is __CIL_AP_N,
babelPtrR(__CIL_TMP78, BabelExp_187, 4),
BabelExp_188 is __CIL_TMP78 + TMP___2_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_188, 4),
BabelExp_189 is __CIL_AP_I,
babelPtrR(__CIL_TMP79, BabelExp_189, 4),
__CIL_TMP80 is P +1* __CIL_TMP79,
BabelExp_190 is __CIL_TMP80,
babelPtrR_byte(__CIL_TMP81, BabelExp_190, 1),
__CIL_TMP82 is __CIL_TMP81,

(__CIL_TMP82 < 32 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ->
__CIL_TMP83 is ASCII +1* IDX,
BabelExp_191 is 46,
babel_ptrE(__CIL_TMP83, BabelExp_191, 1)
; BabelExp_192 is __CIL_AP_I,
babelPtrR(__CIL_TMP84, BabelExp_192, 4),
__CIL_TMP85 is P +1* __CIL_TMP84,
BabelExp_193 is __CIL_TMP85,
babelPtrR_byte(__CIL_TMP86, BabelExp_193, 1),
__CIL_TMP87 is __CIL_TMP86,

(__CIL_TMP87 > 126 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
__CIL_TMP88 is ASCII +1* IDX,
BabelExp_194 is 46,
babel_ptrE(__CIL_TMP88, BabelExp_194, 1)
; BabelExp_195 is __CIL_AP_I,
babelPtrR(__CIL_TMP89, BabelExp_195, 4),
__CIL_TMP90 is P +1* __CIL_TMP89,
BabelExp_196 is __CIL_TMP90,
babelPtrR_byte(__CIL_TMP91, BabelExp_196, 1),
__CIL_TMP92 is ASCII +1* IDX,
BabelExp_197 is __CIL_TMP91,
babel_ptrE(__CIL_TMP92, BabelExp_197, 1))),
BabelExp_198 is IDX + 1,
__CIL_TMP93 is BabelExp_198,
__CIL_TMP94 is ASCII +1* __CIL_TMP93,
BabelExp_199 is 0,
babel_ptrE(__CIL_TMP94, BabelExp_199, 1),
BabelExp_200 is __CIL_AP_I,
babelPtrR(__CIL_TMP95, BabelExp_200, 4),
BabelExp_201 is __CIL_TMP95 + 1,
babel_ptrE(__CIL_AP_I, BabelExp_201, 4),
ns_hexdump_cil_lr_2(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_I, __CIL_AP_N, LEN, P, ASCII, VOID),true. 

 :- foreign(babel__implicit_ns_hexdump_cil_lr_3c_62(+integer, +positive, +integer, +string,  -integer)).

ns_hexdump_cil_lr_3(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_N, I, VOID) :- 


 TMP___4_SSA_1 is I,
BabelExp_202 is I + 1,
I_SSA_1 is BabelExp_202,
BabelExp_203 is TMP___4_SSA_1 mod 16,
__CIL_TMP10 is BabelExp_203,
(__CIL_TMP10 \= 0 ->
BabelExp_204 is __CIL_AP_DST,
babelPtrR(__CIL_TMP11, BabelExp_204, 8),
BabelExp_205 is __CIL_AP_N,
babelPtrR(__CIL_TMP12, BabelExp_205, 4),
__CIL_TMP13 is __CIL_TMP11 +1* __CIL_TMP12,
BabelExp_206 is __CIL_AP_DST_LEN,
babelPtrR(__CIL_TMP14, BabelExp_206, 4),
BabelExp_207 is __CIL_AP_N,
babelPtrR(__CIL_TMP15, BabelExp_207, 4),
BabelExp_208 is __CIL_TMP14 - __CIL_TMP15,
__CIL_TMP16 is BabelExp_208,
babel__implicit_ns_hexdump_cil_lr_3c_62(__CIL_TMP13, __CIL_TMP16, '%S', '   ' , TMP___3_SSA_1),
BabelExp_209 is __CIL_AP_N,
babelPtrR(__CIL_TMP17, BabelExp_209, 4),
BabelExp_210 is __CIL_TMP17 + TMP___3_SSA_1,
babel_ptrE(__CIL_AP_N, BabelExp_210, 4),
ns_hexdump_cil_lr_3(__CIL_AP_DST, __CIL_AP_DST_LEN, __CIL_AP_N, I_SSA_1, VOID),true
; true). 

 
