:-foreign(babel_ptrR_byte(-byte, +integer, +integer)).
:-foreign(babel_ptrR(-integer, +integer, +integer)).
:-foreign(babel_ptrE(+integer, +integer, +integer)).
:-foreign(babel_ptrFR(-float, +integer,+integer)).
:-foreign(babel_ptrFW(+integer, +float,+integer)).


babelPtrR_byte(E, P, L) :- babel_ptrR_byte(T, P, L), E is T.
babelPtrR(E, P, L) :- babel_ptrR(T, P, L), E is T.
babelPtrL(P, E, L) :- babel_ptrE(P, E, L).


babelArrayL([_|T], 0, X, [X|T]).
babelArrayL([H|T], I, X, [H|R]):- I > -1, NI is I-1, babelArrayL(T, NI, X, R), !.
babelArrayL(L, _, _, L).

babelArrayR(X, [X|_], 0).
babelArrayR(X, [_|T], I):- I > 0, NI is I-1, babelArrayR(X, T, NI), !.



:- foreign(babel__implicit_ftp_session_dropc_0(+integer,  -integer)).
:- foreign(babel__implicit_ftp_session_dropc_1(+string, +string, +integer, +string)).
:- foreign(babel__implicit_ftp_session_dropc_2(+string, +string, +integer, +string)).
:- foreign(babel__implicit_ftp_session_dropc_3(+integer, +integer, +string, +integer)).
:- foreign(babel__implicit_ftp_session_dropc_4(+integer,  -integer)).
:- foreign(babel__implicit_ftp_session_dropc_5(+string, +string, +integer, +string)).

ftp_session_drop(F, REASON, VOID) :- 


 babel__implicit_ftp_session_dropc_0(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_ftp_session_dropc_1('invariant(f)', 'ftp_session.c', 205, 'ftp_session_drop')
; true),

(REASON \= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 =:= 0 ->
babel__implicit_ftp_session_dropc_2('reason != ((void *)0)', 'ftp_session.c', 206, 'ftp_session_drop')
; true),
babel__implicit_ftp_session_dropc_3(F, 421, '%s.', REASON),
babel__implicit_ftp_session_dropc_4(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_ftp_session_dropc_5('invariant(f)', 'ftp_session.c', 211, 'ftp_session_drop')
; true),
true. 


 :- foreign(babel__implicit_do_userc_9(+integer,  -integer)).
