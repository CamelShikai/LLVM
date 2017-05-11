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

 :- foreign(babel__implicit_optimize_svmc_4(+integer, +integer, +integer, +integer, +float, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_optimize_svmc_5(+integer)).
:- foreign(babel__implicit_optimize_svmc_6(+integer)).
:- foreign(babel__implicit_optimize_svmc_7(+integer, +integer, +integer, +integer, +integer,  -integer)).
:- foreign(babel__implicit_optimize_svmc_8(+integer)).
:- foreign(babel__implicit_optimize_svmc_9(+integer, +integer, +integer, +integer, +integer)).

optimize_svm(__CIL_GP_VERBOSITY, __CIL_GP_STDOUT, DOCS, LABEL, UNLABELED, EXCLUDE_FROM_EQ_CONST, EQ_TARGET, CHOSEN, ACTIVE2DNUM, MODEL, TOTDOC, WORKING2DNUM, VARNUM, A, LIN, C, LEARN_PARM, AICACHE, KERNEL_PARM, QP, EPSILON_CRIT_TARGET, VOID) :- 


 babel__implicit_optimize_svmc_4(DOCS, LABEL, UNLABELED, EXCLUDE_FROM_EQ_CONST, EQ_TARGET, CHOSEN, ACTIVE2DNUM, WORKING2DNUM, MODEL, A, LIN, C, VARNUM, TOTDOC, LEARN_PARM, AICACHE, KERNEL_PARM, QP),
BabelExp_18 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP28, BabelExp_18, 8),

(__CIL_TMP28 >= 3 ,
__CIL_TMP26 is 1
; __CIL_TMP26 is 0),

(__CIL_TMP26 \= 0 ,
babel__implicit_optimize_svmc_5('RUNNING OPTIMIZER...'),
BabelExp_19 is __CIL_GP_STDOUT,
babelPtrR(__CIL_TMP29, BabelExp_19, 8),
babel__implicit_optimize_svmc_6(__CIL_TMP29)
; true),
__CIL_TMP30 is LEARN_PARM +1* 56,
__CIL_TMP31 is __CIL_TMP30,
__CIL_TMP32 is MODEL +1* 16,
BabelExp_20 is __CIL_TMP31,
babelPtrR(__CIL_TMP33, BabelExp_20, 8),
babel__implicit_optimize_svmc_7(QP, EPSILON_CRIT_TARGET, __CIL_TMP33, __CIL_TMP32, LEARN_PARM , A_V_SSA_1),
BabelExp_21 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP34, BabelExp_21, 8),

(__CIL_TMP34 >= 3 ,
__CIL_TMP27 is 1
; __CIL_TMP27 is 0),

(__CIL_TMP27 \= 0 ,
babel__implicit_optimize_svmc_8('DONE\\N')
; true),
I_SSA_1 is 0,
babel__implicit_optimize_svmc_9(WORKING2DNUM, VARNUM, A, I_SSA_1, A_V_SSA_1),true. 

 :- foreign(babel__implicit_compute_matrices_for_optimizationc_10(+integer, +integer, +integer, +integer, +float, +float, +float)).
:- foreign(babel__implicit_compute_matrices_for_optimizationc_11(+integer)).
:- foreign(babel__implicit_compute_matrices_for_optimizationc_12(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_compute_matrices_for_optimizationc_13(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_compute_matrices_for_optimizationc_14(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_compute_matrices_for_optimizationc_15(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_compute_matrices_for_optimizationc_16(+integer, +integer)).

compute_matrices_for_optimization(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_DOCS, __CIL_PP_LABEL, __CIL_PP_KEY, __CIL_PP_A, __CIL_PP_LIN, __CIL_PP_C, __CIL_PP_VARNUM, __CIL_PP_LEARN_PARM, __CIL_PP_KERNEL_PARM, __CIL_PP_QP, __CIL_GP_VERBOSITY, __CIL_GP_STDOUT, __CIL_FP_DOCS, __CIL_FP_LABEL, __CIL_FP_KEY, __CIL_FP_A, __CIL_FP_LIN, __CIL_FP_C, __CIL_FP_VARNUM, __CIL_FP_LEARN_PARM, __CIL_FP_KERNEL_PARM, __CIL_FP_QP, DOCS, LABEL, UNLABELED, EXCLUDE_FROM_EQ_CONST, EQ_TARGET, CHOSEN, ACTIVE2DNUM, KEY, MODEL, A, LIN, C, VARNUM, TOTDOC, LEARN_PARM, AICACHE, KERNEL_PARM, QP, VOID) :- 


 BabelExp_22 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP83, BabelExp_22, 8),

(__CIL_TMP83 >= 3 ,
__CIL_TMP80 is 1
; __CIL_TMP80 is 0),

(__CIL_TMP80 \= 0 ,
BabelExp_23 is __CIL_GP_STDOUT,
babelPtrR(__CIL_TMP84, BabelExp_23, 8),
__CIL_TMP85 is KERNEL_PARM +1* 8,
__CIL_TMP86 is __CIL_TMP85,
__CIL_TMP87 is KERNEL_PARM +1* 16,
__CIL_TMP88 is __CIL_TMP87,
__CIL_TMP89 is KERNEL_PARM +1* 24,
__CIL_TMP90 is __CIL_TMP89,
__CIL_TMP91 is KERNEL_PARM +1* 32,
__CIL_TMP92 is __CIL_TMP91,
MEM_104 is KERNEL_PARM,
BabelExp_24 is MEM_104,
babelPtrR(__CIL_TMP93, BabelExp_24, 8),
BabelExp_25 is __CIL_TMP86,
babelPtrR(__CIL_TMP94, BabelExp_25, 8),
BabelExp_26 is __CIL_TMP88,
babel_ptrFR(__CIL_TMP95, BabelExp_26,2),
BabelExp_27 is __CIL_TMP90,
babel_ptrFR(__CIL_TMP96, BabelExp_27,2),
BabelExp_28 is __CIL_TMP92,
babel_ptrFR(__CIL_TMP97, BabelExp_28,2),
babel__implicit_compute_matrices_for_optimizationc_10(__CIL_TMP84, 'COMPUTING QP-MATRICES (TYPE %LD KERNEL [DEGREE %LD, RBF_GAMMA %F, COEF_LIN %F, COEF_CONST %F])...', __CIL_TMP93, __CIL_TMP94, __CIL_TMP95, __CIL_TMP96, __CIL_TMP97),
BabelExp_29 is __CIL_GP_STDOUT,
babelPtrR(__CIL_TMP98, BabelExp_29, 8),
babel__implicit_compute_matrices_for_optimizationc_11(__CIL_TMP98)
; true),
MEM_105 is QP,
BabelExp_30 is VARNUM,
babel_ptrE(MEM_105, BabelExp_30, 8),
__CIL_TMP99 is QP +1* 24,
__CIL_TMP100 is __CIL_TMP99,
BabelExp_31 is __CIL_TMP100,
babelPtrR(__CIL_TMP101, BabelExp_31, 8),
__CIL_TMP102 is __CIL_TMP101 +8* 0,
BabelExp_32 is - EQ_TARGET,
babel_ptrFW(__CIL_TMP102, BabelExp_32,2),
J_SSA_1 is 1,
BabelExp_33 is DOCS,
babel_ptrE(__CIL_FP_DOCS, BabelExp_33, 8),
BabelExp_34 is LABEL,
babel_ptrE(__CIL_FP_LABEL, BabelExp_34, 8),
BabelExp_35 is KEY,
babel_ptrE(__CIL_FP_KEY, BabelExp_35, 8),
BabelExp_36 is A,
babel_ptrE(__CIL_FP_A, BabelExp_36, 8),
BabelExp_37 is LIN,
babel_ptrE(__CIL_FP_LIN, BabelExp_37, 8),
BabelExp_38 is C,
babel_ptrE(__CIL_FP_C, BabelExp_38, 8),
BabelExp_39 is VARNUM,
babel_ptrE(__CIL_FP_VARNUM, BabelExp_39, 8),
BabelExp_40 is LEARN_PARM,
babel_ptrE(__CIL_FP_LEARN_PARM, BabelExp_40, 8),
BabelExp_41 is KERNEL_PARM,
babel_ptrE(__CIL_FP_KERNEL_PARM, BabelExp_41, 8),
BabelExp_42 is QP,
babel_ptrE(__CIL_FP_QP, BabelExp_42, 8),
babel__implicit_compute_matrices_for_optimizationc_12(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_DOCS, __CIL_PP_LABEL, __CIL_PP_KEY, __CIL_PP_A, __CIL_PP_LIN, __CIL_PP_C, __CIL_PP_VARNUM, __CIL_PP_LEARN_PARM, __CIL_PP_KERNEL_PARM, __CIL_PP_QP, EXCLUDE_FROM_EQ_CONST, CHOSEN, MODEL, J_SSA_1),
BabelExp_43 is __CIL_FP_DOCS,
babelPtrR(DOCS_SSA_1, BabelExp_43, 8),
BabelExp_44 is __CIL_FP_LABEL,
babelPtrR(LABEL_SSA_1, BabelExp_44, 8),
BabelExp_45 is __CIL_FP_KEY,
babelPtrR(KEY_SSA_1, BabelExp_45, 8),
BabelExp_46 is __CIL_FP_A,
babelPtrR(A_SSA_1, BabelExp_46, 8),
BabelExp_47 is __CIL_FP_LIN,
babelPtrR(LIN_SSA_1, BabelExp_47, 8),
BabelExp_48 is __CIL_FP_C,
babelPtrR(C_SSA_1, BabelExp_48, 8),
BabelExp_49 is __CIL_FP_VARNUM,
babelPtrR(VARNUM_SSA_1, BabelExp_49, 8),
BabelExp_50 is __CIL_FP_LEARN_PARM,
babelPtrR(LEARN_PARM_SSA_1, BabelExp_50, 8),
BabelExp_51 is __CIL_FP_KERNEL_PARM,
babelPtrR(KERNEL_PARM_SSA_1, BabelExp_51, 8),
BabelExp_52 is __CIL_FP_QP,
babelPtrR(QP_SSA_1, BabelExp_52, 8),
__CIL_TMP103 is LEARN_PARM_SSA_1 +1* 40,
__CIL_TMP104 is __CIL_TMP103,
BabelExp_53 is __CIL_TMP104,
babelPtrR(__CIL_TMP81, BabelExp_53, 8),
(__CIL_TMP81 \= 0 ,
__CIL_TMP105 is QP_SSA_1 +1* 8,
__CIL_TMP106 is __CIL_TMP105,
BabelExp_54 is 1,
babel_ptrE(__CIL_TMP106, BabelExp_54, 8)
; __CIL_TMP107 is QP_SSA_1 +1* 8,
__CIL_TMP108 is __CIL_TMP107,
BabelExp_55 is 0,
babel_ptrE(__CIL_TMP108, BabelExp_55, 8)),
I_SSA_1 is 0,
BabelExp_56 is DOCS_SSA_1,
babel_ptrE(__CIL_FP_DOCS, BabelExp_56, 8),
BabelExp_57 is LABEL_SSA_1,
babel_ptrE(__CIL_FP_LABEL, BabelExp_57, 8),
BabelExp_58 is KEY_SSA_1,
babel_ptrE(__CIL_FP_KEY, BabelExp_58, 8),
BabelExp_59 is A_SSA_1,
babel_ptrE(__CIL_FP_A, BabelExp_59, 8),
BabelExp_60 is C_SSA_1,
babel_ptrE(__CIL_FP_C, BabelExp_60, 8),
BabelExp_61 is VARNUM_SSA_1,
babel_ptrE(__CIL_FP_VARNUM, BabelExp_61, 8),
BabelExp_62 is LEARN_PARM_SSA_1,
babel_ptrE(__CIL_FP_LEARN_PARM, BabelExp_62, 8),
BabelExp_63 is KERNEL_PARM_SSA_1,
babel_ptrE(__CIL_FP_KERNEL_PARM, BabelExp_63, 8),
BabelExp_64 is QP_SSA_1,
babel_ptrE(__CIL_FP_QP, BabelExp_64, 8),
babel__implicit_compute_matrices_for_optimizationc_13(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_DOCS, __CIL_PP_LABEL, __CIL_PP_KEY, __CIL_PP_A, __CIL_PP_C, __CIL_PP_VARNUM, __CIL_PP_LEARN_PARM, __CIL_PP_KERNEL_PARM, __CIL_PP_QP, LIN_SSA_1, I_SSA_1),
BabelExp_65 is __CIL_FP_DOCS,
babelPtrR(DOCS_SSA_2, BabelExp_65, 8),
BabelExp_66 is __CIL_FP_LABEL,
babelPtrR(LABEL_SSA_2, BabelExp_66, 8),
BabelExp_67 is __CIL_FP_KEY,
babelPtrR(KEY_SSA_2, BabelExp_67, 8),
BabelExp_68 is __CIL_FP_A,
babelPtrR(A_SSA_2, BabelExp_68, 8),
BabelExp_69 is __CIL_FP_C,
babelPtrR(C_SSA_2, BabelExp_69, 8),
BabelExp_70 is __CIL_FP_VARNUM,
babelPtrR(VARNUM_SSA_2, BabelExp_70, 8),
BabelExp_71 is __CIL_FP_LEARN_PARM,
babelPtrR(LEARN_PARM_SSA_2, BabelExp_71, 8),
BabelExp_72 is __CIL_FP_KERNEL_PARM,
babelPtrR(KERNEL_PARM_SSA_2, BabelExp_72, 8),
BabelExp_73 is __CIL_FP_QP,
babelPtrR(QP_SSA_2, BabelExp_73, 8),
I_SSA_2 is 0,
BabelExp_74 is LABEL_SSA_2,
babel_ptrE(__CIL_FP_LABEL, BabelExp_74, 8),
BabelExp_75 is KEY_SSA_2,
babel_ptrE(__CIL_FP_KEY, BabelExp_75, 8),
BabelExp_76 is A_SSA_2,
babel_ptrE(__CIL_FP_A, BabelExp_76, 8),
BabelExp_77 is C_SSA_2,
babel_ptrE(__CIL_FP_C, BabelExp_77, 8),
BabelExp_78 is VARNUM_SSA_2,
babel_ptrE(__CIL_FP_VARNUM, BabelExp_78, 8),
BabelExp_79 is LEARN_PARM_SSA_2,
babel_ptrE(__CIL_FP_LEARN_PARM, BabelExp_79, 8),
BabelExp_80 is QP_SSA_2,
babel_ptrE(__CIL_FP_QP, BabelExp_80, 8),
babel__implicit_compute_matrices_for_optimizationc_14(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_LABEL, __CIL_PP_KEY, __CIL_PP_A, __CIL_PP_C, __CIL_PP_VARNUM, __CIL_PP_LEARN_PARM, __CIL_PP_QP, DOCS_SSA_2, KERNEL_PARM_SSA_2, I_SSA_2),
BabelExp_81 is __CIL_FP_LABEL,
babelPtrR(LABEL_SSA_3, BabelExp_81, 8),
BabelExp_82 is __CIL_FP_KEY,
babelPtrR(KEY_SSA_3, BabelExp_82, 8),
BabelExp_83 is __CIL_FP_A,
babelPtrR(A_SSA_3, BabelExp_83, 8),
BabelExp_84 is __CIL_FP_C,
babelPtrR(C_SSA_3, BabelExp_84, 8),
BabelExp_85 is __CIL_FP_VARNUM,
babelPtrR(VARNUM_SSA_3, BabelExp_85, 8),
BabelExp_86 is __CIL_FP_LEARN_PARM,
babelPtrR(LEARN_PARM_SSA_3, BabelExp_86, 8),
BabelExp_87 is __CIL_FP_QP,
babelPtrR(QP_SSA_3, BabelExp_87, 8),
I_SSA_3 is 0,
babel__implicit_compute_matrices_for_optimizationc_15(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, LABEL_SSA_3, KEY_SSA_3, A_SSA_3, C_SSA_3, VARNUM_SSA_3, LEARN_PARM_SSA_3, QP_SSA_3, I_SSA_3),
BabelExp_88 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP109, BabelExp_88, 8),

(__CIL_TMP109 >= 3 ,
__CIL_TMP82 is 1
; __CIL_TMP82 is 0),

(__CIL_TMP82 \= 0 ,
BabelExp_89 is __CIL_GP_STDOUT,
babelPtrR(__CIL_TMP110, BabelExp_89, 8),
babel__implicit_compute_matrices_for_optimizationc_16(__CIL_TMP110, 'DONE\\N'),true
; true). 

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

 :- foreign(babel__implicit_select_top_nc_27(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_select_top_nc_28(+integer, +integer, +integer, +integer, +integer)).

select_top_n(__CIL_PP_SELCRIT, __CIL_PP_RANGE, __CIL_PP_SELECT___0, __CIL_PP_N, __CIL_FP_SELCRIT, __CIL_FP_RANGE, __CIL_FP_SELECT___0, __CIL_FP_N, SELCRIT, RANGE, SELECT___0, N, VOID) :- 


 I_SSA_1 is 0,
BabelExp_125 is SELCRIT,
babel_ptrE(__CIL_FP_SELCRIT, BabelExp_125, 8),
BabelExp_126 is RANGE,
babel_ptrE(__CIL_FP_RANGE, BabelExp_126, 8),
BabelExp_127 is SELECT___0,
babel_ptrE(__CIL_FP_SELECT___0, BabelExp_127, 8),
BabelExp_128 is N,
babel_ptrE(__CIL_FP_N, BabelExp_128, 8),
babel__implicit_select_top_nc_27(__CIL_PP_SELCRIT, __CIL_PP_RANGE, __CIL_PP_SELECT___0, __CIL_PP_N, I_SSA_1),
BabelExp_129 is __CIL_FP_SELCRIT,
babelPtrR(SELCRIT_SSA_1, BabelExp_129, 8),
BabelExp_130 is __CIL_FP_RANGE,
babelPtrR(RANGE_SSA_1, BabelExp_130, 8),
BabelExp_131 is __CIL_FP_SELECT___0,
babelPtrR(SELECT___0_SSA_1, BabelExp_131, 8),
BabelExp_132 is __CIL_FP_N,
babelPtrR(N_SSA_1, BabelExp_132, 8),

(N_SSA_1 > 0 ,
__CIL_TMP21 is 1
; __CIL_TMP21 is 0),

(__CIL_TMP21 \= 0 ,
I_SSA_2 is N_SSA_1,
babel__implicit_select_top_nc_28(SELCRIT_SSA_1, RANGE_SSA_1, SELECT___0_SSA_1, N_SSA_1, I_SSA_2)
; true),
true. 

 :- foreign(babel__implicit_init_shrink_statec_29(+positive,  -integer)).
:- foreign(babel__implicit_init_shrink_statec_30(+positive,  -integer)).
:- foreign(babel__implicit_init_shrink_statec_31(+positive,  -integer)).
:- foreign(babel__implicit_init_shrink_statec_32(+positive,  -integer)).
:- foreign(babel__implicit_init_shrink_statec_33(+positive,  -integer)).
:- foreign(babel__implicit_init_shrink_statec_34(+integer, +integer, +integer)).

init_shrink_state(SHRINK_STATE, TOTDOC, MAXHISTORY, VOID) :- 


 __CIL_TMP16 is SHRINK_STATE +1* 16,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_133 is 0,
babel_ptrE(__CIL_TMP17, BabelExp_133, 8),
BabelExp_134 is 8 * TOTDOC,
__CIL_TMP18 is BabelExp_134,
babel__implicit_init_shrink_statec_29(__CIL_TMP18 , TMP_SSA_1),
MEM_27 is SHRINK_STATE,
BabelExp_135 is TMP_SSA_1,
babel_ptrE(MEM_27, BabelExp_135, 8),
BabelExp_136 is 8 * TOTDOC,
__CIL_TMP19 is BabelExp_136,
babel__implicit_init_shrink_statec_30(__CIL_TMP19 , TMP___0_SSA_1),
__CIL_TMP20 is SHRINK_STATE +1* 8,
__CIL_TMP21 is __CIL_TMP20,
BabelExp_137 is TMP___0_SSA_1,
babel_ptrE(__CIL_TMP21, BabelExp_137, 8),
BabelExp_138 is 8 * MAXHISTORY,
__CIL_TMP22 is BabelExp_138,
babel__implicit_init_shrink_statec_31(__CIL_TMP22 , TMP___1_SSA_1),
__CIL_TMP23 is SHRINK_STATE +1* 24,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_139 is TMP___1_SSA_1,
babel_ptrE(__CIL_TMP24, BabelExp_139, 8),
__CIL_TMP25 is SHRINK_STATE +1* 32,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_140 is MAXHISTORY,
babel_ptrE(__CIL_TMP26, BabelExp_140, 8),
BabelExp_141 is 8 * TOTDOC,
__CIL_TMP27 is BabelExp_141,
babel__implicit_init_shrink_statec_32(__CIL_TMP27 , TMP___2_SSA_1),
__CIL_TMP28 is SHRINK_STATE +1* 48,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_142 is TMP___2_SSA_1,
babel_ptrE(__CIL_TMP29, BabelExp_142, 8),
BabelExp_143 is 8 * TOTDOC,
__CIL_TMP30 is BabelExp_143,
babel__implicit_init_shrink_statec_33(__CIL_TMP30 , TMP___3_SSA_1),
__CIL_TMP31 is SHRINK_STATE +1* 40,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_144 is TMP___3_SSA_1,
babel_ptrE(__CIL_TMP32, BabelExp_144, 8),
I_SSA_1 is 0,
babel__implicit_init_shrink_statec_34(SHRINK_STATE, TOTDOC, I_SSA_1),true. 

 :- foreign(babel__implicit_shrink_state_cleanupc_35(+integer)).
:- foreign(babel__implicit_shrink_state_cleanupc_36(+integer)).
:- foreign(babel__implicit_shrink_state_cleanupc_37(+integer)).
:- foreign(babel__implicit_shrink_state_cleanupc_38(+integer)).
:- foreign(babel__implicit_shrink_state_cleanupc_39(+integer)).
:- foreign(babel__implicit_shrink_state_cleanupc_40(+integer)).

shrink_state_cleanup(SHRINK_STATE, VOID) :- 


 MEM_28 is SHRINK_STATE,
BabelExp_145 is MEM_28,
babelPtrR(__CIL_TMP3, BabelExp_145, 8),
babel__implicit_shrink_state_cleanupc_35(__CIL_TMP3),
__CIL_TMP4 is SHRINK_STATE +1* 8,
__CIL_TMP5 is __CIL_TMP4,
BabelExp_146 is __CIL_TMP5,
babelPtrR(__CIL_TMP6, BabelExp_146, 8),
babel__implicit_shrink_state_cleanupc_36(__CIL_TMP6),
__CIL_TMP7 is SHRINK_STATE +1* 16,
__CIL_TMP8 is __CIL_TMP7,
BabelExp_147 is __CIL_TMP8,
babelPtrR(__CIL_TMP9, BabelExp_147, 8),

(__CIL_TMP9 > 0 ,
__CIL_TMP2 is 1
; __CIL_TMP2 is 0),

(__CIL_TMP2 \= 0 ,
__CIL_TMP10 is SHRINK_STATE +1* 24,
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is SHRINK_STATE +1* 16,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_148 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_148, 8),
BabelExp_149 is __CIL_TMP11,
babelPtrR(__CIL_TMP15, BabelExp_149, 8),
BabelExp_150 is __CIL_TMP14 - 1,
__CIL_TMP16 is BabelExp_150,
__CIL_TMP17 is __CIL_TMP15 +8* __CIL_TMP16,
BabelExp_151 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_151, 8),
babel__implicit_shrink_state_cleanupc_37(__CIL_TMP18)
; true),
__CIL_TMP19 is SHRINK_STATE +1* 24,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_152 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_152, 8),
babel__implicit_shrink_state_cleanupc_38(__CIL_TMP21),
__CIL_TMP22 is SHRINK_STATE +1* 40,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_153 is __CIL_TMP23,
babelPtrR(__CIL_TMP24, BabelExp_153, 8),
babel__implicit_shrink_state_cleanupc_39(__CIL_TMP24),
__CIL_TMP25 is SHRINK_STATE +1* 48,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_154 is __CIL_TMP26,
babelPtrR(__CIL_TMP27, BabelExp_154, 8),
babel__implicit_shrink_state_cleanupc_40(__CIL_TMP27),true. 

 :- foreign(babel__implicit_get_kernel_rowc_41(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_get_kernel_rowc_42(+integer, +integer, +integer, +integer, +integer, +integer)).

get_kernel_row(KERNEL_CACHE, DOCS, DOCNUM, TOTDOC, ACTIVE2DNUM, BUFFER, KERNEL_PARM, VOID) :- 


 __CIL_TMP18 is DOCS +8* DOCNUM,
BabelExp_155 is __CIL_TMP18,
babelPtrR(EX_SSA_1, BabelExp_155, 8),
MEM_31 is KERNEL_CACHE,
BabelExp_156 is MEM_31,
babelPtrR(__CIL_TMP19, BabelExp_156, 8),
__CIL_TMP20 is __CIL_TMP19 +8* DOCNUM,
BabelExp_157 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_157, 8),

