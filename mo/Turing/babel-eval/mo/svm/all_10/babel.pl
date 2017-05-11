:-foreign(babel_ptrR_byte(-byte, +integer, +integer)).
:-foreign(babel_ptrR(-integer, +integer, +integer)).
:-foreign(babel_ptrE(+integer, +integer, +integer)).
:-foreign(babel_ptrFR(-float, +integer,+integer)).
:-foreign(babel_ptrFW(+integer, +float,+integer)).



babelPtrR_byte(E, P, L) :- babel_ptrR_byte(T, P, L), E is T.
babelPtrR(E, P, L) :- babel_ptrR(T, P, L), E is T.
babelPtrL(P, E, L) :- babel_ptrE(P, E, L).





:- foreign(babel__implicit_compute_objective_functionc_0(+integer, +integer, +integer, +integer, +float, +integer, +integer, +integer)).

compute_objective_function(__CIL_PP_CRITERION, __CIL_FP_CRITERION, A, LIN, C, EPS, LABEL, ACTIVE2DNUM, BABEL_RET) :- 


 CRITERION_SSA_1 is 0,
II_SSA_1 is 0,
BabelExp_0 is CRITERION_SSA_1,
babel_ptrFW(__CIL_FP_CRITERION, BabelExp_0,2),
babel__implicit_compute_objective_functionc_0(__CIL_PP_CRITERION, A, LIN, C, EPS, LABEL, ACTIVE2DNUM, II_SSA_1),
BabelExp_1 is __CIL_FP_CRITERION,
babel_ptrFR(CRITERION_SSA_2, BabelExp_1,2),BABEL_RET is CRITERION_SSA_2, true. 

 
clear_index(INDEX___0, VOID) :- 


 __CIL_TMP2 is INDEX___0 +8* 0,
BabelExp_2 is -1,
babel_ptrE(__CIL_TMP2, BabelExp_2, 8),true. 

 :- foreign(babel__implicit_add_to_indexc_1(+integer, +integer, +integer)).

add_to_index(__CIL_PP_INDEX___0, __CIL_PP_ELEM, __CIL_PP_I, __CIL_FP_INDEX___0, __CIL_FP_ELEM, __CIL_FP_I, INDEX___0, ELEM, VOID) :- 


 I_SSA_1 is 0,