:- foreign(babel__implicit_do_userc_10(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_userc_11(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_userc_12(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_userc_13(+integer, +string,  -integer)).
:- foreign(babel__implicit_do_userc_14(+integer, +string,  -integer)).
:- foreign(babel__implicit_do_userc_15(+integer, +string, +integer, +integer)).
:- foreign(babel__implicit_do_userc_16(+integer, +integer, +string)).
:- foreign(babel__implicit_do_userc_17(+integer, +integer, +string)).
:- foreign(babel__implicit_do_userc_18(+integer, +integer, +string)).
:- foreign(babel__implicit_do_userc_19(+integer,  -integer)).
:- foreign(babel__implicit_do_userc_20(+string, +string, +integer, +string)).

do_user(F, CMD, VOID) :- 


 babel__implicit_do_userc_9(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_userc_10('invariant(f)', 'ftp_session.c', 381, 'do_user')
; true),

(CMD \= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 =:= 0 ->
babel__implicit_do_userc_11('cmd != ((void *)0)', 'ftp_session.c', 382, 'do_user')
; true),
__CIL_TMP16 is CMD +1* 8,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_3 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_3, 4),

(__CIL_TMP18 =:= 1 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 =:= 0 ->
babel__implicit_do_userc_12('cmd->num_arg == 1', 'ftp_session.c', 383, 'do_user')
; true),
__CIL_TMP19 is CMD +1* 16,
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is __CIL_TMP23,
USER_SSA_1 is __CIL_TMP24,
babel__implicit_do_userc_13(USER_SSA_1, 'ftp' , TMP___0_SSA_1),
(TMP___0_SSA_1 \= 0 ->
babel__implicit_do_userc_14(USER_SSA_1, 'anonymous' , TMP___1_SSA_1),
(TMP___1_SSA_1 \= 0 ->
__CIL_TMP25 is F +1* 60,
__CIL_TMP26 is __CIL_TMP25,
__CIL_TMP27 is __CIL_TMP26,
babel__implicit_do_userc_15(4, '%s attempted to log in as \'%s\'', __CIL_TMP27, USER_SSA_1),
babel__implicit_do_userc_16(F, 530, 'Only anonymous FTP supported.')
; babel__implicit_do_userc_17(F, 331, 'Send e-mail address as password.'))
; babel__implicit_do_userc_18(F, 331, 'Send e-mail address as password.')),
babel__implicit_do_userc_19(F , TMP___2_SSA_1),
(TMP___2_SSA_1 =:= 0 ->
babel__implicit_do_userc_20('invariant(f)', 'ftp_session.c', 393, 'do_user')
; true),
true. 



 :- foreign(babel__implicit_do_cwdc_29(+integer,  -integer)).
:- foreign(babel__implicit_do_cwdc_30(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_cwdc_31(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_cwdc_32(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_cwdc_33(+integer, +integer)).
:- foreign(babel__implicit_do_cwdc_34(+integer,  -integer)).
:- foreign(babel__implicit_do_cwdc_35(+string, +string, +integer, +string)).

do_cwd(F, CMD, VOID) :- 


 babel__implicit_do_cwdc_29(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_cwdc_30('invariant(f)', 'ftp_session.c', 467, 'do_cwd')
; true),

(CMD \= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 =:= 0 ->
babel__implicit_do_cwdc_31('cmd != ((void *)0)', 'ftp_session.c', 468, 'do_cwd')
; true),
__CIL_TMP11 is CMD +1* 8,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_5 is __CIL_TMP12,
babelPtrR(__CIL_TMP13, BabelExp_5, 4),

(__CIL_TMP13 =:= 1 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 =:= 0 ->
babel__implicit_do_cwdc_32('cmd->num_arg == 1', 'ftp_session.c', 469, 'do_cwd')
; true),
__CIL_TMP14 is CMD +1* 16,
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18,
NEW_DIR_SSA_1 is __CIL_TMP19,
babel__implicit_do_cwdc_33(F, NEW_DIR_SSA_1),
babel__implicit_do_cwdc_34(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_cwdc_35('invariant(f)', 'ftp_session.c', 474, 'do_cwd')
; true),
true. 


 :- foreign(babel__implicit_do_quitc_43(+integer,  -integer)).
:- foreign(babel__implicit_do_quitc_44(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_quitc_45(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_quitc_46(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_quitc_47(+integer, +integer, +string)).
:- foreign(babel__implicit_do_quitc_48(+integer,  -integer)).
:- foreign(babel__implicit_do_quitc_49(+string, +string, +integer, +string)).

do_quit(F, CMD, VOID) :- 


 babel__implicit_do_quitc_43(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_quitc_44('invariant(f)', 'ftp_session.c', 618, 'do_quit')
; true),

(CMD \= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 =:= 0 ->
babel__implicit_do_quitc_45('cmd != ((void *)0)', 'ftp_session.c', 619, 'do_quit')
; true),
__CIL_TMP9 is CMD +1* 8,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_7 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_7, 4),

(__CIL_TMP11 =:= 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 =:= 0 ->
babel__implicit_do_quitc_46('cmd->num_arg == 0', 'ftp_session.c', 620, 'do_quit')
; true),
babel__implicit_do_quitc_47(F, 221, 'Service closing control connection.'),
MEM_10 is F,
BabelExp_8 is 0,
babel_ptrE(MEM_10, BabelExp_8, 4),
babel__implicit_do_quitc_48(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_quitc_49('invariant(f)', 'ftp_session.c', 625, 'do_quit')
; true),
true. 

 :- foreign(babel__implicit_do_portc_50(+integer,  -integer)).
:- foreign(babel__implicit_do_portc_51(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_portc_52(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_portc_53(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_portc_54(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_portc_55(+integer, +integer)).
:- foreign(babel__implicit_do_portc_56(+integer,  -integer)).
:- foreign(babel__implicit_do_portc_57(+string, +string, +integer, +string)).

do_port(F, CMD, VOID) :- 


 babel__implicit_do_portc_50(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_portc_51('invariant(f)', 'ftp_session.c', 660, 'do_port')
; true),

(CMD \= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 =:= 0 ->
babel__implicit_do_portc_52('cmd != ((void *)0)', 'ftp_session.c', 661, 'do_port')
; true),
__CIL_TMP12 is CMD +1* 8,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_9 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_9, 4),

(__CIL_TMP14 =:= 1 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 =:= 0 ->
babel__implicit_do_portc_53('cmd->num_arg == 1', 'ftp_session.c', 662, 'do_port')
; true),
__CIL_TMP15 is CMD +1* 16,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is __CIL_TMP17,
HOST_PORT_SSA_1 is __CIL_TMP18,
MEM_18 is HOST_PORT_SSA_1,
BabelExp_10 is MEM_18,
babelPtrR(__CIL_TMP19, BabelExp_10, 2),
__CIL_TMP20 is __CIL_TMP19,

(__CIL_TMP20 =:= 2 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 =:= 0 ->
babel__implicit_do_portc_54('(((struct sockaddr_storage *)(host_port))->ss_family) == 2', 'ftp_session.c', 665, 'do_port')
; true),
babel__implicit_do_portc_55(F, HOST_PORT_SSA_1),
babel__implicit_do_portc_56(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_portc_57('invariant(f)', 'ftp_session.c', 669, 'do_port')
; true),
true. 

 :- foreign(babel__implicit_do_lprtc_58(+integer,  -integer)).
:- foreign(babel__implicit_do_lprtc_59(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_lprtc_60(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_lprtc_61(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_lprtc_62(+integer, +integer, +string)).
:- foreign(babel__implicit_do_lprtc_63(+integer, +integer)).
:- foreign(babel__implicit_do_lprtc_64(+integer,  -integer)).
:- foreign(babel__implicit_do_lprtc_65(+string, +string, +integer, +string)).

do_lprt(F, CMD, VOID) :- 


 babel__implicit_do_lprtc_58(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_lprtc_59('invariant(f)', 'ftp_session.c', 677, 'do_lprt')
; true),

(CMD \= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 =:= 0 ->
babel__implicit_do_lprtc_60('cmd != ((void *)0)', 'ftp_session.c', 678, 'do_lprt')
; true),
__CIL_TMP12 is CMD +1* 8,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_11 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_11, 4),

(__CIL_TMP14 =:= 1 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 =:= 0 ->
babel__implicit_do_lprtc_61('cmd->num_arg == 1', 'ftp_session.c', 679, 'do_lprt')
; true),
__CIL_TMP15 is CMD +1* 16,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is __CIL_TMP17,
HOST_PORT_SSA_1 is __CIL_TMP18,
MEM_18 is HOST_PORT_SSA_1,
BabelExp_12 is MEM_18,
babelPtrR(__CIL_TMP19, BabelExp_12, 2),
__CIL_TMP20 is __CIL_TMP19,

(__CIL_TMP20 \= 2 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
babel__implicit_do_lprtc_62(F, 521, 'Only IPv4 supported, address family (4)')
; true),
babel__implicit_do_lprtc_63(F, HOST_PORT_SSA_1),
babel__implicit_do_lprtc_64(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_lprtc_65('invariant(f)', 'ftp_session.c', 695, 'do_lprt')
; true),
true. 

 :- foreign(babel__implicit_do_eprtc_66(+integer,  -integer)).
:- foreign(babel__implicit_do_eprtc_67(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_eprtc_68(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_eprtc_69(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_eprtc_70(+integer, +integer, +string)).
:- foreign(babel__implicit_do_eprtc_71(+integer,  -integer)).
:- foreign(babel__implicit_do_eprtc_72(+string, +string, +integer, +string)).

do_eprt(F, CMD, VOID) :- 


 babel__implicit_do_eprtc_66(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_eprtc_67('invariant(f)', 'ftp_session.c', 708, 'do_eprt')
; true),

(CMD \= 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 =:= 0 ->
babel__implicit_do_eprtc_68('cmd != ((void *)0)', 'ftp_session.c', 709, 'do_eprt')
; true),
__CIL_TMP10 is CMD +1* 8,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_13 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_13, 4),

(__CIL_TMP12 =:= 1 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 =:= 0 ->
babel__implicit_do_eprtc_69('cmd->num_arg == 1', 'ftp_session.c', 710, 'do_eprt')
; true),
babel__implicit_do_eprtc_70(F, 500, 'EPRT not supported, use EPSV.'),
babel__implicit_do_eprtc_71(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_eprtc_72('invariant(f)', 'ftp_session.c', 714, 'do_eprt')
; true),
true. 

 :- foreign(babel__implicit_init_passive_portc_73(+integer, +integer)).
:- foreign(babel__implicit_init_passive_portc_74(+integer)).

init_passive_port(__CIL_PP_TV, SEED, VOID) :- 

babel__implicit_init_passive_portc_73(__CIL_PP_TV, 0),
MEM_16 is __CIL_PP_TV,
BabelExp_14 is MEM_16,
babelPtrR(__CIL_TMP4, BabelExp_14, 8),
BabelExp_15 is __CIL_TMP4 >> 16,
__CIL_TMP5 is BabelExp_15,
BabelExp_16 is __CIL_TMP5 /\ 65535,
__CIL_TMP6 is BabelExp_16,
BabelExp_17 is __CIL_TMP6,
babelArrayL(seed, 0, BabelExp_17, seed),
MEM_17 is __CIL_PP_TV,
BabelExp_18 is MEM_17,
babelPtrR(__CIL_TMP7, BabelExp_18, 8),
BabelExp_19 is __CIL_TMP7 /\ 65535,
__CIL_TMP8 is BabelExp_19,
__CIL_TMP9 is SEED +2* 1,
BabelExp_20 is __CIL_TMP8,
babel_ptrE(__CIL_TMP9, BabelExp_20, 2),
__CIL_TMP10 is __CIL_PP_TV +1* 8,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_21 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_21, 8),
BabelExp_22 is __CIL_TMP12 /\ 65535,
__CIL_TMP13 is BabelExp_22,
__CIL_TMP14 is SEED +2* 2,
BabelExp_23 is __CIL_TMP13,
babel_ptrE(__CIL_TMP14, BabelExp_23, 2),
BabelExp_24 is SEED,
__CIL_TMP15 is BabelExp_24,
babel__implicit_init_passive_portc_74(__CIL_TMP15),true. 

 :- foreign(babel__implicit_get_passive_portc_75(+integer, +integer)).
:- foreign(babel__implicit_get_passive_portc_76(+integer)).
:- foreign(babel__implicit_get_passive_portc_77( -integer)).
:- foreign(babel__implicit_get_passive_portc_78(+integer)).

get_passive_port(__CIL_PP_ONCE_CONTROL, __CIL_PP_INIT_PASSIVE_PORT, __CIL_PP_MUTEX, BABEL_RET) :- 


 babel__implicit_get_passive_portc_75(__CIL_PP_ONCE_CONTROL, __CIL_PP_INIT_PASSIVE_PORT),
babel__implicit_get_passive_portc_76(__CIL_PP_MUTEX),
babel__implicit_get_passive_portc_77(TMP_SSA_1),
BabelExp_25 is TMP_SSA_1 mod 64512,
__CIL_TMP8 is BabelExp_25,
BabelExp_26 is __CIL_TMP8 + 1024,
__CIL_TMP9 is BabelExp_26,
PORT_SSA_1 is __CIL_TMP9,
babel__implicit_get_passive_portc_78(__CIL_PP_MUTEX),BABEL_RET is PORT_SSA_1, true. 

 :- foreign(babel__implicit_do_typec_79(+integer,  -integer)).
:- foreign(babel__implicit_do_typec_80(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_typec_81(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_typec_82(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_typec_83(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_typec_84(+integer, +integer, +string)).
:- foreign(babel__implicit_do_typec_85(+integer, +integer, +string)).
:- foreign(babel__implicit_do_typec_86(+integer,  -integer)).
:- foreign(babel__implicit_do_typec_87(+string, +string, +integer, +string)).

do_type(F, CMD, VOID) :- 


 babel__implicit_do_typec_79(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_typec_80('invariant(f)', 'ftp_session.c', 953, 'do_type')
; true),

(CMD \= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 =:= 0 ->
babel__implicit_do_typec_81('cmd != ((void *)0)', 'ftp_session.c', 954, 'do_type')
; true),
__CIL_TMP23 is CMD +1* 8,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_27 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_27, 4),

(__CIL_TMP25 >= 1 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 =:= 0 ->
babel__implicit_do_typec_82('cmd->num_arg >= 1', 'ftp_session.c', 955, 'do_type')
; true),
__CIL_TMP26 is CMD +1* 8,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_28 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_28, 4),

(__CIL_TMP28 =< 2 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 =:= 0 ->
babel__implicit_do_typec_83('cmd->num_arg <= 2', 'ftp_session.c', 956, 'do_type')
; true),
__CIL_TMP29 is CMD +1* 16,
__CIL_TMP30 is __CIL_TMP29,
__CIL_TMP31 is __CIL_TMP30,
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32,
__CIL_TMP34 is __CIL_TMP33,
__CIL_TMP35 is __CIL_TMP34,
BabelExp_29 is __CIL_TMP35,
babelPtrR_byte(TYPE_SSA_1, BabelExp_29, 1),
__CIL_TMP36 is CMD +1* 8,
__CIL_TMP37 is __CIL_TMP36,
BabelExp_30 is __CIL_TMP37,
babelPtrR(__CIL_TMP38, BabelExp_30, 4),

(__CIL_TMP38 =:= 2 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
__CIL_TMP39 is CMD +1* 16,
__CIL_TMP40 is __CIL_TMP39,
__CIL_TMP41 is __CIL_TMP40,
__CIL_TMP42 is __CIL_TMP41 +4104* 1,
__CIL_TMP43 is __CIL_TMP42,
__CIL_TMP44 is __CIL_TMP43,
__CIL_TMP45 is __CIL_TMP44,
BabelExp_31 is __CIL_TMP45,
babelPtrR_byte(FORM_SSA_1, BabelExp_31, 1)
; FORM_SSA_1 is 0),
CMD_OKAY_SSA_1 is 0,

(TYPE_SSA_1 =:= 65 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
__CIL_TMP46 is CMD +1* 8,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_32 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_32, 4),

(__CIL_TMP48 =:= 1 ,
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ->
__CIL_TMP49 is F +1* 16,
__CIL_TMP50 is __CIL_TMP49,
BabelExp_33 is 0,
babel_ptrE(__CIL_TMP50, BabelExp_33, 4),
CMD_OKAY_SSA_2 is 1
; __CIL_TMP51 is CMD +1* 8,
__CIL_TMP52 is __CIL_TMP51,
BabelExp_34 is __CIL_TMP52,
babelPtrR(__CIL_TMP53, BabelExp_34, 4),

(__CIL_TMP53 =:= 2 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ->
(FORM_SSA_1 =:= 78 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ->
__CIL_TMP54 is F +1* 16,
__CIL_TMP55 is __CIL_TMP54,
BabelExp_35 is 0,
babel_ptrE(__CIL_TMP55, BabelExp_35, 4),
CMD_OKAY_SSA_2 is 1
; CMD_OKAY_SSA_2 is CMD_OKAY_SSA_1)
; CMD_OKAY_SSA_2 is CMD_OKAY_SSA_1))
; (TYPE_SSA_1 =:= 73 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
__CIL_TMP56 is F +1* 16,
__CIL_TMP57 is __CIL_TMP56,
BabelExp_36 is 1,
babel_ptrE(__CIL_TMP57, BabelExp_36, 4),
CMD_OKAY_SSA_2 is 1
; CMD_OKAY_SSA_2 is CMD_OKAY_SSA_1)),

(CMD_OKAY_SSA_2 \= 0 ->
babel__implicit_do_typec_84(F, 200, 'Command okay.')
; babel__implicit_do_typec_85(F, 504, 'Command not implemented for that parameter.')),
babel__implicit_do_typec_86(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_typec_87('invariant(f)', 'ftp_session.c', 982, 'do_type')
; true),
true. 

 :- foreign(babel__implicit_do_modec_96(+integer,  -integer)).
:- foreign(babel__implicit_do_modec_97(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_modec_98(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_modec_99(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_modec_100(+integer, +integer, +string)).
:- foreign(babel__implicit_do_modec_101(+integer, +integer, +string)).
:- foreign(babel__implicit_do_modec_102(+integer,  -integer)).
:- foreign(babel__implicit_do_modec_103(+string, +string, +integer, +string)).

do_mode(F, CMD, VOID) :- 


 babel__implicit_do_modec_96(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_modec_97('invariant(f)', 'ftp_session.c', 1017, 'do_mode')
; true),

(CMD \= 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 =:= 0 ->
babel__implicit_do_modec_98('cmd != ((void *)0)', 'ftp_session.c', 1018, 'do_mode')
; true),
__CIL_TMP12 is CMD +1* 8,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_41 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_41, 4),

(__CIL_TMP14 =:= 1 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 =:= 0 ->
babel__implicit_do_modec_99('cmd->num_arg == 1', 'ftp_session.c', 1019, 'do_mode')
; true),
__CIL_TMP15 is CMD +1* 16,
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16,
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18,
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_42 is __CIL_TMP21,
babelPtrR_byte(MODE_SSA_1, BabelExp_42, 1),

(MODE_SSA_1 =:= 83 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ->
babel__implicit_do_modec_100(F, 200, 'Command okay.')
; babel__implicit_do_modec_101(F, 504, 'Command not implemented for that parameter.')),
babel__implicit_do_modec_102(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_modec_103('invariant(f)', 'ftp_session.c', 1028, 'do_mode')
; true),
true. 

 :- foreign(babel__implicit_get_absolute_fnamec_104(+string, +string, +integer, +string)).
:- foreign(babel__implicit_get_absolute_fnamec_105(+string, +string, +integer, +string)).
:- foreign(babel__implicit_get_absolute_fnamec_106(+string, +string, +integer, +string)).
:- foreign(babel__implicit_get_absolute_fnamec_107(+integer,  -positive)).
:- foreign(babel__implicit_get_absolute_fnamec_108(+string, +string, +integer, +string)).
:- foreign(babel__implicit_get_absolute_fnamec_109(+integer, +integer)).
:- foreign(babel__implicit_get_absolute_fnamec_110(+integer,  -positive)).
:- foreign(babel__implicit_get_absolute_fnamec_111(+integer,  -positive)).
:- foreign(babel__implicit_get_absolute_fnamec_112(+string, +string, +integer, +string)).
:- foreign(babel__implicit_get_absolute_fnamec_113(+integer, +integer)).
:- foreign(babel__implicit_get_absolute_fnamec_114(+integer, +integer)).
:- foreign(babel__implicit_get_absolute_fnamec_115(+integer, +integer)).

get_absolute_fname(FNAME, FNAME_LEN, DIR, FILE, VOID) :- 


 (FNAME \= 0 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 =:= 0 ->
babel__implicit_get_absolute_fnamec_104('fname != ((void *)0)', 'ftp_session.c', 1037, 'get_absolute_fname')
; true),

(DIR \= 0 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 =:= 0 ->
babel__implicit_get_absolute_fnamec_105('dir != ((void *)0)', 'ftp_session.c', 1038, 'get_absolute_fname')
; true),

(FILE \= 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 =:= 0 ->
babel__implicit_get_absolute_fnamec_106('file != ((void *)0)', 'ftp_session.c', 1039, 'get_absolute_fname')
; true),
BabelExp_43 is FILE,
babelPtrR_byte(__CIL_TMP18, BabelExp_43, 1),
__CIL_TMP19 is __CIL_TMP18,

(__CIL_TMP19 =:= 47 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
babel__implicit_get_absolute_fnamec_107(FILE , TMP_SSA_1),

(TMP_SSA_1 < FNAME_LEN ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 =:= 0 ->
babel__implicit_get_absolute_fnamec_108('strlen(file) < fname_len', 'ftp_session.c', 1044, 'get_absolute_fname')
; true),
babel__implicit_get_absolute_fnamec_109(FNAME, FILE)
; babel__implicit_get_absolute_fnamec_110(DIR , TMP___0_SSA_1),
babel__implicit_get_absolute_fnamec_111(FILE , TMP___1_SSA_1),
BabelExp_44 is TMP___0_SSA_1 + 1,
__CIL_TMP20 is BabelExp_44,
BabelExp_45 is __CIL_TMP20 + TMP___1_SSA_1,
__CIL_TMP21 is BabelExp_45,

(__CIL_TMP21 < FNAME_LEN ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 =:= 0 ->
babel__implicit_get_absolute_fnamec_112('strlen(dir) + 1 + strlen(file) < fname_len', 'ftp_session.c', 1050, 'get_absolute_fname')
; true),
babel__implicit_get_absolute_fnamec_113(FNAME, DIR),
__CIL_TMP22 is FNAME +1* 1,
BabelExp_46 is __CIL_TMP22,
babelPtrR_byte(__CIL_TMP23, BabelExp_46, 1),
__CIL_TMP24 is __CIL_TMP23,

(__CIL_TMP24 \= 0 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
babel__implicit_get_absolute_fnamec_114(FNAME, '/')
; true),
babel__implicit_get_absolute_fnamec_115(FNAME, FILE)),
true. 

 :- foreign(babel__implicit_convert_newlinesc_141(+string, +string, +integer, +string)).
:- foreign(babel__implicit_convert_newlinesc_142(+string, +string, +integer, +string)).
:- foreign(babel__implicit_convert_newlinesc_143(+integer, +integer, +integer, +integer, +integer)).

convert_newlines(__CIL_PP_DSTLEN, __CIL_FP_DSTLEN, DST, SRC, SRCLEN, BABEL_RET) :- 


 (DST \= 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 =:= 0 ->
babel__implicit_convert_newlinesc_141('dst != ((void *)0)', 'ftp_session.c', 1345, 'convert_newlines')
; true),

(SRC \= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 =:= 0 ->
babel__implicit_convert_newlinesc_142('src != ((void *)0)', 'ftp_session.c', 1346, 'convert_newlines')
; true),
DSTLEN_SSA_1 is 0,
I_SSA_1 is 0,
BabelExp_59 is DSTLEN_SSA_1,
babel_ptrE(__CIL_FP_DSTLEN, BabelExp_59, 4),
babel__implicit_convert_newlinesc_143(__CIL_PP_DSTLEN, DST, SRC, SRCLEN, I_SSA_1),
BabelExp_60 is __CIL_FP_DSTLEN,
babelPtrR(DSTLEN_SSA_2, BabelExp_60, 4),BABEL_RET is DSTLEN_SSA_2, true. 

 :- foreign(babel__implicit_write_fullyc_144(+integer, +integer, +integer, +integer, +integer,  -integer)).

write_fully(__CIL_PP_AMT_WRITTEN, __CIL_PP___CIL_RET7, __CIL_FP_AMT_WRITTEN, __CIL_FP___CIL_RET7, FD, BUF, BUFLEN, BABEL_RET) :- 

AMT_WRITTEN_SSA_1 is 0,
BabelExp_61 is AMT_WRITTEN_SSA_1,
babel_ptrE(__CIL_FP_AMT_WRITTEN, BabelExp_61, 4),
__CIL_RET7 is 1,
BabelExp_62 is __CIL_RET7,
babel_ptrE(__CIL_FP___CIL_RET7, BabelExp_62, 4),
babel__implicit_write_fullyc_144(__CIL_PP_AMT_WRITTEN, __CIL_PP___CIL_RET7, FD, BUF, BUFLEN , RETFLAG8_SSA_1),
BabelExp_63 is __CIL_FP_AMT_WRITTEN,
babelPtrR(AMT_WRITTEN_SSA_2, BabelExp_63, 4),
BabelExp_64 is __CIL_FP___CIL_RET7,
babelPtrR(__CIL_RET7_SSA_1, BabelExp_64, 4),
(RETFLAG8_SSA_1 \= 0 ->
BABEL_RET is __CIL_RET7_SSA_1, true
; BABEL_RET is AMT_WRITTEN_SSA_2, true). 



 :- foreign(babel__implicit_filespec_has_path_separatorc_152(+string, +string, +integer, +string)).
:- foreign(babel__implicit_filespec_has_path_separatorc_153(+integer, +integer,  -integer)).

filespec_has_path_separator(FILESPEC, BABEL_RET) :- 


 (FILESPEC \= 0 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 =:= 0 ->
babel__implicit_filespec_has_path_separatorc_152('filespec != ((void *)0)', 'ftp_session.c', 1427, 'filespec_has_path_separator')
; true),
babel__implicit_filespec_has_path_separatorc_153(FILESPEC, 47 , TMP___0_SSA_1),

(TMP___0_SSA_1 \= 0 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
BABEL_RET is 1, true
; BABEL_RET is 0, true). 

 :- foreign(babel__implicit_filespec_is_legalc_154(+string, +string, +integer, +string)).
:- foreign(babel__implicit_filespec_is_legalc_155(+integer,  -integer)).
:- foreign(babel__implicit_filespec_is_legalc_156(+integer,  -integer)).

filespec_is_legal(FILESPEC, BABEL_RET) :- 


 (FILESPEC \= 0 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 =:= 0 ->
babel__implicit_filespec_is_legalc_154('filespec != ((void *)0)', 'ftp_session.c', 1440, 'filespec_is_legal')
; true),
babel__implicit_filespec_is_legalc_155(FILESPEC , TMP___0_SSA_1),
(TMP___0_SSA_1 \= 0 ->
babel__implicit_filespec_is_legalc_156(FILESPEC , TMP_SSA_1),
(TMP_SSA_1 \= 0 ->
BABEL_RET is 0, true
; BABEL_RET is 1, true)
; BABEL_RET is 1, true). 

 :- foreign(babel__implicit_do_systc_157(+integer,  -integer)).
:- foreign(babel__implicit_do_systc_158(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_systc_159(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_systc_160(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_systc_161(+integer, +integer, +string)).
:- foreign(babel__implicit_do_systc_162(+integer,  -integer)).
:- foreign(babel__implicit_do_systc_163(+string, +string, +integer, +string)).

do_syst(F, CMD, VOID) :- 


 babel__implicit_do_systc_157(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_systc_158('invariant(f)', 'ftp_session.c', 1576, 'do_syst')
; true),

(CMD \= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 =:= 0 ->
babel__implicit_do_systc_159('cmd != ((void *)0)', 'ftp_session.c', 1577, 'do_syst')
; true),
__CIL_TMP9 is CMD +1* 8,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_66 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_66, 4),

(__CIL_TMP11 =:= 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 =:= 0 ->
babel__implicit_do_systc_160('cmd->num_arg == 0', 'ftp_session.c', 1578, 'do_syst')
; true),
babel__implicit_do_systc_161(F, 215, 'UNIX'),
babel__implicit_do_systc_162(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_systc_163('invariant(f)', 'ftp_session.c', 1582, 'do_syst')
; true),
true. 

 :- foreign(babel__implicit_do_restc_171(+integer,  -integer)).
:- foreign(babel__implicit_do_restc_172(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_restc_173(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_restc_174(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_restc_175(+integer, +integer, +string)).
:- foreign(babel__implicit_do_restc_176(+integer, +integer, +string)).
:- foreign(babel__implicit_do_restc_177(+integer, +integer, +string)).
:- foreign(babel__implicit_do_restc_178(+integer,  -integer)).
:- foreign(babel__implicit_do_restc_179(+string, +string, +integer, +string)).

do_rest(F, CMD, VOID) :- 


 babel__implicit_do_restc_171(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_restc_172('invariant(f)', 'ftp_session.c', 1599, 'do_rest')
; true),

(CMD \= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 =:= 0 ->
babel__implicit_do_restc_173('cmd != ((void *)0)', 'ftp_session.c', 1600, 'do_rest')
; true),
__CIL_TMP11 is CMD +1* 8,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_68 is __CIL_TMP12,
babelPtrR(__CIL_TMP13, BabelExp_68, 4),

(__CIL_TMP13 =:= 1 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 =:= 0 ->
babel__implicit_do_restc_174('cmd->num_arg == 1', 'ftp_session.c', 1601, 'do_rest')
; true),
__CIL_TMP14 is F +1* 16,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_69 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_69, 4),

(__CIL_TMP16 \= 1 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ->
babel__implicit_do_restc_175(F, 555, 'Restart not possible in ASCII mode.')
; __CIL_TMP17 is F +1* 20,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_70 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_70, 4),

(__CIL_TMP19 \= 0 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ->
babel__implicit_do_restc_176(F, 555, 'Restart only possible with FILE structure.')
; __CIL_TMP20 is CMD +1* 16,
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_71 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_71, 8),
__CIL_TMP26 is F +1* 24,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_72 is __CIL_TMP25,
babel_ptrE(__CIL_TMP27, BabelExp_72, 8),
__CIL_TMP28 is F +1* 8,
__CIL_TMP29 is __CIL_TMP28,
__CIL_TMP30 is F +1* 32,
__CIL_TMP31 is __CIL_TMP30,
babelPtrR(BabelExp_73, __CIL_TMP29, 8),
babel_ptrE(__CIL_TMP31, BabelExp_73, 8),
babel__implicit_do_restc_177(F, 350, 'Restart okay, awaiting file retrieval request.'))),
babel__implicit_do_restc_178(F , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ->
babel__implicit_do_restc_179('invariant(f)', 'ftp_session.c', 1613, 'do_rest')
; true),
true. 

 :- foreign(babel__implicit_do_sizec_180(+integer,  -integer)).
:- foreign(babel__implicit_do_sizec_181(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_sizec_182(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_sizec_183(+string, +string, +integer, +string)).
:- foreign(babel__implicit_do_sizec_184(+integer, +integer, +string)).
:- foreign(babel__implicit_do_sizec_185(+integer, +integer, +string)).
:- foreign(babel__implicit_do_sizec_186(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_do_sizec_187(+integer, +integer,  -integer)).
:- foreign(babel__implicit_do_sizec_188( -integer)).
:- foreign(babel__implicit_do_sizec_189(+integer,  -integer)).
:- foreign(babel__implicit_do_sizec_190(+integer, +integer, +string, +integer)).
:- foreign(babel__implicit_do_sizec_191(+integer, +integer, +string)).
:- foreign(babel__implicit_do_sizec_192(+integer, +integer, +string, +integer)).
:- foreign(babel__implicit_do_sizec_193(+integer, +integer, +string, +integer)).
:- foreign(babel__implicit_do_sizec_194(+integer,  -integer)).
:- foreign(babel__implicit_do_sizec_195(+string, +string, +integer, +string)).

do_size(__CIL_PP_STAT_BUF, F, CMD, FULL_PATH, VOID) :- 

babel__implicit_do_sizec_180(F , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_do_sizec_181('invariant(f)', 'ftp_session.c', 1622, 'do_size')
; true),

(CMD \= 0 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 =:= 0 ->
babel__implicit_do_sizec_182('cmd != ((void *)0)', 'ftp_session.c', 1623, 'do_size')
; true),
__CIL_TMP25 is CMD +1* 8,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_74 is __CIL_TMP26,
babelPtrR(__CIL_TMP27, BabelExp_74, 4),

(__CIL_TMP27 =:= 1 ,
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 =:= 0 ->
babel__implicit_do_sizec_183('cmd->num_arg == 1', 'ftp_session.c', 1624, 'do_size')
; true),
__CIL_TMP28 is F +1* 16,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_75 is __CIL_TMP29,
babelPtrR(__CIL_TMP30, BabelExp_75, 4),

(__CIL_TMP30 \= 1 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ->
babel__implicit_do_sizec_184(F, 550, 'Size cannot be determined in ASCII mode.')
; __CIL_TMP31 is F +1* 20,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_76 is __CIL_TMP32,
babelPtrR(__CIL_TMP33, BabelExp_76, 4),

(__CIL_TMP33 \= 0 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ->
babel__implicit_do_sizec_185(F, 550, 'Size cannot be determined with FILE structure.')
; __CIL_TMP34 is CMD +1* 16,
__CIL_TMP35 is __CIL_TMP34,
__CIL_TMP36 is __CIL_TMP35,
__CIL_TMP37 is __CIL_TMP36,
__CIL_TMP38 is __CIL_TMP37,
__CIL_TMP39 is __CIL_TMP38,
FILE_NAME_SSA_1 is __CIL_TMP39,
__CIL_TMP40 is F +1* 160,
__CIL_TMP41 is __CIL_TMP40,
__CIL_TMP42 is __CIL_TMP41,
BabelExp_77 is FULL_PATH,
__CIL_TMP43 is BabelExp_77,
babel__implicit_do_sizec_186(__CIL_TMP43, 8193, __CIL_TMP42, FILE_NAME_SSA_1),
BabelExp_78 is FULL_PATH,
__CIL_TMP44 is BabelExp_78,
babel__implicit_do_sizec_187(__CIL_TMP44, __CIL_PP_STAT_BUF , TMP___2_SSA_1),

(TMP___2_SSA_1 \= 0 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
babel__implicit_do_sizec_188(TMP___0_SSA_1),
BabelExp_79 is TMP___0_SSA_1,
babelPtrR(__CIL_TMP45, BabelExp_79, 4),
babel__implicit_do_sizec_189(__CIL_TMP45 , TMP___1_SSA_1),
babel__implicit_do_sizec_190(F, 550, 'Error getting file status; %s.', TMP___1_SSA_1)
; __CIL_TMP46 is __CIL_PP_STAT_BUF +1* 24,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_80 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_80, 4),
BabelExp_81 is __CIL_TMP48 /\ 61440,
__CIL_TMP49 is BabelExp_81,

(__CIL_TMP49 =:= 16384 ,
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ->
babel__implicit_do_sizec_191(F, 550, 'File is a directory, SIZE command not valid.')
; (8 =:= 8 ,
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ->
__CIL_TMP50 is __CIL_PP_STAT_BUF +1* 48,
__CIL_TMP51 is __CIL_TMP50,
BabelExp_82 is __CIL_TMP51,
babelPtrR(__CIL_TMP52, BabelExp_82, 8),
babel__implicit_do_sizec_192(F, 213, '%llu', __CIL_TMP52)
; __CIL_TMP53 is __CIL_PP_STAT_BUF +1* 48,
__CIL_TMP54 is __CIL_TMP53,
BabelExp_83 is __CIL_TMP54,
babelPtrR(__CIL_TMP55, BabelExp_83, 8),
babel__implicit_do_sizec_193(F, 213, '%lu', __CIL_TMP55)))))),
babel__implicit_do_sizec_194(F , TMP___3_SSA_1),
(TMP___3_SSA_1 =:= 0 ->
babel__implicit_do_sizec_195('invariant(f)', 'ftp_session.c', 1658, 'do_size')
; true),
true. 

 :- foreign(babel__implicit_write_fully_cil_lr_1c_196(+integer, +integer, +positive,  -integer)).

write_fully_cil_lr_1(__CIL_AP_AMT_WRITTEN, __CIL_AP___CIL_RET7, FD, BUF, BUFLEN, BABEL_RET) :- 


 BabelExp_84 is __CIL_AP_AMT_WRITTEN,
babelPtrR(__CIL_TMP14, BabelExp_84, 4),

(__CIL_TMP14 < BUFLEN ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ->
BabelExp_85 is __CIL_AP_AMT_WRITTEN,
babelPtrR(__CIL_TMP15, BabelExp_85, 4),
__CIL_TMP16 is BUF +1* __CIL_TMP15,
BabelExp_86 is __CIL_AP_AMT_WRITTEN,
babelPtrR(__CIL_TMP17, BabelExp_86, 4),
BabelExp_87 is BUFLEN - __CIL_TMP17,
__CIL_TMP18 is BabelExp_87,
babel__implicit_write_fully_cil_lr_1c_196(FD, __CIL_TMP16, __CIL_TMP18 , TMP_SSA_1),
WRITE_RET_SSA_1 is TMP_SSA_1,

(WRITE_RET_SSA_1 =< 0 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
BabelExp_88 is -1,
babel_ptrE(__CIL_AP___CIL_RET7, BabelExp_88, 4),BABEL_RET is 1, true
; BabelExp_89 is __CIL_AP_AMT_WRITTEN,
babelPtrR(__CIL_TMP19, BabelExp_89, 4),
BabelExp_90 is __CIL_TMP19 + WRITE_RET_SSA_1,
babel_ptrE(__CIL_AP_AMT_WRITTEN, BabelExp_90, 4),
write_fully_cil_lr_1(__CIL_AP_AMT_WRITTEN, __CIL_AP___CIL_RET7, FD, BUF, BUFLEN , RETFLAG8_SSA_1),BABEL_RET is RETFLAG8_SSA_1, true)
; BABEL_RET is 0, true). 

 

 :- foreign(babel__implicit_telnet_session_destroyc_10(+integer,  -integer)).
:- foreign(babel__implicit_telnet_session_destroyc_11(+string, +string, +integer, +string)).
:- foreign(babel__implicit_telnet_session_destroyc_12(+integer)).
:- foreign(babel__implicit_telnet_session_destroyc_13(+integer)).

telnet_session_destroy(T, VOID) :- 


 babel__implicit_telnet_session_destroyc_10(T , TMP_SSA_1),
(TMP_SSA_1 =:= 0 ->
babel__implicit_telnet_session_destroyc_11('invariant(t)', 'telnet_session.c', 182, 'telnet_session_destroy')
; true),
MEM_14 is T,
BabelExp_0 is MEM_14,
babelPtrR(__CIL_TMP5, BabelExp_0, 4),
babel__implicit_telnet_session_destroyc_12(__CIL_TMP5),
__CIL_TMP6 is T +1* 2076,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_1 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_1, 4),
MEM_15 is T,
BabelExp_2 is MEM_15,
babelPtrR(__CIL_TMP9, BabelExp_2, 4),

(__CIL_TMP8 \= __CIL_TMP9 ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
__CIL_TMP10 is T +1* 2076,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_3 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_3, 4),
babel__implicit_telnet_session_destroyc_13(__CIL_TMP12)
; true),
MEM_16 is T,
BabelExp_4 is -1,
babel_ptrE(MEM_16, BabelExp_4, 4),
__CIL_TMP13 is T +1* 2076,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_5 is -1,
babel_ptrE(__CIL_TMP14, BabelExp_5, 4),true. 

%:- foreign(babel__implicit_read_incoming_datac_14(+integer,  -integer)).
%:- foreign(babel__implicit_read_incoming_datac_15(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_read_incoming_datac_16(+integer,  -integer)).
%:- foreign(babel__implicit_read_incoming_datac_17(+integer, +integer, +positive,  -integer)).
%:- foreign(babel__implicit_read_incoming_datac_18( -integer)).
%:- foreign(babel__implicit_read_incoming_datac_19(+integer, +positive, +integer, +positive)).
%
%read_incoming_data(T, BUF, VOID) :- 
%
%babel__implicit_read_incoming_datac_14(T , TMP_SSA_1),
%
%(TMP_SSA_1 =< 2048 ,
%__CIL_TMP15 is 1
%; __CIL_TMP15 is 0),
%
%(__CIL_TMP15 =:= 0 ->
%babel__implicit_read_incoming_datac_15('max_input_read(t) <= 2048', 'telnet_session.c', 252, 'read_incoming_data')
%; true),
%babel__implicit_read_incoming_datac_16(T , TMP___0_SSA_1),
%BabelExp_6 is BUF,
%__CIL_TMP18 is BabelExp_6,
%MEM_18 is T,
%BabelExp_7 is MEM_18,
%babelPtrR(__CIL_TMP19, BabelExp_7, 4),
%babel__implicit_read_incoming_datac_17(__CIL_TMP19, __CIL_TMP18, TMP___0_SSA_1 , TMP___1_SSA_1),
%READ_RET_SSA_1 is TMP___1_SSA_1,
%
%(READ_RET_SSA_1 =:= -1 ,
%__CIL_TMP16 is 1
%; __CIL_TMP16 is 0),
%
%(__CIL_TMP16 \= 0 ->
%babel__implicit_read_incoming_datac_18(TMP___2_SSA_1),
%__CIL_TMP20 is T +1* 4,
%__CIL_TMP21 is __CIL_TMP20,
%babelPtrR(BabelExp_8, TMP___2_SSA_1, 4),
%babel_ptrE(__CIL_TMP21, BabelExp_8, 4)
%; (READ_RET_SSA_1 =:= 0 ,
%__CIL_TMP17 is 1
%; __CIL_TMP17 is 0),
%
%(__CIL_TMP17 \= 0 ->
%__CIL_TMP22 is T +1* 8,
%__CIL_TMP23 is __CIL_TMP22,
%BabelExp_9 is 1,
%babel_ptrE(__CIL_TMP23, BabelExp_9, 4)
%; I_SSA_1 is 0,
%babel__implicit_read_incoming_datac_19(T, READ_RET_SSA_1, BUF, I_SSA_1))),
%true. 
%
% :- foreign(babel__implicit_add_incoming_charc_20(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_add_incoming_charc_21(+string, +string, +integer, +string)).
%
%add_incoming_char(T, C, VOID) :- 
%
%
% __CIL_TMP8 is T +1* 16,
%__CIL_TMP9 is __CIL_TMP8,
%BabelExp_10 is __CIL_TMP9,
%babelPtrR(__CIL_TMP10, BabelExp_10, 4),
%
%(__CIL_TMP10 >= 0 ,
%__CIL_TMP3 is 1
%; __CIL_TMP3 is 0),
%
%(__CIL_TMP3 =:= 0 ->
%babel__implicit_add_incoming_charc_20('t->in_add >= 0', 'telnet_session.c', 333, 'add_incoming_char')
%; true),
%__CIL_TMP11 is T +1* 16,
%__CIL_TMP12 is __CIL_TMP11,
%BabelExp_11 is __CIL_TMP12,
%babelPtrR(__CIL_TMP13, BabelExp_11, 4),
%
%(__CIL_TMP13 < 2048 ,
%__CIL_TMP4 is 1
%; __CIL_TMP4 is 0),
%
%(__CIL_TMP4 =:= 0 ->
%babel__implicit_add_incoming_charc_21('t->in_add < 2048', 'telnet_session.c', 334, 'add_incoming_char')
%; true),
%__CIL_TMP14 is T +1* 20,
%__CIL_TMP15 is __CIL_TMP14,
%__CIL_TMP16 is T +1* 16,
%__CIL_TMP17 is __CIL_TMP16,
%__CIL_TMP18 is __CIL_TMP15,
%BabelExp_12 is __CIL_TMP17,
%babelPtrR(__CIL_TMP19, BabelExp_12, 4),
%__CIL_TMP20 is __CIL_TMP18 +1* __CIL_TMP19,
%BabelExp_13 is C,
%babel_ptrE(__CIL_TMP20, BabelExp_13, 1),
%__CIL_TMP21 is T +1* 16,
%__CIL_TMP22 is __CIL_TMP21,
%BabelExp_14 is __CIL_TMP22,
%babelPtrR(__CIL_TMP23, BabelExp_14, 4),
%__CIL_TMP24 is T +1* 16,
%__CIL_TMP25 is __CIL_TMP24,
%BabelExp_15 is __CIL_TMP23 + 1,
%babel_ptrE(__CIL_TMP25, BabelExp_15, 4),
%__CIL_TMP26 is T +1* 16,
%__CIL_TMP27 is __CIL_TMP26,
%BabelExp_16 is __CIL_TMP27,
%babelPtrR(__CIL_TMP28, BabelExp_16, 4),
%
%(__CIL_TMP28 =:= 2048 ,
%__CIL_TMP5 is 1
%; __CIL_TMP5 is 0),
%
%(__CIL_TMP5 \= 0 ->
%__CIL_TMP29 is T +1* 16,
%__CIL_TMP30 is __CIL_TMP29,
%BabelExp_17 is 0,
%babel_ptrE(__CIL_TMP30, BabelExp_17, 4)
%; true),
%__CIL_TMP31 is T +1* 2068,
%__CIL_TMP32 is __CIL_TMP31,
%BabelExp_18 is __CIL_TMP32,
%babelPtrR(__CIL_TMP33, BabelExp_18, 4),
%
%(__CIL_TMP33 =:= 2048 ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%__CIL_TMP34 is T +1* 12,
%__CIL_TMP35 is __CIL_TMP34,
%BabelExp_19 is __CIL_TMP35,
%babelPtrR(__CIL_TMP36, BabelExp_19, 4),
%__CIL_TMP37 is T +1* 12,
%__CIL_TMP38 is __CIL_TMP37,
%BabelExp_20 is __CIL_TMP36 + 1,
%babel_ptrE(__CIL_TMP38, BabelExp_20, 4),
%__CIL_TMP39 is T +1* 12,
%__CIL_TMP40 is __CIL_TMP39,
%BabelExp_21 is __CIL_TMP40,
%babelPtrR(__CIL_TMP41, BabelExp_21, 4),
%
%(__CIL_TMP41 =:= 2048 ,
%__CIL_TMP7 is 1
%; __CIL_TMP7 is 0),
%
%(__CIL_TMP7 \= 0 ->
%__CIL_TMP42 is T +1* 12,
%__CIL_TMP43 is __CIL_TMP42,
%BabelExp_22 is 0,
%babel_ptrE(__CIL_TMP43, BabelExp_22, 4)
%; true)
%; __CIL_TMP44 is T +1* 2068,
%__CIL_TMP45 is __CIL_TMP44,
%BabelExp_23 is __CIL_TMP45,
%babelPtrR(__CIL_TMP46, BabelExp_23, 4),
%__CIL_TMP47 is T +1* 2068,
%__CIL_TMP48 is __CIL_TMP47,
%BabelExp_24 is __CIL_TMP46 + 1,
%babel_ptrE(__CIL_TMP48, BabelExp_24, 4)),
%true. 
%
% :- foreign(babel__implicit_use_incoming_charc_22(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_use_incoming_charc_23(+string, +string, +integer, +string)).
%
%use_incoming_char(T, BABEL_RET) :- 
%
%
% __CIL_TMP7 is T +1* 12,
%__CIL_TMP8 is __CIL_TMP7,
%BabelExp_25 is __CIL_TMP8,
%babelPtrR(__CIL_TMP9, BabelExp_25, 4),
%
%(__CIL_TMP9 >= 0 ,
%__CIL_TMP4 is 1
%; __CIL_TMP4 is 0),
%
%(__CIL_TMP4 =:= 0 ->
%babel__implicit_use_incoming_charc_22('t->in_take >= 0', 'telnet_session.c', 355, 'use_incoming_char')
%; true),
%__CIL_TMP10 is T +1* 12,
%__CIL_TMP11 is __CIL_TMP10,
%BabelExp_26 is __CIL_TMP11,
%babelPtrR(__CIL_TMP12, BabelExp_26, 4),
%
%(__CIL_TMP12 < 2048 ,
%__CIL_TMP5 is 1
%; __CIL_TMP5 is 0),
%
%(__CIL_TMP5 =:= 0 ->
%babel__implicit_use_incoming_charc_23('t->in_take < 2048', 'telnet_session.c', 356, 'use_incoming_char')
%; true),
%__CIL_TMP13 is T +1* 20,
%__CIL_TMP14 is __CIL_TMP13,
%__CIL_TMP15 is T +1* 12,
%__CIL_TMP16 is __CIL_TMP15,
%__CIL_TMP17 is __CIL_TMP14,
%BabelExp_27 is __CIL_TMP16,
%babelPtrR(__CIL_TMP18, BabelExp_27, 4),
%__CIL_TMP19 is __CIL_TMP17 +1* __CIL_TMP18,
%BabelExp_28 is __CIL_TMP19,
%babelPtrR_byte(__CIL_TMP20, BabelExp_28, 1),
%C_SSA_1 is __CIL_TMP20,
%__CIL_TMP21 is T +1* 12,
%__CIL_TMP22 is __CIL_TMP21,
%BabelExp_29 is __CIL_TMP22,
%babelPtrR(__CIL_TMP23, BabelExp_29, 4),
%__CIL_TMP24 is T +1* 12,
%__CIL_TMP25 is __CIL_TMP24,
%BabelExp_30 is __CIL_TMP23 + 1,
%babel_ptrE(__CIL_TMP25, BabelExp_30, 4),
%__CIL_TMP26 is T +1* 12,
%__CIL_TMP27 is __CIL_TMP26,
%BabelExp_31 is __CIL_TMP27,
%babelPtrR(__CIL_TMP28, BabelExp_31, 4),
%
%(__CIL_TMP28 =:= 2048 ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%__CIL_TMP29 is T +1* 12,
%__CIL_TMP30 is __CIL_TMP29,
%BabelExp_32 is 0,
%babel_ptrE(__CIL_TMP30, BabelExp_32, 4)
%; true),
%__CIL_TMP31 is T +1* 2068,
%__CIL_TMP32 is __CIL_TMP31,
%BabelExp_33 is __CIL_TMP32,
%babelPtrR(__CIL_TMP33, BabelExp_33, 4),
%__CIL_TMP34 is T +1* 2068,
%__CIL_TMP35 is __CIL_TMP34,
%BabelExp_34 is __CIL_TMP33 - 1,
%babel_ptrE(__CIL_TMP35, BabelExp_34, 4),BABEL_RET is C_SSA_1, true. 
%
% :- foreign(babel__implicit_add_outgoing_charc_24(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_add_outgoing_charc_25(+string, +string, +integer, +string)).
%
%add_outgoing_char(T, C, VOID) :- 
%
%
% __CIL_TMP8 is T +1* 2092,
%__CIL_TMP9 is __CIL_TMP8,
%BabelExp_35 is __CIL_TMP9,
%babelPtrR(__CIL_TMP10, BabelExp_35, 4),
%
%(__CIL_TMP10 >= 0 ,
%__CIL_TMP3 is 1
%; __CIL_TMP3 is 0),
%
%(__CIL_TMP3 =:= 0 ->
%babel__implicit_add_outgoing_charc_24('t->out_add >= 0', 'telnet_session.c', 370, 'add_outgoing_char')
%; true),
%__CIL_TMP11 is T +1* 2092,
%__CIL_TMP12 is __CIL_TMP11,
%BabelExp_36 is __CIL_TMP12,
%babelPtrR(__CIL_TMP13, BabelExp_36, 4),
%
%(__CIL_TMP13 < 2048 ,
%__CIL_TMP4 is 1
%; __CIL_TMP4 is 0),
%
%(__CIL_TMP4 =:= 0 ->
%babel__implicit_add_outgoing_charc_25('t->out_add < 2048', 'telnet_session.c', 371, 'add_outgoing_char')
%; true),
%__CIL_TMP14 is T +1* 2096,
%__CIL_TMP15 is __CIL_TMP14,
%__CIL_TMP16 is T +1* 2092,
%__CIL_TMP17 is __CIL_TMP16,
%__CIL_TMP18 is __CIL_TMP15,
%BabelExp_37 is __CIL_TMP17,
%babelPtrR(__CIL_TMP19, BabelExp_37, 4),
%__CIL_TMP20 is __CIL_TMP18 +1* __CIL_TMP19,
%BabelExp_38 is C,
%babel_ptrE(__CIL_TMP20, BabelExp_38, 1),
%__CIL_TMP21 is T +1* 2092,
%__CIL_TMP22 is __CIL_TMP21,
%BabelExp_39 is __CIL_TMP22,
%babelPtrR(__CIL_TMP23, BabelExp_39, 4),
%__CIL_TMP24 is T +1* 2092,
%__CIL_TMP25 is __CIL_TMP24,
%BabelExp_40 is __CIL_TMP23 + 1,
%babel_ptrE(__CIL_TMP25, BabelExp_40, 4),
%__CIL_TMP26 is T +1* 2092,
%__CIL_TMP27 is __CIL_TMP26,
%BabelExp_41 is __CIL_TMP27,
%babelPtrR(__CIL_TMP28, BabelExp_41, 4),
%
%(__CIL_TMP28 =:= 2048 ,
%__CIL_TMP5 is 1
%; __CIL_TMP5 is 0),
%
%(__CIL_TMP5 \= 0 ->
%__CIL_TMP29 is T +1* 2092,
%__CIL_TMP30 is __CIL_TMP29,
%BabelExp_42 is 0,
%babel_ptrE(__CIL_TMP30, BabelExp_42, 4)
%; true),
%__CIL_TMP31 is T +1* 4144,
%__CIL_TMP32 is __CIL_TMP31,
%BabelExp_43 is __CIL_TMP32,
%babelPtrR(__CIL_TMP33, BabelExp_43, 4),
%
%(__CIL_TMP33 =:= 2048 ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%__CIL_TMP34 is T +1* 2088,
%__CIL_TMP35 is __CIL_TMP34,
%BabelExp_44 is __CIL_TMP35,
%babelPtrR(__CIL_TMP36, BabelExp_44, 4),
%__CIL_TMP37 is T +1* 2088,
%__CIL_TMP38 is __CIL_TMP37,
%BabelExp_45 is __CIL_TMP36 + 1,
%babel_ptrE(__CIL_TMP38, BabelExp_45, 4),
%__CIL_TMP39 is T +1* 2088,
%__CIL_TMP40 is __CIL_TMP39,
%BabelExp_46 is __CIL_TMP40,
%babelPtrR(__CIL_TMP41, BabelExp_46, 4),
%
%(__CIL_TMP41 =:= 2048 ,
%__CIL_TMP7 is 1
%; __CIL_TMP7 is 0),
%
%(__CIL_TMP7 \= 0 ->
%__CIL_TMP42 is T +1* 2088,
%__CIL_TMP43 is __CIL_TMP42,
%BabelExp_47 is 0,
%babel_ptrE(__CIL_TMP43, BabelExp_47, 4)
%; true)
%; __CIL_TMP44 is T +1* 4144,
%__CIL_TMP45 is __CIL_TMP44,
%BabelExp_48 is __CIL_TMP45,
%babelPtrR(__CIL_TMP46, BabelExp_48, 4),
%__CIL_TMP47 is T +1* 4144,
%__CIL_TMP48 is __CIL_TMP47,
%BabelExp_49 is __CIL_TMP46 + 1,
%babel_ptrE(__CIL_TMP48, BabelExp_49, 4)),
%true. 
%
% :- foreign(babel__implicit_write_outgoing_datac_26(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_write_outgoing_datac_27(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_write_outgoing_datac_28(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_write_outgoing_datac_29(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_write_outgoing_datac_30(+integer, +integer, +positive,  -integer)).
%:- foreign(babel__implicit_write_outgoing_datac_31(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_write_outgoing_datac_32(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_write_outgoing_datac_33(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_write_outgoing_datac_34(+integer, +integer, +positive,  -integer)).
%:- foreign(babel__implicit_write_outgoing_datac_35( -integer)).
%
%write_outgoing_data(T, VOID) :- 
%
%
% __CIL_TMP21 is T +1* 2088,
%__CIL_TMP22 is __CIL_TMP21,
%__CIL_TMP23 is T +1* 2092,
%__CIL_TMP24 is __CIL_TMP23,
%BabelExp_50 is __CIL_TMP22,
%babelPtrR(__CIL_TMP25, BabelExp_50, 4),
%BabelExp_51 is __CIL_TMP24,
%babelPtrR(__CIL_TMP26, BabelExp_51, 4),
%
%(__CIL_TMP25 < __CIL_TMP26 ,
%__CIL_TMP10 is 1
%; __CIL_TMP10 is 0),
%
%(__CIL_TMP10 \= 0 ->
%__CIL_TMP27 is T +1* 2088,
%__CIL_TMP28 is __CIL_TMP27,
%BabelExp_52 is __CIL_TMP28,
%babelPtrR(__CIL_TMP29, BabelExp_52, 4),
%
%(__CIL_TMP29 >= 0 ,
%__CIL_TMP11 is 1
%; __CIL_TMP11 is 0),
%
%(__CIL_TMP11 =:= 0 ->
%babel__implicit_write_outgoing_datac_26('t->out_take >= 0', 'telnet_session.c', 395, 'write_outgoing_data')
%; true),
%__CIL_TMP30 is T +1* 2088,
%__CIL_TMP31 is __CIL_TMP30,
%BabelExp_53 is __CIL_TMP31,
%babelPtrR(__CIL_TMP32, BabelExp_53, 4),
%
%(__CIL_TMP32 < 2048 ,
%__CIL_TMP12 is 1
%; __CIL_TMP12 is 0),
%
%(__CIL_TMP12 =:= 0 ->
%babel__implicit_write_outgoing_datac_27('t->out_take < 2048', 'telnet_session.c', 396, 'write_outgoing_data')
%; true),
%__CIL_TMP33 is T +1* 4144,
%__CIL_TMP34 is __CIL_TMP33,
%BabelExp_54 is __CIL_TMP34,
%babelPtrR(__CIL_TMP35, BabelExp_54, 4),
%
%(__CIL_TMP35 > 0 ,
%__CIL_TMP13 is 1
%; __CIL_TMP13 is 0),
%
%(__CIL_TMP13 =:= 0 ->
%babel__implicit_write_outgoing_datac_28('t->out_buflen > 0', 'telnet_session.c', 397, 'write_outgoing_data')
%; true),
%__CIL_TMP36 is T +1* 4144,
%__CIL_TMP37 is __CIL_TMP36,
%__CIL_TMP38 is T +1* 2088,
%__CIL_TMP39 is __CIL_TMP38,
%BabelExp_55 is __CIL_TMP37,
%babelPtrR(__CIL_TMP40, BabelExp_55, 4),
%BabelExp_56 is __CIL_TMP39,
%babelPtrR(__CIL_TMP41, BabelExp_56, 4),
%BabelExp_57 is __CIL_TMP40 + __CIL_TMP41,
%__CIL_TMP42 is BabelExp_57,
%
%(__CIL_TMP42 =< 2048 ,
%__CIL_TMP14 is 1
%; __CIL_TMP14 is 0),
%
%(__CIL_TMP14 =:= 0 ->
%babel__implicit_write_outgoing_datac_29('t->out_buflen + t->out_take <= 2048', 'telnet_session.c', 398, 'write_outgoing_data')
%; true),
%__CIL_TMP43 is T +1* 2076,
%__CIL_TMP44 is __CIL_TMP43,
%__CIL_TMP45 is T +1* 2096,
%__CIL_TMP46 is __CIL_TMP45,
%__CIL_TMP47 is T +1* 2088,
%__CIL_TMP48 is __CIL_TMP47,
%__CIL_TMP49 is __CIL_TMP46,
%BabelExp_58 is __CIL_TMP48,
%babelPtrR(__CIL_TMP50, BabelExp_58, 4),
%__CIL_TMP51 is __CIL_TMP49 +1* __CIL_TMP50,
%__CIL_TMP52 is T +1* 4144,
%__CIL_TMP53 is __CIL_TMP52,
%BabelExp_59 is __CIL_TMP53,
%babelPtrR(__CIL_TMP54, BabelExp_59, 4),
%BabelExp_60 is __CIL_TMP44,
%babelPtrR(__CIL_TMP55, BabelExp_60, 4),
%babel__implicit_write_outgoing_datac_30(__CIL_TMP55, __CIL_TMP51, __CIL_TMP54 , TMP_SSA_1),
%WRITE_RET_SSA_1 is TMP_SSA_1
%; __CIL_TMP56 is T +1* 2088,
%__CIL_TMP57 is __CIL_TMP56,
%BabelExp_61 is __CIL_TMP57,
%babelPtrR(__CIL_TMP58, BabelExp_61, 4),
%
%(__CIL_TMP58 >= 0 ,
%__CIL_TMP15 is 1
%; __CIL_TMP15 is 0),
%
%(__CIL_TMP15 =:= 0 ->
%babel__implicit_write_outgoing_datac_31('t->out_take >= 0', 'telnet_session.c', 403, 'write_outgoing_data')
%; true),
%__CIL_TMP59 is T +1* 2088,
%__CIL_TMP60 is __CIL_TMP59,
%BabelExp_62 is __CIL_TMP60,
%babelPtrR(__CIL_TMP61, BabelExp_62, 4),
%
%(__CIL_TMP61 < 2048 ,
%__CIL_TMP16 is 1
%; __CIL_TMP16 is 0),
%
%(__CIL_TMP16 =:= 0 ->
%babel__implicit_write_outgoing_datac_32('t->out_take < 2048', 'telnet_session.c', 404, 'write_outgoing_data')
%; true),
%__CIL_TMP62 is T +1* 2088,
%__CIL_TMP63 is __CIL_TMP62,
%BabelExp_63 is __CIL_TMP63,
%babelPtrR(__CIL_TMP64, BabelExp_63, 4),
%BabelExp_64 is 2048 - __CIL_TMP64,
%__CIL_TMP65 is BabelExp_64,
%
%(__CIL_TMP65 > 0 ,
%__CIL_TMP17 is 1
%; __CIL_TMP17 is 0),
%
%(__CIL_TMP17 =:= 0 ->
%babel__implicit_write_outgoing_datac_33('(2048 - t->out_take) > 0', 'telnet_session.c', 405, 'write_outgoing_data')
%; true),
%__CIL_TMP66 is T +1* 2076,
%__CIL_TMP67 is __CIL_TMP66,
%__CIL_TMP68 is T +1* 2096,
%__CIL_TMP69 is __CIL_TMP68,
%__CIL_TMP70 is T +1* 2088,
%__CIL_TMP71 is __CIL_TMP70,
%__CIL_TMP72 is __CIL_TMP69,
%BabelExp_65 is __CIL_TMP71,
%babelPtrR(__CIL_TMP73, BabelExp_65, 4),
%__CIL_TMP74 is __CIL_TMP72 +1* __CIL_TMP73,
%__CIL_TMP75 is T +1* 2088,
%__CIL_TMP76 is __CIL_TMP75,
%BabelExp_66 is __CIL_TMP76,
%babelPtrR(__CIL_TMP77, BabelExp_66, 4),
%BabelExp_67 is 2048 - __CIL_TMP77,
%__CIL_TMP78 is BabelExp_67,
%BabelExp_68 is __CIL_TMP67,
%babelPtrR(__CIL_TMP79, BabelExp_68, 4),
%babel__implicit_write_outgoing_datac_34(__CIL_TMP79, __CIL_TMP74, __CIL_TMP78 , TMP___0_SSA_1),
%WRITE_RET_SSA_1 is TMP___0_SSA_1),
%
%(WRITE_RET_SSA_1 =:= -1 ,
%__CIL_TMP18 is 1
%; __CIL_TMP18 is 0),
%
%(__CIL_TMP18 \= 0 ->
%babel__implicit_write_outgoing_datac_35(TMP___1_SSA_1),
%__CIL_TMP80 is T +1* 2080,
%__CIL_TMP81 is __CIL_TMP80,
%babelPtrR(BabelExp_69, TMP___1_SSA_1, 4),
%babel_ptrE(__CIL_TMP81, BabelExp_69, 4)
%; (WRITE_RET_SSA_1 =:= 0 ,
%__CIL_TMP19 is 1
%; __CIL_TMP19 is 0),
%
%(__CIL_TMP19 \= 0 ->
%__CIL_TMP82 is T +1* 2084,
%__CIL_TMP83 is __CIL_TMP82,
%BabelExp_70 is 1,
%babel_ptrE(__CIL_TMP83, BabelExp_70, 4)
%; __CIL_TMP84 is T +1* 4144,
%__CIL_TMP85 is __CIL_TMP84,
%BabelExp_71 is __CIL_TMP85,
%babelPtrR(__CIL_TMP86, BabelExp_71, 4),
%__CIL_TMP87 is __CIL_TMP86,
%BabelExp_72 is __CIL_TMP87 - WRITE_RET_SSA_1,
%__CIL_TMP88 is BabelExp_72,
%__CIL_TMP89 is T +1* 4144,
%__CIL_TMP90 is __CIL_TMP89,
%BabelExp_73 is __CIL_TMP88,
%babel_ptrE(__CIL_TMP90, BabelExp_73, 4),
%__CIL_TMP91 is T +1* 2088,
%__CIL_TMP92 is __CIL_TMP91,
%BabelExp_74 is __CIL_TMP92,
%babelPtrR(__CIL_TMP93, BabelExp_74, 4),
%__CIL_TMP94 is __CIL_TMP93,
%BabelExp_75 is __CIL_TMP94 + WRITE_RET_SSA_1,
%__CIL_TMP95 is BabelExp_75,
%__CIL_TMP96 is T +1* 2088,
%__CIL_TMP97 is __CIL_TMP96,
%BabelExp_76 is __CIL_TMP95,
%babel_ptrE(__CIL_TMP97, BabelExp_76, 4),
%__CIL_TMP98 is T +1* 2088,
%__CIL_TMP99 is __CIL_TMP98,
%BabelExp_77 is __CIL_TMP99,
%babelPtrR(__CIL_TMP100, BabelExp_77, 4),
%
%(__CIL_TMP100 >= 2048 ,
%__CIL_TMP20 is 1
%; __CIL_TMP20 is 0),
%
%(__CIL_TMP20 \= 0 ->
%__CIL_TMP101 is T +1* 2088,
%__CIL_TMP102 is __CIL_TMP101,
%BabelExp_78 is __CIL_TMP102,
%babelPtrR(__CIL_TMP103, BabelExp_78, 4),
%__CIL_TMP104 is T +1* 2088,
%__CIL_TMP105 is __CIL_TMP104,
%BabelExp_79 is __CIL_TMP103 - 2048,
%babel_ptrE(__CIL_TMP105, BabelExp_79, 4)
%; true))),
%true. 
%
% :- foreign(babel__implicit_read_incoming_data_cil_lr_1c_36(+integer, +integer)).
%
%read_incoming_data_cil_lr_1(T, READ_RET, BUF, I, VOID) :- 
%
%
% (I < READ_RET ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%__CIL_TMP7 is BUF +1* I,
%BabelExp_80 is __CIL_TMP7,
%babelPtrR_byte(__CIL_TMP8, BabelExp_80, 1),
%__CIL_TMP9 is __CIL_TMP8,
%babel__implicit_read_incoming_data_cil_lr_1c_36(T, __CIL_TMP9),
%BabelExp_81 is I + 1,
%I_SSA_1 is BabelExp_81,
%read_incoming_data_cil_lr_1(T, READ_RET, BUF, I_SSA_1, VOID),true
%; true). 
%
% 
%:- foreign(babel__implicit_watchdog_defer_watchedc_0(+integer,  -integer)).
%:- foreign(babel__implicit_watchdog_defer_watchedc_1(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_watchdog_defer_watchedc_2(+integer)).
%:- foreign(babel__implicit_watchdog_defer_watchedc_3(+integer, +integer)).
%:- foreign(babel__implicit_watchdog_defer_watchedc_4(+integer, +integer)).
%:- foreign(babel__implicit_watchdog_defer_watchedc_5(+integer)).
%:- foreign(babel__implicit_watchdog_defer_watchedc_6(+integer,  -integer)).
%:- foreign(babel__implicit_watchdog_defer_watchedc_7(+string, +string, +integer, +string)).
%
%watchdog_defer_watched(WATCHED, VOID) :- 
%
%
% __CIL_TMP8 is WATCHED +1* 40,
%__CIL_TMP9 is __CIL_TMP8,
%BabelExp_0 is __CIL_TMP9,
%babelPtrR(__CIL_TMP10, BabelExp_0, 8),
%babel__implicit_watchdog_defer_watchedc_0(__CIL_TMP10 , TMP_SSA_1),
%(TMP_SSA_1 =:= 0 ->
%babel__implicit_watchdog_defer_watchedc_1('invariant(watched->watchdog)', 'watchdog.c', 61, 'watchdog_defer_watched')
%; true),
%__CIL_TMP11 is WATCHED +1* 40,
%__CIL_TMP12 is __CIL_TMP11,
%BabelExp_1 is __CIL_TMP12,
%babelPtrR(__CIL_TMP13, BabelExp_1, 8),
%W_SSA_1 is __CIL_TMP13,
%babel__implicit_watchdog_defer_watchedc_2(W_SSA_1),
%babel__implicit_watchdog_defer_watchedc_3(W_SSA_1, WATCHED),
%babel__implicit_watchdog_defer_watchedc_4(W_SSA_1, WATCHED),
%babel__implicit_watchdog_defer_watchedc_5(W_SSA_1),
%babel__implicit_watchdog_defer_watchedc_6(W_SSA_1 , TMP___0_SSA_1),
%(TMP___0_SSA_1 =:= 0 ->
%babel__implicit_watchdog_defer_watchedc_7('invariant(w)', 'watchdog.c', 70, 'watchdog_defer_watched')
%; true),
%true. 
%
% :- foreign(babel__implicit_watchdog_remove_watchedc_8(+integer,  -integer)).
%:- foreign(babel__implicit_watchdog_remove_watchedc_9(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_watchdog_remove_watchedc_10(+integer)).
%:- foreign(babel__implicit_watchdog_remove_watchedc_11(+integer, +integer)).
%:- foreign(babel__implicit_watchdog_remove_watchedc_12(+integer)).
%:- foreign(babel__implicit_watchdog_remove_watchedc_13(+integer,  -integer)).
%:- foreign(babel__implicit_watchdog_remove_watchedc_14(+string, +string, +integer, +string)).
%
%watchdog_remove_watched(WATCHED, VOID) :- 
%
%
% __CIL_TMP8 is WATCHED +1* 40,
%__CIL_TMP9 is __CIL_TMP8,
%BabelExp_2 is __CIL_TMP9,
%babelPtrR(__CIL_TMP10, BabelExp_2, 8),
%babel__implicit_watchdog_remove_watchedc_8(__CIL_TMP10 , TMP_SSA_1),
%(TMP_SSA_1 =:= 0 ->
%babel__implicit_watchdog_remove_watchedc_9('invariant(watched->watchdog)', 'watchdog.c', 77, 'watchdog_remove_watched')
%; true),
%__CIL_TMP11 is WATCHED +1* 40,
%__CIL_TMP12 is __CIL_TMP11,
%BabelExp_3 is __CIL_TMP12,
%babelPtrR(__CIL_TMP13, BabelExp_3, 8),
%W_SSA_1 is __CIL_TMP13,
%babel__implicit_watchdog_remove_watchedc_10(W_SSA_1),
%babel__implicit_watchdog_remove_watchedc_11(W_SSA_1, WATCHED),
%babel__implicit_watchdog_remove_watchedc_12(W_SSA_1),
%babel__implicit_watchdog_remove_watchedc_13(W_SSA_1 , TMP___0_SSA_1),
%(TMP___0_SSA_1 =:= 0 ->
%babel__implicit_watchdog_remove_watchedc_14('invariant(w)', 'watchdog.c', 85, 'watchdog_remove_watched')
%; true),
%true. 
%
% :- foreign(babel__implicit_insertc_15(+integer,  -integer)).
%
%insert(W, WATCHED, VOID) :- 
%
%
% babel__implicit_insertc_15(0 , TMP_SSA_1),
%__CIL_TMP8 is W +1* 40,
%__CIL_TMP9 is __CIL_TMP8,
%BabelExp_4 is __CIL_TMP9,
%babelPtrR(__CIL_TMP10, BabelExp_4, 4),
%__CIL_TMP11 is __CIL_TMP10,
%__CIL_TMP12 is WATCHED +1* 16,
%__CIL_TMP13 is __CIL_TMP12,
%BabelExp_5 is TMP_SSA_1 + __CIL_TMP11,
%babel_ptrE(__CIL_TMP13, BabelExp_5, 8),
%__CIL_TMP14 is W +1* 56,
%__CIL_TMP15 is __CIL_TMP14,
%BabelExp_6 is __CIL_TMP15,
%babelPtrR(__CIL_TMP16, BabelExp_6, 8),
%__CIL_TMP17 is __CIL_TMP16,
%
%(__CIL_TMP17 \= 0 ,
%__CIL_TMP5 is 1
%; __CIL_TMP5 is 0),
%
%(__CIL_TMP5 \= 0 ->
%__CIL_TMP18 is W +1* 56,
%__CIL_TMP19 is __CIL_TMP18,
%BabelExp_7 is __CIL_TMP19,
%babelPtrR(__CIL_TMP20, BabelExp_7, 8),
%__CIL_TMP21 is __CIL_TMP20,
%__CIL_TMP22 is __CIL_TMP21 +1* 16,
%__CIL_TMP23 is __CIL_TMP22,
%__CIL_TMP24 is WATCHED +1* 16,
%__CIL_TMP25 is __CIL_TMP24,
%BabelExp_8 is __CIL_TMP23,
%babelPtrR(__CIL_TMP26, BabelExp_8, 8),
%BabelExp_9 is __CIL_TMP25,
%babelPtrR(__CIL_TMP27, BabelExp_9, 8),
%
%(__CIL_TMP26 > __CIL_TMP27 ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%__CIL_TMP28 is W +1* 56,
%__CIL_TMP29 is __CIL_TMP28,
%BabelExp_10 is __CIL_TMP29,
%babelPtrR(__CIL_TMP30, BabelExp_10, 8),
%__CIL_TMP31 is __CIL_TMP30,
%__CIL_TMP32 is __CIL_TMP31 +1* 16,
%__CIL_TMP33 is __CIL_TMP32,
%__CIL_TMP34 is WATCHED +1* 16,
%__CIL_TMP35 is __CIL_TMP34,
%babelPtrR(BabelExp_11, __CIL_TMP33, 8),
%babel_ptrE(__CIL_TMP35, BabelExp_11, 8)
%; true)
%; true),
%__CIL_TMP36 is W +1* 56,
%__CIL_TMP37 is __CIL_TMP36,
%__CIL_TMP38 is WATCHED +1* 24,
%__CIL_TMP39 is __CIL_TMP38,
%babelPtrR(BabelExp_12, __CIL_TMP37, 8),
%babel_ptrE(__CIL_TMP39, BabelExp_12, 8),
%__CIL_TMP40 is WATCHED +1* 32,
%__CIL_TMP41 is __CIL_TMP40,
%BabelExp_13 is 0,
%babel_ptrE(__CIL_TMP41, BabelExp_13, 8),
%__CIL_TMP42 is W +1* 48,
%__CIL_TMP43 is __CIL_TMP42,
%BabelExp_14 is __CIL_TMP43,
%babelPtrR(__CIL_TMP44, BabelExp_14, 8),
%__CIL_TMP45 is __CIL_TMP44,
%
%(__CIL_TMP45 =:= 0 ,
%__CIL_TMP7 is 1
%; __CIL_TMP7 is 0),
%
%(__CIL_TMP7 \= 0 ->
%__CIL_TMP46 is W +1* 48,
%__CIL_TMP47 is __CIL_TMP46,
%BabelExp_15 is WATCHED,
%babel_ptrE(__CIL_TMP47, BabelExp_15, 8)
%; __CIL_TMP48 is W +1* 56,
%__CIL_TMP49 is __CIL_TMP48,
%BabelExp_16 is __CIL_TMP49,
%babelPtrR(__CIL_TMP50, BabelExp_16, 8),
%__CIL_TMP51 is __CIL_TMP50,
%__CIL_TMP52 is __CIL_TMP51 +1* 32,
%__CIL_TMP53 is __CIL_TMP52,
%BabelExp_17 is WATCHED,
%babel_ptrE(__CIL_TMP53, BabelExp_17, 8)),
%__CIL_TMP54 is W +1* 56,
%__CIL_TMP55 is __CIL_TMP54,
%BabelExp_18 is WATCHED,
%babel_ptrE(__CIL_TMP55, BabelExp_18, 8),
%__CIL_TMP56 is WATCHED +1* 8,
%__CIL_TMP57 is __CIL_TMP56,
%BabelExp_19 is 1,
%babel_ptrE(__CIL_TMP57, BabelExp_19, 4),true. 
%
% :- foreign(babel__implicit_deletec_16(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_deletec_17(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_deletec_18(+string, +string, +integer, +string)).
%:- foreign(babel__implicit_deletec_19(+string, +string, +integer, +string)).
%
%babel_delete(W, WATCHED, VOID) :- 
%
%
% __CIL_TMP16 is WATCHED +1* 8,
%__CIL_TMP17 is __CIL_TMP16,
%BabelExp_20 is __CIL_TMP17,
%babelPtrR(__CIL_TMP18, BabelExp_20, 4),
%
%(__CIL_TMP18 =:= 0 ,
%__CIL_TMP3 is 1
%; __CIL_TMP3 is 0),
%
%(__CIL_TMP3 \= 0 ->
%true
%; __CIL_TMP19 is WATCHED +1* 32,
%__CIL_TMP20 is __CIL_TMP19,
%BabelExp_21 is __CIL_TMP20,
%babelPtrR(__CIL_TMP21, BabelExp_21, 8),
%__CIL_TMP22 is __CIL_TMP21,
%
%(__CIL_TMP22 =:= 0 ,
%__CIL_TMP4 is 1
%; __CIL_TMP4 is 0),
%
%(__CIL_TMP4 \= 0 ->
%__CIL_TMP23 is W +1* 56,
%__CIL_TMP24 is __CIL_TMP23,
%BabelExp_22 is __CIL_TMP24,
%babelPtrR(__CIL_TMP25, BabelExp_22, 8),
%__CIL_TMP26 is __CIL_TMP25,
%
%(__CIL_TMP26 =:= WATCHED ,
%__CIL_TMP5 is 1
%; __CIL_TMP5 is 0),
%
%(__CIL_TMP5 =:= 0 ->
%babel__implicit_deletec_16('w->newest == watched', 'watchdog.c', 131, 'delete')
%; true),
%__CIL_TMP27 is W +1* 56,
%__CIL_TMP28 is __CIL_TMP27,
%BabelExp_23 is __CIL_TMP28,
%babelPtrR(__CIL_TMP29, BabelExp_23, 8),
%__CIL_TMP30 is __CIL_TMP29,
%__CIL_TMP31 is __CIL_TMP30 +1* 24,
%__CIL_TMP32 is __CIL_TMP31,
%__CIL_TMP33 is W +1* 56,
%__CIL_TMP34 is __CIL_TMP33,
%babelPtrR(BabelExp_24, __CIL_TMP32, 8),
%babel_ptrE(__CIL_TMP34, BabelExp_24, 8),
%__CIL_TMP35 is W +1* 56,
%__CIL_TMP36 is __CIL_TMP35,
%BabelExp_25 is __CIL_TMP36,
%babelPtrR(__CIL_TMP37, BabelExp_25, 8),
%__CIL_TMP38 is __CIL_TMP37,
%
%(__CIL_TMP38 \= 0 ,
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%__CIL_TMP39 is W +1* 56,
%__CIL_TMP40 is __CIL_TMP39,
%BabelExp_26 is __CIL_TMP40,
%babelPtrR(__CIL_TMP41, BabelExp_26, 8),
%__CIL_TMP42 is __CIL_TMP41,
%__CIL_TMP43 is __CIL_TMP42 +1* 32,
%__CIL_TMP44 is __CIL_TMP43,
%BabelExp_27 is 0,
%babel_ptrE(__CIL_TMP44, BabelExp_27, 8)
%; true)
%; __CIL_TMP45 is W +1* 56,
%__CIL_TMP46 is __CIL_TMP45,
%BabelExp_28 is __CIL_TMP46,
%babelPtrR(__CIL_TMP47, BabelExp_28, 8),
%__CIL_TMP48 is __CIL_TMP47,
%
%(__CIL_TMP48 \= WATCHED ,
%__CIL_TMP7 is 1
%; __CIL_TMP7 is 0),
%
%(__CIL_TMP7 =:= 0 ->
%babel__implicit_deletec_17('w->newest != watched', 'watchdog.c', 137, 'delete')
%; true),
%__CIL_TMP49 is WATCHED +1* 24,
%__CIL_TMP50 is __CIL_TMP49,
%__CIL_TMP51 is WATCHED +1* 32,
%__CIL_TMP52 is __CIL_TMP51,
%BabelExp_29 is __CIL_TMP52,
%babelPtrR(__CIL_TMP53, BabelExp_29, 8),
%__CIL_TMP54 is __CIL_TMP53,
%__CIL_TMP55 is __CIL_TMP54 +1* 24,
%__CIL_TMP56 is __CIL_TMP55,
%babelPtrR(BabelExp_30, __CIL_TMP50, 8),
%babel_ptrE(__CIL_TMP56, BabelExp_30, 8)),
%__CIL_TMP57 is WATCHED +1* 24,
%__CIL_TMP58 is __CIL_TMP57,
%BabelExp_31 is __CIL_TMP58,
%babelPtrR(__CIL_TMP59, BabelExp_31, 8),
%__CIL_TMP60 is __CIL_TMP59,
%
%(__CIL_TMP60 =:= 0 ,
%__CIL_TMP8 is 1
%; __CIL_TMP8 is 0),
%
%(__CIL_TMP8 \= 0 ->
%__CIL_TMP61 is W +1* 48,
%__CIL_TMP62 is __CIL_TMP61,
%BabelExp_32 is __CIL_TMP62,
%babelPtrR(__CIL_TMP63, BabelExp_32, 8),
%__CIL_TMP64 is __CIL_TMP63,
%
%(__CIL_TMP64 =:= WATCHED ,
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 =:= 0 ->
%babel__implicit_deletec_18('w->oldest == watched', 'watchdog.c', 142, 'delete')
%; true),
%__CIL_TMP65 is W +1* 48,
%__CIL_TMP66 is __CIL_TMP65,
%BabelExp_33 is __CIL_TMP66,
%babelPtrR(__CIL_TMP67, BabelExp_33, 8),
%__CIL_TMP68 is __CIL_TMP67,
%__CIL_TMP69 is __CIL_TMP68 +1* 32,
%__CIL_TMP70 is __CIL_TMP69,
%__CIL_TMP71 is W +1* 48,
%__CIL_TMP72 is __CIL_TMP71,
%babelPtrR(BabelExp_34, __CIL_TMP70, 8),
%babel_ptrE(__CIL_TMP72, BabelExp_34, 8),
%__CIL_TMP73 is W +1* 48,
%__CIL_TMP74 is __CIL_TMP73,
%BabelExp_35 is __CIL_TMP74,
%babelPtrR(__CIL_TMP75, BabelExp_35, 8),
%__CIL_TMP76 is __CIL_TMP75,
%
%(__CIL_TMP76 \= 0 ,
%__CIL_TMP10 is 1
%; __CIL_TMP10 is 0),
%
%(__CIL_TMP10 \= 0 ->
%__CIL_TMP77 is W +1* 48,
%__CIL_TMP78 is __CIL_TMP77,
%BabelExp_36 is __CIL_TMP78,
%babelPtrR(__CIL_TMP79, BabelExp_36, 8),
%__CIL_TMP80 is __CIL_TMP79,
%__CIL_TMP81 is __CIL_TMP80 +1* 24,
%__CIL_TMP82 is __CIL_TMP81,
%BabelExp_37 is 0,
%babel_ptrE(__CIL_TMP82, BabelExp_37, 8)
%; true)
%; __CIL_TMP83 is W +1* 48,
%__CIL_TMP84 is __CIL_TMP83,
%BabelExp_38 is __CIL_TMP84,
%babelPtrR(__CIL_TMP85, BabelExp_38, 8),
%__CIL_TMP86 is __CIL_TMP85,
%
%(__CIL_TMP86 \= WATCHED ,
%__CIL_TMP11 is 1
%; __CIL_TMP11 is 0),
%
%(__CIL_TMP11 =:= 0 ->
%babel__implicit_deletec_19('w->oldest != watched', 'watchdog.c', 148, 'delete')
%; true),
%__CIL_TMP87 is WATCHED +1* 32,
%__CIL_TMP88 is __CIL_TMP87,
%__CIL_TMP89 is WATCHED +1* 24,
%__CIL_TMP90 is __CIL_TMP89,
%BabelExp_39 is __CIL_TMP90,
%babelPtrR(__CIL_TMP91, BabelExp_39, 8),
%__CIL_TMP92 is __CIL_TMP91,
%__CIL_TMP93 is __CIL_TMP92 +1* 32,
%__CIL_TMP94 is __CIL_TMP93,
%babelPtrR(BabelExp_40, __CIL_TMP88, 8),
%babel_ptrE(__CIL_TMP94, BabelExp_40, 8)),
%__CIL_TMP95 is WATCHED +1* 24,
%__CIL_TMP96 is __CIL_TMP95,
%BabelExp_41 is 0,
%babel_ptrE(__CIL_TMP96, BabelExp_41, 8),
%__CIL_TMP97 is WATCHED +1* 32,
%__CIL_TMP98 is __CIL_TMP97,
%BabelExp_42 is 0,
%babel_ptrE(__CIL_TMP98, BabelExp_42, 8),
%__CIL_TMP99 is WATCHED +1* 8,
%__CIL_TMP100 is __CIL_TMP99,
%BabelExp_43 is 0,
%babel_ptrE(__CIL_TMP100, BabelExp_43, 4),true). 
%
 