(__CIL_TMP21 \= -1 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ,
__CIL_TMP22 is KERNEL_CACHE +1* 72,
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is KERNEL_CACHE +1* 40,
__CIL_TMP25 is __CIL_TMP24,
MEM_32 is KERNEL_CACHE,
BabelExp_158 is MEM_32,
babelPtrR(__CIL_TMP26, BabelExp_158, 8),
__CIL_TMP27 is __CIL_TMP26 +8* DOCNUM,
BabelExp_159 is __CIL_TMP25,
babelPtrR(__CIL_TMP28, BabelExp_159, 8),
BabelExp_160 is __CIL_TMP27,
babelPtrR(__CIL_TMP29, BabelExp_160, 8),
__CIL_TMP30 is __CIL_TMP28 +8* __CIL_TMP29,
babelPtrR(BabelExp_161, __CIL_TMP23, 8),
babel_ptrE(__CIL_TMP30, BabelExp_161, 8),
__CIL_TMP31 is KERNEL_CACHE +1* 80,
__CIL_TMP32 is __CIL_TMP31,
MEM_33 is KERNEL_CACHE,
BabelExp_162 is MEM_33,
babelPtrR(__CIL_TMP33, BabelExp_162, 8),
__CIL_TMP34 is __CIL_TMP33 +8* DOCNUM,
BabelExp_163 is __CIL_TMP32,
babelPtrR(__CIL_TMP35, BabelExp_163, 8),
BabelExp_164 is __CIL_TMP34,
babelPtrR(__CIL_TMP36, BabelExp_164, 8),
BabelExp_165 is __CIL_TMP35 * __CIL_TMP36,
START_SSA_1 is BabelExp_165,
I_SSA_1 is 0,
babel__implicit_get_kernel_rowc_41(KERNEL_CACHE, DOCS, ACTIVE2DNUM, BUFFER, KERNEL_PARM, I_SSA_1, START_SSA_1, EX_SSA_1)
; I_SSA_1 is 0,
babel__implicit_get_kernel_rowc_42(DOCS, ACTIVE2DNUM, BUFFER, KERNEL_PARM, I_SSA_1, EX_SSA_1)),
true. 

 :- foreign(babel__implicit_cache_kernel_rowc_43(+integer, +integer,  -integer)).
:- foreign(babel__implicit_cache_kernel_rowc_44(+integer, +integer,  -integer)).
:- foreign(babel__implicit_cache_kernel_rowc_45(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_cache_kernel_rowc_46(+string)).

cache_kernel_row(KERNEL_CACHE, DOCS, M, KERNEL_PARM, VOID) :- 


 babel__implicit_cache_kernel_rowc_43(KERNEL_CACHE, M , TMP___0_SSA_1),
(TMP___0_SSA_1 =:= 0 ,
babel__implicit_cache_kernel_rowc_44(KERNEL_CACHE, M , CACHE_SSA_1),
(CACHE_SSA_1 \= 0 ,
__CIL_TMP17 is KERNEL_CACHE +1* 32,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_166 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_166, 8),
__CIL_TMP20 is __CIL_TMP19 +8* M,
BabelExp_167 is __CIL_TMP20,
babelPtrR(L_SSA_1, BabelExp_167, 8),
__CIL_TMP21 is DOCS +8* M,
BabelExp_168 is __CIL_TMP21,
babelPtrR(EX_SSA_1, BabelExp_168, 8),
J_SSA_1 is 0,
babel__implicit_cache_kernel_rowc_45(KERNEL_CACHE, DOCS, M, KERNEL_PARM, EX_SSA_1, J_SSA_1, L_SSA_1, CACHE_SSA_1)
; babel__implicit_cache_kernel_rowc_46('Error: Kernel cache full! => increase cache size'))
; true),
true. 

% :- foreign(babel__implicit_cache_multiple_kernel_rowsc_47(+integer, +integer, +integer, +integer, +integer, +integer)).
%
%cache_multiple_kernel_rows(KERNEL_CACHE, DOCS, KEY, VARNUM, KERNEL_PARM, VOID) :- 
%
%
% I_SSA_1 is 0,
%babel__implicit_cache_multiple_kernel_rowsc_47(KERNEL_CACHE, DOCS, KEY, VARNUM, KERNEL_PARM, I_SSA_1),true. 
%
 :- foreign(babel__implicit_kernel_cache_shrinkc_48(+integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_49(+integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_50(+positive,  -integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_51(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_52(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_53(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_54(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_55(+integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_56(+integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_57(+integer)).
:- foreign(babel__implicit_kernel_cache_shrinkc_58(+integer, +integer)).

kernel_cache_shrink(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_KERNEL_CACHE, __CIL_PP_TOTDOC, __CIL_PP_NUMSHRINK, __CIL_PP_AFTER, __CIL_PP_FROM, __CIL_PP_TO, __CIL_PP_KEEP, __CIL_GP_VERBOSITY, __CIL_GP_STDOUT, __CIL_FP_KERNEL_CACHE, __CIL_FP_TOTDOC, __CIL_FP_NUMSHRINK, __CIL_FP_AFTER, __CIL_FP_FROM, __CIL_FP_TO, __CIL_FP_KEEP, KERNEL_CACHE, TOTDOC, NUMSHRINK, AFTER, VOID) :- 


 FROM_SSA_1 is 0,
TO_SSA_1 is 0,
BabelExp_169 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP61, BabelExp_169, 8),

(__CIL_TMP61 >= 2 ,
__CIL_TMP58 is 1
; __CIL_TMP58 is 0),

(__CIL_TMP58 \= 0 ,
babel__implicit_kernel_cache_shrinkc_48(' REORGANIZING CACHE...'),
BabelExp_170 is __CIL_GP_STDOUT,
babelPtrR(__CIL_TMP62, BabelExp_170, 8),
babel__implicit_kernel_cache_shrinkc_49(__CIL_TMP62)
; true),
BabelExp_171 is 8 * TOTDOC,
__CIL_TMP63 is BabelExp_171,
babel__implicit_kernel_cache_shrinkc_50(__CIL_TMP63 , TMP_SSA_1),
KEEP_SSA_1 is TMP_SSA_1,
J_SSA_1 is 0,
BabelExp_172 is KERNEL_CACHE,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_172, 8),
BabelExp_173 is TOTDOC,
babel_ptrE(__CIL_FP_TOTDOC, BabelExp_173, 8),
BabelExp_174 is NUMSHRINK,
babel_ptrE(__CIL_FP_NUMSHRINK, BabelExp_174, 8),
BabelExp_175 is AFTER,
babel_ptrE(__CIL_FP_AFTER, BabelExp_175, 8),
BabelExp_176 is FROM_SSA_1,
babel_ptrE(__CIL_FP_FROM, BabelExp_176, 8),
BabelExp_177 is TO_SSA_1,
babel_ptrE(__CIL_FP_TO, BabelExp_177, 8),
BabelExp_178 is KEEP_SSA_1,
babel_ptrE(__CIL_FP_KEEP, BabelExp_178, 8),
babel__implicit_kernel_cache_shrinkc_51(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_KERNEL_CACHE, __CIL_PP_TOTDOC, __CIL_PP_NUMSHRINK, __CIL_PP_AFTER, __CIL_PP_FROM, __CIL_PP_TO, __CIL_PP_KEEP, J_SSA_1),
BabelExp_179 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_1, BabelExp_179, 8),
BabelExp_180 is __CIL_FP_TOTDOC,
babelPtrR(TOTDOC_SSA_1, BabelExp_180, 8),
BabelExp_181 is __CIL_FP_NUMSHRINK,
babelPtrR(NUMSHRINK_SSA_1, BabelExp_181, 8),
BabelExp_182 is __CIL_FP_AFTER,
babelPtrR(AFTER_SSA_1, BabelExp_182, 8),
BabelExp_183 is __CIL_FP_FROM,
babelPtrR(FROM_SSA_2, BabelExp_183, 8),
BabelExp_184 is __CIL_FP_TO,
babelPtrR(TO_SSA_2, BabelExp_184, 8),
BabelExp_185 is __CIL_FP_KEEP,
babelPtrR(KEEP_SSA_2, BabelExp_185, 8),
SCOUNT_SSA_1 is 0,
JJ_SSA_1 is 0,
BabelExp_186 is KERNEL_CACHE_SSA_1,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_186, 8),
BabelExp_187 is TOTDOC_SSA_1,
babel_ptrE(__CIL_FP_TOTDOC, BabelExp_187, 8),
BabelExp_188 is FROM_SSA_2,
babel_ptrE(__CIL_FP_FROM, BabelExp_188, 8),
BabelExp_189 is TO_SSA_2,
babel_ptrE(__CIL_FP_TO, BabelExp_189, 8),
BabelExp_190 is KEEP_SSA_2,
babel_ptrE(__CIL_FP_KEEP, BabelExp_190, 8),
babel__implicit_kernel_cache_shrinkc_52(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_KERNEL_CACHE, __CIL_PP_TOTDOC, __CIL_PP_FROM, __CIL_PP_TO, __CIL_PP_KEEP, NUMSHRINK_SSA_1, AFTER_SSA_1, JJ_SSA_1, SCOUNT_SSA_1),
BabelExp_191 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_2, BabelExp_191, 8),
BabelExp_192 is __CIL_FP_TOTDOC,
babelPtrR(TOTDOC_SSA_2, BabelExp_192, 8),
BabelExp_193 is __CIL_FP_FROM,
babelPtrR(FROM_SSA_3, BabelExp_193, 8),
BabelExp_194 is __CIL_FP_TO,
babelPtrR(TO_SSA_3, BabelExp_194, 8),
BabelExp_195 is __CIL_FP_KEEP,
babelPtrR(KEEP_SSA_3, BabelExp_195, 8),
I_SSA_1 is 0,
BabelExp_196 is KERNEL_CACHE_SSA_2,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_196, 8),
BabelExp_197 is TOTDOC_SSA_2,
babel_ptrE(__CIL_FP_TOTDOC, BabelExp_197, 8),
BabelExp_198 is KEEP_SSA_3,
babel_ptrE(__CIL_FP_KEEP, BabelExp_198, 8),
babel__implicit_kernel_cache_shrinkc_53(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_KERNEL_CACHE, __CIL_PP_TOTDOC, __CIL_PP_KEEP, I_SSA_1, FROM_SSA_3, TO_SSA_3),
BabelExp_199 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_3, BabelExp_199, 8),
BabelExp_200 is __CIL_FP_TOTDOC,
babelPtrR(TOTDOC_SSA_3, BabelExp_200, 8),
BabelExp_201 is __CIL_FP_KEEP,
babelPtrR(KEEP_SSA_4, BabelExp_201, 8),
__CIL_TMP64 is KERNEL_CACHE_SSA_3 +1* 80,
__CIL_TMP65 is __CIL_TMP64,
BabelExp_202 is 0,
babel_ptrE(__CIL_TMP65, BabelExp_202, 8),
J_SSA_2 is 0,
BabelExp_203 is KERNEL_CACHE_SSA_3,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_203, 8),
BabelExp_204 is TOTDOC_SSA_3,
babel_ptrE(__CIL_FP_TOTDOC, BabelExp_204, 8),
BabelExp_205 is KEEP_SSA_4,
babel_ptrE(__CIL_FP_KEEP, BabelExp_205, 8),
babel__implicit_kernel_cache_shrinkc_54(__CIL_PP_STDOUT, __CIL_PP_VERBOSITY, __CIL_PP_KERNEL_CACHE, __CIL_PP_TOTDOC, __CIL_PP_KEEP, J_SSA_2),
BabelExp_206 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_4, BabelExp_206, 8),
BabelExp_207 is __CIL_FP_TOTDOC,
babelPtrR(TOTDOC_SSA_4, BabelExp_207, 8),
BabelExp_208 is __CIL_FP_KEEP,
babelPtrR(KEEP_SSA_5, BabelExp_208, 8),
__CIL_TMP66 is KERNEL_CACHE_SSA_4 +1* 88,
__CIL_TMP67 is __CIL_TMP66,
__CIL_TMP68 is KERNEL_CACHE_SSA_4 +1* 80,
__CIL_TMP69 is __CIL_TMP68,
BabelExp_209 is __CIL_TMP67,
babelPtrR(__CIL_TMP70, BabelExp_209, 8),
BabelExp_210 is __CIL_TMP69,
babelPtrR(__CIL_TMP71, BabelExp_210, 8),
__CIL_TMP72 is KERNEL_CACHE_SSA_4 +1* 64,
__CIL_TMP73 is __CIL_TMP72,
BabelExp_211 is __CIL_TMP70 / __CIL_TMP71,
babel_ptrE(__CIL_TMP73, BabelExp_211, 8),
__CIL_TMP74 is KERNEL_CACHE_SSA_4 +1* 64,
__CIL_TMP75 is __CIL_TMP74,
BabelExp_212 is __CIL_TMP75,
babelPtrR(__CIL_TMP76, BabelExp_212, 8),

(__CIL_TMP76 > TOTDOC_SSA_4 ,
__CIL_TMP59 is 1
; __CIL_TMP59 is 0),

(__CIL_TMP59 \= 0 ,
__CIL_TMP77 is KERNEL_CACHE_SSA_4 +1* 64,
__CIL_TMP78 is __CIL_TMP77,
BabelExp_213 is TOTDOC_SSA_4,
babel_ptrE(__CIL_TMP78, BabelExp_213, 8)
; true),
babel__implicit_kernel_cache_shrinkc_55(KEEP_SSA_5),
BabelExp_214 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP79, BabelExp_214, 8),

(__CIL_TMP79 >= 2 ,
__CIL_TMP60 is 1
; __CIL_TMP60 is 0),

(__CIL_TMP60 \= 0 ,
babel__implicit_kernel_cache_shrinkc_56('DONE.\\N'),
BabelExp_215 is __CIL_GP_STDOUT,
babelPtrR(__CIL_TMP80, BabelExp_215, 8),
babel__implicit_kernel_cache_shrinkc_57(__CIL_TMP80),
__CIL_TMP81 is KERNEL_CACHE_SSA_4 +1* 64,
__CIL_TMP82 is __CIL_TMP81,
BabelExp_216 is __CIL_TMP82,
babelPtrR(__CIL_TMP83, BabelExp_216, 8),
babel__implicit_kernel_cache_shrinkc_58(' CACHE-SIZE IN ROWS = %LD\\N', __CIL_TMP83)
; true),
true. 

 :- foreign(babel__implicit_kernel_cache_initc_59(+integer, -integer)).