BabelExp_3 is INDEX___0,
babel_ptrE(__CIL_FP_INDEX___0, BabelExp_3, 8),
BabelExp_4 is ELEM,
babel_ptrE(__CIL_FP_ELEM, BabelExp_4, 8),
BabelExp_5 is I_SSA_1,
babel_ptrE(__CIL_FP_I, BabelExp_5, 8),
babel__implicit_add_to_indexc_1(__CIL_PP_INDEX___0, __CIL_PP_ELEM, __CIL_PP_I),
BabelExp_6 is __CIL_FP_INDEX___0,
babelPtrR(INDEX___0_SSA_1, BabelExp_6, 8),
BabelExp_7 is __CIL_FP_ELEM,
babelPtrR(ELEM_SSA_1, BabelExp_7, 8),
BabelExp_8 is __CIL_FP_I,
babelPtrR(I_SSA_2, BabelExp_8, 8),
__CIL_TMP14 is INDEX___0_SSA_1 +8* I_SSA_2,
BabelExp_9 is ELEM_SSA_1,
babel_ptrE(__CIL_TMP14, BabelExp_9, 8),
BabelExp_10 is I_SSA_2 + 1,
__CIL_TMP15 is BabelExp_10,
__CIL_TMP16 is INDEX___0_SSA_1 +8* __CIL_TMP15,
BabelExp_11 is -1,
babel_ptrE(__CIL_TMP16, BabelExp_11, 8),true. 

 :- foreign(babel__implicit_compute_indexc_2(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_compute_indexc_3(+integer, +integer, +integer)).

compute_index(__CIL_PP_INDEX___0, __CIL_PP_II, __CIL_FP_INDEX___0, __CIL_FP_II, BINFEATURE, RANGE, INDEX___0, BABEL_RET) :- 


 II_SSA_1 is 0,
I_SSA_1 is 0,
BabelExp_12 is INDEX___0,
babel_ptrE(__CIL_FP_INDEX___0, BabelExp_12, 8),
BabelExp_13 is II_SSA_1,
babel_ptrE(__CIL_FP_II, BabelExp_13, 8),
babel__implicit_compute_indexc_2(__CIL_PP_INDEX___0, __CIL_PP_II, BINFEATURE, RANGE, I_SSA_1),
BabelExp_14 is __CIL_FP_INDEX___0,
babelPtrR(INDEX___0_SSA_1, BabelExp_14, 8),
BabelExp_15 is __CIL_FP_II,
babelPtrR(II_SSA_2, BabelExp_15, 8),
I_SSA_2 is 0,
BabelExp_16 is II_SSA_2,
babel_ptrE(__CIL_FP_II, BabelExp_16, 8),
babel__implicit_compute_indexc_3(__CIL_PP_II, INDEX___0_SSA_1, I_SSA_2),
BabelExp_17 is __CIL_FP_II,
babelPtrR(II_SSA_3, BabelExp_17, 8),BABEL_RET is II_SSA_3, true. 


% :- foreign(babel__implicit_identify_inconsistentc_17(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%
%identify_inconsistent(__CIL_PP_RETRAIN, __CIL_FP_RETRAIN, A, LABEL, UNLABELED, TOTDOC, LEARN_PARM, INCONSISTENTNUM, INCONSISTENT, BABEL_RET) :- 
%
%
% RETRAIN_SSA_1 is 0,
%I_SSA_1 is 0,
%BabelExp_90 is RETRAIN_SSA_1,
%babel_ptrE(__CIL_FP_RETRAIN, BabelExp_90, 8),
%babel__implicit_identify_inconsistentc_17(__CIL_PP_RETRAIN, A, UNLABELED, TOTDOC, LEARN_PARM, INCONSISTENTNUM, INCONSISTENT, I_SSA_1),
%BabelExp_91 is __CIL_FP_RETRAIN,
%babelPtrR(RETRAIN_SSA_2, BabelExp_91, 8),BABEL_RET is RETRAIN_SSA_2, true. 
%
% :- foreign(babel__implicit_identify_misclassifiedc_18(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%
%identify_misclassified(__CIL_PP_RETRAIN, __CIL_FP_RETRAIN, LIN, LABEL, UNLABELED, TOTDOC, MODEL, INCONSISTENTNUM, INCONSISTENT, BABEL_RET) :- 
%
%
% RETRAIN_SSA_1 is 0,
%I_SSA_1 is 0,
%BabelExp_92 is RETRAIN_SSA_1,
%babel_ptrE(__CIL_FP_RETRAIN, BabelExp_92, 8),
%babel__implicit_identify_misclassifiedc_18(__CIL_PP_RETRAIN, LIN, LABEL, UNLABELED, TOTDOC, MODEL, INCONSISTENTNUM, INCONSISTENT, I_SSA_1),
%BabelExp_93 is __CIL_FP_RETRAIN,
%babelPtrR(RETRAIN_SSA_2, BabelExp_93, 8),BABEL_RET is RETRAIN_SSA_2, true. 
%
% :- foreign(babel__implicit_identify_one_misclassifiedc_19(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +float)).
%:- foreign(babel__implicit_identify_one_misclassifiedc_20(+integer, +integer)).
%:- foreign(babel__implicit_identify_one_misclassifiedc_21(+integer)).
%
%identify_one_misclassified(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_INCONSISTENTNUM, __CIL_PP_INCONSISTENT, __CIL_PP_I, __CIL_PP_RETRAIN, __CIL_PP_MAXEX, __CIL_GP_VERBOSITY, __CIL_GP_STDOUT, __CIL_FP_INCONSISTENTNUM, __CIL_FP_INCONSISTENT, __CIL_FP_I, __CIL_FP_RETRAIN, __CIL_FP_MAXEX, LIN, LABEL, UNLABELED, TOTDOC, MODEL, INCONSISTENTNUM, INCONSISTENT, BABEL_RET) :- 
%
%
% MAXEX_SSA_1 is -1,
%MAXDIST_SSA_1 is 0,
%RETRAIN_SSA_1 is 0,
%I_SSA_1 is 0,
%BabelExp_94 is INCONSISTENTNUM,
%babel_ptrE(__CIL_FP_INCONSISTENTNUM, BabelExp_94, 8),
%BabelExp_95 is INCONSISTENT,
%babel_ptrE(__CIL_FP_INCONSISTENT, BabelExp_95, 8),
%BabelExp_96 is I_SSA_1,
%babel_ptrE(__CIL_FP_I, BabelExp_96, 8),
%BabelExp_97 is RETRAIN_SSA_1,
%babel_ptrE(__CIL_FP_RETRAIN, BabelExp_97, 8),
%BabelExp_98 is MAXEX_SSA_1,
%babel_ptrE(__CIL_FP_MAXEX, BabelExp_98, 8),
%babel__implicit_identify_one_misclassifiedc_19(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_INCONSISTENTNUM, __CIL_PP_INCONSISTENT, __CIL_PP_I, __CIL_PP_RETRAIN, __CIL_PP_MAXEX, LIN, LABEL, UNLABELED, TOTDOC, MODEL, MAXDIST_SSA_1),
%BabelExp_99 is __CIL_FP_INCONSISTENTNUM,
%babelPtrR(INCONSISTENTNUM_SSA_1, BabelExp_99, 8),
%BabelExp_100 is __CIL_FP_INCONSISTENT,
%babelPtrR(INCONSISTENT_SSA_1, BabelExp_100, 8),
%BabelExp_101 is __CIL_FP_I,
%babelPtrR(I_SSA_2, BabelExp_101, 8),
%BabelExp_102 is __CIL_FP_RETRAIN,
%babelPtrR(RETRAIN_SSA_2, BabelExp_102, 8),
%BabelExp_103 is __CIL_FP_MAXEX,
%babelPtrR(MAXEX_SSA_2, BabelExp_103, 8),
%
%(MAXEX_SSA_2 >= 0 ,
%__CIL_TMP37 is 1
%; __CIL_TMP37 is 0),
%
%(__CIL_TMP37 \= 0 ,
%BabelExp_104 is INCONSISTENTNUM_SSA_1,
%babelPtrR(__CIL_TMP39, BabelExp_104, 8),
%BabelExp_105 is __CIL_TMP39 + 1,
%babel_ptrE(INCONSISTENTNUM_SSA_1, BabelExp_105, 8),
%__CIL_TMP40 is INCONSISTENT_SSA_1 +8* MAXEX_SSA_2,
%BabelExp_106 is 1,
%babel_ptrE(__CIL_TMP40, BabelExp_106, 8),
%RETRAIN_SSA_3 is 2,
%BabelExp_107 is __CIL_GP_VERBOSITY,
%babelPtrR(__CIL_TMP41, BabelExp_107, 8),
%
%(__CIL_TMP41 >= 3 ,
%__CIL_TMP38 is 1
%; __CIL_TMP38 is 0),
%
%(__CIL_TMP38 \= 0 ,
%babel__implicit_identify_one_misclassifiedc_20('INCONSISTENT(%LD)..', I_SSA_2),
%BabelExp_108 is __CIL_GP_STDOUT,
%babelPtrR(__CIL_TMP42, BabelExp_108, 8),
%babel__implicit_identify_one_misclassifiedc_21(__CIL_TMP42)
%; true)
%; RETRAIN_SSA_3 is RETRAIN_SSA_2),
%BABEL_RET is RETRAIN_SSA_3, true. 

 :- foreign(babel__implicit_update_linear_componentc_22(+integer, +integer)).
:- foreign(babel__implicit_update_linear_componentc_23(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_update_linear_componentc_24(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_update_linear_componentc_25(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).

update_linear_component(__CIL_PP_DOCS, __CIL_PP_ACTIVE2DNUM, __CIL_PP_LIN, __CIL_PP_WEIGHTS, __CIL_FP_DOCS, __CIL_FP_ACTIVE2DNUM, __CIL_FP_LIN, __CIL_FP_WEIGHTS, DOCS, LABEL, ACTIVE2DNUM, A, A_OLD, WORKING2DNUM, TOTDOC, TOTWORDS, KERNEL_PARM, KERNEL_CACHE, LIN, AICACHE, WEIGHTS, VOID) :- 


 MEM_30 is KERNEL_PARM,
BabelExp_109 is MEM_30,
babelPtrR(__CIL_TMP36, BabelExp_109, 8),

(__CIL_TMP36 =:= 0 ,
__CIL_TMP35 is 1
; __CIL_TMP35 is 0),

(__CIL_TMP35 \= 0 ,
babel__implicit_update_linear_componentc_22(WEIGHTS, TOTWORDS),
II_SSA_1 is 0,
BabelExp_110 is DOCS,
babel_ptrE(__CIL_FP_DOCS, BabelExp_110, 8),
BabelExp_111 is ACTIVE2DNUM,
babel_ptrE(__CIL_FP_ACTIVE2DNUM, BabelExp_111, 8),
BabelExp_112 is LIN,
babel_ptrE(__CIL_FP_LIN, BabelExp_112, 8),
BabelExp_113 is WEIGHTS,
babel_ptrE(__CIL_FP_WEIGHTS, BabelExp_113, 8),
babel__implicit_update_linear_componentc_23(__CIL_PP_DOCS, __CIL_PP_ACTIVE2DNUM, __CIL_PP_LIN, __CIL_PP_WEIGHTS, LABEL, A, A_OLD, WORKING2DNUM, II_SSA_1),
BabelExp_114 is __CIL_FP_DOCS,
babelPtrR(DOCS_SSA_1, BabelExp_114, 8),
BabelExp_115 is __CIL_FP_ACTIVE2DNUM,
babelPtrR(ACTIVE2DNUM_SSA_1, BabelExp_115, 8),
BabelExp_116 is __CIL_FP_LIN,
babelPtrR(LIN_SSA_1, BabelExp_116, 8),
BabelExp_117 is __CIL_FP_WEIGHTS,
babelPtrR(WEIGHTS_SSA_1, BabelExp_117, 8),
JJ_SSA_1 is 0,
babel__implicit_update_linear_componentc_24(DOCS_SSA_1, ACTIVE2DNUM_SSA_1, LIN_SSA_1, WEIGHTS_SSA_1, JJ_SSA_1)
; JJ_SSA_1 is 0,
babel__implicit_update_linear_componentc_25(DOCS, LABEL, ACTIVE2DNUM, A, A_OLD, WORKING2DNUM, TOTDOC, KERNEL_PARM, KERNEL_CACHE, LIN, AICACHE, JJ_SSA_1)),
true. 

 :- foreign(babel__implicit_select_next_qp_slacksetc_26(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).

select_next_qp_slackset(__CIL_PP_MAXVIOL, __CIL_PP_MAXDIFFID, __CIL_PP_MAXDIFF, __CIL_FP_MAXVIOL, __CIL_FP_MAXDIFFID, __CIL_FP_MAXDIFF, DOCS, LABEL, A, LIN, SLACK, ALPHASLACK, C, LEARN_PARM, ACTIVE2DNUM, MAXVIOL, BABEL_RET) :- 


 MAXDIFF_SSA_1 is 0,
MAXDIFFID_SSA_1 is 0,
II_SSA_1 is 0,
BabelExp_118 is MAXVIOL,
babel_ptrE(__CIL_FP_MAXVIOL, BabelExp_118, 8),
BabelExp_119 is MAXDIFFID_SSA_1,
babel_ptrE(__CIL_FP_MAXDIFFID, BabelExp_119, 8),
BabelExp_120 is MAXDIFF_SSA_1,
babel_ptrFW(__CIL_FP_MAXDIFF, BabelExp_120,2),
babel__implicit_select_next_qp_slacksetc_26(__CIL_PP_MAXVIOL, __CIL_PP_MAXDIFFID, __CIL_PP_MAXDIFF, DOCS, LABEL, A, LIN, SLACK, ALPHASLACK, C, LEARN_PARM, ACTIVE2DNUM, II_SSA_1),
BabelExp_121 is __CIL_FP_MAXVIOL,
babelPtrR(MAXVIOL_SSA_1, BabelExp_121, 8),
BabelExp_122 is __CIL_FP_MAXDIFFID,
babelPtrR(MAXDIFFID_SSA_2, BabelExp_122, 8),
BabelExp_123 is __CIL_FP_MAXDIFF,
babel_ptrFR(MAXDIFF_SSA_2, BabelExp_123,2),
BabelExp_124 is MAXDIFF_SSA_2,
babel_ptrFW(MAXVIOL_SSA_1, BabelExp_124,2),BABEL_RET is MAXDIFFID_SSA_2, true. 









 
 

 

 

 
update_linear_component_cil_lr_3_cil_lr_1(__CIL_AP_DOCS, __CIL_AP_LABEL, __CIL_AP_ACTIVE2DNUM, __CIL_AP_A, __CIL_AP_A_OLD, __CIL_AP_WORKING2DNUM, __CIL_AP_TOTDOC, __CIL_AP_KERNEL_PARM, __CIL_AP_KERNEL_CACHE, __CIL_AP_LIN, __CIL_AP_AICACHE, __CIL_AP_JJ, I, II, VOID) :- 


 BabelExp_436 is __CIL_AP_ACTIVE2DNUM,
babelPtrR(__CIL_TMP21, BabelExp_436, 8),
__CIL_TMP22 is __CIL_TMP21 +8* II,
BabelExp_437 is __CIL_TMP22,
babelPtrR(J_SSA_1, BabelExp_437, 8),

(J_SSA_1 >= 0 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ,
BabelExp_438 is __CIL_AP_AICACHE,
babelPtrR(__CIL_TMP23, BabelExp_438, 8),
__CIL_TMP24 is __CIL_TMP23 +4* J_SSA_1,
BabelExp_439 is __CIL_TMP24,
babel_ptrFR(__CIL_TMP25, BabelExp_439,1),
TEC_SSA_1 is __CIL_TMP25,
BabelExp_440 is __CIL_AP_LIN,
babelPtrR(__CIL_TMP26, BabelExp_440, 8),
__CIL_TMP27 is __CIL_TMP26 +8* J_SSA_1,
BabelExp_441 is __CIL_AP_A,
babelPtrR(__CIL_TMP28, BabelExp_441, 8),
__CIL_TMP29 is __CIL_TMP28 +8* I,
BabelExp_442 is __CIL_TMP29,
babel_ptrFR(__CIL_TMP30, BabelExp_442,2),
BabelExp_443 is __CIL_AP_A_OLD,
babelPtrR(__CIL_TMP31, BabelExp_443, 8),
__CIL_TMP32 is __CIL_TMP31 +8* I,
BabelExp_444 is __CIL_TMP32,
babel_ptrFR(__CIL_TMP33, BabelExp_444,2),
BabelExp_445 is __CIL_TMP30 * TEC_SSA_1,
__CIL_TMP34 is BabelExp_445,
BabelExp_446 is __CIL_TMP33 * TEC_SSA_1,
__CIL_TMP35 is BabelExp_446,
BabelExp_447 is __CIL_AP_LABEL,
babelPtrR(__CIL_TMP36, BabelExp_447, 8),
__CIL_TMP37 is __CIL_TMP36 +8* I,
BabelExp_448 is __CIL_TMP37,
babelPtrR(__CIL_TMP38, BabelExp_448, 8),
BabelExp_449 is __CIL_TMP34 - __CIL_TMP35,
__CIL_TMP39 is BabelExp_449,
__CIL_TMP40 is __CIL_TMP38,
BabelExp_450 is __CIL_TMP27,
babel_ptrFR(__CIL_TMP41, BabelExp_450,2),
BabelExp_451 is __CIL_TMP39 * __CIL_TMP40,
__CIL_TMP42 is BabelExp_451,
BabelExp_452 is __CIL_AP_LIN,
babelPtrR(__CIL_TMP43, BabelExp_452, 8),
__CIL_TMP44 is __CIL_TMP43 +8* J_SSA_1,
BabelExp_453 is __CIL_TMP41 + __CIL_TMP42,
babel_ptrFW(__CIL_TMP44, BabelExp_453,2),
BabelExp_454 is II + 1,
II_SSA_1 is BabelExp_454,
update_linear_component_cil_lr_3_cil_lr_1(__CIL_AP_DOCS, __CIL_AP_LABEL, __CIL_AP_ACTIVE2DNUM, __CIL_AP_A, __CIL_AP_A_OLD, __CIL_AP_WORKING2DNUM, __CIL_AP_TOTDOC, __CIL_AP_KERNEL_PARM, __CIL_AP_KERNEL_CACHE, __CIL_AP_LIN, __CIL_AP_AICACHE, __CIL_AP_JJ, I, II_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_update_linear_component_cil_lr_1_cil_lr_1c_112(+integer, +integer, +float)).

update_linear_component_cil_lr_1_cil_lr_1(__CIL_AP_LABEL, __CIL_AP_A, __CIL_AP_A_OLD, __CIL_AP_WORKING2DNUM, __CIL_AP_II, __CIL_AP_WEIGHTS, I, F, VOID) :- 


 (F \= 0 ,
__CIL_TMP10 is F +1* 40,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_455 is __CIL_AP_A,
babelPtrR(__CIL_TMP12, BabelExp_455, 8),
__CIL_TMP13 is __CIL_TMP12 +8* I,
BabelExp_456 is __CIL_AP_A_OLD,
babelPtrR(__CIL_TMP14, BabelExp_456, 8),
__CIL_TMP15 is __CIL_TMP14 +8* I,
BabelExp_457 is __CIL_TMP13,
babel_ptrFR(__CIL_TMP16, BabelExp_457,2),
BabelExp_458 is __CIL_TMP15,
babel_ptrFR(__CIL_TMP17, BabelExp_458,2),
BabelExp_459 is __CIL_AP_LABEL,
babelPtrR(__CIL_TMP18, BabelExp_459, 8),
__CIL_TMP19 is __CIL_TMP18 +8* I,
BabelExp_460 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_460, 8),
BabelExp_461 is __CIL_TMP16 - __CIL_TMP17,
__CIL_TMP21 is BabelExp_461,
__CIL_TMP22 is __CIL_TMP20,
BabelExp_462 is __CIL_TMP11,
babel_ptrFR(__CIL_TMP23, BabelExp_462,2),
BabelExp_463 is __CIL_TMP21 * __CIL_TMP22,
__CIL_TMP24 is BabelExp_463,
BabelExp_464 is __CIL_AP_WEIGHTS,
babelPtrR(__CIL_TMP25, BabelExp_464, 8),
BabelExp_465 is __CIL_TMP23 * __CIL_TMP24,
__CIL_TMP26 is BabelExp_465,
babel__implicit_update_linear_component_cil_lr_1_cil_lr_1c_112(__CIL_TMP25, F, __CIL_TMP26),
__CIL_TMP27 is F +1* 32,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_466 is __CIL_TMP28,
babelPtrR(F_SSA_1, BabelExp_466, 8),
update_linear_component_cil_lr_1_cil_lr_1(__CIL_AP_LABEL, __CIL_AP_A, __CIL_AP_A_OLD, __CIL_AP_WORKING2DNUM, __CIL_AP_II, __CIL_AP_WEIGHTS, I, F_SSA_1, VOID),true
; true). 



% :- foreign(babel__implicit_length_of_longest_document_vector_cil_lr_1c_118(+integer, +integer, +integer,  -float)).
%:- foreign(babel__implicit_length_of_longest_document_vector_cil_lr_1c_119(+float,  -float)).
%
%length_of_longest_document_vector_cil_lr_1(__CIL_AP_MAXXLEN, DOCS, TOTDOC, KERNEL_PARM, I, VOID) :- 
%
%
% (I < TOTDOC-> 
%__CIL_TMP11 is 1
%; __CIL_TMP11 is 0),
%
%(__CIL_TMP11 \= 0->
%__CIL_TMP13 is DOCS +8* I,
%__CIL_TMP14 is DOCS +8* I,
%babelPtrR(__CIL_TMP15, __CIL_TMP13, 8),
%babelPtrR(__CIL_TMP16, __CIL_TMP14, 8),
%babel__implicit_length_of_longest_document_vector_cil_lr_1c_118(KERNEL_PARM, __CIL_TMP15, __CIL_TMP16 , TMP_SSA_1),
%babel__implicit_length_of_longest_document_vector_cil_lr_1c_119(TMP_SSA_1 , XLEN_SSA_1),
%babel_ptrFR(__CIL_TMP17, __CIL_AP_MAXXLEN,2),
%
%(XLEN_SSA_1 > __CIL_TMP17-> 
%__CIL_TMP12 is 1
%; __CIL_TMP12 is 0),
%
%(__CIL_TMP12 \= 0 ->
%babel_ptrFW(__CIL_AP_MAXXLEN, XLEN_SSA_1,2)
%; true),
%I_SSA_1 is I + 1,
%length_of_longest_document_vector_cil_lr_1(__CIL_AP_MAXXLEN, DOCS, TOTDOC, KERNEL_PARM, I_SSA_1, VOID)
%; true).

% :- foreign(babel__implicit_estimate_r_delta_average_cil_lr_1c_122(+integer, +integer, +integer,  -float)).
%:- foreign(babel__implicit_estimate_r_delta_average_cil_lr_1c_123(+integer, +integer, +integer,  -float)).
%:- foreign(babel__implicit_estimate_r_delta_average_cil_lr_1c_124(+integer, +integer, +integer,  -float)).
%:- foreign(babel__implicit_estimate_r_delta_average_cil_lr_1c_125(+float,  -float)).
%
%estimate_r_delta_average_cil_lr_1(__CIL_AP_TOTDOC, __CIL_AP_AVGXLEN, __CIL_AP_NULLDOC, DOCS, KERNEL_PARM, I, VOID) :- 
%
%
% BabelExp_537 is __CIL_AP_TOTDOC,
%babelPtrR(__CIL_TMP17, BabelExp_537, 8),
%
%(I < __CIL_TMP17 ,
%__CIL_TMP16 is 1
%; __CIL_TMP16 is 0),
%
%(__CIL_TMP16 \= 0 ,
%__CIL_TMP18 is DOCS +8* I,
%__CIL_TMP19 is DOCS +8* I,
%BabelExp_538 is __CIL_TMP18,
%babelPtrR(__CIL_TMP20, BabelExp_538, 8),
%BabelExp_539 is __CIL_TMP19,
%babelPtrR(__CIL_TMP21, BabelExp_539, 8),
%babel__implicit_estimate_r_delta_average_cil_lr_1c_122(KERNEL_PARM, __CIL_TMP20, __CIL_TMP21 , TMP___0_SSA_1),
%__CIL_TMP22 is DOCS +8* I,
%BabelExp_540 is __CIL_TMP22,
%babelPtrR(__CIL_TMP23, BabelExp_540, 8),
%BabelExp_541 is __CIL_AP_NULLDOC,
%babelPtrR(__CIL_TMP24, BabelExp_541, 8),
%babel__implicit_estimate_r_delta_average_cil_lr_1c_123(KERNEL_PARM, __CIL_TMP23, __CIL_TMP24 , TMP___1_SSA_1),
%BabelExp_542 is __CIL_AP_NULLDOC,
%babelPtrR(__CIL_TMP25, BabelExp_542, 8),
%BabelExp_543 is __CIL_AP_NULLDOC,
%babelPtrR(__CIL_TMP26, BabelExp_543, 8),
%babel__implicit_estimate_r_delta_average_cil_lr_1c_124(KERNEL_PARM, __CIL_TMP25, __CIL_TMP26 , TMP___2_SSA_1),
%BabelExp_544 is 2 * TMP___1_SSA_1,
%__CIL_TMP27 is BabelExp_544,
%BabelExp_545 is TMP___0_SSA_1 - __CIL_TMP27,
%__CIL_TMP28 is BabelExp_545,
%BabelExp_546 is __CIL_TMP28 + TMP___2_SSA_1,
%__CIL_TMP29 is BabelExp_546,
%babel__implicit_estimate_r_delta_average_cil_lr_1c_125(__CIL_TMP29 , TMP___3_SSA_1),
%BabelExp_547 is __CIL_AP_AVGXLEN,
%babel_ptrFR(__CIL_TMP30, BabelExp_547,2),
%BabelExp_548 is __CIL_TMP30 + TMP___3_SSA_1,
%babel_ptrFW(__CIL_AP_AVGXLEN, BabelExp_548,2),
%BabelExp_549 is I + 1,
%I_SSA_1 is BabelExp_549,
%estimate_r_delta_average_cil_lr_1(__CIL_AP_TOTDOC, __CIL_AP_AVGXLEN, __CIL_AP_NULLDOC, DOCS, KERNEL_PARM, I_SSA_1, VOID),true
%; true). 


 
 

 

 

 
select_next_qp_slackset_cil_lr_1(__CIL_AP_MAXVIOL, __CIL_AP_MAXDIFFID, __CIL_AP_MAXDIFF, DOCS, LABEL, A, LIN, SLACK, ALPHASLACK, C, LEARN_PARM, ACTIVE2DNUM, II, VOID) :- 


 __CIL_TMP28 is ACTIVE2DNUM +8* II,
BabelExp_730 is __CIL_TMP28,
babelPtrR(I_SSA_1, BabelExp_730, 8),

(I_SSA_1 >= 0 ,
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ,
__CIL_TMP29 is LEARN_PARM +1* 8,
__CIL_TMP30 is __CIL_TMP29,
__CIL_TMP31 is LEARN_PARM +1* 560,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_731 is __CIL_TMP30,
babel_ptrFR(__CIL_TMP33, BabelExp_731,2),
BabelExp_732 is __CIL_TMP32,
babel_ptrFR(__CIL_TMP34, BabelExp_732,2),
BabelExp_733 is __CIL_TMP33 - __CIL_TMP34,
EX_C_SSA_1 is BabelExp_733,
__CIL_TMP35 is DOCS +8* I_SSA_1,
BabelExp_734 is __CIL_TMP35,
babelPtrR(__CIL_TMP36, BabelExp_734, 8),
__CIL_TMP37 is __CIL_TMP36,
__CIL_TMP38 is __CIL_TMP37 +1* 24,
__CIL_TMP39 is __CIL_TMP38,
BabelExp_735 is __CIL_TMP39,
babelPtrR(__CIL_TMP40, BabelExp_735, 8),
__CIL_TMP41 is ALPHASLACK +8* __CIL_TMP40,
BabelExp_736 is __CIL_TMP41,
babel_ptrFR(__CIL_TMP42, BabelExp_736,2),

(__CIL_TMP42 >= EX_C_SSA_1 ,
__CIL_TMP24 is 1
; __CIL_TMP24 is 0),

(__CIL_TMP24 \= 0 ,
__CIL_TMP43 is LIN +8* I_SSA_1,
__CIL_TMP44 is LABEL +8* I_SSA_1,
BabelExp_737 is __CIL_TMP44,
babelPtrR(__CIL_TMP45, BabelExp_737, 8),
BabelExp_738 is __CIL_TMP43,
babel_ptrFR(__CIL_TMP46, BabelExp_738,2),
__CIL_TMP47 is __CIL_TMP45,
__CIL_TMP48 is DOCS +8* I_SSA_1,
BabelExp_739 is __CIL_TMP48,
babelPtrR(__CIL_TMP49, BabelExp_739, 8),
__CIL_TMP50 is __CIL_TMP49,
__CIL_TMP51 is __CIL_TMP50 +1* 24,
__CIL_TMP52 is __CIL_TMP51,
BabelExp_740 is __CIL_TMP52,
babelPtrR(__CIL_TMP53, BabelExp_740, 8),
__CIL_TMP54 is SLACK +8* __CIL_TMP53,
BabelExp_741 is __CIL_TMP46 * __CIL_TMP47,
__CIL_TMP55 is BabelExp_741,
BabelExp_742 is __CIL_TMP54,
babel_ptrFR(__CIL_TMP56, BabelExp_742,2),
BabelExp_743 is __CIL_TMP55 + __CIL_TMP56,
DIST_SSA_1 is BabelExp_743,
__CIL_TMP57 is LEARN_PARM +1* 16,
__CIL_TMP58 is __CIL_TMP57,
__CIL_TMP59 is LABEL +8* I_SSA_1,
BabelExp_744 is __CIL_TMP59,
babelPtrR(__CIL_TMP60, BabelExp_744, 8),
__CIL_TMP61 is C +8* I_SSA_1,
__CIL_TMP62 is __CIL_TMP60,
BabelExp_745 is __CIL_TMP61,
babel_ptrFR(__CIL_TMP63, BabelExp_745,2),
BabelExp_746 is __CIL_TMP58,
babel_ptrFR(__CIL_TMP64, BabelExp_746,2),
BabelExp_747 is __CIL_TMP62 * __CIL_TMP63,
__CIL_TMP65 is BabelExp_747,
BabelExp_748 is __CIL_TMP64 - __CIL_TMP65,
__CIL_TMP66 is BabelExp_748,
BabelExp_749 is - __CIL_TMP66,
TARGET_SSA_1 is BabelExp_749,
__CIL_TMP67 is A +8* I_SSA_1,
__CIL_TMP68 is LEARN_PARM +1* 560,
__CIL_TMP69 is __CIL_TMP68,
BabelExp_750 is __CIL_TMP67,
babel_ptrFR(__CIL_TMP70, BabelExp_750,2),
BabelExp_751 is __CIL_TMP69,
babel_ptrFR(__CIL_TMP71, BabelExp_751,2),

(__CIL_TMP70 > __CIL_TMP71 ,
__CIL_TMP25 is 1
; __CIL_TMP25 is 0),

(__CIL_TMP25 \= 0 ,
(DIST_SSA_1 > TARGET_SSA_1 ,
__CIL_TMP26 is 1
; __CIL_TMP26 is 0),

(__CIL_TMP26 \= 0 ,
BabelExp_752 is DIST_SSA_1 - TARGET_SSA_1,
__CIL_TMP72 is BabelExp_752,
BabelExp_753 is __CIL_AP_MAXDIFF,
babel_ptrFR(__CIL_TMP73, BabelExp_753,2),

(__CIL_TMP72 > __CIL_TMP73 ,
__CIL_TMP27 is 1
; __CIL_TMP27 is 0),

(__CIL_TMP27 \= 0 ,
BabelExp_754 is DIST_SSA_1 - TARGET_SSA_1,
babel_ptrFW(__CIL_AP_MAXDIFF, BabelExp_754,2),
__CIL_TMP74 is DOCS +8* I_SSA_1,
BabelExp_755 is __CIL_TMP74,
babelPtrR(__CIL_TMP75, BabelExp_755, 8),
__CIL_TMP76 is __CIL_TMP75,
__CIL_TMP77 is __CIL_TMP76 +1* 24,
__CIL_TMP78 is __CIL_TMP77,
babelPtrR(BabelExp_756, __CIL_TMP78, 8),
babel_ptrE(__CIL_AP_MAXDIFFID, BabelExp_756, 8)
; true)
; true)
; true)
; true),
BabelExp_757 is II + 1,
II_SSA_1 is BabelExp_757,
select_next_qp_slackset_cil_lr_1(__CIL_AP_MAXVIOL, __CIL_AP_MAXDIFFID, __CIL_AP_MAXDIFF, DOCS, LABEL, A, LIN, SLACK, ALPHASLACK, C, LEARN_PARM, ACTIVE2DNUM, II_SSA_1, VOID),true
; true).

 :- foreign(babel__implicit_update_linear_component_cil_lr_3c_165(+integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_update_linear_component_cil_lr_3c_166(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_update_linear_component_cil_lr_3c_167(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_update_linear_component_cil_lr_3c_168(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).

update_linear_component_cil_lr_3(__CIL_PP_DOCS, __CIL_PP_LABEL, __CIL_PP_ACTIVE2DNUM, __CIL_PP_A, __CIL_PP_A_OLD, __CIL_PP_WORKING2DNUM, __CIL_PP_TOTDOC, __CIL_PP_KERNEL_PARM, __CIL_PP_KERNEL_CACHE, __CIL_PP_LIN, __CIL_PP_AICACHE, __CIL_PP_JJ, __CIL_FP_DOCS, __CIL_FP_LABEL, __CIL_FP_ACTIVE2DNUM, __CIL_FP_A, __CIL_FP_A_OLD, __CIL_FP_WORKING2DNUM, __CIL_FP_TOTDOC, __CIL_FP_KERNEL_PARM, __CIL_FP_KERNEL_CACHE, __CIL_FP_LIN, __CIL_FP_AICACHE, __CIL_FP_JJ, DOCS, LABEL, ACTIVE2DNUM, A, A_OLD, WORKING2DNUM, TOTDOC, KERNEL_PARM, KERNEL_CACHE, LIN, AICACHE, JJ, VOID) :- 


 __CIL_TMP58 is WORKING2DNUM +8* JJ,
BabelExp_759 is __CIL_TMP58,
babelPtrR(I_SSA_1, BabelExp_759, 8),

(I_SSA_1 >= 0 ,
__CIL_TMP56 is 1
; __CIL_TMP56 is 0),

(__CIL_TMP56 \= 0 ,
__CIL_TMP59 is A +8* I_SSA_1,
__CIL_TMP60 is A_OLD +8* I_SSA_1,
BabelExp_760 is __CIL_TMP59,
babel_ptrFR(__CIL_TMP61, BabelExp_760,2),
BabelExp_761 is __CIL_TMP60,
babel_ptrFR(__CIL_TMP62, BabelExp_761,2),

(__CIL_TMP61 \= __CIL_TMP62 ,
__CIL_TMP57 is 1
; __CIL_TMP57 is 0),

(__CIL_TMP57 \= 0 ,
babel__implicit_update_linear_component_cil_lr_3c_165(KERNEL_CACHE, DOCS, I_SSA_1, TOTDOC, ACTIVE2DNUM, AICACHE, KERNEL_PARM),
II_SSA_1 is 0,
BabelExp_762 is DOCS,
babel_ptrE(__CIL_FP_DOCS, BabelExp_762, 8),
BabelExp_763 is LABEL,
babel_ptrE(__CIL_FP_LABEL, BabelExp_763, 8),
BabelExp_764 is ACTIVE2DNUM,
babel_ptrE(__CIL_FP_ACTIVE2DNUM, BabelExp_764, 8),
BabelExp_765 is A,
babel_ptrE(__CIL_FP_A, BabelExp_765, 8),
BabelExp_766 is A_OLD,
babel_ptrE(__CIL_FP_A_OLD, BabelExp_766, 8),
BabelExp_767 is WORKING2DNUM,
babel_ptrE(__CIL_FP_WORKING2DNUM, BabelExp_767, 8),
BabelExp_768 is TOTDOC,
babel_ptrE(__CIL_FP_TOTDOC, BabelExp_768, 8),
BabelExp_769 is KERNEL_PARM,
babel_ptrE(__CIL_FP_KERNEL_PARM, BabelExp_769, 8),
BabelExp_770 is KERNEL_CACHE,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_770, 8),
BabelExp_771 is LIN,
babel_ptrE(__CIL_FP_LIN, BabelExp_771, 8),
BabelExp_772 is AICACHE,
babel_ptrE(__CIL_FP_AICACHE, BabelExp_772, 8),
BabelExp_773 is JJ,
babel_ptrE(__CIL_FP_JJ, BabelExp_773, 8),
babel__implicit_update_linear_component_cil_lr_3c_166(__CIL_PP_DOCS, __CIL_PP_LABEL, __CIL_PP_ACTIVE2DNUM, __CIL_PP_A, __CIL_PP_A_OLD, __CIL_PP_WORKING2DNUM, __CIL_PP_TOTDOC, __CIL_PP_KERNEL_PARM, __CIL_PP_KERNEL_CACHE, __CIL_PP_LIN, __CIL_PP_AICACHE, __CIL_PP_JJ, I_SSA_1, II_SSA_1),
BabelExp_774 is __CIL_FP_DOCS,
babelPtrR(DOCS_SSA_1, BabelExp_774, 8),
BabelExp_775 is __CIL_FP_LABEL,
babelPtrR(LABEL_SSA_1, BabelExp_775, 8),
BabelExp_776 is __CIL_FP_ACTIVE2DNUM,
babelPtrR(ACTIVE2DNUM_SSA_1, BabelExp_776, 8),
BabelExp_777 is __CIL_FP_A,
babelPtrR(A_SSA_1, BabelExp_777, 8),
BabelExp_778 is __CIL_FP_A_OLD,
babelPtrR(A_OLD_SSA_1, BabelExp_778, 8),
BabelExp_779 is __CIL_FP_WORKING2DNUM,
babelPtrR(WORKING2DNUM_SSA_1, BabelExp_779, 8),
BabelExp_780 is __CIL_FP_TOTDOC,
babelPtrR(TOTDOC_SSA_1, BabelExp_780, 8),
BabelExp_781 is __CIL_FP_KERNEL_PARM,
babelPtrR(KERNEL_PARM_SSA_1, BabelExp_781, 8),
BabelExp_782 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_1, BabelExp_782, 8),
BabelExp_783 is __CIL_FP_LIN,
babelPtrR(LIN_SSA_1, BabelExp_783, 8),
BabelExp_784 is __CIL_FP_AICACHE,
babelPtrR(AICACHE_SSA_1, BabelExp_784, 8),
BabelExp_785 is __CIL_FP_JJ,
babelPtrR(JJ_SSA_1, BabelExp_785, 8)
; A_SSA_1 is A,
A_OLD_SSA_1 is A_OLD,
ACTIVE2DNUM_SSA_1 is ACTIVE2DNUM,
AICACHE_SSA_1 is AICACHE,
DOCS_SSA_1 is DOCS,
JJ_SSA_1 is JJ,
KERNEL_CACHE_SSA_1 is KERNEL_CACHE,
KERNEL_PARM_SSA_1 is KERNEL_PARM,
LABEL_SSA_1 is LABEL,
LIN_SSA_1 is LIN,
TOTDOC_SSA_1 is TOTDOC,
WORKING2DNUM_SSA_1 is WORKING2DNUM),
BabelExp_786 is JJ_SSA_1 + 1,
JJ_SSA_2 is BabelExp_786,
babel__implicit_update_linear_component_cil_lr_3c_167(DOCS_SSA_1, LABEL_SSA_1, ACTIVE2DNUM_SSA_1, A_SSA_1, A_OLD_SSA_1, WORKING2DNUM_SSA_1, TOTDOC_SSA_1, KERNEL_PARM_SSA_1, KERNEL_CACHE_SSA_1, LIN_SSA_1, AICACHE_SSA_1, JJ_SSA_2),true
; true).

 

 

 
add_to_index_cil_lr_1(__CIL_AP_INDEX___0, __CIL_AP_ELEM, __CIL_AP_I, VOID) :- 


 BabelExp_834 is __CIL_AP_INDEX___0,
babelPtrR(__CIL_TMP5, BabelExp_834, 8),
BabelExp_835 is __CIL_AP_I,
babelPtrR(__CIL_TMP6, BabelExp_835, 8),
__CIL_TMP7 is __CIL_TMP5 +8* __CIL_TMP6,
BabelExp_836 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_836, 8),

(__CIL_TMP8 \= -1 ,
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ,
BabelExp_837 is __CIL_AP_I,
babelPtrR(__CIL_TMP9, BabelExp_837, 8),
BabelExp_838 is __CIL_TMP9 + 1,
babel_ptrE(__CIL_AP_I, BabelExp_838, 8),
add_to_index_cil_lr_1(__CIL_AP_INDEX___0, __CIL_AP_ELEM, __CIL_AP_I, VOID),true
; true). 

 
compute_objective_function_cil_lr_1(__CIL_AP_CRITERION, A, LIN, C, EPS, LABEL, ACTIVE2DNUM, II, VOID) :- 


 __CIL_TMP13 is ACTIVE2DNUM +8* II,
BabelExp_839 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_839, 8),

(__CIL_TMP14 >= 0 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ,
__CIL_TMP15 is ACTIVE2DNUM +8* II,
BabelExp_840 is __CIL_TMP15,
babelPtrR(I_SSA_1, BabelExp_840, 8),
__CIL_TMP16 is LABEL +8* I_SSA_1,
BabelExp_841 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_841, 8),
__CIL_TMP18 is C +8* I_SSA_1,
__CIL_TMP19 is __CIL_TMP17,
BabelExp_842 is __CIL_TMP18,
babel_ptrFR(__CIL_TMP20, BabelExp_842,2),
BabelExp_843 is __CIL_TMP19 * __CIL_TMP20,
__CIL_TMP21 is BabelExp_843,
__CIL_TMP22 is A +8* I_SSA_1,
BabelExp_844 is EPS - __CIL_TMP21,
__CIL_TMP23 is BabelExp_844,
BabelExp_845 is __CIL_TMP22,
babel_ptrFR(__CIL_TMP24, BabelExp_845,2),
BabelExp_846 is __CIL_AP_CRITERION,
babel_ptrFR(__CIL_TMP25, BabelExp_846,2),
BabelExp_847 is __CIL_TMP23 * __CIL_TMP24,
__CIL_TMP26 is BabelExp_847,
__CIL_TMP27 is A +8* I_SSA_1,
BabelExp_848 is __CIL_TMP27,
babel_ptrFR(__CIL_TMP28, BabelExp_848,2),
__CIL_TMP29 is LABEL +8* I_SSA_1,
BabelExp_849 is __CIL_TMP29,
babelPtrR(__CIL_TMP30, BabelExp_849, 8),
BabelExp_850 is 0.5 * __CIL_TMP28,
__CIL_TMP31 is BabelExp_850,
__CIL_TMP32 is __CIL_TMP30,
__CIL_TMP33 is LIN +8* I_SSA_1,
BabelExp_851 is __CIL_TMP31 * __CIL_TMP32,
__CIL_TMP34 is BabelExp_851,
BabelExp_852 is __CIL_TMP33,
babel_ptrFR(__CIL_TMP35, BabelExp_852,2),
BabelExp_853 is __CIL_TMP25 + __CIL_TMP26,
__CIL_TMP36 is BabelExp_853,
BabelExp_854 is __CIL_TMP34 * __CIL_TMP35,
__CIL_TMP37 is BabelExp_854,
BabelExp_855 is __CIL_TMP36 + __CIL_TMP37,
babel_ptrFW(__CIL_AP_CRITERION, BabelExp_855,2),
BabelExp_856 is II + 1,
II_SSA_1 is BabelExp_856,
compute_objective_function_cil_lr_1(__CIL_AP_CRITERION, A, LIN, C, EPS, LABEL, ACTIVE2DNUM, II_SSA_1, VOID),true
; true). 



%:- foreign(babel__implicit_classify_examplec_0(+integer, +integer,  -float)).
%:- foreign(babel__implicit_classify_examplec_1(+integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_classify_examplec_2(+integer, +integer, +integer, +integer)).
%
%classify_example(__CIL_PP_MODEL, __CIL_PP_DIST, __CIL_FP_MODEL, __CIL_FP_DIST, MODEL, EX, BABEL_RET) :- 
%
%
% __CIL_TMP20 is MODEL +1* 64,
%__CIL_TMP21 is __CIL_TMP20,
%BabelExp_0 is __CIL_TMP21,
%babelPtrR(__CIL_TMP22, BabelExp_0, 8),
%
%(__CIL_TMP22 =:= 0 ,
%__CIL_TMP16 is 1
%; __CIL_TMP16 is 0),
%
%(__CIL_TMP16 \= 0 ,
%__CIL_TMP23 is MODEL +1* 208,
%__CIL_TMP24 is __CIL_TMP23,
%BabelExp_1 is __CIL_TMP24,
%babelPtrR(__CIL_TMP17, BabelExp_1, 8),
%(__CIL_TMP17 \= 0 ,
%babel__implicit_classify_examplec_0(MODEL, EX , TMP_SSA_1),BABEL_RET is TMP_SSA_1, true
%; DIST_SSA_1 is 0,
%I_SSA_1 is 1,
%BabelExp_2 is MODEL,
%babel_ptrE(__CIL_FP_MODEL, BabelExp_2, 8),
%BabelExp_3 is DIST_SSA_1,
%babel_ptrFW(__CIL_FP_DIST, BabelExp_3,2),
%babel__implicit_classify_examplec_1(__CIL_PP_MODEL, __CIL_PP_DIST, EX, I_SSA_1),
%BabelExp_4 is __CIL_FP_MODEL,
%babelPtrR(MODEL_SSA_1, BabelExp_4, 8),
%BabelExp_5 is __CIL_FP_DIST,
%babel_ptrFR(DIST_SSA_2, BabelExp_5,2),
%__CIL_TMP25 is MODEL_SSA_1 +1* 16,
%__CIL_TMP26 is __CIL_TMP25,
%BabelExp_6 is __CIL_TMP26,
%babel_ptrFR(__CIL_TMP27, BabelExp_6,2),
%BabelExp_7 is DIST_SSA_2 - __CIL_TMP27,
%__CIL_TMP18 is BabelExp_7,BABEL_RET is __CIL_TMP18, true)
%; DIST_SSA_1 is 0,
%I_SSA_1 is 1,
%BabelExp_8 is MODEL,
%babel_ptrE(__CIL_FP_MODEL, BabelExp_8, 8),
%BabelExp_9 is DIST_SSA_1,
%babel_ptrFW(__CIL_FP_DIST, BabelExp_9,2),
%babel__implicit_classify_examplec_2(__CIL_PP_MODEL, __CIL_PP_DIST, EX, I_SSA_1),
%BabelExp_10 is __CIL_FP_MODEL,
%babelPtrR(MODEL_SSA_1, BabelExp_10, 8),
%BabelExp_11 is __CIL_FP_DIST,
%babel_ptrFR(DIST_SSA_2, BabelExp_11,2),
%__CIL_TMP28 is MODEL_SSA_1 +1* 16,
%__CIL_TMP29 is __CIL_TMP28,
%BabelExp_12 is __CIL_TMP29,
%babel_ptrFR(__CIL_TMP30, BabelExp_12,2),
%BabelExp_13 is DIST_SSA_2 - __CIL_TMP30,
%__CIL_TMP19 is BabelExp_13,BABEL_RET is __CIL_TMP19, true). 
%
% :- foreign(babel__implicit_classify_example_linearc_3(+integer, +integer, +integer)).
%
%classify_example_linear(__CIL_PP_MODEL, __CIL_PP_SUM, __CIL_FP_MODEL, __CIL_FP_SUM, MODEL, EX, BABEL_RET) :- 
%
%
% SUM_SSA_1 is 0,
%__CIL_TMP15 is EX +1* 32,
%__CIL_TMP16 is __CIL_TMP15,
%BabelExp_14 is __CIL_TMP16,
%babelPtrR(F_SSA_1, BabelExp_14, 8),
%BabelExp_15 is MODEL,
%babel_ptrE(__CIL_FP_MODEL, BabelExp_15, 8),
%BabelExp_16 is SUM_SSA_1,
%babel_ptrFW(__CIL_FP_SUM, BabelExp_16,2),
%babel__implicit_classify_example_linearc_3(__CIL_PP_MODEL, __CIL_PP_SUM, F_SSA_1),
%BabelExp_17 is __CIL_FP_MODEL,
%babelPtrR(MODEL_SSA_1, BabelExp_17, 8),
%BabelExp_18 is __CIL_FP_SUM,
%babel_ptrFR(SUM_SSA_2, BabelExp_18,2),
%__CIL_TMP17 is MODEL_SSA_1 +1* 16,
%__CIL_TMP18 is __CIL_TMP17,
%BabelExp_19 is __CIL_TMP18,
%babel_ptrFR(__CIL_TMP19, BabelExp_19,2),
%BabelExp_20 is SUM_SSA_2 - __CIL_TMP19,
%__CIL_TMP14 is BabelExp_20,BABEL_RET is __CIL_TMP14, true. 
%
% :- foreign(babel__implicit_free_svectorc_4(+integer)).
%:- foreign(babel__implicit_free_svectorc_5(+integer)).
%:- foreign(babel__implicit_free_svectorc_6(+integer)).
%:- foreign(babel__implicit_free_svectorc_7(+integer)).
%
%free_svector(VEC, VOID) :- 
%
%
% (VEC \= 0 ,
%MEM_12 is VEC,
%BabelExp_21 is MEM_12,
%babelPtrR(__CIL_TMP3, BabelExp_21, 8),
%babel__implicit_free_svectorc_4(__CIL_TMP3),
%__CIL_TMP4 is VEC +1* 16,
%__CIL_TMP5 is __CIL_TMP4,
%BabelExp_22 is __CIL_TMP5,
%babelPtrR(__CIL_TMP2, BabelExp_22, 8),
%(__CIL_TMP2 \= 0 ,
%__CIL_TMP6 is VEC +1* 16,
%__CIL_TMP7 is __CIL_TMP6,
%BabelExp_23 is __CIL_TMP7,
%babelPtrR(__CIL_TMP8, BabelExp_23, 8),
%babel__implicit_free_svectorc_5(__CIL_TMP8)
%; true),
%__CIL_TMP9 is VEC +1* 32,
%__CIL_TMP10 is __CIL_TMP9,
%BabelExp_24 is __CIL_TMP10,
%babelPtrR(__CIL_TMP11, BabelExp_24, 8),
%babel__implicit_free_svectorc_6(__CIL_TMP11),
%babel__implicit_free_svectorc_7(VEC)
%; true),
%true. 
%
% :- foreign(babel__implicit_write_modelc_8(+integer)).
%:- foreign(babel__implicit_write_modelc_9(+integer)).
%:- foreign(babel__implicit_write_modelc_10(+integer, +integer,  -integer)).
%:- foreign(babel__implicit_write_modelc_11(+integer)).
%:- foreign(babel__implicit_write_modelc_12(+integer)).
%:- foreign(babel__implicit_write_modelc_13(+integer, +integer, +string)).
%:- foreign(babel__implicit_write_modelc_14(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_modelc_15(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_modelc_16(+integer, +integer, +float)).
%:- foreign(babel__implicit_write_modelc_17(+integer, +integer, +float)).
%:- foreign(babel__implicit_write_modelc_18(+integer, +integer, +float)).
%:- foreign(babel__implicit_write_modelc_19(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_modelc_20(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_modelc_21(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_modelc_22(+integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_write_modelc_23(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_modelc_24(+integer, +integer, +float)).
%:- foreign(babel__implicit_write_modelc_25(+integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_write_modelc_26(+integer)).
%:- foreign(babel__implicit_write_modelc_27(+integer)).
%
%write_model(__CIL_PP_VERBOSITY, __CIL_PP_MODEL, __CIL_PP_MODELFL, __CIL_PP_SV_NUM, __CIL_GP_VERBOSITY, __CIL_GP_STDOUT, __CIL_FP_MODEL, __CIL_FP_MODELFL, __CIL_FP_SV_NUM, MODELFILE, MODEL, VOID) :- 
%
%
% BabelExp_25 is __CIL_GP_VERBOSITY,
%babelPtrR(__CIL_TMP28, BabelExp_25, 8),
%
%(__CIL_TMP28 >= 1 ,
%__CIL_TMP25 is 1
%; __CIL_TMP25 is 0),
%
%(__CIL_TMP25 \= 0 ,
%babel__implicit_write_modelc_8('WRITING MODEL FILE...'),
%BabelExp_26 is __CIL_GP_STDOUT,
%babelPtrR(__CIL_TMP29, BabelExp_26, 8),
%babel__implicit_write_modelc_9(__CIL_TMP29)
%; true),
%babel__implicit_write_modelc_10(MODELFILE, 'W' , MODELFL_SSA_1),
%
%(MODELFL_SSA_1 =:= 0 ,
%__CIL_TMP26 is 1
%; __CIL_TMP26 is 0),
%
%(__CIL_TMP26 \= 0 ,
%babel__implicit_write_modelc_11(MODELFILE),
%babel__implicit_write_modelc_12(1)
%; true),
%babel__implicit_write_modelc_13(MODELFL_SSA_1, 'SVM-LIGHT VERSION %S\\N', 'V6.02'),
%__CIL_TMP30 is MODEL +1* 64,
%__CIL_TMP31 is __CIL_TMP30,
%BabelExp_27 is __CIL_TMP31,
%babelPtrR(__CIL_TMP32, BabelExp_27, 8),
%babel__implicit_write_modelc_14(MODELFL_SSA_1, '%LD # KERNEL TYPE\\N', __CIL_TMP32),
%__CIL_TMP33 is MODEL +1* 72,
%__CIL_TMP34 is __CIL_TMP33,
%BabelExp_28 is __CIL_TMP34,
%babelPtrR(__CIL_TMP35, BabelExp_28, 8),
%babel__implicit_write_modelc_15(MODELFL_SSA_1, '%LD # KERNEL PARAMETER -D \\N', __CIL_TMP35),
%__CIL_TMP36 is MODEL +1* 80,
%__CIL_TMP37 is __CIL_TMP36,
%BabelExp_29 is __CIL_TMP37,
%babel_ptrFR(__CIL_TMP38, BabelExp_29,2),
%babel__implicit_write_modelc_16(MODELFL_SSA_1, '%.8G # KERNEL PARAMETER -G \\N', __CIL_TMP38),
%__CIL_TMP39 is MODEL +1* 88,
%__CIL_TMP40 is __CIL_TMP39,
%BabelExp_30 is __CIL_TMP40,
%babel_ptrFR(__CIL_TMP41, BabelExp_30,2),
%babel__implicit_write_modelc_17(MODELFL_SSA_1, '%.8G # KERNEL PARAMETER -S \\N', __CIL_TMP41),
%__CIL_TMP42 is MODEL +1* 96,
%__CIL_TMP43 is __CIL_TMP42,
%BabelExp_31 is __CIL_TMP43,
%babel_ptrFR(__CIL_TMP44, BabelExp_31,2),
%babel__implicit_write_modelc_18(MODELFL_SSA_1, '%.8G # KERNEL PARAMETER -R \\N', __CIL_TMP44),
%__CIL_TMP45 is MODEL +1* 104,
%__CIL_TMP46 is __CIL_TMP45,
%__CIL_TMP47 is __CIL_TMP46,
%babel__implicit_write_modelc_19(MODELFL_SSA_1, '%S# KERNEL PARAMETER -U \\N', __CIL_TMP47),
%__CIL_TMP48 is MODEL +1* 48,
%__CIL_TMP49 is __CIL_TMP48,
%BabelExp_32 is __CIL_TMP49,
%babelPtrR(__CIL_TMP50, BabelExp_32, 8),
%babel__implicit_write_modelc_20(MODELFL_SSA_1, '%LD # HIGHEST FEATURE INDEX \\N', __CIL_TMP50),
%__CIL_TMP51 is MODEL +1* 56,
%__CIL_TMP52 is __CIL_TMP51,
%BabelExp_33 is __CIL_TMP52,
%babelPtrR(__CIL_TMP53, BabelExp_33, 8),
%babel__implicit_write_modelc_21(MODELFL_SSA_1, '%LD # NUMBER OF TRAINING DOCUMENTS \\N', __CIL_TMP53),
%SV_NUM_SSA_1 is 1,
%I_SSA_1 is 1,
%BabelExp_34 is MODEL,
%babel_ptrE(__CIL_FP_MODEL, BabelExp_34, 8),
%BabelExp_35 is MODELFL_SSA_1,
%babel_ptrE(__CIL_FP_MODELFL, BabelExp_35, 8),
%BabelExp_36 is SV_NUM_SSA_1,
%babel_ptrE(__CIL_FP_SV_NUM, BabelExp_36, 8),
%babel__implicit_write_modelc_22(__CIL_PP_VERBOSITY, __CIL_PP_MODEL, __CIL_PP_MODELFL, __CIL_PP_SV_NUM, I_SSA_1),
%BabelExp_37 is __CIL_FP_MODEL,
%babelPtrR(MODEL_SSA_1, BabelExp_37, 8),
%BabelExp_38 is __CIL_FP_MODELFL,
%babelPtrR(MODELFL_SSA_2, BabelExp_38, 8),
%BabelExp_39 is __CIL_FP_SV_NUM,
%babelPtrR(SV_NUM_SSA_2, BabelExp_39, 8),
%babel__implicit_write_modelc_23(MODELFL_SSA_2, '%LD # NUMBER OF SUPPORT VECTORS PLUS 1 \\N', SV_NUM_SSA_2),
%__CIL_TMP54 is MODEL_SSA_1 +1* 16,
%__CIL_TMP55 is __CIL_TMP54,
%BabelExp_40 is __CIL_TMP55,
%babel_ptrFR(__CIL_TMP56, BabelExp_40,2),
%babel__implicit_write_modelc_24(MODELFL_SSA_2, '%.8G # THRESHOLD B, EACH FOLLOWING LINE IS A SV (STARTING WITH ALPHA*Y)\\N', __CIL_TMP56),
%I_SSA_2 is 1,
%BabelExp_41 is MODELFL_SSA_2,
%babel_ptrE(__CIL_FP_MODELFL, BabelExp_41, 8),
%babel__implicit_write_modelc_25(__CIL_PP_VERBOSITY, __CIL_PP_MODELFL, MODEL_SSA_1, I_SSA_2),
%BabelExp_42 is __CIL_FP_MODELFL,
%babelPtrR(MODELFL_SSA_3, BabelExp_42, 8),
%babel__implicit_write_modelc_26(MODELFL_SSA_3),
%BabelExp_43 is __CIL_GP_VERBOSITY,
%babelPtrR(__CIL_TMP57, BabelExp_43, 8),
%
%(__CIL_TMP57 >= 1 ,
%__CIL_TMP27 is 1
%; __CIL_TMP27 is 0),
%
%(__CIL_TMP27 \= 0 ,
%babel__implicit_write_modelc_27('DONE\\N')
%; true),
%true. 

 
minl(A, B, BABEL_RET) :- 


 (A < B ,
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ,
BABEL_RET is A, true
; BABEL_RET is B, true). 

 
maxl(A, B, BABEL_RET) :- 


 (A > B ,
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ,
BABEL_RET is A, true
; BABEL_RET is B, true). 

% :- foreign(babel__implicit_write_model_cil_lr_2_cil_lr_1_cil_lr_1c_28(+integer, +integer, +integer, +float)).
%
%write_model_cil_lr_2_cil_lr_1_cil_lr_1(__CIL_AP_V, __CIL_AP_MODELFL, J, VOID) :- 
%
%
% BabelExp_44 is __CIL_AP_V,
%babelPtrR(__CIL_TMP6, BabelExp_44, 8),
%__CIL_TMP7 is __CIL_TMP6,
%BabelExp_45 is __CIL_TMP7,
%babelPtrR(__CIL_TMP8, BabelExp_45, 8),
%__CIL_TMP9 is __CIL_TMP8 +1* J,
%__CIL_TMP10 is __CIL_TMP9,
%BabelExp_46 is __CIL_TMP10,
%babelPtrR(__CIL_TMP5, BabelExp_46, 8),
%(__CIL_TMP5 \= 0 ,
%BabelExp_47 is __CIL_AP_MODELFL,
%babelPtrR(__CIL_TMP11, BabelExp_47, 8),
%BabelExp_48 is __CIL_AP_V,
%babelPtrR(__CIL_TMP12, BabelExp_48, 8),
%__CIL_TMP13 is __CIL_TMP12,
%BabelExp_49 is __CIL_TMP13,
%babelPtrR(__CIL_TMP14, BabelExp_49, 8),
%__CIL_TMP15 is __CIL_TMP14 +1* J,
%__CIL_TMP16 is __CIL_TMP15,
%BabelExp_50 is __CIL_AP_V,
%babelPtrR(__CIL_TMP17, BabelExp_50, 8),
%__CIL_TMP18 is __CIL_TMP17,
%BabelExp_51 is __CIL_TMP18,
%babelPtrR(__CIL_TMP19, BabelExp_51, 8),
%__CIL_TMP20 is __CIL_TMP19 +1* J,
%__CIL_TMP21 is __CIL_TMP20,
%__CIL_TMP22 is __CIL_TMP21 +1* 8,
%__CIL_TMP23 is __CIL_TMP22,
%BabelExp_52 is __CIL_TMP23,
%babel_ptrFR(__CIL_TMP24, BabelExp_52,1),
%BabelExp_53 is __CIL_TMP16,
%babelPtrR(__CIL_TMP25, BabelExp_53, 8),
%babel__implicit_write_model_cil_lr_2_cil_lr_1_cil_lr_1c_28(__CIL_TMP11, '%LD:%.8G ', __CIL_TMP25, __CIL_TMP24),
%BabelExp_54 is J + 1,
%J_SSA_1 is BabelExp_54,
%write_model_cil_lr_2_cil_lr_1_cil_lr_1(__CIL_AP_V, __CIL_AP_MODELFL, J_SSA_1, VOID),true
%; true). 

%:- foreign(babel__implicit_write_model_cil_lr_2_cil_lr_1c_30(+integer, +integer, +float)).
%:- foreign(babel__implicit_write_model_cil_lr_2_cil_lr_1c_31(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_model_cil_lr_2_cil_lr_1c_32(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_model_cil_lr_2_cil_lr_1c_33(+integer, +integer, +integer, +integer)).
%
%write_model_cil_lr_2_cil_lr_1(__CIL_PP_V, __CIL_FP_V, __CIL_AP_MODEL, __CIL_AP_I, __CIL_AP_MODELFL, V, VOID) :- 
%
%
% (V \= 0 ,
%BabelExp_55 is __CIL_AP_MODELFL,
%babelPtrR(__CIL_TMP11, BabelExp_55, 8),
%BabelExp_56 is __CIL_AP_MODEL,
%babelPtrR(__CIL_TMP12, BabelExp_56, 8),
%__CIL_TMP13 is __CIL_TMP12,
%__CIL_TMP14 is __CIL_TMP13 +1* 32,
%__CIL_TMP15 is __CIL_TMP14,
%BabelExp_57 is __CIL_TMP15,
%babelPtrR(__CIL_TMP16, BabelExp_57, 8),
%BabelExp_58 is __CIL_AP_I,
%babelPtrR(__CIL_TMP17, BabelExp_58, 8),
%__CIL_TMP18 is __CIL_TMP16 +8* __CIL_TMP17,
%__CIL_TMP19 is V +1* 40,
%__CIL_TMP20 is __CIL_TMP19,
%BabelExp_59 is __CIL_TMP18,
%babel_ptrFR(__CIL_TMP21, BabelExp_59,2),
%BabelExp_60 is __CIL_TMP20,
%babel_ptrFR(__CIL_TMP22, BabelExp_60,2),
%BabelExp_61 is __CIL_TMP21 * __CIL_TMP22,
%__CIL_TMP23 is BabelExp_61,
%babel__implicit_write_model_cil_lr_2_cil_lr_1c_30(__CIL_TMP11, '%.32G ', __CIL_TMP23),
%J_SSA_1 is 0,
%BabelExp_62 is V,
%babel_ptrE(__CIL_FP_V, BabelExp_62, 8),
%babel__implicit_write_model_cil_lr_2_cil_lr_1c_31(__CIL_PP_V, __CIL_AP_MODELFL, J_SSA_1),
%BabelExp_63 is __CIL_FP_V,
%babelPtrR(V_SSA_1, BabelExp_63, 8),
%BabelExp_64 is __CIL_AP_MODELFL,
%babelPtrR(__CIL_TMP24, BabelExp_64, 8),
%__CIL_TMP25 is V_SSA_1 +1* 16,
%__CIL_TMP26 is __CIL_TMP25,
%BabelExp_65 is __CIL_TMP26,
%babelPtrR(__CIL_TMP27, BabelExp_65, 8),
%babel__implicit_write_model_cil_lr_2_cil_lr_1c_32(__CIL_TMP24, '#%S\\N', __CIL_TMP27),
%__CIL_TMP28 is V_SSA_1 +1* 32,
%__CIL_TMP29 is __CIL_TMP28,
%BabelExp_66 is __CIL_TMP29,
%babelPtrR(V_SSA_2, BabelExp_66, 8),
%babel__implicit_write_model_cil_lr_2_cil_lr_1c_33(__CIL_AP_MODEL, __CIL_AP_I, __CIL_AP_MODELFL, V_SSA_2),true
%; true). 
%
% 
%write_model_cil_lr_1_cil_lr_1(__CIL_AP_I, __CIL_AP_SV_NUM, V, VOID) :- 
%
%
% (V \= 0 ,
%BabelExp_67 is __CIL_AP_SV_NUM,
%babelPtrR(__CIL_TMP5, BabelExp_67, 8),
%BabelExp_68 is __CIL_TMP5 + 1,
%babel_ptrE(__CIL_AP_SV_NUM, BabelExp_68, 8),
%__CIL_TMP6 is V +1* 32,
%__CIL_TMP7 is __CIL_TMP6,
%BabelExp_69 is __CIL_TMP7,
%babelPtrR(V_SSA_1, BabelExp_69, 8),
%write_model_cil_lr_1_cil_lr_1(__CIL_AP_I, __CIL_AP_SV_NUM, V_SSA_1, VOID),true
%; true). 
%
% :- foreign(babel__implicit_write_model_cil_lr_1c_35(+integer, +integer, +integer)).
%:- foreign(babel__implicit_write_model_cil_lr_1c_36(+integer, +integer, +integer, +integer, +integer)).
%
%write_model_cil_lr_1(__CIL_PP_I, __CIL_FP_I, __CIL_AP_VERBOSITY, __CIL_AP_MODEL, __CIL_AP_MODELFL, __CIL_AP_SV_NUM, I, VOID) :- 
%
%
% BabelExp_70 is __CIL_AP_MODEL,
%babelPtrR(__CIL_TMP13, BabelExp_70, 8),
%__CIL_TMP14 is __CIL_TMP13,
%BabelExp_71 is __CIL_TMP14,
%babelPtrR(__CIL_TMP15, BabelExp_71, 8),
%
%(I < __CIL_TMP15 ,
%__CIL_TMP12 is 1
%; __CIL_TMP12 is 0),
%
%(__CIL_TMP12 \= 0 ,
%BabelExp_72 is __CIL_AP_MODEL,
%babelPtrR(__CIL_TMP16, BabelExp_72, 8),
%__CIL_TMP17 is __CIL_TMP16,
%__CIL_TMP18 is __CIL_TMP17 +1* 24,
%__CIL_TMP19 is __CIL_TMP18,
%BabelExp_73 is __CIL_TMP19,
%babelPtrR(__CIL_TMP20, BabelExp_73, 8),
%__CIL_TMP21 is __CIL_TMP20 +8* I,
%BabelExp_74 is __CIL_TMP21,
%babelPtrR(__CIL_TMP22, BabelExp_74, 8),
%__CIL_TMP23 is __CIL_TMP22,
%__CIL_TMP24 is __CIL_TMP23 +1* 32,
%__CIL_TMP25 is __CIL_TMP24,
%BabelExp_75 is __CIL_TMP25,
%babelPtrR(V_SSA_1, BabelExp_75, 8),
%BabelExp_76 is I,
%babel_ptrE(__CIL_FP_I, BabelExp_76, 8),
%babel__implicit_write_model_cil_lr_1c_35(__CIL_PP_I, __CIL_AP_SV_NUM, V_SSA_1),
%BabelExp_77 is __CIL_FP_I,
%babelPtrR(I_SSA_1, BabelExp_77, 8),
%BabelExp_78 is I_SSA_1 + 1,
%I_SSA_2 is BabelExp_78,
%babel__implicit_write_model_cil_lr_1c_36(__CIL_AP_VERBOSITY, __CIL_AP_MODEL, __CIL_AP_MODELFL, __CIL_AP_SV_NUM, I_SSA_2),true
%; true). 
%
% :- foreign(babel__implicit_write_model_cil_lr_2c_37(+integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_write_model_cil_lr_2c_38(+integer, +integer, +integer, +integer)).
%
%write_model_cil_lr_2(__CIL_PP_MODEL, __CIL_PP_I, __CIL_FP_MODEL, __CIL_FP_I, __CIL_AP_VERBOSITY, __CIL_AP_MODELFL, MODEL, I, VOID) :- 
%
%
% MEM_23 is MODEL,
%BabelExp_79 is MEM_23,
%babelPtrR(__CIL_TMP16, BabelExp_79, 8),
%
%(I < __CIL_TMP16 ,
%__CIL_TMP15 is 1
%; __CIL_TMP15 is 0),
%
%(__CIL_TMP15 \= 0 ,
%__CIL_TMP17 is MODEL +1* 24,
%__CIL_TMP18 is __CIL_TMP17,
%BabelExp_80 is __CIL_TMP18,
%babelPtrR(__CIL_TMP19, BabelExp_80, 8),
%__CIL_TMP20 is __CIL_TMP19 +8* I,
%BabelExp_81 is __CIL_TMP20,
%babelPtrR(__CIL_TMP21, BabelExp_81, 8),
%__CIL_TMP22 is __CIL_TMP21,
%__CIL_TMP23 is __CIL_TMP22 +1* 32,
%__CIL_TMP24 is __CIL_TMP23,
%BabelExp_82 is __CIL_TMP24,
%babelPtrR(V_SSA_1, BabelExp_82, 8),
%BabelExp_83 is MODEL,
%babel_ptrE(__CIL_FP_MODEL, BabelExp_83, 8),
%BabelExp_84 is I,
%babel_ptrE(__CIL_FP_I, BabelExp_84, 8),
%babel__implicit_write_model_cil_lr_2c_37(__CIL_PP_MODEL, __CIL_PP_I, __CIL_AP_MODELFL, V_SSA_1),
%BabelExp_85 is __CIL_FP_MODEL,
%babelPtrR(MODEL_SSA_1, BabelExp_85, 8),
%BabelExp_86 is __CIL_FP_I,
%babelPtrR(I_SSA_1, BabelExp_86, 8),
%BabelExp_87 is I_SSA_1 + 1,
%I_SSA_2 is BabelExp_87,
%babel__implicit_write_model_cil_lr_2c_38(__CIL_AP_VERBOSITY, __CIL_AP_MODELFL, MODEL_SSA_1, I_SSA_2),true
%; true). 
%
% :- foreign(babel__implicit_classify_example_linear_cil_lr_1c_39(+integer, +integer,  -float)).
%
%classify_example_linear_cil_lr_1(__CIL_AP_MODEL, __CIL_AP_SUM, F, VOID) :- 
%
%
% (F \= 0 ,
%BabelExp_88 is __CIL_AP_MODEL,
%babelPtrR(__CIL_TMP7, BabelExp_88, 8),
%__CIL_TMP8 is __CIL_TMP7,
%__CIL_TMP9 is __CIL_TMP8 +1* 208,
%__CIL_TMP10 is __CIL_TMP9,
%BabelExp_89 is __CIL_TMP10,
%babelPtrR(__CIL_TMP11, BabelExp_89, 8),
%babel__implicit_classify_example_linear_cil_lr_1c_39(__CIL_TMP11, F , TMP_SSA_1),
%__CIL_TMP12 is F +1* 40,
%__CIL_TMP13 is __CIL_TMP12,
%BabelExp_90 is __CIL_TMP13,
%babel_ptrFR(__CIL_TMP14, BabelExp_90,2),
%BabelExp_91 is __CIL_AP_SUM,
%babel_ptrFR(__CIL_TMP15, BabelExp_91,2),
%BabelExp_92 is __CIL_TMP14 * TMP_SSA_1,
%__CIL_TMP16 is BabelExp_92,
%BabelExp_93 is __CIL_TMP15 + __CIL_TMP16,
%babel_ptrFW(__CIL_AP_SUM, BabelExp_93,2),
%__CIL_TMP17 is F +1* 32,
%__CIL_TMP18 is __CIL_TMP17,
%BabelExp_94 is __CIL_TMP18,
%babelPtrR(F_SSA_1, BabelExp_94, 8),
%classify_example_linear_cil_lr_1(__CIL_AP_MODEL, __CIL_AP_SUM, F_SSA_1, VOID),true
%; true). 
%
% :- foreign(babel__implicit_classify_example_cil_lr_1c_41(+integer, +integer, +integer,  -float)).
%
%classify_example_cil_lr_1(__CIL_AP_MODEL, __CIL_AP_DIST, EX, I, VOID) :- 
%
%
% BabelExp_95 is __CIL_AP_MODEL,
%babelPtrR(__CIL_TMP9, BabelExp_95, 8),
%__CIL_TMP10 is __CIL_TMP9,
%BabelExp_96 is __CIL_TMP10,
%babelPtrR(__CIL_TMP11, BabelExp_96, 8),
%
%(I < __CIL_TMP11 ,
%__CIL_TMP8 is 1
%; __CIL_TMP8 is 0),
%
%(__CIL_TMP8 \= 0 ,
%BabelExp_97 is __CIL_AP_MODEL,
%babelPtrR(__CIL_TMP12, BabelExp_97, 8),
%__CIL_TMP13 is __CIL_TMP12,
%__CIL_TMP14 is __CIL_TMP13 +1* 64,
%BabelExp_98 is __CIL_AP_MODEL,
%babelPtrR(__CIL_TMP15, BabelExp_98, 8),
%__CIL_TMP16 is __CIL_TMP15,
%__CIL_TMP17 is __CIL_TMP16 +1* 24,
%__CIL_TMP18 is __CIL_TMP17,
%BabelExp_99 is __CIL_TMP18,
%babelPtrR(__CIL_TMP19, BabelExp_99, 8),
%__CIL_TMP20 is __CIL_TMP19 +8* I,
%BabelExp_100 is __CIL_TMP20,
%babelPtrR(__CIL_TMP21, BabelExp_100, 8),
%babel__implicit_classify_example_cil_lr_1c_41(__CIL_TMP14, __CIL_TMP21, EX , TMP___0_SSA_1),
%BabelExp_101 is __CIL_AP_MODEL,
%babelPtrR(__CIL_TMP22, BabelExp_101, 8),
%__CIL_TMP23 is __CIL_TMP22,
%__CIL_TMP24 is __CIL_TMP23 +1* 32,
%__CIL_TMP25 is __CIL_TMP24,
%BabelExp_102 is __CIL_TMP25,
%babelPtrR(__CIL_TMP26, BabelExp_102, 8),
%__CIL_TMP27 is __CIL_TMP26 +8* I,
%BabelExp_103 is __CIL_TMP27,
%babel_ptrFR(__CIL_TMP28, BabelExp_103,2),
%BabelExp_104 is __CIL_AP_DIST,
%babel_ptrFR(__CIL_TMP29, BabelExp_104,2),
%BabelExp_105 is TMP___0_SSA_1 * __CIL_TMP28,
%__CIL_TMP30 is BabelExp_105,
%BabelExp_106 is __CIL_TMP29 + __CIL_TMP30,
%babel_ptrFW(__CIL_AP_DIST, BabelExp_106,2),
%BabelExp_107 is I + 1,
%I_SSA_1 is BabelExp_107,
%classify_example_cil_lr_1(__CIL_AP_MODEL, __CIL_AP_DIST, EX, I_SSA_1, VOID),true
%; true). 
%
 
%:- foreign(babel__implicit_estimate_transduction_qualityc_8(+integer, +integer, +integer,  -float)).
%:- foreign(babel__implicit_estimate_transduction_qualityc_9(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +float)).
%:- foreign(babel__implicit_estimate_transduction_qualityc_10(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_estimate_transduction_qualityc_11(+integer, +float, +float, +float)).
%:- foreign(babel__implicit_estimate_transduction_qualityc_12(+integer, +float, +float)).
%:- foreign(babel__implicit_estimate_transduction_qualityc_13(+integer, +float, +float, +float)).
%:- foreign(babel__implicit_estimate_transduction_qualityc_14(+integer, +float, +float, +float)).
%:- foreign(babel__implicit_estimate_transduction_qualityc_15(+integer, +float, +float, +float)).
%
%estimate_transduction_quality(__CIL_PP_MODEL, __CIL_PP_LABEL, __CIL_PP_UNLABELED, __CIL_PP_TOTDOC, __CIL_PP_LIN, __CIL_PP_L, __CIL_PP_ULAB, __CIL_PP_LAB, __CIL_PP_LABPOS, __CIL_PP_LABNEG, __CIL_PP_ULABPOS, __CIL_PP_ULABNEG, __CIL_PP_TOTULAB, __CIL_PP_TOTLAB, __CIL_PP_TOTLABPOS, __CIL_PP_LABSUM, __CIL_PP_ULABSUM, __CIL_PP_R_DELTA_SQ, __CIL_PP_XISUM, __CIL_PP_ASUM, __CIL_FP_MODEL, __CIL_FP_LABEL, __CIL_FP_UNLABELED, __CIL_FP_TOTDOC, __CIL_FP_LIN, __CIL_FP_L, __CIL_FP_ULAB, __CIL_FP_LAB, __CIL_FP_LABPOS, __CIL_FP_LABNEG, __CIL_FP_ULABPOS, __CIL_FP_ULABNEG, __CIL_FP_TOTULAB, __CIL_FP_TOTLAB, __CIL_FP_TOTLABPOS, __CIL_FP_LABSUM, __CIL_FP_ULABSUM, __CIL_FP_R_DELTA_SQ, __CIL_FP_XISUM, __CIL_FP_ASUM, MODEL, LABEL, UNLABELED, TOTDOC, DOCS, LIN, VOID) :- 
%
%
% L_SSA_1 is 0,
%ULAB_SSA_1 is 0,
%LAB_SSA_1 is 0,
%LABPOS_SSA_1 is 0,
%LABNEG_SSA_1 is 0,
%ULABPOS_SSA_1 is 0,
%ULABNEG_SSA_1 is 0,
%TOTULAB_SSA_1 is 0,
%TOTLAB_SSA_1 is 0,
%TOTLABPOS_SSA_1 is 0,
%TOTLABNEG_SSA_1 is 0,
%LABSUM_SSA_1 is 0,
%ULABSUM_SSA_1 is 0,
%XISUM_SSA_1 is 0,
%ASUM_SSA_1 is 0,
%__CIL_TMP126 is MODEL +1* 64,
%babel__implicit_estimate_transduction_qualityc_8(DOCS, TOTDOC, __CIL_TMP126 , R_DELTA_SSA_1),
%BabelExp_13 is R_DELTA_SSA_1 * R_DELTA_SSA_1,
%R_DELTA_SQ_SSA_1 is BabelExp_13,
%J_SSA_1 is 0,
%BabelExp_14 is MODEL,
%babel_ptrE(__CIL_FP_MODEL, BabelExp_14, 8),
%BabelExp_15 is LABEL,
%babel_ptrE(__CIL_FP_LABEL, BabelExp_15, 8),
%BabelExp_16 is UNLABELED,
%babel_ptrE(__CIL_FP_UNLABELED, BabelExp_16, 8),
%BabelExp_17 is TOTDOC,
%babel_ptrE(__CIL_FP_TOTDOC, BabelExp_17, 8),
%BabelExp_18 is LIN,
%babel_ptrE(__CIL_FP_LIN, BabelExp_18, 8),
%BabelExp_19 is L_SSA_1,
%babel_ptrE(__CIL_FP_L, BabelExp_19, 8),
%BabelExp_20 is ULAB_SSA_1,
%babel_ptrE(__CIL_FP_ULAB, BabelExp_20, 8),
%BabelExp_21 is LAB_SSA_1,
%babel_ptrE(__CIL_FP_LAB, BabelExp_21, 8),
%BabelExp_22 is LABPOS_SSA_1,
%babel_ptrE(__CIL_FP_LABPOS, BabelExp_22, 8),
%BabelExp_23 is LABNEG_SSA_1,
%babel_ptrE(__CIL_FP_LABNEG, BabelExp_23, 8),
%BabelExp_24 is ULABPOS_SSA_1,
%babel_ptrE(__CIL_FP_ULABPOS, BabelExp_24, 8),
%BabelExp_25 is ULABNEG_SSA_1,
%babel_ptrE(__CIL_FP_ULABNEG, BabelExp_25, 8),
%BabelExp_26 is TOTULAB_SSA_1,
%babel_ptrE(__CIL_FP_TOTULAB, BabelExp_26, 8),
%BabelExp_27 is TOTLAB_SSA_1,
%babel_ptrFW(__CIL_FP_TOTLAB, BabelExp_27,2),
%BabelExp_28 is TOTLABPOS_SSA_1,
%babel_ptrFW(__CIL_FP_TOTLABPOS, BabelExp_28,2),
%BabelExp_29 is LABSUM_SSA_1,
%babel_ptrFW(__CIL_FP_LABSUM, BabelExp_29,2),
%BabelExp_30 is ULABSUM_SSA_1,
%babel_ptrFW(__CIL_FP_ULABSUM, BabelExp_30,2),
%BabelExp_31 is R_DELTA_SQ_SSA_1,
%babel_ptrFW(__CIL_FP_R_DELTA_SQ, BabelExp_31,2),
%BabelExp_32 is XISUM_SSA_1,
%babel_ptrFW(__CIL_FP_XISUM, BabelExp_32,2),
%BabelExp_33 is ASUM_SSA_1,
%babel_ptrFW(__CIL_FP_ASUM, BabelExp_33,2),
%babel__implicit_estimate_transduction_qualityc_9(__CIL_PP_MODEL, __CIL_PP_LABEL, __CIL_PP_UNLABELED, __CIL_PP_TOTDOC, __CIL_PP_LIN, __CIL_PP_L, __CIL_PP_ULAB, __CIL_PP_LAB, __CIL_PP_LABPOS, __CIL_PP_LABNEG, __CIL_PP_ULABPOS, __CIL_PP_ULABNEG, __CIL_PP_TOTULAB, __CIL_PP_TOTLAB, __CIL_PP_TOTLABPOS, __CIL_PP_LABSUM, __CIL_PP_ULABSUM, __CIL_PP_R_DELTA_SQ, __CIL_PP_XISUM, __CIL_PP_ASUM, J_SSA_1, TOTLABNEG_SSA_1),
%BabelExp_34 is __CIL_FP_MODEL,
%babelPtrR(MODEL_SSA_1, BabelExp_34, 8),
%BabelExp_35 is __CIL_FP_LABEL,
%babelPtrR(LABEL_SSA_1, BabelExp_35, 8),
%BabelExp_36 is __CIL_FP_UNLABELED,
%babelPtrR(UNLABELED_SSA_1, BabelExp_36, 8),
%BabelExp_37 is __CIL_FP_TOTDOC,
%babelPtrR(TOTDOC_SSA_1, BabelExp_37, 8),
%BabelExp_38 is __CIL_FP_LIN,
%babelPtrR(LIN_SSA_1, BabelExp_38, 8),
%BabelExp_39 is __CIL_FP_L,
%babelPtrR(L_SSA_2, BabelExp_39, 8),
%BabelExp_40 is __CIL_FP_ULAB,
%babelPtrR(ULAB_SSA_2, BabelExp_40, 8),
%BabelExp_41 is __CIL_FP_LAB,
%babelPtrR(LAB_SSA_2, BabelExp_41, 8),
%BabelExp_42 is __CIL_FP_LABPOS,
%babelPtrR(LABPOS_SSA_2, BabelExp_42, 8),
%BabelExp_43 is __CIL_FP_LABNEG,
%babelPtrR(LABNEG_SSA_2, BabelExp_43, 8),
%BabelExp_44 is __CIL_FP_ULABPOS,
%babelPtrR(ULABPOS_SSA_2, BabelExp_44, 8),
%BabelExp_45 is __CIL_FP_ULABNEG,
%babelPtrR(ULABNEG_SSA_2, BabelExp_45, 8),
%BabelExp_46 is __CIL_FP_TOTULAB,
%babelPtrR(TOTULAB_SSA_2, BabelExp_46, 8),
%BabelExp_47 is __CIL_FP_TOTLAB,
%babel_ptrFR(TOTLAB_SSA_2, BabelExp_47,2),
%BabelExp_48 is __CIL_FP_TOTLABPOS,
%babel_ptrFR(TOTLABPOS_SSA_2, BabelExp_48,2),
%BabelExp_49 is __CIL_FP_LABSUM,
%babel_ptrFR(LABSUM_SSA_2, BabelExp_49,2),
%BabelExp_50 is __CIL_FP_ULABSUM,
%babel_ptrFR(ULABSUM_SSA_2, BabelExp_50,2),
%BabelExp_51 is __CIL_FP_R_DELTA_SQ,
%babel_ptrFR(R_DELTA_SQ_SSA_2, BabelExp_51,2),
%BabelExp_52 is __CIL_FP_XISUM,
%babel_ptrFR(XISUM_SSA_2, BabelExp_52,2),
%BabelExp_53 is __CIL_FP_ASUM,
%babel_ptrFR(ASUM_SSA_2, BabelExp_53,2),
%J_SSA_2 is 1,
%BabelExp_54 is TOTDOC_SSA_1,
%babel_ptrE(__CIL_FP_TOTDOC, BabelExp_54, 8),
%BabelExp_55 is L_SSA_2,
%babel_ptrE(__CIL_FP_L, BabelExp_55, 8),
%BabelExp_56 is ULAB_SSA_2,
%babel_ptrE(__CIL_FP_ULAB, BabelExp_56, 8),
%BabelExp_57 is LAB_SSA_2,
%babel_ptrE(__CIL_FP_LAB, BabelExp_57, 8),
%BabelExp_58 is LABPOS_SSA_2,
%babel_ptrE(__CIL_FP_LABPOS, BabelExp_58, 8),
%BabelExp_59 is LABNEG_SSA_2,
%babel_ptrE(__CIL_FP_LABNEG, BabelExp_59, 8),
%BabelExp_60 is ULABPOS_SSA_2,
%babel_ptrE(__CIL_FP_ULABPOS, BabelExp_60, 8),
%BabelExp_61 is ULABNEG_SSA_2,
%babel_ptrE(__CIL_FP_ULABNEG, BabelExp_61, 8),
%BabelExp_62 is TOTULAB_SSA_2,
%babel_ptrE(__CIL_FP_TOTULAB, BabelExp_62, 8),
%BabelExp_63 is TOTLAB_SSA_2,
%babel_ptrFW(__CIL_FP_TOTLAB, BabelExp_63,2),
%BabelExp_64 is TOTLABPOS_SSA_2,
%babel_ptrFW(__CIL_FP_TOTLABPOS, BabelExp_64,2),
%BabelExp_65 is LABSUM_SSA_2,
%babel_ptrFW(__CIL_FP_LABSUM, BabelExp_65,2),
%BabelExp_66 is ULABSUM_SSA_2,
%babel_ptrFW(__CIL_FP_ULABSUM, BabelExp_66,2),
%BabelExp_67 is R_DELTA_SQ_SSA_2,
%babel_ptrFW(__CIL_FP_R_DELTA_SQ, BabelExp_67,2),
%BabelExp_68 is XISUM_SSA_2,
%babel_ptrFW(__CIL_FP_XISUM, BabelExp_68,2),
%BabelExp_69 is ASUM_SSA_2,
%babel_ptrFW(__CIL_FP_ASUM, BabelExp_69,2),
%babel__implicit_estimate_transduction_qualityc_10(__CIL_PP_TOTDOC, __CIL_PP_L, __CIL_PP_ULAB, __CIL_PP_LAB, __CIL_PP_LABPOS, __CIL_PP_LABNEG, __CIL_PP_ULABPOS, __CIL_PP_ULABNEG, __CIL_PP_TOTULAB, __CIL_PP_TOTLAB, __CIL_PP_TOTLABPOS, __CIL_PP_LABSUM, __CIL_PP_ULABSUM, __CIL_PP_R_DELTA_SQ, __CIL_PP_XISUM, __CIL_PP_ASUM, MODEL_SSA_1, LABEL_SSA_1, UNLABELED_SSA_1, LIN_SSA_1, J_SSA_2),
%BabelExp_70 is __CIL_FP_TOTDOC,
%babelPtrR(TOTDOC_SSA_2, BabelExp_70, 8),
%BabelExp_71 is __CIL_FP_L,
%babelPtrR(L_SSA_3, BabelExp_71, 8),
%BabelExp_72 is __CIL_FP_ULAB,
%babelPtrR(ULAB_SSA_3, BabelExp_72, 8),
%BabelExp_73 is __CIL_FP_LAB,
%babelPtrR(LAB_SSA_3, BabelExp_73, 8),
%BabelExp_74 is __CIL_FP_LABPOS,
%babelPtrR(LABPOS_SSA_3, BabelExp_74, 8),
%BabelExp_75 is __CIL_FP_LABNEG,
%babelPtrR(LABNEG_SSA_3, BabelExp_75, 8),
%BabelExp_76 is __CIL_FP_ULABPOS,
%babelPtrR(ULABPOS_SSA_3, BabelExp_76, 8),
%BabelExp_77 is __CIL_FP_ULABNEG,
%babelPtrR(ULABNEG_SSA_3, BabelExp_77, 8),
%BabelExp_78 is __CIL_FP_TOTULAB,
%babelPtrR(TOTULAB_SSA_3, BabelExp_78, 8),
%BabelExp_79 is __CIL_FP_TOTLAB,
%babel_ptrFR(TOTLAB_SSA_3, BabelExp_79,2),
%BabelExp_80 is __CIL_FP_TOTLABPOS,
%babel_ptrFR(TOTLABPOS_SSA_3, BabelExp_80,2),
%BabelExp_81 is __CIL_FP_LABSUM,
%babel_ptrFR(LABSUM_SSA_3, BabelExp_81,2),
%BabelExp_82 is __CIL_FP_ULABSUM,
%babel_ptrFR(ULABSUM_SSA_3, BabelExp_82,2),
%BabelExp_83 is __CIL_FP_R_DELTA_SQ,
%babel_ptrFR(R_DELTA_SQ_SSA_3, BabelExp_83,2),
%BabelExp_84 is __CIL_FP_XISUM,
%babel_ptrFR(XISUM_SSA_3, BabelExp_84,2),
%BabelExp_85 is __CIL_FP_ASUM,
%babel_ptrFR(ASUM_SSA_3, BabelExp_85,2),
%BabelExp_86 is LABPOS_SSA_3 / TOTLAB_SSA_3,
%__CIL_TMP127 is BabelExp_86,
%BabelExp_87 is LABNEG_SSA_3 / TOTLAB_SSA_3,
%__CIL_TMP128 is BabelExp_87,
%BabelExp_88 is TOTLABPOS_SSA_3 / TOTLAB_SSA_3,
%__CIL_TMP129 is BabelExp_88,
%BabelExp_89 is __CIL_TMP127 * 100.0,
%__CIL_TMP130 is BabelExp_89,
%BabelExp_90 is __CIL_TMP128 * 100.0,
%__CIL_TMP131 is BabelExp_90,
%BabelExp_91 is __CIL_TMP129 * 100.0,
%__CIL_TMP132 is BabelExp_91,
%babel__implicit_estimate_transduction_qualityc_11('XACRIT>=1: LABELEDPOS=%.5F LABELEDNEG=%.5F DEFAULT=%.5F\\N', __CIL_TMP130, __CIL_TMP131, __CIL_TMP132),
%BabelExp_92 is ULABPOS_SSA_3 / TOTULAB_SSA_3,
%__CIL_TMP133 is BabelExp_92,
%BabelExp_93 is ULABNEG_SSA_3 / TOTULAB_SSA_3,
%__CIL_TMP134 is BabelExp_93,
%BabelExp_94 is __CIL_TMP133 * 100.0,
%__CIL_TMP135 is BabelExp_94,
%BabelExp_95 is __CIL_TMP134 * 100.0,
%__CIL_TMP136 is BabelExp_95,
%babel__implicit_estimate_transduction_qualityc_12('XACRIT>=1: UNLABELPOS=%.5F UNLABELNEG=%.5F\\N', __CIL_TMP135, __CIL_TMP136),
%BabelExp_96 is LAB_SSA_3 / TOTLAB_SSA_3,
%__CIL_TMP137 is BabelExp_96,
%BabelExp_97 is ULAB_SSA_3 / TOTULAB_SSA_3,
%__CIL_TMP138 is BabelExp_97,
%BabelExp_98 is L_SSA_3 / TOTDOC_SSA_2,
%__CIL_TMP139 is BabelExp_98,
%BabelExp_99 is __CIL_TMP137 * 100.0,
%__CIL_TMP140 is BabelExp_99,
%BabelExp_100 is __CIL_TMP138 * 100.0,
%__CIL_TMP141 is BabelExp_100,
%BabelExp_101 is __CIL_TMP139 * 100.0,
%__CIL_TMP142 is BabelExp_101,
%babel__implicit_estimate_transduction_qualityc_13('XACRIT>=1: LABELED=%.5F UNLABLED=%.5F ALL=%.5F\\N', __CIL_TMP140, __CIL_TMP141, __CIL_TMP142),
%BabelExp_102 is LABSUM_SSA_3 / TOTLAB_SSA_3,
%__CIL_TMP143 is BabelExp_102,
%BabelExp_103 is ULABSUM_SSA_3 / TOTULAB_SSA_3,
%__CIL_TMP144 is BabelExp_103,
%BabelExp_104 is LABSUM_SSA_3 + ULABSUM_SSA_3,
%__CIL_TMP145 is BabelExp_104,
%BabelExp_105 is __CIL_TMP145 / TOTDOC_SSA_2,
%__CIL_TMP146 is BabelExp_105,
%BabelExp_106 is __CIL_TMP143 * 100.0,
%__CIL_TMP147 is BabelExp_106,
%BabelExp_107 is __CIL_TMP144 * 100.0,
%__CIL_TMP148 is BabelExp_107,
%BabelExp_108 is __CIL_TMP146 * 100.0,
%__CIL_TMP149 is BabelExp_108,
%babel__implicit_estimate_transduction_qualityc_14('XACRITSUM: LABELED=%.5F UNLABLED=%.5F ALL=%.5F\\N', __CIL_TMP147, __CIL_TMP148, __CIL_TMP149),
%babel__implicit_estimate_transduction_qualityc_15('R_DELTA_SQ=%.5F XISUM=%.5F ASUM=%.5F\\N', R_DELTA_SQ_SSA_3, XISUM_SSA_3, ASUM_SSA_3),true. 
%
% 
%estimate_transduction_quality_cil_lr_1(__CIL_AP_MODEL, __CIL_AP_LABEL, __CIL_AP_UNLABELED, __CIL_AP_TOTDOC, __CIL_AP_LIN, __CIL_AP_L, __CIL_AP_ULAB, __CIL_AP_LAB, __CIL_AP_LABPOS, __CIL_AP_LABNEG, __CIL_AP_ULABPOS, __CIL_AP_ULABNEG, __CIL_AP_TOTULAB, __CIL_AP_TOTLAB, __CIL_AP_TOTLABPOS, __CIL_AP_LABSUM, __CIL_AP_ULABSUM, __CIL_AP_R_DELTA_SQ, __CIL_AP_XISUM, __CIL_AP_ASUM, J, TOTLABNEG, VOID) :- 
%
%
% BabelExp_109 is __CIL_AP_TOTDOC,
%babelPtrR(__CIL_TMP28, BabelExp_109, 8),
%
%(J < __CIL_TMP28 ->
%__CIL_TMP25 is 1
%; __CIL_TMP25 is 0),
%
%(__CIL_TMP25 \= 0 ->
%BabelExp_110 is __CIL_AP_UNLABELED,
%babelPtrR(__CIL_TMP29, BabelExp_110, 8),
%__CIL_TMP30 is __CIL_TMP29 +8* J,
%BabelExp_111 is __CIL_TMP30,
%babelPtrR(__CIL_TMP26, BabelExp_111, 8),
%(__CIL_TMP26 \= 0 ->
%BabelExp_112 is __CIL_AP_TOTULAB,
%babelPtrR(__CIL_TMP31, BabelExp_112, 8),
%BabelExp_113 is __CIL_TMP31 + 1,
%babel_ptrE(__CIL_AP_TOTULAB, BabelExp_113, 8),
%TOTLABNEG_SSA_1 is TOTLABNEG
%; BabelExp_114 is __CIL_AP_TOTLAB,
%babel_ptrFR(__CIL_TMP32, BabelExp_114,2),
%BabelExp_115 is __CIL_TMP32 + 1,
%babel_ptrFW(__CIL_AP_TOTLAB, BabelExp_115,2),
%BabelExp_116 is __CIL_AP_LABEL,
%babelPtrR(__CIL_TMP33, BabelExp_116, 8),
%__CIL_TMP34 is __CIL_TMP33 +8* J,
%BabelExp_117 is __CIL_TMP34,
%babelPtrR(__CIL_TMP35, BabelExp_117, 8),
%
%(__CIL_TMP35 > 0 ->
%__CIL_TMP27 is 1
%; __CIL_TMP27 is 0),
%
%(__CIL_TMP27 \= 0 ->
%BabelExp_118 is __CIL_AP_TOTLABPOS,
%babel_ptrFR(__CIL_TMP36, BabelExp_118,2),
%BabelExp_119 is __CIL_TMP36 + 1,
%babel_ptrFW(__CIL_AP_TOTLABPOS, BabelExp_119,2),
%TOTLABNEG_SSA_1 is TOTLABNEG
%; BabelExp_120 is TOTLABNEG + 1,
%TOTLABNEG_SSA_1 is BabelExp_120)),
%BabelExp_121 is J + 1,
%J_SSA_1 is BabelExp_121,
%estimate_transduction_quality_cil_lr_1(__CIL_AP_MODEL, __CIL_AP_LABEL, __CIL_AP_UNLABELED, __CIL_AP_TOTDOC, __CIL_AP_LIN, __CIL_AP_L, __CIL_AP_ULAB, __CIL_AP_LAB, __CIL_AP_LABPOS, __CIL_AP_LABNEG, __CIL_AP_ULABPOS, __CIL_AP_ULABNEG, __CIL_AP_TOTULAB, __CIL_AP_TOTLAB, __CIL_AP_TOTLABPOS, __CIL_AP_LABSUM, __CIL_AP_ULABSUM, __CIL_AP_R_DELTA_SQ, __CIL_AP_XISUM, __CIL_AP_ASUM, J_SSA_1, TOTLABNEG_SSA_1, VOID),true
%; true),
%BabelExp_122 is J + 1,
%J_SSA_1 is BabelExp_122,
%estimate_transduction_quality_cil_lr_1(__CIL_AP_MODEL, __CIL_AP_LABEL, __CIL_AP_UNLABELED, __CIL_AP_TOTDOC, __CIL_AP_LIN, __CIL_AP_L, __CIL_AP_ULAB, __CIL_AP_LAB, __CIL_AP_LABPOS, __CIL_AP_LABNEG, __CIL_AP_ULABPOS, __CIL_AP_ULABNEG, __CIL_AP_TOTULAB, __CIL_AP_TOTLAB, __CIL_AP_TOTLABPOS, __CIL_AP_LABSUM, __CIL_AP_ULABSUM, __CIL_AP_R_DELTA_SQ, __CIL_AP_XISUM, __CIL_AP_ASUM, J_SSA_1, TOTLABNEG, VOID),true. 
%
 