:- foreign(babel__implicit_kernel_cache_initc_60(+positive,  -integer)).
:- foreign(babel__implicit_kernel_cache_initc_61(+positive,  -integer)).
:- foreign(babel__implicit_kernel_cache_initc_62(+positive,  -integer)).
:- foreign(babel__implicit_kernel_cache_initc_63(+positive,  -integer)).
:- foreign(babel__implicit_kernel_cache_initc_64(+positive,  -integer)).
:- foreign(babel__implicit_kernel_cache_initc_65(+positive,  -integer)).
:- foreign(babel__implicit_kernel_cache_initc_66(+positive,  -integer)).
:- foreign(babel__implicit_kernel_cache_initc_67(+integer, +integer)).
:- foreign(babel__implicit_kernel_cache_initc_68(+integer, +integer)).
:- foreign(babel__implicit_kernel_cache_initc_69(+integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_initc_70(+integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_initc_71(+integer, +integer, +integer)).

kernel_cache_init(__CIL_PP_TOTDOC, __CIL_PP_KERNEL_CACHE, __CIL_GP_VERBOSITY, __CIL_GP_KERNEL_CACHE_STATISTIC, __CIL_FP_TOTDOC, __CIL_FP_KERNEL_CACHE, TOTDOC, BUFFSIZE, BABEL_RET) :- 


 babel__implicit_kernel_cache_initc_59(96 , TMP_SSA_1),
KERNEL_CACHE_SSA_1 is TMP_SSA_1,
BabelExp_217 is 8 * TOTDOC,
__CIL_TMP38 is BabelExp_217,
babel__implicit_kernel_cache_initc_60(__CIL_TMP38 , TMP___0_SSA_1),
MEM_75 is KERNEL_CACHE_SSA_1,
BabelExp_218 is TMP___0_SSA_1,
babel_ptrE(MEM_75, BabelExp_218, 8),
BabelExp_219 is 8 * TOTDOC,
__CIL_TMP39 is BabelExp_219,
babel__implicit_kernel_cache_initc_61(__CIL_TMP39 , TMP___1_SSA_1),
__CIL_TMP40 is KERNEL_CACHE_SSA_1 +1* 48,
__CIL_TMP41 is __CIL_TMP40,
BabelExp_220 is TMP___1_SSA_1,
babel_ptrE(__CIL_TMP41, BabelExp_220, 8),
BabelExp_221 is 8 * TOTDOC,
__CIL_TMP42 is BabelExp_221,
babel__implicit_kernel_cache_initc_62(__CIL_TMP42 , TMP___2_SSA_1),
__CIL_TMP43 is KERNEL_CACHE_SSA_1 +1* 40,
__CIL_TMP44 is __CIL_TMP43,
BabelExp_222 is TMP___2_SSA_1,
babel_ptrE(__CIL_TMP44, BabelExp_222, 8),
BabelExp_223 is 8 * TOTDOC,
__CIL_TMP45 is BabelExp_223,
babel__implicit_kernel_cache_initc_63(__CIL_TMP45 , TMP___3_SSA_1),
__CIL_TMP46 is KERNEL_CACHE_SSA_1 +1* 16,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_224 is TMP___3_SSA_1,
babel_ptrE(__CIL_TMP47, BabelExp_224, 8),
BabelExp_225 is 8 * TOTDOC,
__CIL_TMP48 is BabelExp_225,
babel__implicit_kernel_cache_initc_64(__CIL_TMP48 , TMP___4_SSA_1),
__CIL_TMP49 is KERNEL_CACHE_SSA_1 +1* 24,
__CIL_TMP50 is __CIL_TMP49,
BabelExp_226 is TMP___4_SSA_1,
babel_ptrE(__CIL_TMP50, BabelExp_226, 8),
BabelExp_227 is 8 * TOTDOC,
__CIL_TMP51 is BabelExp_227,
babel__implicit_kernel_cache_initc_65(__CIL_TMP51 , TMP___5_SSA_1),
__CIL_TMP52 is KERNEL_CACHE_SSA_1 +1* 32,
__CIL_TMP53 is __CIL_TMP52,
BabelExp_228 is TMP___5_SSA_1,
babel_ptrE(__CIL_TMP53, BabelExp_228, 8),
BabelExp_229 is BUFFSIZE * 1024,
__CIL_TMP54 is BabelExp_229,
BabelExp_230 is __CIL_TMP54 * 1024,
__CIL_TMP55 is BabelExp_230,
babel__implicit_kernel_cache_initc_66(__CIL_TMP55 , TMP___6_SSA_1),
__CIL_TMP56 is KERNEL_CACHE_SSA_1 +1* 8,
__CIL_TMP57 is __CIL_TMP56,
BabelExp_231 is TMP___6_SSA_1,
babel_ptrE(__CIL_TMP57, BabelExp_231, 8),
BabelExp_232 is BUFFSIZE / 4,
__CIL_TMP58 is BabelExp_232,
BabelExp_233 is __CIL_TMP58 * 1024,
__CIL_TMP59 is BabelExp_233,
BabelExp_234 is __CIL_TMP59 * 1024,
__CIL_TMP60 is BabelExp_234,
__CIL_TMP61 is KERNEL_CACHE_SSA_1 +1* 88,
__CIL_TMP62 is __CIL_TMP61,
BabelExp_235 is __CIL_TMP60,
babel_ptrE(__CIL_TMP62, BabelExp_235, 8),
__CIL_TMP63 is KERNEL_CACHE_SSA_1 +1* 88,
__CIL_TMP64 is __CIL_TMP63,
BabelExp_236 is __CIL_TMP64,
babelPtrR(__CIL_TMP65, BabelExp_236, 8),
__CIL_TMP66 is KERNEL_CACHE_SSA_1 +1* 64,
__CIL_TMP67 is __CIL_TMP66,
BabelExp_237 is __CIL_TMP65 / TOTDOC,
babel_ptrE(__CIL_TMP67, BabelExp_237, 8),
__CIL_TMP68 is KERNEL_CACHE_SSA_1 +1* 64,
__CIL_TMP69 is __CIL_TMP68,
BabelExp_238 is __CIL_TMP69,
babelPtrR(__CIL_TMP70, BabelExp_238, 8),

(__CIL_TMP70 > TOTDOC ,
__CIL_TMP36 is 1
; __CIL_TMP36 is 0),

(__CIL_TMP36 \= 0 ,
__CIL_TMP71 is KERNEL_CACHE_SSA_1 +1* 64,
__CIL_TMP72 is __CIL_TMP71,
BabelExp_239 is TOTDOC,
babel_ptrE(__CIL_TMP72, BabelExp_239, 8)
; true),
BabelExp_240 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP73, BabelExp_240, 8),

(__CIL_TMP73 >= 2 ,
__CIL_TMP37 is 1
; __CIL_TMP37 is 0),

(__CIL_TMP37 \= 0 ,
__CIL_TMP74 is KERNEL_CACHE_SSA_1 +1* 64,
__CIL_TMP75 is __CIL_TMP74,
BabelExp_241 is __CIL_TMP75,
babelPtrR(__CIL_TMP76, BabelExp_241, 8),
babel__implicit_kernel_cache_initc_67(' CACHE-SIZE IN ROWS = %LD\\N', __CIL_TMP76),
BabelExp_242 is __CIL_GP_KERNEL_CACHE_STATISTIC,
babelPtrR(__CIL_TMP77, BabelExp_242, 8),
babel__implicit_kernel_cache_initc_68(' KERNEL EVALS SO FAR: %LD\\N', __CIL_TMP77)
; true),
__CIL_TMP78 is KERNEL_CACHE_SSA_1 +1* 56,
__CIL_TMP79 is __CIL_TMP78,
BabelExp_243 is 0,
babel_ptrE(__CIL_TMP79, BabelExp_243, 8),
I_SSA_1 is 0,
BabelExp_244 is TOTDOC,
babel_ptrE(__CIL_FP_TOTDOC, BabelExp_244, 8),
BabelExp_245 is KERNEL_CACHE_SSA_1,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_245, 8),
babel__implicit_kernel_cache_initc_69(__CIL_PP_TOTDOC, __CIL_PP_KERNEL_CACHE, I_SSA_1),
BabelExp_246 is __CIL_FP_TOTDOC,
babelPtrR(TOTDOC_SSA_1, BabelExp_246, 8),
BabelExp_247 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_2, BabelExp_247, 8),
I_SSA_2 is 0,
BabelExp_248 is TOTDOC_SSA_1,
babel_ptrE(__CIL_FP_TOTDOC, BabelExp_248, 8),
BabelExp_249 is KERNEL_CACHE_SSA_2,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_249, 8),
babel__implicit_kernel_cache_initc_70(__CIL_PP_TOTDOC, __CIL_PP_KERNEL_CACHE, I_SSA_2),
BabelExp_250 is __CIL_FP_TOTDOC,
babelPtrR(TOTDOC_SSA_2, BabelExp_250, 8),
BabelExp_251 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_3, BabelExp_251, 8),
__CIL_TMP80 is KERNEL_CACHE_SSA_3 +1* 80,
__CIL_TMP81 is __CIL_TMP80,
BabelExp_252 is TOTDOC_SSA_2,
babel_ptrE(__CIL_TMP81, BabelExp_252, 8),
I_SSA_3 is 0,
BabelExp_253 is KERNEL_CACHE_SSA_3,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_253, 8),
babel__implicit_kernel_cache_initc_71(__CIL_PP_KERNEL_CACHE, TOTDOC_SSA_2, I_SSA_3),
BabelExp_254 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_4, BabelExp_254, 8),
__CIL_TMP82 is KERNEL_CACHE_SSA_4 +1* 72,
__CIL_TMP83 is __CIL_TMP82,
BabelExp_255 is 0,
babel_ptrE(__CIL_TMP83, BabelExp_255, 8),BABEL_RET is KERNEL_CACHE_SSA_4, true. 

 :- foreign(babel__implicit_kernel_cache_reset_lruc_72(+integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_reset_lruc_73(+integer, +integer, +integer)).

kernel_cache_reset_lru(__CIL_PP_KERNEL_CACHE, __CIL_PP_MAXLRU, __CIL_FP_KERNEL_CACHE, __CIL_FP_MAXLRU, KERNEL_CACHE, VOID) :- 


 MAXLRU_SSA_1 is 0,
K_SSA_1 is 0,
BabelExp_256 is KERNEL_CACHE,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_256, 8),
BabelExp_257 is MAXLRU_SSA_1,
babel_ptrE(__CIL_FP_MAXLRU, BabelExp_257, 8),
babel__implicit_kernel_cache_reset_lruc_72(__CIL_PP_KERNEL_CACHE, __CIL_PP_MAXLRU, K_SSA_1),
BabelExp_258 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_1, BabelExp_258, 8),
BabelExp_259 is __CIL_FP_MAXLRU,
babelPtrR(MAXLRU_SSA_2, BabelExp_259, 8),
K_SSA_2 is 0,
babel__implicit_kernel_cache_reset_lruc_73(KERNEL_CACHE_SSA_1, MAXLRU_SSA_2, K_SSA_2),true. 

 :- foreign(babel__implicit_kernel_cache_mallocc_74(+integer,  -integer)).
:- foreign(babel__implicit_kernel_cache_mallocc_75(+integer, +integer, +integer,  -integer)).

kernel_cache_malloc(__CIL_PP___CIL_RET4, __CIL_FP___CIL_RET4, KERNEL_CACHE, BABEL_RET) :- 


 babel__implicit_kernel_cache_mallocc_74(KERNEL_CACHE , TMP_SSA_1),
(TMP_SSA_1 \= 0 ,
I_SSA_1 is 0,
__CIL_RET4 is 1,
BabelExp_260 is __CIL_RET4,
babel_ptrE(__CIL_FP___CIL_RET4, BabelExp_260, 8),
babel__implicit_kernel_cache_mallocc_75(__CIL_PP___CIL_RET4, KERNEL_CACHE, I_SSA_1 , RETFLAG5_SSA_1),
BabelExp_261 is __CIL_FP___CIL_RET4,
babelPtrR(__CIL_RET4_SSA_1, BabelExp_261, 8),
(RETFLAG5_SSA_1 \= 0 ,
BABEL_RET is __CIL_RET4_SSA_1, true
; BABEL_RET is -1, true)
; BABEL_RET is -1, true). 

 
kernel_cache_free(KERNEL_CACHE, I, VOID) :- 


 __CIL_TMP3 is KERNEL_CACHE +1* 48,
__CIL_TMP4 is __CIL_TMP3,
BabelExp_262 is __CIL_TMP4,
babelPtrR(__CIL_TMP5, BabelExp_262, 8),
__CIL_TMP6 is __CIL_TMP5 +8* I,
BabelExp_263 is 0,
babel_ptrE(__CIL_TMP6, BabelExp_263, 8),
__CIL_TMP7 is KERNEL_CACHE +1* 56,
__CIL_TMP8 is __CIL_TMP7,
BabelExp_264 is __CIL_TMP8,
babelPtrR(__CIL_TMP9, BabelExp_264, 8),
__CIL_TMP10 is KERNEL_CACHE +1* 56,
__CIL_TMP11 is __CIL_TMP10,
BabelExp_265 is __CIL_TMP9 - 1,
babel_ptrE(__CIL_TMP11, BabelExp_265, 8),true. 

 :- foreign(babel__implicit_kernel_cache_free_lruc_76(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_free_lruc_77(+integer, +integer)).

kernel_cache_free_lru(__CIL_PP_KERNEL_CACHE, __CIL_PP_LEAST_ELEM, __CIL_FP_KERNEL_CACHE, __CIL_FP_LEAST_ELEM, KERNEL_CACHE, BABEL_RET) :- 


 LEAST_ELEM_SSA_1 is -1,
__CIL_TMP15 is KERNEL_CACHE +1* 72,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_266 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_266, 8),
BabelExp_267 is __CIL_TMP17 + 1,
LEAST_TIME_SSA_1 is BabelExp_267,
K_SSA_1 is 0,
BabelExp_268 is KERNEL_CACHE,
babel_ptrE(__CIL_FP_KERNEL_CACHE, BabelExp_268, 8),
BabelExp_269 is LEAST_ELEM_SSA_1,
babel_ptrE(__CIL_FP_LEAST_ELEM, BabelExp_269, 8),
babel__implicit_kernel_cache_free_lruc_76(__CIL_PP_KERNEL_CACHE, __CIL_PP_LEAST_ELEM, K_SSA_1, LEAST_TIME_SSA_1),
BabelExp_270 is __CIL_FP_KERNEL_CACHE,
babelPtrR(KERNEL_CACHE_SSA_1, BabelExp_270, 8),
BabelExp_271 is __CIL_FP_LEAST_ELEM,
babelPtrR(LEAST_ELEM_SSA_2, BabelExp_271, 8),

(LEAST_ELEM_SSA_2 \= -1 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ,
babel__implicit_kernel_cache_free_lruc_77(KERNEL_CACHE_SSA_1, LEAST_ELEM_SSA_2),
__CIL_TMP18 is KERNEL_CACHE_SSA_1 +1* 16,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_272 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_272, 8),
__CIL_TMP21 is __CIL_TMP20 +8* LEAST_ELEM_SSA_2,
MEM_27 is KERNEL_CACHE_SSA_1,
BabelExp_273 is MEM_27,
babelPtrR(__CIL_TMP22, BabelExp_273, 8),
BabelExp_274 is __CIL_TMP21,
babelPtrR(__CIL_TMP23, BabelExp_274, 8),
__CIL_TMP24 is __CIL_TMP22 +8* __CIL_TMP23,
BabelExp_275 is -1,
babel_ptrE(__CIL_TMP24, BabelExp_275, 8),
__CIL_TMP25 is KERNEL_CACHE_SSA_1 +1* 16,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_276 is __CIL_TMP26,
babelPtrR(__CIL_TMP27, BabelExp_276, 8),
__CIL_TMP28 is __CIL_TMP27 +8* LEAST_ELEM_SSA_2,
BabelExp_277 is -1,
babel_ptrE(__CIL_TMP28, BabelExp_277, 8),BABEL_RET is 1, true
; BABEL_RET is 0, true). 

 :- foreign(babel__implicit_kernel_cache_clean_and_mallocc_78(+integer,  -integer)).
:- foreign(babel__implicit_kernel_cache_clean_and_mallocc_79(+integer,  -integer)).
:- foreign(babel__implicit_kernel_cache_clean_and_mallocc_80(+integer,  -integer)).

kernel_cache_clean_and_malloc(KERNEL_CACHE, DOCNUM, BABEL_RET) :- 


 babel__implicit_kernel_cache_clean_and_mallocc_78(KERNEL_CACHE , RESULT_SSA_1),

(RESULT_SSA_1 =:= -1 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
babel__implicit_kernel_cache_clean_and_mallocc_79(KERNEL_CACHE , TMP_SSA_1),
(TMP_SSA_1 \= 0 ,
babel__implicit_kernel_cache_clean_and_mallocc_80(KERNEL_CACHE , RESULT_SSA_2)
; RESULT_SSA_2 is RESULT_SSA_1)
; RESULT_SSA_2 is RESULT_SSA_1),
MEM_40 is KERNEL_CACHE,
BabelExp_278 is MEM_40,
babelPtrR(__CIL_TMP11, BabelExp_278, 8),
__CIL_TMP12 is __CIL_TMP11 +8* DOCNUM,
BabelExp_279 is RESULT_SSA_2,
babel_ptrE(__CIL_TMP12, BabelExp_279, 8),

(RESULT_SSA_2 =:= -1 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ,
BABEL_RET is 0, true
; __CIL_TMP13 is KERNEL_CACHE +1* 16,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_280 is __CIL_TMP14,
babelPtrR(__CIL_TMP15, BabelExp_280, 8),
__CIL_TMP16 is __CIL_TMP15 +8* RESULT_SSA_2,
BabelExp_281 is DOCNUM,
babel_ptrE(__CIL_TMP16, BabelExp_281, 8),
__CIL_TMP17 is KERNEL_CACHE +1* 72,
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is KERNEL_CACHE +1* 40,
__CIL_TMP20 is __CIL_TMP19,
MEM_41 is KERNEL_CACHE,
BabelExp_282 is MEM_41,
babelPtrR(__CIL_TMP21, BabelExp_282, 8),
__CIL_TMP22 is __CIL_TMP21 +8* DOCNUM,
BabelExp_283 is __CIL_TMP20,
babelPtrR(__CIL_TMP23, BabelExp_283, 8),
BabelExp_284 is __CIL_TMP22,
babelPtrR(__CIL_TMP24, BabelExp_284, 8),
__CIL_TMP25 is __CIL_TMP23 +8* __CIL_TMP24,
babelPtrR(BabelExp_285, __CIL_TMP18, 8),
babel_ptrE(__CIL_TMP25, BabelExp_285, 8),
__CIL_TMP26 is KERNEL_CACHE +1* 8,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_286 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_286, 8),
__CIL_TMP29 is __CIL_TMP28,
__CIL_TMP30 is KERNEL_CACHE +1* 80,
__CIL_TMP31 is __CIL_TMP30,
BabelExp_287 is __CIL_TMP31,
babelPtrR(__CIL_TMP32, BabelExp_287, 8),
__CIL_TMP33 is __CIL_TMP32,
MEM_42 is KERNEL_CACHE,
BabelExp_288 is MEM_42,
babelPtrR(__CIL_TMP34, BabelExp_288, 8),
__CIL_TMP35 is __CIL_TMP34 +8* DOCNUM,
BabelExp_289 is __CIL_TMP35,
babelPtrR(__CIL_TMP36, BabelExp_289, 8),
BabelExp_290 is __CIL_TMP33 * 4,
__CIL_TMP37 is BabelExp_290,
__CIL_TMP38 is __CIL_TMP36,
__CIL_TMP39 is __CIL_TMP29,
BabelExp_291 is __CIL_TMP37 * __CIL_TMP38,
__CIL_TMP40 is BabelExp_291,
BabelExp_292 is __CIL_TMP39 + __CIL_TMP40,
__CIL_TMP41 is BabelExp_292,
__CIL_TMP10 is __CIL_TMP41,BABEL_RET is __CIL_TMP10, true). 

 
kernel_cache_touch(KERNEL_CACHE, DOCNUM, BABEL_RET) :- 


 (KERNEL_CACHE \= 0 ,
MEM_16 is KERNEL_CACHE,
BabelExp_293 is MEM_16,
babelPtrR(__CIL_TMP4, BabelExp_293, 8),
__CIL_TMP5 is __CIL_TMP4 +8* DOCNUM,
BabelExp_294 is __CIL_TMP5,
babelPtrR(__CIL_TMP6, BabelExp_294, 8),

(__CIL_TMP6 \= -1 ,
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ,
__CIL_TMP7 is KERNEL_CACHE +1* 72,
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is KERNEL_CACHE +1* 40,
__CIL_TMP10 is __CIL_TMP9,
MEM_17 is KERNEL_CACHE,
BabelExp_295 is MEM_17,
babelPtrR(__CIL_TMP11, BabelExp_295, 8),
__CIL_TMP12 is __CIL_TMP11 +8* DOCNUM,
BabelExp_296 is __CIL_TMP10,
babelPtrR(__CIL_TMP13, BabelExp_296, 8),
BabelExp_297 is __CIL_TMP12,
babelPtrR(__CIL_TMP14, BabelExp_297, 8),
__CIL_TMP15 is __CIL_TMP13 +8* __CIL_TMP14,
babelPtrR(BabelExp_298, __CIL_TMP8, 8),
babel_ptrE(__CIL_TMP15, BabelExp_298, 8),BABEL_RET is 1, true
; BABEL_RET is 0, true)
; BABEL_RET is 0, true). 

 
kernel_cache_check(KERNEL_CACHE, DOCNUM, BABEL_RET) :- 


 MEM_8 is KERNEL_CACHE,
BabelExp_299 is MEM_8,
babelPtrR(__CIL_TMP4, BabelExp_299, 8),
__CIL_TMP5 is __CIL_TMP4 +8* DOCNUM,
BabelExp_300 is __CIL_TMP5,
babelPtrR(__CIL_TMP6, BabelExp_300, 8),

(__CIL_TMP6 \= -1 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

__CIL_TMP3 is __CIL_TMP7,BABEL_RET is __CIL_TMP3, true. 

 
kernel_cache_space_available(KERNEL_CACHE, BABEL_RET) :- 


 __CIL_TMP3 is KERNEL_CACHE +1* 56,
__CIL_TMP4 is __CIL_TMP3,
__CIL_TMP5 is KERNEL_CACHE +1* 64,
__CIL_TMP6 is __CIL_TMP5,
BabelExp_301 is __CIL_TMP4,
babelPtrR(__CIL_TMP7, BabelExp_301, 8),
BabelExp_302 is __CIL_TMP6,
babelPtrR(__CIL_TMP8, BabelExp_302, 8),

(__CIL_TMP7 < __CIL_TMP8 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

__CIL_TMP2 is __CIL_TMP9,BABEL_RET is __CIL_TMP2, true. 

 :- foreign(babel__implicit_distribute_alpha_t_greedilyc_81(+positive,  -integer)).
:- foreign(babel__implicit_distribute_alpha_t_greedilyc_82(+positive,  -integer)).
:- foreign(babel__implicit_distribute_alpha_t_greedilyc_83(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_distribute_alpha_t_greedilyc_84(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +float, +integer, +integer, +float, +float, +integer)).
:- foreign(babel__implicit_distribute_alpha_t_greedilyc_85(+integer)).
:- foreign(babel__implicit_distribute_alpha_t_greedilyc_86(+integer)).

distribute_alpha_t_greedily(__CIL_PP_SV2DNUM, __CIL_PP_SVNUM, __CIL_PP_DOCS, __CIL_PP_DOCNUM, __CIL_PP_KERNEL_PARM, __CIL_PP_LEARN_PARM, __CIL_PP_THRESH, __CIL_PP_CACHE, __CIL_PP_TROW, __CIL_PP_BEST, __CIL_FP_SV2DNUM, __CIL_FP_SVNUM, __CIL_FP_DOCS, __CIL_FP_DOCNUM, __CIL_FP_KERNEL_PARM, __CIL_FP_LEARN_PARM, __CIL_FP_THRESH, __CIL_FP_CACHE, __CIL_FP_TROW, __CIL_FP_BEST, SV2DNUM, SVNUM, DOCS, A, DOCNUM, LABEL, KERNEL_PARM, LEARN_PARM, THRESH, BABEL_RET) :- 


 __CIL_TMP72 is LEARN_PARM +1* 144,
__CIL_TMP73 is __CIL_TMP72,
BabelExp_303 is __CIL_TMP73,
babelPtrR(__CIL_TMP74, BabelExp_303, 8),
__CIL_TMP75 is __CIL_TMP74,
BabelExp_304 is 4 * __CIL_TMP75,
__CIL_TMP76 is BabelExp_304,
BabelExp_305 is __CIL_TMP76 * SVNUM,
__CIL_TMP77 is BabelExp_305,
babel__implicit_distribute_alpha_t_greedilyc_81(__CIL_TMP77 , TMP_SSA_1),
CACHE_SSA_1 is TMP_SSA_1,
BabelExp_306 is 4 * SVNUM,
__CIL_TMP78 is BabelExp_306,
babel__implicit_distribute_alpha_t_greedilyc_82(__CIL_TMP78 , TMP___0_SSA_1),
TROW_SSA_1 is TMP___0_SSA_1,
K_SSA_1 is 0,
BabelExp_307 is SV2DNUM,
babel_ptrE(__CIL_FP_SV2DNUM, BabelExp_307, 8),
BabelExp_308 is SVNUM,
babel_ptrE(__CIL_FP_SVNUM, BabelExp_308, 8),
BabelExp_309 is DOCS,
babel_ptrE(__CIL_FP_DOCS, BabelExp_309, 8),
BabelExp_310 is DOCNUM,
babel_ptrE(__CIL_FP_DOCNUM, BabelExp_310, 8),
BabelExp_311 is KERNEL_PARM,
babel_ptrE(__CIL_FP_KERNEL_PARM, BabelExp_311, 8),
BabelExp_312 is LEARN_PARM,
babel_ptrE(__CIL_FP_LEARN_PARM, BabelExp_312, 8),
BabelExp_313 is THRESH,
babel_ptrFW(__CIL_FP_THRESH, BabelExp_313,2),
BabelExp_314 is CACHE_SSA_1,
babel_ptrE(__CIL_FP_CACHE, BabelExp_314, 8),
BabelExp_315 is TROW_SSA_1,
babel_ptrE(__CIL_FP_TROW, BabelExp_315, 8),
babel__implicit_distribute_alpha_t_greedilyc_83(__CIL_PP_SV2DNUM, __CIL_PP_SVNUM, __CIL_PP_DOCS, __CIL_PP_DOCNUM, __CIL_PP_KERNEL_PARM, __CIL_PP_LEARN_PARM, __CIL_PP_THRESH, __CIL_PP_CACHE, __CIL_PP_TROW, K_SSA_1),
BabelExp_316 is __CIL_FP_SV2DNUM,
babelPtrR(SV2DNUM_SSA_1, BabelExp_316, 8),
BabelExp_317 is __CIL_FP_SVNUM,
babelPtrR(SVNUM_SSA_1, BabelExp_317, 8),
BabelExp_318 is __CIL_FP_DOCS,
babelPtrR(DOCS_SSA_1, BabelExp_318, 8),
BabelExp_319 is __CIL_FP_DOCNUM,
babelPtrR(DOCNUM_SSA_1, BabelExp_319, 8),
BabelExp_320 is __CIL_FP_KERNEL_PARM,
babelPtrR(KERNEL_PARM_SSA_1, BabelExp_320, 8),
BabelExp_321 is __CIL_FP_LEARN_PARM,
babelPtrR(LEARN_PARM_SSA_1, BabelExp_321, 8),
BabelExp_322 is __CIL_FP_THRESH,
babel_ptrFR(THRESH_SSA_1, BabelExp_322,2),
BabelExp_323 is __CIL_FP_CACHE,
babelPtrR(CACHE_SSA_2, BabelExp_323, 8),
BabelExp_324 is __CIL_FP_TROW,
babelPtrR(TROW_SSA_2, BabelExp_324, 8),
INIT_VAL_SQ_SSA_1 is 0,
INIT_VAL_LIN_SSA_1 is 0,
BEST_SSA_1 is 0,
D_SSA_1 is 0,
BabelExp_325 is BEST_SSA_1,
babel_ptrFW(__CIL_FP_BEST, BabelExp_325,2),
BabelExp_326 is CACHE_SSA_2,
babel_ptrE(__CIL_FP_CACHE, BabelExp_326, 8),
BabelExp_327 is TROW_SSA_2,
babel_ptrE(__CIL_FP_TROW, BabelExp_327, 8),
babel__implicit_distribute_alpha_t_greedilyc_84(__CIL_PP_BEST, __CIL_PP_CACHE, __CIL_PP_TROW, SV2DNUM_SSA_1, SVNUM_SSA_1, DOCS_SSA_1, DOCNUM_SSA_1, KERNEL_PARM_SSA_1, LEARN_PARM_SSA_1, THRESH_SSA_1, D_SSA_1, BEST_VAL, INIT_VAL_SQ_SSA_1, INIT_VAL_LIN_SSA_1, BEST_EX),
BabelExp_328 is __CIL_FP_BEST,
babel_ptrFR(BEST_SSA_2, BabelExp_328,2),
BabelExp_329 is __CIL_FP_CACHE,
babelPtrR(CACHE_SSA_3, BabelExp_329, 8),
BabelExp_330 is __CIL_FP_TROW,
babelPtrR(TROW_SSA_3, BabelExp_330, 8),
babel__implicit_distribute_alpha_t_greedilyc_85(CACHE_SSA_3),
babel__implicit_distribute_alpha_t_greedilyc_86(TROW_SSA_3),BABEL_RET is BEST_SSA_2, true. 

 :- foreign(babel__implicit_estimate_margin_vcdimc_87(+integer, +integer,  -float)).
:- foreign(babel__implicit_estimate_margin_vcdimc_88(+integer, +integer,  -float)).

estimate_margin_vcdim(MODEL, W, R, KERNEL_PARM, BABEL_RET) :- 


 (W < 0 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ,
babel__implicit_estimate_margin_vcdimc_87(MODEL, KERNEL_PARM , W_SSA_1)
; W_SSA_1 is W),

(R < 0 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ,
babel__implicit_estimate_margin_vcdimc_88(MODEL, KERNEL_PARM , R_SSA_1)
; R_SSA_1 is R),
BabelExp_331 is W_SSA_1 * W_SSA_1,
__CIL_TMP11 is BabelExp_331,
BabelExp_332 is __CIL_TMP11 * R_SSA_1,
__CIL_TMP12 is BabelExp_332,
BabelExp_333 is __CIL_TMP12 * R_SSA_1,
__CIL_TMP13 is BabelExp_333,
BabelExp_334 is __CIL_TMP13 + 1,
H_SSA_1 is BabelExp_334,BABEL_RET is H_SSA_1, true. 

 :- foreign(babel__implicit_estimate_r_deltac_89(+integer, +string, +float,  -integer)).
:- foreign(babel__implicit_estimate_r_deltac_90(+integer, +integer, +integer, +float, +integer,  -integer)).
:- foreign(babel__implicit_estimate_r_deltac_91(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_estimate_r_deltac_92(+integer, +integer)).

estimate_r_delta(__CIL_PP_NULLWORD, __CIL_PP_MAXXLEN, __CIL_PP_NULLDOC, __CIL_FP_MAXXLEN, __CIL_FP_NULLDOC, DOCS, TOTDOC, KERNEL_PARM, BABEL_RET) :- 

 MEM_18 is __CIL_PP_NULLWORD,
BabelExp_335 is 0,
babel_ptrE(MEM_18, BabelExp_335, 8),
babel__implicit_estimate_r_deltac_89(__CIL_PP_NULLWORD, '', 1.0 , TMP_SSA_1),
babel__implicit_estimate_r_deltac_90(-2, 0, 0, 0.0, TMP_SSA_1 , NULLDOC_SSA_1),
MAXXLEN_SSA_1 is 0.0,
I_SSA_1 is 0,
BabelExp_336 is MAXXLEN_SSA_1,
babel_ptrFW(__CIL_FP_MAXXLEN, BabelExp_336,2),
BabelExp_337 is NULLDOC_SSA_1,
babel_ptrE(__CIL_FP_NULLDOC, BabelExp_337, 8),
estimate_r_delta_cil_lr_1(__CIL_PP_MAXXLEN, __CIL_PP_NULLDOC, DOCS, TOTDOC, KERNEL_PARM, I_SSA_1, VOID),
BabelExp_338 is __CIL_FP_MAXXLEN,
babel_ptrFR(MAXXLEN_SSA_2, BabelExp_338,2),
BabelExp_339 is __CIL_FP_NULLDOC,
babelPtrR(NULLDOC_SSA_2, BabelExp_339, 8),
babel__implicit_estimate_r_deltac_92(NULLDOC_SSA_2, 1),BABEL_RET is MAXXLEN_SSA_2, true. 

% :- foreign(babel__implicit_length_of_longest_document_vectorc_93(+integer, +integer, +integer, +integer, +integer)).
%
%length_of_longest_document_vector(__CIL_PP_MAXXLEN, __CIL_FP_MAXXLEN, DOCS, TOTDOC, KERNEL_PARM, BABEL_RET) :- 
% MAXXLEN_SSA_1 is 0.0,
%I_SSA_1 is 0,
%babel_ptrFW(__CIL_FP_MAXXLEN, 0.0,2),
%length_of_longest_document_vector_cil_lr_1(__CIL_PP_MAXXLEN, DOCS, TOTDOC, KERNEL_PARM, I_SSA_1, VOID),
%BabelExp_341 is __CIL_FP_MAXXLEN,
%babel_ptrFR(MAXXLEN_SSA_2, BabelExp_341,2),BABEL_RET is MAXXLEN_SSA_2, true. 

 :- foreign(babel__implicit_write_alphasc_94(+integer)).
:- foreign(babel__implicit_write_alphasc_95(+integer)).
:- foreign(babel__implicit_write_alphasc_96(+integer, +integer,  -integer)).
:- foreign(babel__implicit_write_alphasc_97(+integer)).
:- foreign(babel__implicit_write_alphasc_98(+integer)).
:- foreign(babel__implicit_write_alphasc_99(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_write_alphasc_100(+integer)).
:- foreign(babel__implicit_write_alphasc_101(+integer)).

write_alphas(__CIL_PP_VERBOSITY, __CIL_PP_ALPHAFL, __CIL_GP_VERBOSITY, __CIL_GP_STDOUT, __CIL_FP_ALPHAFL, ALPHAFILE, A, LABEL, TOTDOC, VOID) :- 


 BabelExp_342 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP18, BabelExp_342, 8),

(__CIL_TMP18 >= 1 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ,
babel__implicit_write_alphasc_94('WRITING ALPHA FILE...'),
BabelExp_343 is __CIL_GP_STDOUT,
babelPtrR(__CIL_TMP19, BabelExp_343, 8),
babel__implicit_write_alphasc_95(__CIL_TMP19)
; true),
babel__implicit_write_alphasc_96(ALPHAFILE, 'W' , ALPHAFL_SSA_1),

(ALPHAFL_SSA_1 =:= 0 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ,
babel__implicit_write_alphasc_97(ALPHAFILE),
babel__implicit_write_alphasc_98(1)
; true),
I_SSA_1 is 0,
BabelExp_344 is ALPHAFL_SSA_1,
babel_ptrE(__CIL_FP_ALPHAFL, BabelExp_344, 8),
babel__implicit_write_alphasc_99(__CIL_PP_VERBOSITY, __CIL_PP_ALPHAFL, A, LABEL, TOTDOC, I_SSA_1),
BabelExp_345 is __CIL_FP_ALPHAFL,
babelPtrR(ALPHAFL_SSA_2, BabelExp_345, 8),
babel__implicit_write_alphasc_100(ALPHAFL_SSA_2),
BabelExp_346 is __CIL_GP_VERBOSITY,
babelPtrR(__CIL_TMP20, BabelExp_346, 8),

(__CIL_TMP20 >= 1 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ,
babel__implicit_write_alphasc_101('DONE\\N')
; true),
true. 

 
distribute_alpha_t_greedily_cil_lr_2_cil_lr_2_cil_lr_1(__CIL_AP_I, __CIL_AP_SKIP, __CIL_AP_D, BEST_EX, J, VOID) :- 


 BabelExp_347 is __CIL_AP_D,
babelPtrR(__CIL_TMP9, BabelExp_347, 8),

(J < __CIL_TMP9 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
__CIL_TMP10 is BEST_EX +8* J,
BabelExp_348 is __CIL_AP_I,
babelPtrR(__CIL_TMP11, BabelExp_348, 8),
BabelExp_349 is __CIL_TMP10,
babelPtrR(__CIL_TMP12, BabelExp_349, 8),

(__CIL_TMP11 =:= __CIL_TMP12 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
BabelExp_350 is 1,
babel_ptrE(__CIL_AP_SKIP, BabelExp_350, 8)
; true),
BabelExp_351 is J + 1,
J_SSA_1 is BabelExp_351,
distribute_alpha_t_greedily_cil_lr_2_cil_lr_2_cil_lr_1(__CIL_AP_I, __CIL_AP_SKIP, __CIL_AP_D, BEST_EX, J_SSA_1, VOID),true
; true).

 
distribute_alpha_t_greedily_cil_lr_2_cil_lr_2_cil_lr_2(__CIL_AP_I, __CIL_AP_VAL, __CIL_AP_CACHE, __CIL_AP_SVNUM, __CIL_AP_D, J, VOID) :- 


 BabelExp_353 is __CIL_AP_D,
babelPtrR(__CIL_TMP9, BabelExp_353, 8),

(J < __CIL_TMP9 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
BabelExp_354 is __CIL_AP_SVNUM,
babelPtrR(__CIL_TMP10, BabelExp_354, 8),
BabelExp_355 is __CIL_AP_I,
babelPtrR(__CIL_TMP11, BabelExp_355, 8),
BabelExp_356 is J * __CIL_TMP10,
__CIL_TMP12 is BabelExp_356,
BabelExp_357 is __CIL_AP_CACHE,
babelPtrR(__CIL_TMP13, BabelExp_357, 8),
BabelExp_358 is __CIL_TMP11 + __CIL_TMP12,
__CIL_TMP14 is BabelExp_358,
__CIL_TMP15 is __CIL_TMP13 +4* __CIL_TMP14,
BabelExp_359 is __CIL_TMP15,
babel_ptrFR(__CIL_TMP16, BabelExp_359,1),
__CIL_TMP17 is __CIL_TMP16,
BabelExp_360 is __CIL_AP_VAL,
babel_ptrFR(__CIL_TMP18, BabelExp_360,2),
BabelExp_361 is 2.0 * __CIL_TMP17,
__CIL_TMP19 is BabelExp_361,
BabelExp_362 is __CIL_TMP18 + __CIL_TMP19,
babel_ptrFW(__CIL_AP_VAL, BabelExp_362,2),
BabelExp_363 is J + 1,
J_SSA_1 is BabelExp_363,
distribute_alpha_t_greedily_cil_lr_2_cil_lr_2_cil_lr_2(__CIL_AP_I, __CIL_AP_VAL, __CIL_AP_CACHE, __CIL_AP_SVNUM, __CIL_AP_D, J_SSA_1, VOID),true
; true). 

 
distribute_alpha_t_greedily_cil_lr_2_cil_lr_1(__CIL_AP_SV2DNUM, __CIL_AP_SVNUM, __CIL_AP_DOCS, __CIL_AP_DOCNUM, __CIL_AP_KERNEL_PARM, __CIL_AP_LEARN_PARM, __CIL_AP_THRESH, __CIL_AP_D, __CIL_AP_INIT_VAL_SQ, __CIL_AP_INIT_VAL_LIN, __CIL_AP_ALLSKIP, __CIL_AP_CACHE, BEST_EX, K, VOID) :- 


 BabelExp_364 is __CIL_AP_D,
babelPtrR(__CIL_TMP17, BabelExp_364, 8),
BabelExp_365 is __CIL_TMP17 - 1,
__CIL_TMP18 is BabelExp_365,

(K < __CIL_TMP18 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ,
__CIL_TMP19 is BEST_EX +8* K,
BabelExp_366 is __CIL_AP_D,
babelPtrR(__CIL_TMP20, BabelExp_366, 8),
BabelExp_367 is __CIL_AP_SVNUM,
babelPtrR(__CIL_TMP21, BabelExp_367, 8),
BabelExp_368 is __CIL_TMP20 - 1,
__CIL_TMP22 is BabelExp_368,
BabelExp_369 is __CIL_TMP19,
babelPtrR(__CIL_TMP23, BabelExp_369, 8),
BabelExp_370 is __CIL_TMP21 * __CIL_TMP22,
__CIL_TMP24 is BabelExp_370,
BabelExp_371 is __CIL_AP_CACHE,
babelPtrR(__CIL_TMP25, BabelExp_371, 8),
BabelExp_372 is __CIL_TMP23 + __CIL_TMP24,
__CIL_TMP26 is BabelExp_372,
__CIL_TMP27 is __CIL_TMP25 +4* __CIL_TMP26,
BabelExp_373 is __CIL_TMP27,
babel_ptrFR(__CIL_TMP28, BabelExp_373,1),
__CIL_TMP29 is __CIL_TMP28,
BabelExp_374 is __CIL_AP_INIT_VAL_SQ,
babel_ptrFR(__CIL_TMP30, BabelExp_374,2),
BabelExp_375 is 2.0 * __CIL_TMP29,
__CIL_TMP31 is BabelExp_375,
BabelExp_376 is __CIL_TMP30 + __CIL_TMP31,
babel_ptrFW(__CIL_AP_INIT_VAL_SQ, BabelExp_376,2),
BabelExp_377 is K + 1,
K_SSA_1 is BabelExp_377,
distribute_alpha_t_greedily_cil_lr_2_cil_lr_1(__CIL_AP_SV2DNUM, __CIL_AP_SVNUM, __CIL_AP_DOCS, __CIL_AP_DOCNUM, __CIL_AP_KERNEL_PARM, __CIL_AP_LEARN_PARM, __CIL_AP_THRESH, __CIL_AP_D, __CIL_AP_INIT_VAL_SQ, __CIL_AP_INIT_VAL_LIN, __CIL_AP_ALLSKIP, __CIL_AP_CACHE, BEST_EX, K_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_distribute_alpha_t_greedily_cil_lr_2_cil_lr_3c_106(+integer, +integer, +integer,  -float)).

distribute_alpha_t_greedily_cil_lr_2_cil_lr_3(__CIL_AP_SV2DNUM, __CIL_AP_SVNUM, __CIL_AP_DOCS, __CIL_AP_DOCNUM, __CIL_AP_KERNEL_PARM, __CIL_AP_LEARN_PARM, __CIL_AP_THRESH, __CIL_AP_D, __CIL_AP_INIT_VAL_SQ, __CIL_AP_INIT_VAL_LIN, __CIL_AP_ALLSKIP, __CIL_AP_CACHE, BEST_EX, K, VOID) :- 


 BabelExp_378 is __CIL_AP_SVNUM,
babelPtrR(__CIL_TMP19, BabelExp_378, 8),

(K < __CIL_TMP19 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ,
BabelExp_379 is __CIL_AP_D,
babelPtrR(__CIL_TMP20, BabelExp_379, 8),
__CIL_TMP21 is BEST_EX +8* __CIL_TMP20,
BabelExp_380 is __CIL_AP_SV2DNUM,
babelPtrR(__CIL_TMP22, BabelExp_380, 8),
BabelExp_381 is __CIL_TMP21,
babelPtrR(__CIL_TMP23, BabelExp_381, 8),
__CIL_TMP24 is __CIL_TMP22 +8* __CIL_TMP23,
BabelExp_382 is __CIL_AP_DOCS,
babelPtrR(__CIL_TMP25, BabelExp_382, 8),
BabelExp_383 is __CIL_TMP24,
babelPtrR(__CIL_TMP26, BabelExp_383, 8),
__CIL_TMP27 is __CIL_TMP25 +8* __CIL_TMP26,
BabelExp_384 is __CIL_AP_SV2DNUM,
babelPtrR(__CIL_TMP28, BabelExp_384, 8),
__CIL_TMP29 is __CIL_TMP28 +8* K,
BabelExp_385 is __CIL_AP_DOCS,
babelPtrR(__CIL_TMP30, BabelExp_385, 8),
BabelExp_386 is __CIL_TMP29,
babelPtrR(__CIL_TMP31, BabelExp_386, 8),
__CIL_TMP32 is __CIL_TMP30 +8* __CIL_TMP31,
BabelExp_387 is __CIL_AP_KERNEL_PARM,
babelPtrR(__CIL_TMP33, BabelExp_387, 8),
BabelExp_388 is __CIL_TMP27,
babelPtrR(__CIL_TMP34, BabelExp_388, 8),
BabelExp_389 is __CIL_TMP32,
babelPtrR(__CIL_TMP35, BabelExp_389, 8),
babel__implicit_distribute_alpha_t_greedily_cil_lr_2_cil_lr_3c_106(__CIL_TMP33, __CIL_TMP34, __CIL_TMP35 , TMP___3_SSA_1),
BabelExp_390 is __CIL_AP_D,
babelPtrR(__CIL_TMP36, BabelExp_390, 8),
BabelExp_391 is __CIL_AP_SVNUM,
babelPtrR(__CIL_TMP37, BabelExp_391, 8),
BabelExp_392 is __CIL_TMP36 * __CIL_TMP37,
__CIL_TMP38 is BabelExp_392,
BabelExp_393 is __CIL_AP_CACHE,
babelPtrR(__CIL_TMP39, BabelExp_393, 8),
BabelExp_394 is __CIL_TMP38 + K,
__CIL_TMP40 is BabelExp_394,
__CIL_TMP41 is __CIL_TMP39 +4* __CIL_TMP40,
BabelExp_395 is TMP___3_SSA_1,
babel_ptrFW(__CIL_TMP41, BabelExp_395,1),
BabelExp_396 is K + 1,
K_SSA_1 is BabelExp_396,
distribute_alpha_t_greedily_cil_lr_2_cil_lr_3(__CIL_AP_SV2DNUM, __CIL_AP_SVNUM, __CIL_AP_DOCS, __CIL_AP_DOCNUM, __CIL_AP_KERNEL_PARM, __CIL_AP_LEARN_PARM, __CIL_AP_THRESH, __CIL_AP_D, __CIL_AP_INIT_VAL_SQ, __CIL_AP_INIT_VAL_LIN, __CIL_AP_ALLSKIP, __CIL_AP_CACHE, BEST_EX, K_SSA_1, VOID),true
; true). 

 
kernel_cache_shrink_cil_lr_3_cil_lr_1(__CIL_AP_I, __CIL_AP_FROM, __CIL_AP_TO, __CIL_AP_KERNEL_CACHE, __CIL_AP_KEEP, JJ, VOID) :- 


 BabelExp_397 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP12, BabelExp_397, 8),
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13 +1* 80,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_398 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_398, 8),

(JJ < __CIL_TMP16 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ,
BabelExp_399 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP17, BabelExp_399, 8),
__CIL_TMP18 is __CIL_TMP17,
__CIL_TMP19 is __CIL_TMP18 +1* 24,
__CIL_TMP20 is __CIL_TMP19,
BabelExp_400 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_400, 8),
__CIL_TMP22 is __CIL_TMP21 +8* JJ,
BabelExp_401 is __CIL_TMP22,
babelPtrR(J_SSA_1, BabelExp_401, 8),
BabelExp_402 is __CIL_AP_KEEP,
babelPtrR(__CIL_TMP23, BabelExp_402, 8),
__CIL_TMP24 is __CIL_TMP23 +8* J_SSA_1,
BabelExp_403 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_403, 8),

(__CIL_TMP25 =:= 0 ,
__CIL_TMP11 is 1
; __CIL_TMP11 is 0),

(__CIL_TMP11 \= 0 ,
BabelExp_404 is __CIL_AP_FROM,
babelPtrR(__CIL_TMP26, BabelExp_404, 8),
BabelExp_405 is __CIL_TMP26 + 1,
babel_ptrE(__CIL_AP_FROM, BabelExp_405, 8)
; BabelExp_406 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP27, BabelExp_406, 8),
__CIL_TMP28 is __CIL_TMP27,
__CIL_TMP29 is __CIL_TMP28 +1* 8,
__CIL_TMP30 is __CIL_TMP29,
BabelExp_407 is __CIL_TMP30,
babelPtrR(__CIL_TMP31, BabelExp_407, 8),
BabelExp_408 is __CIL_AP_FROM,
babelPtrR(__CIL_TMP32, BabelExp_408, 8),
__CIL_TMP33 is __CIL_TMP31 +4* __CIL_TMP32,
BabelExp_409 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP34, BabelExp_409, 8),
__CIL_TMP35 is __CIL_TMP34,
__CIL_TMP36 is __CIL_TMP35 +1* 8,
__CIL_TMP37 is __CIL_TMP36,
BabelExp_410 is __CIL_TMP37,
babelPtrR(__CIL_TMP38, BabelExp_410, 8),
BabelExp_411 is __CIL_AP_TO,
babelPtrR(__CIL_TMP39, BabelExp_411, 8),
__CIL_TMP40 is __CIL_TMP38 +4* __CIL_TMP39,
babel_ptrFR(BabelExp_412, __CIL_TMP33,1),
babel_ptrFW(__CIL_TMP40, BabelExp_412,1),
BabelExp_413 is __CIL_AP_TO,
babelPtrR(__CIL_TMP41, BabelExp_413, 8),
BabelExp_414 is __CIL_TMP41 + 1,
babel_ptrE(__CIL_AP_TO, BabelExp_414, 8),
BabelExp_415 is __CIL_AP_FROM,
babelPtrR(__CIL_TMP42, BabelExp_415, 8),
BabelExp_416 is __CIL_TMP42 + 1,
babel_ptrE(__CIL_AP_FROM, BabelExp_416, 8)),
BabelExp_417 is JJ + 1,
JJ_SSA_1 is BabelExp_417,
kernel_cache_shrink_cil_lr_3_cil_lr_1(__CIL_AP_I, __CIL_AP_FROM, __CIL_AP_TO, __CIL_AP_KERNEL_CACHE, __CIL_AP_KEEP, JJ_SSA_1, VOID),true
; true).

 
select_top_n_cil_lr_1_cil_lr_1(__CIL_AP_I, __CIL_AP_SELCRIT, __CIL_AP_SELECT___0, J, VOID) :- 


 (J >= 0 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
(J > 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
BabelExp_419 is __CIL_AP_SELECT___0,
babelPtrR(__CIL_TMP10, BabelExp_419, 8),
BabelExp_420 is J - 1,
__CIL_TMP11 is BabelExp_420,
__CIL_TMP12 is __CIL_TMP10 +8* __CIL_TMP11,
BabelExp_421 is __CIL_AP_SELCRIT,
babelPtrR(__CIL_TMP13, BabelExp_421, 8),
BabelExp_422 is __CIL_TMP12,
babelPtrR(__CIL_TMP14, BabelExp_422, 8),
__CIL_TMP15 is __CIL_TMP13 +8* __CIL_TMP14,
BabelExp_423 is __CIL_AP_SELCRIT,
babelPtrR(__CIL_TMP16, BabelExp_423, 8),
BabelExp_424 is __CIL_AP_I,
babelPtrR(__CIL_TMP17, BabelExp_424, 8),
__CIL_TMP18 is __CIL_TMP16 +8* __CIL_TMP17,
BabelExp_425 is __CIL_TMP15,
babel_ptrFR(__CIL_TMP19, BabelExp_425,2),
BabelExp_426 is __CIL_TMP18,
babel_ptrFR(__CIL_TMP20, BabelExp_426,2),

(__CIL_TMP19 < __CIL_TMP20 ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ,
BabelExp_427 is __CIL_AP_SELECT___0,
babelPtrR(__CIL_TMP21, BabelExp_427, 8),
BabelExp_428 is J - 1,
__CIL_TMP22 is BabelExp_428,
__CIL_TMP23 is __CIL_TMP21 +8* __CIL_TMP22,
BabelExp_429 is __CIL_AP_SELECT___0,
babelPtrR(__CIL_TMP24, BabelExp_429, 8),
__CIL_TMP25 is __CIL_TMP24 +8* J,
babelPtrR(BabelExp_430, __CIL_TMP23, 8),
babel_ptrE(__CIL_TMP25, BabelExp_430, 8),
J_SSA_1 is J
; BabelExp_431 is __CIL_AP_SELECT___0,
babelPtrR(__CIL_TMP26, BabelExp_431, 8),
__CIL_TMP27 is __CIL_TMP26 +8* J,
babelPtrR(BabelExp_432, __CIL_AP_I, 8),
babel_ptrE(__CIL_TMP27, BabelExp_432, 8),
J_SSA_1 is -1)
; BabelExp_433 is __CIL_AP_SELECT___0,
babelPtrR(__CIL_TMP28, BabelExp_433, 8),
__CIL_TMP29 is __CIL_TMP28 +8* J,
babelPtrR(BabelExp_434, __CIL_AP_I, 8),
babel_ptrE(__CIL_TMP29, BabelExp_434, 8),
J_SSA_1 is -1),
BabelExp_435 is J_SSA_1 - 1,
J_SSA_2 is BabelExp_435,
select_top_n_cil_lr_1_cil_lr_1(__CIL_AP_I, __CIL_AP_SELCRIT, __CIL_AP_SELECT___0, J_SSA_2, VOID),true
; true). 

 
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

 :- foreign(babel__implicit_compute_matrices_for_optimization_cil_lr_3_cil_lr_1c_114(+integer, +integer, +integer,  -float)).

compute_matrices_for_optimization_cil_lr_3_cil_lr_1(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_DOCS, __CIL_AP_KERNEL_PARM, __CIL_AP_I, __CIL_AP_LABEL, __CIL_AP_KEY, __CIL_AP_A, __CIL_AP_VARNUM, __CIL_AP_QP, KI, J, VOID) :- 


 BabelExp_467 is __CIL_AP_VARNUM,
babelPtrR(__CIL_TMP21, BabelExp_467, 8),

(J < __CIL_TMP21 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ,
BabelExp_468 is __CIL_AP_KEY,
babelPtrR(__CIL_TMP22, BabelExp_468, 8),
__CIL_TMP23 is __CIL_TMP22 +8* J,
BabelExp_469 is __CIL_TMP23,
babelPtrR(KJ_SSA_1, BabelExp_469, 8),
BabelExp_470 is __CIL_AP_DOCS,
babelPtrR(__CIL_TMP24, BabelExp_470, 8),
__CIL_TMP25 is __CIL_TMP24 +8* KI,
BabelExp_471 is __CIL_AP_DOCS,
babelPtrR(__CIL_TMP26, BabelExp_471, 8),
__CIL_TMP27 is __CIL_TMP26 +8* KJ_SSA_1,
BabelExp_472 is __CIL_AP_KERNEL_PARM,
babelPtrR(__CIL_TMP28, BabelExp_472, 8),
BabelExp_473 is __CIL_TMP25,
babelPtrR(__CIL_TMP29, BabelExp_473, 8),
BabelExp_474 is __CIL_TMP27,
babelPtrR(__CIL_TMP30, BabelExp_474, 8),
babel__implicit_compute_matrices_for_optimization_cil_lr_3_cil_lr_1c_114(__CIL_TMP28, __CIL_TMP29, __CIL_TMP30 , TMP___0_SSA_1),
KERNEL_TEMP_SSA_1 is TMP___0_SSA_1,
BabelExp_475 is __CIL_AP_QP,
babelPtrR(__CIL_TMP31, BabelExp_475, 8),
__CIL_TMP32 is __CIL_TMP31,
__CIL_TMP33 is __CIL_TMP32 +1* 40,
__CIL_TMP34 is __CIL_TMP33,
BabelExp_476 is __CIL_TMP34,
babelPtrR(__CIL_TMP35, BabelExp_476, 8),
BabelExp_477 is __CIL_AP_I,
babelPtrR(__CIL_TMP36, BabelExp_477, 8),
__CIL_TMP37 is __CIL_TMP35 +8* __CIL_TMP36,
BabelExp_478 is __CIL_AP_A,
babelPtrR(__CIL_TMP38, BabelExp_478, 8),
__CIL_TMP39 is __CIL_TMP38 +8* KJ_SSA_1,
BabelExp_479 is __CIL_TMP39,
babel_ptrFR(__CIL_TMP40, BabelExp_479,2),
BabelExp_480 is __CIL_AP_LABEL,
babelPtrR(__CIL_TMP41, BabelExp_480, 8),
__CIL_TMP42 is __CIL_TMP41 +8* KJ_SSA_1,
BabelExp_481 is __CIL_TMP42,
babelPtrR(__CIL_TMP43, BabelExp_481, 8),
BabelExp_482 is KERNEL_TEMP_SSA_1 * __CIL_TMP40,
__CIL_TMP44 is BabelExp_482,
__CIL_TMP45 is __CIL_TMP43,
BabelExp_483 is __CIL_TMP37,
babel_ptrFR(__CIL_TMP46, BabelExp_483,2),
BabelExp_484 is __CIL_TMP44 * __CIL_TMP45,
__CIL_TMP47 is BabelExp_484,
BabelExp_485 is __CIL_AP_QP,
babelPtrR(__CIL_TMP48, BabelExp_485, 8),
__CIL_TMP49 is __CIL_TMP48,
__CIL_TMP50 is __CIL_TMP49 +1* 40,
__CIL_TMP51 is __CIL_TMP50,
BabelExp_486 is __CIL_TMP51,
babelPtrR(__CIL_TMP52, BabelExp_486, 8),
BabelExp_487 is __CIL_AP_I,
babelPtrR(__CIL_TMP53, BabelExp_487, 8),
__CIL_TMP54 is __CIL_TMP52 +8* __CIL_TMP53,
BabelExp_488 is __CIL_TMP46 - __CIL_TMP47,
babel_ptrFW(__CIL_TMP54, BabelExp_488,2),
BabelExp_489 is __CIL_AP_QP,
babelPtrR(__CIL_TMP55, BabelExp_489, 8),
__CIL_TMP56 is __CIL_TMP55,
__CIL_TMP57 is __CIL_TMP56 +1* 40,
__CIL_TMP58 is __CIL_TMP57,
BabelExp_490 is __CIL_TMP58,
babelPtrR(__CIL_TMP59, BabelExp_490, 8),
__CIL_TMP60 is __CIL_TMP59 +8* J,
BabelExp_491 is __CIL_AP_A,
babelPtrR(__CIL_TMP61, BabelExp_491, 8),
__CIL_TMP62 is __CIL_TMP61 +8* KI,
BabelExp_492 is __CIL_TMP62,
babel_ptrFR(__CIL_TMP63, BabelExp_492,2),
BabelExp_493 is __CIL_AP_LABEL,
babelPtrR(__CIL_TMP64, BabelExp_493, 8),
__CIL_TMP65 is __CIL_TMP64 +8* KI,
BabelExp_494 is __CIL_TMP65,
babelPtrR(__CIL_TMP66, BabelExp_494, 8),
BabelExp_495 is KERNEL_TEMP_SSA_1 * __CIL_TMP63,
__CIL_TMP67 is BabelExp_495,
__CIL_TMP68 is __CIL_TMP66,
BabelExp_496 is __CIL_TMP60,
babel_ptrFR(__CIL_TMP69, BabelExp_496,2),
BabelExp_497 is __CIL_TMP67 * __CIL_TMP68,
__CIL_TMP70 is BabelExp_497,
BabelExp_498 is __CIL_AP_QP,
babelPtrR(__CIL_TMP71, BabelExp_498, 8),
__CIL_TMP72 is __CIL_TMP71,
__CIL_TMP73 is __CIL_TMP72 +1* 40,
__CIL_TMP74 is __CIL_TMP73,
BabelExp_499 is __CIL_TMP74,
babelPtrR(__CIL_TMP75, BabelExp_499, 8),
__CIL_TMP76 is __CIL_TMP75 +8* J,
BabelExp_500 is __CIL_TMP69 - __CIL_TMP70,
babel_ptrFW(__CIL_TMP76, BabelExp_500,2),
BabelExp_501 is __CIL_AP_LABEL,
babelPtrR(__CIL_TMP77, BabelExp_501, 8),
__CIL_TMP78 is __CIL_TMP77 +8* KI,
BabelExp_502 is __CIL_TMP78,
babelPtrR(__CIL_TMP79, BabelExp_502, 8),
BabelExp_503 is __CIL_AP_LABEL,
babelPtrR(__CIL_TMP80, BabelExp_503, 8),
__CIL_TMP81 is __CIL_TMP80 +8* KJ_SSA_1,
BabelExp_504 is __CIL_TMP81,
babelPtrR(__CIL_TMP82, BabelExp_504, 8),
__CIL_TMP83 is __CIL_TMP79,
__CIL_TMP84 is __CIL_TMP82,
BabelExp_505 is __CIL_TMP83 * __CIL_TMP84,
__CIL_TMP85 is BabelExp_505,
BabelExp_506 is __CIL_AP_QP,
babelPtrR(__CIL_TMP86, BabelExp_506, 8),
__CIL_TMP87 is __CIL_TMP86,
__CIL_TMP88 is __CIL_TMP87 +1* 32,
__CIL_TMP89 is __CIL_TMP88,
BabelExp_507 is __CIL_AP_VARNUM,
babelPtrR(__CIL_TMP90, BabelExp_507, 8),
BabelExp_508 is __CIL_AP_I,
babelPtrR(__CIL_TMP91, BabelExp_508, 8),
BabelExp_509 is __CIL_TMP90 * __CIL_TMP91,
__CIL_TMP92 is BabelExp_509,
BabelExp_510 is __CIL_TMP89,
babelPtrR(__CIL_TMP93, BabelExp_510, 8),
BabelExp_511 is __CIL_TMP92 + J,
__CIL_TMP94 is BabelExp_511,
__CIL_TMP95 is __CIL_TMP93 +8* __CIL_TMP94,
BabelExp_512 is __CIL_TMP85 * KERNEL_TEMP_SSA_1,
babel_ptrFW(__CIL_TMP95, BabelExp_512,2),
BabelExp_513 is __CIL_AP_LABEL,
babelPtrR(__CIL_TMP96, BabelExp_513, 8),
__CIL_TMP97 is __CIL_TMP96 +8* KI,
BabelExp_514 is __CIL_TMP97,
babelPtrR(__CIL_TMP98, BabelExp_514, 8),
BabelExp_515 is __CIL_AP_LABEL,
babelPtrR(__CIL_TMP99, BabelExp_515, 8),
__CIL_TMP100 is __CIL_TMP99 +8* KJ_SSA_1,
BabelExp_516 is __CIL_TMP100,
babelPtrR(__CIL_TMP101, BabelExp_516, 8),
__CIL_TMP102 is __CIL_TMP98,
__CIL_TMP103 is __CIL_TMP101,
BabelExp_517 is __CIL_TMP102 * __CIL_TMP103,
__CIL_TMP104 is BabelExp_517,
BabelExp_518 is __CIL_AP_QP,
babelPtrR(__CIL_TMP105, BabelExp_518, 8),
__CIL_TMP106 is __CIL_TMP105,
__CIL_TMP107 is __CIL_TMP106 +1* 32,
__CIL_TMP108 is __CIL_TMP107,
BabelExp_519 is __CIL_AP_VARNUM,
babelPtrR(__CIL_TMP109, BabelExp_519, 8),
BabelExp_520 is __CIL_TMP109 * J,
__CIL_TMP110 is BabelExp_520,
BabelExp_521 is __CIL_AP_I,
babelPtrR(__CIL_TMP111, BabelExp_521, 8),
BabelExp_522 is __CIL_TMP108,
babelPtrR(__CIL_TMP112, BabelExp_522, 8),
BabelExp_523 is __CIL_TMP110 + __CIL_TMP111,
__CIL_TMP113 is BabelExp_523,
__CIL_TMP114 is __CIL_TMP112 +8* __CIL_TMP113,
BabelExp_524 is __CIL_TMP104 * KERNEL_TEMP_SSA_1,
babel_ptrFW(__CIL_TMP114, BabelExp_524,2),
BabelExp_525 is J + 1,
J_SSA_1 is BabelExp_525,
compute_matrices_for_optimization_cil_lr_3_cil_lr_1(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_DOCS, __CIL_AP_KERNEL_PARM, __CIL_AP_I, __CIL_AP_LABEL, __CIL_AP_KEY, __CIL_AP_A, __CIL_AP_VARNUM, __CIL_AP_QP, KI, J_SSA_1, VOID),true
; true). 

 :- foreign(babel__implicit_write_alphas_cil_lr_1c_116(+integer, +integer, +float)).

write_alphas_cil_lr_1(__CIL_AP_VERBOSITY, __CIL_AP_ALPHAFL, A, LABEL, TOTDOC, I, VOID) :- 


 (I < TOTDOC ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
BabelExp_526 is __CIL_AP_ALPHAFL,
babelPtrR(__CIL_TMP9, BabelExp_526, 8),
__CIL_TMP10 is A +8* I,
__CIL_TMP11 is LABEL +8* I,
BabelExp_527 is __CIL_TMP11,
babelPtrR(__CIL_TMP12, BabelExp_527, 8),
BabelExp_528 is __CIL_TMP10,
babel_ptrFR(__CIL_TMP13, BabelExp_528,2),
__CIL_TMP14 is __CIL_TMP12,
BabelExp_529 is __CIL_TMP13 * __CIL_TMP14,
__CIL_TMP15 is BabelExp_529,
babel__implicit_write_alphas_cil_lr_1c_116(__CIL_TMP9, '%.18G\\N', __CIL_TMP15),
BabelExp_530 is I + 1,
I_SSA_1 is BabelExp_530,
write_alphas_cil_lr_1(__CIL_AP_VERBOSITY, __CIL_AP_ALPHAFL, A, LABEL, TOTDOC, I_SSA_1, VOID),true
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

 :- foreign(babel__implicit_estimate_r_delta_cil_lr_1c_127(+integer, +integer, +integer,  -float)).
:- foreign(babel__implicit_estimate_r_delta_cil_lr_1c_128(+integer, +integer, +integer,  -float)).
:- foreign(babel__implicit_estimate_r_delta_cil_lr_1c_129(+integer, +integer, +integer,  -float)).
:- foreign(babel__implicit_estimate_r_delta_cil_lr_1c_130(+float,  -float)).

estimate_r_delta_cil_lr_1(__CIL_AP_MAXXLEN, __CIL_AP_NULLDOC, DOCS, TOTDOC, KERNEL_PARM, I, VOID) :- 


 (I < TOTDOC ->
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ,
__CIL_TMP18 is DOCS +8* I,
__CIL_TMP19 is DOCS +8* I,
BabelExp_550 is __CIL_TMP18,
babelPtrR(__CIL_TMP20, BabelExp_550, 8),
BabelExp_551 is __CIL_TMP19,
babelPtrR(__CIL_TMP21, BabelExp_551, 8),
babel__implicit_estimate_r_delta_cil_lr_1c_127(KERNEL_PARM, __CIL_TMP20, __CIL_TMP21 , TMP___0_SSA_1),
__CIL_TMP22 is DOCS +8* I,
BabelExp_552 is __CIL_TMP22,
babelPtrR(__CIL_TMP23, BabelExp_552, 8),
BabelExp_553 is __CIL_AP_NULLDOC,
babelPtrR(__CIL_TMP24, BabelExp_553, 8),
babel__implicit_estimate_r_delta_cil_lr_1c_128(KERNEL_PARM, __CIL_TMP23, __CIL_TMP24 , TMP___1_SSA_1),
BabelExp_554 is __CIL_AP_NULLDOC,
babelPtrR(__CIL_TMP25, BabelExp_554, 8),
BabelExp_555 is __CIL_AP_NULLDOC,
babelPtrR(__CIL_TMP26, BabelExp_555, 8),
babel__implicit_estimate_r_delta_cil_lr_1c_129(KERNEL_PARM, __CIL_TMP25, __CIL_TMP26 , TMP___2_SSA_1),
__CIL_TMP27 is 2.0 * TMP___1_SSA_1,
BabelExp_557 is TMP___0_SSA_1 - __CIL_TMP27,
__CIL_TMP28 is BabelExp_557,
BabelExp_558 is __CIL_TMP28 + TMP___2_SSA_1,
__CIL_TMP29 is BabelExp_558,
babel__implicit_estimate_r_delta_cil_lr_1c_130(__CIL_TMP29 , XLEN_SSA_1),
BabelExp_559 is __CIL_AP_MAXXLEN,
babel_ptrFR(__CIL_TMP30, BabelExp_559,2),

(XLEN_SSA_1 > __CIL_TMP30 ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ,
BabelExp_560 is XLEN_SSA_1,
babel_ptrFW(__CIL_AP_MAXXLEN, BabelExp_560,2)
; true),
BabelExp_561 is I + 1,
I_SSA_1 is BabelExp_561,
estimate_r_delta_cil_lr_1(__CIL_AP_MAXXLEN, __CIL_AP_NULLDOC, DOCS, TOTDOC, KERNEL_PARM, I_SSA_1, VOID),true
; true).

 :- foreign(babel__implicit_distribute_alpha_t_greedily_cil_lr_1c_133(+integer, +integer, +integer,  -float)).

distribute_alpha_t_greedily_cil_lr_1(__CIL_AP_SV2DNUM, __CIL_AP_SVNUM, __CIL_AP_DOCS, __CIL_AP_DOCNUM, __CIL_AP_KERNEL_PARM, __CIL_AP_LEARN_PARM, __CIL_AP_THRESH, __CIL_AP_CACHE, __CIL_AP_TROW, K, VOID) :- 


 BabelExp_563 is __CIL_AP_SVNUM,
babelPtrR(__CIL_TMP15, BabelExp_563, 8),

(K < __CIL_TMP15 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ,
BabelExp_564 is __CIL_AP_DOCS,
babelPtrR(__CIL_TMP16, BabelExp_564, 8),
BabelExp_565 is __CIL_AP_DOCNUM,
babelPtrR(__CIL_TMP17, BabelExp_565, 8),
__CIL_TMP18 is __CIL_TMP16 +8* __CIL_TMP17,
BabelExp_566 is __CIL_AP_SV2DNUM,
babelPtrR(__CIL_TMP19, BabelExp_566, 8),
__CIL_TMP20 is __CIL_TMP19 +8* K,
BabelExp_567 is __CIL_AP_DOCS,
babelPtrR(__CIL_TMP21, BabelExp_567, 8),
BabelExp_568 is __CIL_TMP20,
babelPtrR(__CIL_TMP22, BabelExp_568, 8),
__CIL_TMP23 is __CIL_TMP21 +8* __CIL_TMP22,
BabelExp_569 is __CIL_AP_KERNEL_PARM,
babelPtrR(__CIL_TMP24, BabelExp_569, 8),
BabelExp_570 is __CIL_TMP18,
babelPtrR(__CIL_TMP25, BabelExp_570, 8),
BabelExp_571 is __CIL_TMP23,
babelPtrR(__CIL_TMP26, BabelExp_571, 8),
babel__implicit_distribute_alpha_t_greedily_cil_lr_1c_133(__CIL_TMP24, __CIL_TMP25, __CIL_TMP26 , TMP___1_SSA_1),
BabelExp_572 is __CIL_AP_TROW,
babelPtrR(__CIL_TMP27, BabelExp_572, 8),
__CIL_TMP28 is __CIL_TMP27 +4* K,
BabelExp_573 is TMP___1_SSA_1,
babel_ptrFW(__CIL_TMP28, BabelExp_573,1),
BabelExp_574 is K + 1,
K_SSA_1 is BabelExp_574,
distribute_alpha_t_greedily_cil_lr_1(__CIL_AP_SV2DNUM, __CIL_AP_SVNUM, __CIL_AP_DOCS, __CIL_AP_DOCNUM, __CIL_AP_KERNEL_PARM, __CIL_AP_LEARN_PARM, __CIL_AP_THRESH, __CIL_AP_CACHE, __CIL_AP_TROW, K_SSA_1, VOID),true
; true). 

 
kernel_cache_free_lru_cil_lr_1(__CIL_AP_KERNEL_CACHE, __CIL_AP_LEAST_ELEM, K, LEAST_TIME, VOID) :- 


 BabelExp_575 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP10, BabelExp_575, 8),
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_TMP11 +1* 64,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_576 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_576, 8),

(K < __CIL_TMP14 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
BabelExp_577 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP15, BabelExp_577, 8),
__CIL_TMP16 is __CIL_TMP15,
__CIL_TMP17 is __CIL_TMP16 +1* 16,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_578 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_578, 8),
__CIL_TMP20 is __CIL_TMP19 +8* K,
BabelExp_579 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_579, 8),

(__CIL_TMP21 \= -1 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
BabelExp_580 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP22, BabelExp_580, 8),
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is __CIL_TMP23 +1* 40,
__CIL_TMP25 is __CIL_TMP24,
BabelExp_581 is __CIL_TMP25,
babelPtrR(__CIL_TMP26, BabelExp_581, 8),
__CIL_TMP27 is __CIL_TMP26 +8* K,
BabelExp_582 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_582, 8),

(__CIL_TMP28 < LEAST_TIME ,
__CIL_TMP9 is 1
; __CIL_TMP9 is 0),

(__CIL_TMP9 \= 0 ,
BabelExp_583 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP29, BabelExp_583, 8),
__CIL_TMP30 is __CIL_TMP29,
__CIL_TMP31 is __CIL_TMP30 +1* 40,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_584 is __CIL_TMP32,
babelPtrR(__CIL_TMP33, BabelExp_584, 8),
__CIL_TMP34 is __CIL_TMP33 +8* K,
BabelExp_585 is __CIL_TMP34,
babelPtrR(LEAST_TIME_SSA_1, BabelExp_585, 8),
BabelExp_586 is K,
babel_ptrE(__CIL_AP_LEAST_ELEM, BabelExp_586, 8)
; LEAST_TIME_SSA_1 is LEAST_TIME)
; LEAST_TIME_SSA_1 is LEAST_TIME),
BabelExp_587 is K + 1,
K_SSA_1 is BabelExp_587,
kernel_cache_free_lru_cil_lr_1(__CIL_AP_KERNEL_CACHE, __CIL_AP_LEAST_ELEM, K_SSA_1, LEAST_TIME_SSA_1, VOID),true
; true).

 
kernel_cache_malloc_cil_lr_1(__CIL_AP___CIL_RET4, KERNEL_CACHE, I, BABEL_RET) :- 


 __CIL_TMP9 is KERNEL_CACHE +1* 64,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_589 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_589, 8),

(I < __CIL_TMP11 ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
__CIL_TMP12 is KERNEL_CACHE +1* 48,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_590 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_590, 8),
__CIL_TMP15 is __CIL_TMP14 +8* I,
BabelExp_591 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_591, 8),

(__CIL_TMP16 =:= 0 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
__CIL_TMP17 is KERNEL_CACHE +1* 48,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_592 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_592, 8),
__CIL_TMP20 is __CIL_TMP19 +8* I,
BabelExp_593 is 1,
babel_ptrE(__CIL_TMP20, BabelExp_593, 8),
__CIL_TMP21 is KERNEL_CACHE +1* 56,
__CIL_TMP22 is __CIL_TMP21,
BabelExp_594 is __CIL_TMP22,
babelPtrR(__CIL_TMP23, BabelExp_594, 8),
__CIL_TMP24 is KERNEL_CACHE +1* 56,
__CIL_TMP25 is __CIL_TMP24,
BabelExp_595 is __CIL_TMP23 + 1,
babel_ptrE(__CIL_TMP25, BabelExp_595, 8),
BabelExp_596 is I,
babel_ptrE(__CIL_AP___CIL_RET4, BabelExp_596, 8),BABEL_RET is 1, true
; BabelExp_597 is I + 1,
I_SSA_1 is BabelExp_597,
kernel_cache_malloc_cil_lr_1(__CIL_AP___CIL_RET4, KERNEL_CACHE, I_SSA_1 , RETFLAG4_SSA_1),BABEL_RET is RETFLAG4_SSA_1, true)
; BABEL_RET is 0, true). 

 
kernel_cache_reset_lru_cil_lr_1(__CIL_AP_KERNEL_CACHE, __CIL_AP_MAXLRU, K, VOID) :- 


 BabelExp_598 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP7, BabelExp_598, 8),
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is __CIL_TMP8 +1* 64,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_599 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_599, 8),

(K < __CIL_TMP11 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ,
BabelExp_600 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP12, BabelExp_600, 8),
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13 +1* 40,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_601 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_601, 8),
__CIL_TMP17 is __CIL_TMP16 +8* K,
BabelExp_602 is __CIL_AP_MAXLRU,
babelPtrR(__CIL_TMP18, BabelExp_602, 8),
BabelExp_603 is __CIL_TMP17,
babelPtrR(__CIL_TMP19, BabelExp_603, 8),

(__CIL_TMP18 < __CIL_TMP19 ,
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ,
BabelExp_604 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP20, BabelExp_604, 8),
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is __CIL_TMP21 +1* 40,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_605 is __CIL_TMP23,
babelPtrR(__CIL_TMP24, BabelExp_605, 8),
__CIL_TMP25 is __CIL_TMP24 +8* K,
babelPtrR(BabelExp_606, __CIL_TMP25, 8),
babel_ptrE(__CIL_AP_MAXLRU, BabelExp_606, 8)
; true),
BabelExp_607 is K + 1,
K_SSA_1 is BabelExp_607,
kernel_cache_reset_lru_cil_lr_1(__CIL_AP_KERNEL_CACHE, __CIL_AP_MAXLRU, K_SSA_1, VOID),true
; true).

 
kernel_cache_reset_lru_cil_lr_2(KERNEL_CACHE, MAXLRU, K, VOID) :- 


 __CIL_TMP6 is KERNEL_CACHE +1* 64,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_609 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_609, 8),

(K < __CIL_TMP8 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ,
__CIL_TMP9 is KERNEL_CACHE +1* 40,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_610 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_610, 8),
__CIL_TMP12 is __CIL_TMP11 +8* K,
BabelExp_611 is __CIL_TMP12,
babelPtrR(__CIL_TMP13, BabelExp_611, 8),
__CIL_TMP14 is KERNEL_CACHE +1* 40,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_612 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_612, 8),
__CIL_TMP17 is __CIL_TMP16 +8* K,
BabelExp_613 is __CIL_TMP13 - MAXLRU,
babel_ptrE(__CIL_TMP17, BabelExp_613, 8),
BabelExp_614 is K + 1,
K_SSA_1 is BabelExp_614,
kernel_cache_reset_lru_cil_lr_2(KERNEL_CACHE, MAXLRU, K_SSA_1, VOID),true
; true). 

 
kernel_cache_init_cil_lr_1(__CIL_AP_TOTDOC, __CIL_AP_KERNEL_CACHE, I, VOID) :- 


 BabelExp_615 is __CIL_AP_TOTDOC,
babelPtrR(__CIL_TMP6, BabelExp_615, 8),

(I < __CIL_TMP6 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ,
BabelExp_616 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP7, BabelExp_616, 8),
__CIL_TMP8 is __CIL_TMP7,
BabelExp_617 is __CIL_TMP8,
babelPtrR(__CIL_TMP9, BabelExp_617, 8),
__CIL_TMP10 is __CIL_TMP9 +8* I,
BabelExp_618 is -1,
babel_ptrE(__CIL_TMP10, BabelExp_618, 8),
BabelExp_619 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP11, BabelExp_619, 8),
__CIL_TMP12 is __CIL_TMP11,
__CIL_TMP13 is __CIL_TMP12 +1* 40,
__CIL_TMP14 is __CIL_TMP13,
BabelExp_620 is __CIL_TMP14,
babelPtrR(__CIL_TMP15, BabelExp_620, 8),
__CIL_TMP16 is __CIL_TMP15 +8* I,
BabelExp_621 is 0,
babel_ptrE(__CIL_TMP16, BabelExp_621, 8),
BabelExp_622 is I + 1,
I_SSA_1 is BabelExp_622,
kernel_cache_init_cil_lr_1(__CIL_AP_TOTDOC, __CIL_AP_KERNEL_CACHE, I_SSA_1, VOID),true
; true). 

 
kernel_cache_init_cil_lr_2(__CIL_AP_TOTDOC, __CIL_AP_KERNEL_CACHE, I, VOID) :- 


 BabelExp_623 is __CIL_AP_TOTDOC,
babelPtrR(__CIL_TMP6, BabelExp_623, 8),

(I < __CIL_TMP6 ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ,
BabelExp_624 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP7, BabelExp_624, 8),
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is __CIL_TMP8 +1* 48,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_625 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_625, 8),
__CIL_TMP12 is __CIL_TMP11 +8* I,
BabelExp_626 is 0,
babel_ptrE(__CIL_TMP12, BabelExp_626, 8),
BabelExp_627 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP13, BabelExp_627, 8),
__CIL_TMP14 is __CIL_TMP13,
__CIL_TMP15 is __CIL_TMP14 +1* 16,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_628 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_628, 8),
__CIL_TMP18 is __CIL_TMP17 +8* I,
BabelExp_629 is -1,
babel_ptrE(__CIL_TMP18, BabelExp_629, 8),
BabelExp_630 is I + 1,
I_SSA_1 is BabelExp_630,
kernel_cache_init_cil_lr_2(__CIL_AP_TOTDOC, __CIL_AP_KERNEL_CACHE, I_SSA_1, VOID),true
; true). 

 
kernel_cache_init_cil_lr_3(__CIL_AP_KERNEL_CACHE, TOTDOC, I, VOID) :- 


 (I < TOTDOC ,
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ,
BabelExp_631 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP6, BabelExp_631, 8),
__CIL_TMP7 is __CIL_TMP6,
__CIL_TMP8 is __CIL_TMP7 +1* 24,
__CIL_TMP9 is __CIL_TMP8,
BabelExp_632 is __CIL_TMP9,
babelPtrR(__CIL_TMP10, BabelExp_632, 8),
__CIL_TMP11 is __CIL_TMP10 +8* I,
BabelExp_633 is I,
babel_ptrE(__CIL_TMP11, BabelExp_633, 8),
BabelExp_634 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP12, BabelExp_634, 8),
__CIL_TMP13 is __CIL_TMP12,
__CIL_TMP14 is __CIL_TMP13 +1* 32,
__CIL_TMP15 is __CIL_TMP14,
BabelExp_635 is __CIL_TMP15,
babelPtrR(__CIL_TMP16, BabelExp_635, 8),
__CIL_TMP17 is __CIL_TMP16 +8* I,
BabelExp_636 is I,
babel_ptrE(__CIL_TMP17, BabelExp_636, 8),
BabelExp_637 is I + 1,
I_SSA_1 is BabelExp_637,
kernel_cache_init_cil_lr_3(__CIL_AP_KERNEL_CACHE, TOTDOC, I_SSA_1, VOID),true
; true). 

 
kernel_cache_shrink_cil_lr_1(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_KERNEL_CACHE, __CIL_AP_TOTDOC, __CIL_AP_NUMSHRINK, __CIL_AP_AFTER, __CIL_AP_FROM, __CIL_AP_TO, __CIL_AP_KEEP, J, VOID) :- 


 BabelExp_638 is __CIL_AP_TOTDOC,
babelPtrR(__CIL_TMP13, BabelExp_638, 8),

(J < __CIL_TMP13 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ,
BabelExp_639 is __CIL_AP_KEEP,
babelPtrR(__CIL_TMP14, BabelExp_639, 8),
__CIL_TMP15 is __CIL_TMP14 +8* J,
BabelExp_640 is 1,
babel_ptrE(__CIL_TMP15, BabelExp_640, 8),
BabelExp_641 is J + 1,
J_SSA_1 is BabelExp_641,
kernel_cache_shrink_cil_lr_1(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_KERNEL_CACHE, __CIL_AP_TOTDOC, __CIL_AP_NUMSHRINK, __CIL_AP_AFTER, __CIL_AP_FROM, __CIL_AP_TO, __CIL_AP_KEEP, J_SSA_1, VOID),true
; true). 

 
kernel_cache_shrink_cil_lr_2(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_KERNEL_CACHE, __CIL_AP_TOTDOC, __CIL_AP_FROM, __CIL_AP_TO, __CIL_AP_KEEP, NUMSHRINK, AFTER, JJ, SCOUNT, VOID) :- 


 BabelExp_642 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP19, BabelExp_642, 8),
__CIL_TMP20 is __CIL_TMP19,
__CIL_TMP21 is __CIL_TMP20 +1* 80,
__CIL_TMP22 is __CIL_TMP21,
BabelExp_643 is __CIL_TMP22,
babelPtrR(__CIL_TMP23, BabelExp_643, 8),

(JJ < __CIL_TMP23 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ,
(SCOUNT < NUMSHRINK ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ,
BabelExp_644 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP24, BabelExp_644, 8),
__CIL_TMP25 is __CIL_TMP24,
__CIL_TMP26 is __CIL_TMP25 +1* 24,
__CIL_TMP27 is __CIL_TMP26,
BabelExp_645 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_645, 8),
__CIL_TMP29 is __CIL_TMP28 +8* JJ,
BabelExp_646 is __CIL_TMP29,
babelPtrR(J_SSA_1, BabelExp_646, 8),
__CIL_TMP30 is AFTER +8* J_SSA_1,
BabelExp_647 is __CIL_TMP30,
babelPtrR(__CIL_TMP31, BabelExp_647, 8),

(__CIL_TMP31 =:= 0 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ,
BabelExp_648 is SCOUNT + 1,
SCOUNT_SSA_1 is BabelExp_648,
BabelExp_649 is __CIL_AP_KEEP,
babelPtrR(__CIL_TMP32, BabelExp_649, 8),
__CIL_TMP33 is __CIL_TMP32 +8* J_SSA_1,
BabelExp_650 is 0,
babel_ptrE(__CIL_TMP33, BabelExp_650, 8)
; SCOUNT_SSA_1 is SCOUNT),
BabelExp_651 is JJ + 1,
JJ_SSA_1 is BabelExp_651,
kernel_cache_shrink_cil_lr_2(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_KERNEL_CACHE, __CIL_AP_TOTDOC, __CIL_AP_FROM, __CIL_AP_TO, __CIL_AP_KEEP, NUMSHRINK, AFTER, JJ_SSA_1, SCOUNT_SSA_1, VOID),true
; true)
; true).

 :- foreign(babel__implicit_kernel_cache_shrink_cil_lr_3c_147(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_kernel_cache_shrink_cil_lr_3c_148(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).

kernel_cache_shrink_cil_lr_3(__CIL_PP_I, __CIL_PP_FROM, __CIL_PP_TO, __CIL_FP_I, __CIL_FP_FROM, __CIL_FP_TO, __CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_KERNEL_CACHE, __CIL_AP_TOTDOC, __CIL_AP_KEEP, I, FROM, TO, VOID) :- 


 BabelExp_653 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP23, BabelExp_653, 8),
__CIL_TMP24 is __CIL_TMP23,
__CIL_TMP25 is __CIL_TMP24 +1* 64,
__CIL_TMP26 is __CIL_TMP25,
BabelExp_654 is __CIL_TMP26,
babelPtrR(__CIL_TMP27, BabelExp_654, 8),

(I < __CIL_TMP27 ,
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ,
JJ_SSA_1 is 0,
BabelExp_655 is I,
babel_ptrE(__CIL_FP_I, BabelExp_655, 8),
BabelExp_656 is FROM,
babel_ptrE(__CIL_FP_FROM, BabelExp_656, 8),
BabelExp_657 is TO,
babel_ptrE(__CIL_FP_TO, BabelExp_657, 8),
babel__implicit_kernel_cache_shrink_cil_lr_3c_147(__CIL_PP_I, __CIL_PP_FROM, __CIL_PP_TO, __CIL_AP_KERNEL_CACHE, __CIL_AP_KEEP, JJ_SSA_1),
BabelExp_658 is __CIL_FP_I,
babelPtrR(I_SSA_1, BabelExp_658, 8),
BabelExp_659 is __CIL_FP_FROM,
babelPtrR(FROM_SSA_1, BabelExp_659, 8),
BabelExp_660 is __CIL_FP_TO,
babelPtrR(TO_SSA_1, BabelExp_660, 8),
BabelExp_661 is I_SSA_1 + 1,
I_SSA_2 is BabelExp_661,
babel__implicit_kernel_cache_shrink_cil_lr_3c_148(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_KERNEL_CACHE, __CIL_AP_TOTDOC, __CIL_AP_KEEP, I_SSA_2, FROM_SSA_1, TO_SSA_1),true
; true). 

 
kernel_cache_shrink_cil_lr_4(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_KERNEL_CACHE, __CIL_AP_TOTDOC, __CIL_AP_KEEP, J, VOID) :- 


 BabelExp_662 is __CIL_AP_TOTDOC,
babelPtrR(__CIL_TMP11, BabelExp_662, 8),

(J < __CIL_TMP11 ,
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ,
BabelExp_663 is __CIL_AP_KEEP,
babelPtrR(__CIL_TMP12, BabelExp_663, 8),
__CIL_TMP13 is __CIL_TMP12 +8* J,
BabelExp_664 is __CIL_TMP13,
babelPtrR(__CIL_TMP9, BabelExp_664, 8),
(__CIL_TMP9 \= 0 ,
BabelExp_665 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP14, BabelExp_665, 8),
__CIL_TMP15 is __CIL_TMP14,
__CIL_TMP16 is __CIL_TMP15 +1* 32,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_666 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_666, 8),
__CIL_TMP19 is __CIL_TMP18 +8* J,
BabelExp_667 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_667, 8),

(__CIL_TMP20 \= -1 ,
__CIL_TMP10 is 1
; __CIL_TMP10 is 0),

(__CIL_TMP10 \= 0 ,
BabelExp_668 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP21, BabelExp_668, 8),
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22 +1* 24,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_669 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP25, BabelExp_669, 8),
__CIL_TMP26 is __CIL_TMP25,
__CIL_TMP27 is __CIL_TMP26 +1* 80,
__CIL_TMP28 is __CIL_TMP27,
BabelExp_670 is __CIL_TMP24,
babelPtrR(__CIL_TMP29, BabelExp_670, 8),
BabelExp_671 is __CIL_TMP28,
babelPtrR(__CIL_TMP30, BabelExp_671, 8),
__CIL_TMP31 is __CIL_TMP29 +8* __CIL_TMP30,
BabelExp_672 is J,
babel_ptrE(__CIL_TMP31, BabelExp_672, 8),
BabelExp_673 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP32, BabelExp_673, 8),
__CIL_TMP33 is __CIL_TMP32,
__CIL_TMP34 is __CIL_TMP33 +1* 80,
__CIL_TMP35 is __CIL_TMP34,
BabelExp_674 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP36, BabelExp_674, 8),
__CIL_TMP37 is __CIL_TMP36,
__CIL_TMP38 is __CIL_TMP37 +1* 32,
__CIL_TMP39 is __CIL_TMP38,
BabelExp_675 is __CIL_TMP39,
babelPtrR(__CIL_TMP40, BabelExp_675, 8),
__CIL_TMP41 is __CIL_TMP40 +8* J,
babelPtrR(BabelExp_676, __CIL_TMP35, 8),
babel_ptrE(__CIL_TMP41, BabelExp_676, 8),
BabelExp_677 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP42, BabelExp_677, 8),
__CIL_TMP43 is __CIL_TMP42,
__CIL_TMP44 is __CIL_TMP43 +1* 80,
__CIL_TMP45 is __CIL_TMP44,
BabelExp_678 is __CIL_TMP45,
babelPtrR(__CIL_TMP46, BabelExp_678, 8),
BabelExp_679 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP47, BabelExp_679, 8),
__CIL_TMP48 is __CIL_TMP47,
__CIL_TMP49 is __CIL_TMP48 +1* 80,
__CIL_TMP50 is __CIL_TMP49,
BabelExp_680 is __CIL_TMP46 + 1,
babel_ptrE(__CIL_TMP50, BabelExp_680, 8)
; BabelExp_681 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP51, BabelExp_681, 8),
__CIL_TMP52 is __CIL_TMP51,
__CIL_TMP53 is __CIL_TMP52 +1* 32,
__CIL_TMP54 is __CIL_TMP53,
BabelExp_682 is __CIL_TMP54,
babelPtrR(__CIL_TMP55, BabelExp_682, 8),
__CIL_TMP56 is __CIL_TMP55 +8* J,
BabelExp_683 is -1,
babel_ptrE(__CIL_TMP56, BabelExp_683, 8))
; BabelExp_684 is __CIL_AP_KERNEL_CACHE,
babelPtrR(__CIL_TMP57, BabelExp_684, 8),
__CIL_TMP58 is __CIL_TMP57,
__CIL_TMP59 is __CIL_TMP58 +1* 32,
__CIL_TMP60 is __CIL_TMP59,
BabelExp_685 is __CIL_TMP60,
babelPtrR(__CIL_TMP61, BabelExp_685, 8),
__CIL_TMP62 is __CIL_TMP61 +8* J,
BabelExp_686 is -1,
babel_ptrE(__CIL_TMP62, BabelExp_686, 8)),
BabelExp_687 is J + 1,
J_SSA_1 is BabelExp_687,
kernel_cache_shrink_cil_lr_4(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_KERNEL_CACHE, __CIL_AP_TOTDOC, __CIL_AP_KEEP, J_SSA_1, VOID),true
; true).

 :- foreign(babel__implicit_cache_kernel_row_cil_lr_1c_151(+integer, +integer, +integer,  -float)).
:- foreign(babel__implicit_cache_kernel_row_cil_lr_1c_152(+integer, +integer, +integer,  -float)).
:- foreign(babel__implicit_cache_kernel_row_cil_lr_1c_153(+integer, +integer, +integer,  -float)).

cache_kernel_row_cil_lr_1(KERNEL_CACHE, DOCS, M, KERNEL_PARM, EX, J, L, CACHE, VOID) :- 


 __CIL_TMP18 is KERNEL_CACHE +1* 80,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_689 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_689, 8),

(J < __CIL_TMP20 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ,
__CIL_TMP21 is KERNEL_CACHE +1* 24,
__CIL_TMP22 is __CIL_TMP21,
BabelExp_690 is __CIL_TMP22,
babelPtrR(__CIL_TMP23, BabelExp_690, 8),
__CIL_TMP24 is __CIL_TMP23 +8* J,
BabelExp_691 is __CIL_TMP24,
babelPtrR(K_SSA_1, BabelExp_691, 8),
MEM_48 is KERNEL_CACHE,
BabelExp_692 is MEM_48,
babelPtrR(__CIL_TMP25, BabelExp_692, 8),
__CIL_TMP26 is __CIL_TMP25 +8* K_SSA_1,
BabelExp_693 is __CIL_TMP26,
babelPtrR(__CIL_TMP27, BabelExp_693, 8),

(__CIL_TMP27 \= -1 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ,
(L \= -1 ,
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ,
(K_SSA_1 \= M ,
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ,
__CIL_TMP28 is KERNEL_CACHE +1* 8,
__CIL_TMP29 is __CIL_TMP28,
__CIL_TMP30 is KERNEL_CACHE +1* 80,
__CIL_TMP31 is __CIL_TMP30,
MEM_49 is KERNEL_CACHE,
BabelExp_694 is MEM_49,
babelPtrR(__CIL_TMP32, BabelExp_694, 8),
__CIL_TMP33 is __CIL_TMP32 +8* K_SSA_1,
BabelExp_695 is __CIL_TMP31,
babelPtrR(__CIL_TMP34, BabelExp_695, 8),
BabelExp_696 is __CIL_TMP33,
babelPtrR(__CIL_TMP35, BabelExp_696, 8),
BabelExp_697 is __CIL_TMP34 * __CIL_TMP35,
__CIL_TMP36 is BabelExp_697,
BabelExp_698 is __CIL_TMP29,
babelPtrR(__CIL_TMP37, BabelExp_698, 8),
BabelExp_699 is __CIL_TMP36 + L,
__CIL_TMP38 is BabelExp_699,
__CIL_TMP39 is __CIL_TMP37 +4* __CIL_TMP38,
__CIL_TMP40 is CACHE +4* J,
babel_ptrFR(BabelExp_700, __CIL_TMP39,1),
babel_ptrFW(__CIL_TMP40, BabelExp_700,1)
; __CIL_TMP41 is DOCS +8* K_SSA_1,
BabelExp_701 is __CIL_TMP41,
babelPtrR(__CIL_TMP42, BabelExp_701, 8),
babel__implicit_cache_kernel_row_cil_lr_1c_151(KERNEL_PARM, EX, __CIL_TMP42 , TMP_SSA_1),
__CIL_TMP43 is CACHE +4* J,
BabelExp_702 is TMP_SSA_1,
babel_ptrFW(__CIL_TMP43, BabelExp_702,1))
; __CIL_TMP44 is DOCS +8* K_SSA_1,
BabelExp_703 is __CIL_TMP44,
babelPtrR(__CIL_TMP45, BabelExp_703, 8),
babel__implicit_cache_kernel_row_cil_lr_1c_152(KERNEL_PARM, EX, __CIL_TMP45 , TMP_SSA_1),
__CIL_TMP46 is CACHE +4* J,
BabelExp_704 is TMP_SSA_1,
babel_ptrFW(__CIL_TMP46, BabelExp_704,1))
; __CIL_TMP47 is DOCS +8* K_SSA_1,
BabelExp_705 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_705, 8),
babel__implicit_cache_kernel_row_cil_lr_1c_153(KERNEL_PARM, EX, __CIL_TMP48 , TMP_SSA_1),
__CIL_TMP49 is CACHE +4* J,
BabelExp_706 is TMP_SSA_1,
babel_ptrFW(__CIL_TMP49, BabelExp_706,1)),
BabelExp_707 is J + 1,
J_SSA_1 is BabelExp_707,
cache_kernel_row_cil_lr_1(KERNEL_CACHE, DOCS, M, KERNEL_PARM, EX, J_SSA_1, L, CACHE, VOID),true
; true).

 :- foreign(babel__implicit_get_kernel_row_cil_lr_1c_156(+integer, +integer, +integer,  -float)).

get_kernel_row_cil_lr_1(KERNEL_CACHE, DOCS, ACTIVE2DNUM, BUFFER, KERNEL_PARM, I, START, EX, VOID) :- 


 __CIL_TMP16 is ACTIVE2DNUM +8* I,
BabelExp_709 is __CIL_TMP16,
babelPtrR(J_SSA_1, BabelExp_709, 8),

(J_SSA_1 >= 0 ,
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ,
__CIL_TMP17 is KERNEL_CACHE +1* 32,
__CIL_TMP18 is __CIL_TMP17,
BabelExp_710 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_710, 8),
__CIL_TMP20 is __CIL_TMP19 +8* J_SSA_1,
BabelExp_711 is __CIL_TMP20,
babelPtrR(__CIL_TMP21, BabelExp_711, 8),

(__CIL_TMP21 >= 0 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ,
__CIL_TMP22 is KERNEL_CACHE +1* 8,
__CIL_TMP23 is __CIL_TMP22,
__CIL_TMP24 is KERNEL_CACHE +1* 32,
__CIL_TMP25 is __CIL_TMP24,
BabelExp_712 is __CIL_TMP25,
babelPtrR(__CIL_TMP26, BabelExp_712, 8),
__CIL_TMP27 is __CIL_TMP26 +8* J_SSA_1,
BabelExp_713 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_713, 8),
BabelExp_714 is __CIL_TMP23,
babelPtrR(__CIL_TMP29, BabelExp_714, 8),
BabelExp_715 is START + __CIL_TMP28,
__CIL_TMP30 is BabelExp_715,
__CIL_TMP31 is __CIL_TMP29 +4* __CIL_TMP30,
__CIL_TMP32 is BUFFER +4* J_SSA_1,
babel_ptrFR(BabelExp_716, __CIL_TMP31,1),
babel_ptrFW(__CIL_TMP32, BabelExp_716,1)
; __CIL_TMP33 is DOCS +8* J_SSA_1,
BabelExp_717 is __CIL_TMP33,
babelPtrR(__CIL_TMP34, BabelExp_717, 8),
babel__implicit_get_kernel_row_cil_lr_1c_156(KERNEL_PARM, EX, __CIL_TMP34 , TMP_SSA_1),
__CIL_TMP35 is BUFFER +4* J_SSA_1,
BabelExp_718 is TMP_SSA_1,
babel_ptrFW(__CIL_TMP35, BabelExp_718,1)),
BabelExp_719 is I + 1,
I_SSA_1 is BabelExp_719,
get_kernel_row_cil_lr_1(KERNEL_CACHE, DOCS, ACTIVE2DNUM, BUFFER, KERNEL_PARM, I_SSA_1, START, EX, VOID),true
; true).

 :- foreign(babel__implicit_get_kernel_row_cil_lr_2c_159(+integer, +integer, +integer,  -float)).

get_kernel_row_cil_lr_2(DOCS, ACTIVE2DNUM, BUFFER, KERNEL_PARM, I, EX, VOID) :- 


 __CIL_TMP13 is ACTIVE2DNUM +8* I,
BabelExp_721 is __CIL_TMP13,
babelPtrR(J_SSA_1, BabelExp_721, 8),

(J_SSA_1 >= 0 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ,
__CIL_TMP14 is DOCS +8* J_SSA_1,
BabelExp_722 is __CIL_TMP14,
babelPtrR(__CIL_TMP15, BabelExp_722, 8),
babel__implicit_get_kernel_row_cil_lr_2c_159(KERNEL_PARM, EX, __CIL_TMP15 , TMP___0_SSA_1),
__CIL_TMP16 is BUFFER +4* J_SSA_1,
BabelExp_723 is TMP___0_SSA_1,
babel_ptrFW(__CIL_TMP16, BabelExp_723,1),
BabelExp_724 is I + 1,
I_SSA_1 is BabelExp_724,
get_kernel_row_cil_lr_2(DOCS, ACTIVE2DNUM, BUFFER, KERNEL_PARM, I_SSA_1, EX, VOID),true
; true). 

 :- foreign(babel__implicit_select_top_n_cil_lr_1c_161(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_select_top_n_cil_lr_1c_162(+integer, +integer, +integer, +integer, +integer)).

select_top_n_cil_lr_1(__CIL_PP_I, __CIL_FP_I, __CIL_AP_SELCRIT, __CIL_AP_RANGE, __CIL_AP_SELECT___0, __CIL_AP_N, I, VOID) :- 


 BabelExp_725 is __CIL_AP_N,
babelPtrR(__CIL_TMP14, BabelExp_725, 8),

(I < __CIL_TMP14 ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ,
BabelExp_726 is __CIL_AP_RANGE,
babelPtrR(__CIL_TMP15, BabelExp_726, 8),

(I < __CIL_TMP15 ,
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ,
J_SSA_1 is I,
BabelExp_727 is I,
babel_ptrE(__CIL_FP_I, BabelExp_727, 8),
babel__implicit_select_top_n_cil_lr_1c_161(__CIL_PP_I, __CIL_AP_SELCRIT, __CIL_AP_SELECT___0, J_SSA_1),
BabelExp_728 is __CIL_FP_I,
babelPtrR(I_SSA_1, BabelExp_728, 8),
BabelExp_729 is I_SSA_1 + 1,
I_SSA_2 is BabelExp_729,
babel__implicit_select_top_n_cil_lr_1c_162(__CIL_AP_SELCRIT, __CIL_AP_RANGE, __CIL_AP_SELECT___0, __CIL_AP_N, I_SSA_2),true
; true)
; true). 

 
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

 
compute_matrices_for_optimization_cil_lr_1(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_DOCS, __CIL_AP_LABEL, __CIL_AP_KEY, __CIL_AP_A, __CIL_AP_LIN, __CIL_AP_C, __CIL_AP_VARNUM, __CIL_AP_LEARN_PARM, __CIL_AP_KERNEL_PARM, __CIL_AP_QP, EXCLUDE_FROM_EQ_CONST, CHOSEN, MODEL, J, VOID) :- 


 MEM_58 is MODEL,
BabelExp_788 is MEM_58,
babelPtrR(__CIL_TMP21, BabelExp_788, 8),

(J < __CIL_TMP21 ,
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ,
__CIL_TMP22 is MODEL +1* 24,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_789 is __CIL_TMP23,
babelPtrR(__CIL_TMP24, BabelExp_789, 8),
__CIL_TMP25 is __CIL_TMP24 +8* J,
BabelExp_790 is __CIL_TMP25,
babelPtrR(__CIL_TMP26, BabelExp_790, 8),
__CIL_TMP27 is __CIL_TMP26,
BabelExp_791 is __CIL_TMP27,
babelPtrR(__CIL_TMP28, BabelExp_791, 8),
__CIL_TMP29 is CHOSEN +8* __CIL_TMP28,
BabelExp_792 is __CIL_TMP29,
babelPtrR(__CIL_TMP30, BabelExp_792, 8),

(__CIL_TMP30 =:= 0 ,
__CIL_TMP19 is 1
; __CIL_TMP19 is 0),

(__CIL_TMP19 \= 0 ,
__CIL_TMP31 is MODEL +1* 24,
__CIL_TMP32 is __CIL_TMP31,
BabelExp_793 is __CIL_TMP32,
babelPtrR(__CIL_TMP33, BabelExp_793, 8),
__CIL_TMP34 is __CIL_TMP33 +8* J,
BabelExp_794 is __CIL_TMP34,
babelPtrR(__CIL_TMP35, BabelExp_794, 8),
__CIL_TMP36 is __CIL_TMP35,
BabelExp_795 is __CIL_TMP36,
babelPtrR(__CIL_TMP37, BabelExp_795, 8),
__CIL_TMP38 is EXCLUDE_FROM_EQ_CONST +8* __CIL_TMP37,
BabelExp_796 is __CIL_TMP38,
babelPtrR(__CIL_TMP39, BabelExp_796, 8),

(__CIL_TMP39 =:= 0 ,
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ,
BabelExp_797 is __CIL_AP_QP,
babelPtrR(__CIL_TMP40, BabelExp_797, 8),
__CIL_TMP41 is __CIL_TMP40,
__CIL_TMP42 is __CIL_TMP41 +1* 24,
__CIL_TMP43 is __CIL_TMP42,
BabelExp_798 is __CIL_TMP43,
babelPtrR(__CIL_TMP44, BabelExp_798, 8),
__CIL_TMP45 is __CIL_TMP44 +8* 0,
__CIL_TMP46 is MODEL +1* 32,
__CIL_TMP47 is __CIL_TMP46,
BabelExp_799 is __CIL_TMP47,
babelPtrR(__CIL_TMP48, BabelExp_799, 8),
__CIL_TMP49 is __CIL_TMP48 +8* J,
BabelExp_800 is __CIL_TMP45,
babel_ptrFR(__CIL_TMP50, BabelExp_800,2),
BabelExp_801 is __CIL_TMP49,
babel_ptrFR(__CIL_TMP51, BabelExp_801,2),
BabelExp_802 is __CIL_AP_QP,
babelPtrR(__CIL_TMP52, BabelExp_802, 8),
__CIL_TMP53 is __CIL_TMP52,
__CIL_TMP54 is __CIL_TMP53 +1* 24,
__CIL_TMP55 is __CIL_TMP54,
BabelExp_803 is __CIL_TMP55,
babelPtrR(__CIL_TMP56, BabelExp_803, 8),
__CIL_TMP57 is __CIL_TMP56 +8* 0,
BabelExp_804 is __CIL_TMP50 + __CIL_TMP51,
babel_ptrFW(__CIL_TMP57, BabelExp_804,2)
; true)
; true),
BabelExp_805 is J + 1,
J_SSA_1 is BabelExp_805,
compute_matrices_for_optimization_cil_lr_1(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_DOCS, __CIL_AP_LABEL, __CIL_AP_KEY, __CIL_AP_A, __CIL_AP_LIN, __CIL_AP_C, __CIL_AP_VARNUM, __CIL_AP_LEARN_PARM, __CIL_AP_KERNEL_PARM, __CIL_AP_QP, EXCLUDE_FROM_EQ_CONST, CHOSEN, MODEL, J_SSA_1, VOID),true
; true). 

 
compute_matrices_for_optimization_cil_lr_2(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_DOCS, __CIL_AP_LABEL, __CIL_AP_KEY, __CIL_AP_A, __CIL_AP_C, __CIL_AP_VARNUM, __CIL_AP_LEARN_PARM, __CIL_AP_KERNEL_PARM, __CIL_AP_QP, LIN, I, VOID) :- 


 BabelExp_806 is __CIL_AP_VARNUM,
babelPtrR(__CIL_TMP16, BabelExp_806, 8),

(I < __CIL_TMP16 ,
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ,
BabelExp_807 is __CIL_AP_KEY,
babelPtrR(__CIL_TMP17, BabelExp_807, 8),
__CIL_TMP18 is __CIL_TMP17 +8* I,
BabelExp_808 is __CIL_TMP18,
babelPtrR(__CIL_TMP19, BabelExp_808, 8),
__CIL_TMP20 is LIN +8* __CIL_TMP19,
BabelExp_809 is __CIL_AP_QP,
babelPtrR(__CIL_TMP21, BabelExp_809, 8),
__CIL_TMP22 is __CIL_TMP21,
__CIL_TMP23 is __CIL_TMP22 +1* 40,
__CIL_TMP24 is __CIL_TMP23,
BabelExp_810 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_810, 8),
__CIL_TMP26 is __CIL_TMP25 +8* I,
babel_ptrFR(BabelExp_811, __CIL_TMP20,2),
babel_ptrFW(__CIL_TMP26, BabelExp_811,2),
BabelExp_812 is I + 1,
I_SSA_1 is BabelExp_812,
compute_matrices_for_optimization_cil_lr_2(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, __CIL_AP_DOCS, __CIL_AP_LABEL, __CIL_AP_KEY, __CIL_AP_A, __CIL_AP_C, __CIL_AP_VARNUM, __CIL_AP_LEARN_PARM, __CIL_AP_KERNEL_PARM, __CIL_AP_QP, LIN, I_SSA_1, VOID),true
; true). 

 
compute_matrices_for_optimization_cil_lr_4(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, LABEL, KEY, A, C, VARNUM, LEARN_PARM, QP, I, VOID) :- 


 (I < VARNUM ,
__CIL_TMP12 is 1
; __CIL_TMP12 is 0),

(__CIL_TMP12 \= 0 ,
__CIL_TMP13 is KEY +8* I,
BabelExp_813 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_813, 8),
__CIL_TMP15 is A +8* __CIL_TMP14,
__CIL_TMP16 is QP +1* 48,
__CIL_TMP17 is __CIL_TMP16,
BabelExp_814 is __CIL_TMP17,
babelPtrR(__CIL_TMP18, BabelExp_814, 8),
__CIL_TMP19 is __CIL_TMP18 +8* I,
babel_ptrFR(BabelExp_815, __CIL_TMP15,2),
babel_ptrFW(__CIL_TMP19, BabelExp_815,2),
__CIL_TMP20 is LEARN_PARM +1* 16,
__CIL_TMP21 is __CIL_TMP20,
__CIL_TMP22 is KEY +8* I,
BabelExp_816 is __CIL_TMP22,
babelPtrR(__CIL_TMP23, BabelExp_816, 8),
__CIL_TMP24 is LABEL +8* __CIL_TMP23,
BabelExp_817 is __CIL_TMP24,
babelPtrR(__CIL_TMP25, BabelExp_817, 8),
__CIL_TMP26 is KEY +8* I,
BabelExp_818 is __CIL_TMP26,
babelPtrR(__CIL_TMP27, BabelExp_818, 8),
__CIL_TMP28 is C +8* __CIL_TMP27,
__CIL_TMP29 is __CIL_TMP25,
BabelExp_819 is __CIL_TMP28,
babel_ptrFR(__CIL_TMP30, BabelExp_819,2),
BabelExp_820 is __CIL_TMP21,
babel_ptrFR(__CIL_TMP31, BabelExp_820,2),
BabelExp_821 is __CIL_TMP29 * __CIL_TMP30,
__CIL_TMP32 is BabelExp_821,
__CIL_TMP33 is QP +1* 40,
__CIL_TMP34 is __CIL_TMP33,
BabelExp_822 is __CIL_TMP34,
babelPtrR(__CIL_TMP35, BabelExp_822, 8),
__CIL_TMP36 is __CIL_TMP35 +8* I,
__CIL_TMP37 is KEY +8* I,
BabelExp_823 is __CIL_TMP37,
babelPtrR(__CIL_TMP38, BabelExp_823, 8),
__CIL_TMP39 is LABEL +8* __CIL_TMP38,
BabelExp_824 is __CIL_TMP39,
babelPtrR(__CIL_TMP40, BabelExp_824, 8),
BabelExp_825 is __CIL_TMP36,
babel_ptrFR(__CIL_TMP41, BabelExp_825,2),
__CIL_TMP42 is __CIL_TMP40,
BabelExp_826 is __CIL_TMP31 - __CIL_TMP32,
__CIL_TMP43 is BabelExp_826,
BabelExp_827 is __CIL_TMP41 * __CIL_TMP42,
__CIL_TMP44 is BabelExp_827,
__CIL_TMP45 is QP +1* 40,
__CIL_TMP46 is __CIL_TMP45,
BabelExp_828 is __CIL_TMP46,
babelPtrR(__CIL_TMP47, BabelExp_828, 8),
__CIL_TMP48 is __CIL_TMP47 +8* I,
BabelExp_829 is __CIL_TMP43 + __CIL_TMP44,
babel_ptrFW(__CIL_TMP48, BabelExp_829,2),
BabelExp_830 is I + 1,
I_SSA_1 is BabelExp_830,
compute_matrices_for_optimization_cil_lr_4(__CIL_AP_STDOUT, __CIL_AP_VERBOSITY, LABEL, KEY, A, C, VARNUM, LEARN_PARM, QP, I_SSA_1, VOID),true
; true). 

 
optimize_svm_cil_lr_1(WORKING2DNUM, VARNUM, A, I, A_V, VOID) :- 


 (I < VARNUM ,
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ,
__CIL_TMP8 is A_V +8* I,
__CIL_TMP9 is WORKING2DNUM +8* I,
BabelExp_831 is __CIL_TMP9,
babelPtrR(__CIL_TMP10, BabelExp_831, 8),
__CIL_TMP11 is A +8* __CIL_TMP10,
babel_ptrFR(BabelExp_832, __CIL_TMP8,2),
babel_ptrFW(__CIL_TMP11, BabelExp_832,2),
BabelExp_833 is I + 1,
I_SSA_1 is BabelExp_833,
optimize_svm_cil_lr_1(WORKING2DNUM, VARNUM, A, I_SSA_1, A_V, VOID),true
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
 
:- foreign(babel__implicit_kernel_cache_cleanupc_0(+integer)).
:- foreign(babel__implicit_kernel_cache_cleanupc_1(+integer)).
:- foreign(babel__implicit_kernel_cache_cleanupc_2(+integer)).
:- foreign(babel__implicit_kernel_cache_cleanupc_3(+integer)).
:- foreign(babel__implicit_kernel_cache_cleanupc_4(+integer)).
:- foreign(babel__implicit_kernel_cache_cleanupc_5(+integer)).
:- foreign(babel__implicit_kernel_cache_cleanupc_6(+integer)).
:- foreign(babel__implicit_kernel_cache_cleanupc_7(+integer)).

kernel_cache_cleanup(KERNEL_CACHE, VOID) :- 


 MEM_21 is KERNEL_CACHE,
BabelExp_0 is MEM_21,
babelPtrR(__CIL_TMP2, BabelExp_0, 8),
babel__implicit_kernel_cache_cleanupc_0(__CIL_TMP2),
__CIL_TMP3 is KERNEL_CACHE +1* 48,
__CIL_TMP4 is __CIL_TMP3,
BabelExp_1 is __CIL_TMP4,
babelPtrR(__CIL_TMP5, BabelExp_1, 8),
babel__implicit_kernel_cache_cleanupc_1(__CIL_TMP5),
__CIL_TMP6 is KERNEL_CACHE +1* 40,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_2 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_2, 8),
babel__implicit_kernel_cache_cleanupc_2(__CIL_TMP8),
__CIL_TMP9 is KERNEL_CACHE +1* 16,
__CIL_TMP10 is __CIL_TMP9,
BabelExp_3 is __CIL_TMP10,
babelPtrR(__CIL_TMP11, BabelExp_3, 8),
babel__implicit_kernel_cache_cleanupc_3(__CIL_TMP11),
__CIL_TMP12 is KERNEL_CACHE +1* 24,
__CIL_TMP13 is __CIL_TMP12,
BabelExp_4 is __CIL_TMP13,
babelPtrR(__CIL_TMP14, BabelExp_4, 8),
babel__implicit_kernel_cache_cleanupc_4(__CIL_TMP14),
__CIL_TMP15 is KERNEL_CACHE +1* 32,
__CIL_TMP16 is __CIL_TMP15,
BabelExp_5 is __CIL_TMP16,
babelPtrR(__CIL_TMP17, BabelExp_5, 8),
babel__implicit_kernel_cache_cleanupc_5(__CIL_TMP17),
__CIL_TMP18 is KERNEL_CACHE +1* 8,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_6 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_6, 8),
babel__implicit_kernel_cache_cleanupc_6(__CIL_TMP20),
babel__implicit_kernel_cache_cleanupc_7(KERNEL_CACHE),true. 

 
kernel_cache_touch(KERNEL_CACHE, DOCNUM, BABEL_RET) :- 


 (KERNEL_CACHE \= 0 ->
MEM_16 is KERNEL_CACHE,
BabelExp_7 is MEM_16,
babelPtrR(__CIL_TMP4, BabelExp_7, 8),
__CIL_TMP5 is __CIL_TMP4 +8* DOCNUM,
BabelExp_8 is __CIL_TMP5,
babelPtrR(__CIL_TMP6, BabelExp_8, 8),

(__CIL_TMP6 \= -1 ->
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ->
__CIL_TMP7 is KERNEL_CACHE +1* 72,
__CIL_TMP8 is __CIL_TMP7,
__CIL_TMP9 is KERNEL_CACHE +1* 40,
__CIL_TMP10 is __CIL_TMP9,
MEM_17 is KERNEL_CACHE,
BabelExp_9 is MEM_17,
babelPtrR(__CIL_TMP11, BabelExp_9, 8),
__CIL_TMP12 is __CIL_TMP11 +8* DOCNUM,
BabelExp_10 is __CIL_TMP10,
babelPtrR(__CIL_TMP13, BabelExp_10, 8),
BabelExp_11 is __CIL_TMP12,
babelPtrR(__CIL_TMP14, BabelExp_11, 8),
__CIL_TMP15 is __CIL_TMP13 +8* __CIL_TMP14,
babelPtrR(BabelExp_12, __CIL_TMP8, 8),
babel_ptrE(__CIL_TMP15, BabelExp_12, 8),BABEL_RET is 1, true
; BABEL_RET is 0, true)
; BABEL_RET is 0, true). 

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
 
:- foreign(babel__implicit_estimate_spherec_0(+integer, +string, +float,  -integer)).
:- foreign(babel__implicit_estimate_spherec_1(+integer, +integer, +integer, +float, +integer,  -integer)).
:- foreign(babel__implicit_estimate_spherec_2(+integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_estimate_spherec_3(+integer, +integer)).

estimate_sphere(__CIL_PP_NULLWORD, __CIL_PP_MAXXLEN, __CIL_PP_NULLDOC, __CIL_FP_MAXXLEN, __CIL_FP_NULLDOC, MODEL, KERNEL_PARM, BABEL_RET) :- 


MAXXLEN_SSA_1 is 0.0,
MEM_17 is __CIL_PP_NULLWORD,
BabelExp_0 is 0,
babel_ptrE(MEM_17, BabelExp_0, 8),
babel__implicit_estimate_spherec_0(__CIL_PP_NULLWORD, '', 1.0 , TMP_SSA_1),
babel__implicit_estimate_spherec_1(-2, 0, 0, 0.0, TMP_SSA_1 , NULLDOC_SSA_1),
J_SSA_1 is 1,
BabelExp_1 is MAXXLEN_SSA_1,
babel_ptrFW(__CIL_FP_MAXXLEN, BabelExp_1,2),
BabelExp_2 is NULLDOC_SSA_1,
babel_ptrE(__CIL_FP_NULLDOC, BabelExp_2, 8),
babel__implicit_estimate_spherec_2(__CIL_PP_MAXXLEN, __CIL_PP_NULLDOC, MODEL, KERNEL_PARM, J_SSA_1),
BabelExp_3 is __CIL_FP_MAXXLEN,
babel_ptrFR(MAXXLEN_SSA_2, BabelExp_3,2),
BabelExp_4 is __CIL_FP_NULLDOC,
babelPtrR(NULLDOC_SSA_2, BabelExp_4, 8),
babel__implicit_estimate_spherec_3(NULLDOC_SSA_2, 1),BABEL_RET is MAXXLEN_SSA_2, true. 

 :- foreign(babel__implicit_estimate_sphere_cil_lr_1c_4(+integer, +integer, +integer,  -float)).
:- foreign(babel__implicit_estimate_sphere_cil_lr_1c_5(+integer, +integer, +integer,  -float)).
:- foreign(babel__implicit_estimate_sphere_cil_lr_1c_6(+integer, +integer, +integer,  -float)).
:- foreign(babel__implicit_estimate_sphere_cil_lr_1c_7(+float,  -float)).

estimate_sphere_cil_lr_1(__CIL_AP_MAXXLEN, __CIL_AP_NULLDOC, MODEL, KERNEL_PARM, J, VOID) :- 


 MEM_36 is MODEL,
BabelExp_5 is MEM_36,
babelPtrR(__CIL_TMP17, BabelExp_5, 8),

(J < __CIL_TMP17 ->
__CIL_TMP15 is 1
; __CIL_TMP15 is 0),

(__CIL_TMP15 \= 0 ->
__CIL_TMP18 is MODEL +1* 24,
__CIL_TMP19 is __CIL_TMP18,
BabelExp_6 is __CIL_TMP19,
babelPtrR(__CIL_TMP20, BabelExp_6, 8),
__CIL_TMP21 is __CIL_TMP20 +8* J,
__CIL_TMP22 is MODEL +1* 24,
__CIL_TMP23 is __CIL_TMP22,
BabelExp_7 is __CIL_TMP23,
babelPtrR(__CIL_TMP24, BabelExp_7, 8),
__CIL_TMP25 is __CIL_TMP24 +8* J,
BabelExp_8 is __CIL_TMP21,
babelPtrR(__CIL_TMP26, BabelExp_8, 8),
BabelExp_9 is __CIL_TMP25,
babelPtrR(__CIL_TMP27, BabelExp_9, 8),
babel__implicit_estimate_sphere_cil_lr_1c_4(KERNEL_PARM, __CIL_TMP26, __CIL_TMP27 , TMP___0_SSA_1),
__CIL_TMP28 is MODEL +1* 24,
__CIL_TMP29 is __CIL_TMP28,
BabelExp_10 is __CIL_TMP29,
babelPtrR(__CIL_TMP30, BabelExp_10, 8),
__CIL_TMP31 is __CIL_TMP30 +8* J,
BabelExp_11 is __CIL_TMP31,
babelPtrR(__CIL_TMP32, BabelExp_11, 8),
BabelExp_12 is __CIL_AP_NULLDOC,
babelPtrR(__CIL_TMP33, BabelExp_12, 8),
babel__implicit_estimate_sphere_cil_lr_1c_5(KERNEL_PARM, __CIL_TMP32, __CIL_TMP33 , TMP___1_SSA_1),
BabelExp_13 is __CIL_AP_NULLDOC,
babelPtrR(__CIL_TMP34, BabelExp_13, 8),
BabelExp_14 is __CIL_AP_NULLDOC,
babelPtrR(__CIL_TMP35, BabelExp_14, 8),
babel__implicit_estimate_sphere_cil_lr_1c_6(KERNEL_PARM, __CIL_TMP34, __CIL_TMP35 , TMP___2_SSA_1),
BabelExp_15 is 2 * TMP___1_SSA_1,
__CIL_TMP36 is BabelExp_15,
BabelExp_16 is TMP___0_SSA_1 - __CIL_TMP36,
__CIL_TMP37 is BabelExp_16,
BabelExp_17 is __CIL_TMP37 + TMP___2_SSA_1,
__CIL_TMP38 is BabelExp_17,
babel__implicit_estimate_sphere_cil_lr_1c_7(__CIL_TMP38 , XLEN_SSA_1),
BabelExp_18 is __CIL_AP_MAXXLEN,
babel_ptrFR(__CIL_TMP39, BabelExp_18,2),

(XLEN_SSA_1 > __CIL_TMP39 ->
__CIL_TMP16 is 1
; __CIL_TMP16 is 0),

(__CIL_TMP16 \= 0 ->
BabelExp_19 is XLEN_SSA_1,
babel_ptrFW(__CIL_AP_MAXXLEN, BabelExp_19,2)
; true),
BabelExp_20 is J + 1,
J_SSA_1 is BabelExp_20,
estimate_sphere_cil_lr_1(__CIL_AP_MAXXLEN, __CIL_AP_NULLDOC, MODEL, KERNEL_PARM, J_SSA_1, VOID),true
; true).

 
%sprod_ss_cil_lr_1(__CIL_AP_SUM, AI, BJ):-
%babel_ptrR(__CIL_TMP6, AI, 8),
%(__CIL_TMP6 \= 0->
% __CIL_TMP7 =
%);
%()
