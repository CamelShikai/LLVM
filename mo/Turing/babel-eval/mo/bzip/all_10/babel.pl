:-foreign(babel_ptrR_byte(-byte, +integer, +integer)).
:-foreign(babel_ptrR(-integer, +integer, +integer)).
:-foreign(babel_ptrE(+integer, +integer, +integer)).
:-foreign(babel_ptrFR(-float, +integer,+integer)).
:-foreign(babel_ptrFW(+integer, +float,+integer)).


babelPtrR_byte(E, P, L) :- babel_ptrR_byte(T, P, L), E is T.
babelPtrR(E, P, L) :- babel_ptrR(T, P, L), E is T.
babelPtrL(P, E, L) :- babel_ptrE(P, E, L).

:- foreign(babel__implicit_uInt64_to_doublec_0(+integer, +integer, +integer, +float)).

uInt64_to_double(__CIL_PP_SUM, __CIL_FP_SUM, N, BABEL_RET) :- 


 BASE_SSA_1 is 1.0,
SUM_SSA_1 is 0.0,
I_SSA_1 is 0,
BabelExp_0 is SUM_SSA_1,
babel_ptrFW(__CIL_FP_SUM, BabelExp_0,2),
babel__implicit_uInt64_to_doublec_0(__CIL_PP_SUM, N, I_SSA_1, BASE_SSA_1),
BabelExp_1 is __CIL_FP_SUM,
babel_ptrFR(SUM_SSA_2, BabelExp_1,2),BABEL_RET is SUM_SSA_2, true. 

 :- foreign(babel__implicit_uInt64_isZeroc_1(+integer, +integer, +integer,  -integer)).

uInt64_isZero(__CIL_PP___CIL_RET3, __CIL_FP___CIL_RET3, N, BABEL_RET) :- 


 I_SSA_1 is 0,
__CIL_RET3 is 1,
BabelExp_2 is __CIL_RET3,
babel_ptrE(__CIL_FP___CIL_RET3, BabelExp_2, 1),
babel__implicit_uInt64_isZeroc_1(__CIL_PP___CIL_RET3, N, I_SSA_1 , RETFLAG4_SSA_1),
BabelExp_3 is __CIL_FP___CIL_RET3,
babelPtrR_byte(__CIL_RET3_SSA_1, BabelExp_3, 1),
(RETFLAG4_SSA_1 \= 0 ->
BABEL_RET is __CIL_RET3_SSA_1, true
; BABEL_RET is 1, true). 

 :- foreign(babel__implicit_uInt64_qrm10c_2(+integer, +integer, +integer)).

uInt64_qrm10(__CIL_PP_REM, __CIL_FP_REM, N, BABEL_RET) :- 


 REM_SSA_1 is 0,
I_SSA_1 is 7,
BabelExp_4 is REM_SSA_1,
babel_ptrE(__CIL_FP_REM, BabelExp_4, 4),
babel__implicit_uInt64_qrm10c_2(__CIL_PP_REM, N, I_SSA_1),
BabelExp_5 is __CIL_FP_REM,
babelPtrR(REM_SSA_2, BabelExp_5, 4),BABEL_RET is REM_SSA_2, true. 

 :- foreign(babel__implicit_myfeofc_3(+integer,  -integer)).
:- foreign(babel__implicit_myfeofc_4(+integer, +integer)).

myfeof(F, BABEL_RET) :- 


 babel__implicit_myfeofc_3(F , TMP_SSA_1),
C_SSA_1 is TMP_SSA_1,

(C_SSA_1 =:= -1 ->
__CIL_TMP6 is 1
; __CIL_TMP6 is 0),

(__CIL_TMP6 \= 0 ->
BABEL_RET is 1, true
; babel__implicit_myfeofc_4(C_SSA_1, F),BABEL_RET is 0, true). 

 
setExit(__CIL_GP_EXITVALUE, V, VOID) :- 


 BabelExp_6 is __CIL_GP_EXITVALUE,
babelPtrR(__CIL_TMP4, BabelExp_6, 4),

(V > __CIL_TMP4 ->
__CIL_TMP3 is 1
; __CIL_TMP3 is 0),

(__CIL_TMP3 \= 0 ->
BabelExp_7 is V,
babel_ptrE(__CIL_GP_EXITVALUE, BabelExp_7, 4)
; true),
true. 

 :- foreign(babel__implicit_cadvisec_5(+integer, +integer)).

cadvise(__CIL_GP_NOISY, __CIL_GP_STDERR, VOID) :- 


 BabelExp_8 is __CIL_GP_NOISY,
babelPtrR_byte(__CIL_TMP3, BabelExp_8, 1),
(__CIL_TMP3 \= 0 ->
BabelExp_9 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP4, BabelExp_9, 8),
babel__implicit_cadvisec_5(__CIL_TMP4, '\\NIT IS POSSIBLE THAT THE COMPRESSED FILE(S) HAVE BECOME CORRUPTED.\\NYOU CAN USE THE -TVV OPTION TO TEST INTEGRITY OF SUCH FILES.\\N\\NYOU CAN USE THE `BZIP2RECOVER\' PROGRAM TO ATTEMPT TO RECOVER\\NDATA FROM UNDAMAGED SECTIONS OF CORRUPTED FILES.\\N\\N')
; true),
true. 

 :- foreign(babel__implicit_showFileNamesc_6(+integer, +integer, +integer, +integer)).

showFileNames(__CIL_GP_NOISY, __CIL_GP_STDERR, INNAME, OUTNAME, VOID) :- 

BabelExp_10 is __CIL_GP_NOISY,
babelPtrR_byte(__CIL_TMP3, BabelExp_10, 1),
(__CIL_TMP3 \= 0 ->
BabelExp_11 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP4, BabelExp_11, 8),
BabelExp_12 is INNAME,
__CIL_TMP5 is BabelExp_12,
BabelExp_13 is OUTNAME,
__CIL_TMP6 is BabelExp_13,
babel__implicit_showFileNamesc_6(__CIL_TMP4, '\\TINPUT FILE = %S, OUTPUT FILE = %S\\N', __CIL_TMP5, __CIL_TMP6)
; true),
true. 

 :- foreign(babel__implicit_cleanUpAndFailc_7(+integer, +integer,  -integer)).
:- foreign(babel__implicit_cleanUpAndFailc_8(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_cleanUpAndFailc_9(+integer)).
:- foreign(babel__implicit_cleanUpAndFailc_10(+integer,  -integer)).
:- foreign(babel__implicit_cleanUpAndFailc_11(+integer, +integer, +integer)).
:- foreign(babel__implicit_cleanUpAndFailc_12(+integer, +integer, +integer)).
:- foreign(babel__implicit_cleanUpAndFailc_13(+integer, +integer, +integer)).
:- foreign(babel__implicit_cleanUpAndFailc_14(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_cleanUpAndFailc_15(+integer, +integer, +integer)).
:- foreign(babel__implicit_cleanUpAndFailc_16(+integer, +integer, +integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_cleanUpAndFailc_17(+integer)).
:- foreign(babel__implicit_cleanUpAndFailc_18(+integer)).

cleanUpAndFail(__CIL_PP_STATBUF, __CIL_GP_SRCMODE, __CIL_GP_OPMODE, __CIL_GP_DELETEOUTPUTONINTERRUPT, __CIL_GP_NOISY, __CIL_GP_STDERR, __CIL_GP_PROGNAME, __CIL_GP_OUTPUTHANDLEJUSTINCASE, __CIL_GP_NUMFILENAMES, __CIL_GP_NUMFILESPROCESSED, __CIL_GP_EXITVALUE, EC, INNAME, OUTNAME, BABEL_RET) :- 


 BabelExp_14 is __CIL_GP_SRCMODE,
babelPtrR(__CIL_TMP27, BabelExp_14, 4),

(__CIL_TMP27 =:= 3 ->
__CIL_TMP17 is 1
; __CIL_TMP17 is 0),

(__CIL_TMP17 \= 0 ->
BabelExp_15 is __CIL_GP_OPMODE,
babelPtrR(__CIL_TMP28, BabelExp_15, 4),

(__CIL_TMP28 \= 3 ->
__CIL_TMP18 is 1
; __CIL_TMP18 is 0),

(__CIL_TMP18 \= 0 ->
BabelExp_16 is __CIL_GP_DELETEOUTPUTONINTERRUPT,
babelPtrR_byte(__CIL_TMP19, BabelExp_16, 1),
(__CIL_TMP19 \= 0 ->
BabelExp_17 is INNAME,
__CIL_TMP29 is BabelExp_17,
babel__implicit_cleanUpAndFailc_7(__CIL_TMP29, __CIL_PP_STATBUF , RETVAL_SSA_1),

(RETVAL_SSA_1 =:= 0 ->
__CIL_TMP20 is 1
; __CIL_TMP20 is 0),

(__CIL_TMP20 \= 0 ->
BabelExp_18 is __CIL_GP_NOISY,
babelPtrR_byte(__CIL_TMP21, BabelExp_18, 1),
(__CIL_TMP21 \= 0 ->
BabelExp_19 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP30, BabelExp_19, 8),
BabelExp_20 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP31, BabelExp_20, 8),
BabelExp_21 is OUTNAME,
__CIL_TMP32 is BabelExp_21,
babel__implicit_cleanUpAndFailc_8(__CIL_TMP30, '%S: DELETING OUTPUT FILE %S, IF IT EXISTS.\\N', __CIL_TMP31, __CIL_TMP32)
; true),
BabelExp_22 is __CIL_GP_OUTPUTHANDLEJUSTINCASE,
babelPtrR(__CIL_TMP33, BabelExp_22, 8),
__CIL_TMP34 is __CIL_TMP33,

(__CIL_TMP34 \= 0 ->
__CIL_TMP22 is 1
; __CIL_TMP22 is 0),

(__CIL_TMP22 \= 0 ->
BabelExp_23 is __CIL_GP_OUTPUTHANDLEJUSTINCASE,
babelPtrR(__CIL_TMP35, BabelExp_23, 8),
babel__implicit_cleanUpAndFailc_9(__CIL_TMP35)
; true),
BabelExp_24 is OUTNAME,
__CIL_TMP36 is BabelExp_24,
babel__implicit_cleanUpAndFailc_10(__CIL_TMP36 , RETVAL_SSA_2),

(RETVAL_SSA_2 \= 0 ->
__CIL_TMP23 is 1
; __CIL_TMP23 is 0),

(__CIL_TMP23 \= 0 ->
BabelExp_25 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP37, BabelExp_25, 8),
BabelExp_26 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP38, BabelExp_26, 8),
babel__implicit_cleanUpAndFailc_11(__CIL_TMP37, '%S: WARNING: DELETION OF OUTPUT FILE (APPARENTLY) FAILED.\\N', __CIL_TMP38)
; true)
; BabelExp_27 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP39, BabelExp_27, 8),
BabelExp_28 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP40, BabelExp_28, 8),
babel__implicit_cleanUpAndFailc_12(__CIL_TMP39, '%S: WARNING: DELETION OF OUTPUT FILE SUPPRESSED\\N', __CIL_TMP40),
BabelExp_29 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP41, BabelExp_29, 8),
BabelExp_30 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP42, BabelExp_30, 8),
babel__implicit_cleanUpAndFailc_13(__CIL_TMP41, '%S:    SINCE INPUT FILE NO LONGER EXISTS.  OUTPUT FILE\\N', __CIL_TMP42),
BabelExp_31 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP43, BabelExp_31, 8),
BabelExp_32 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP44, BabelExp_32, 8),
BabelExp_33 is OUTNAME,
__CIL_TMP45 is BabelExp_33,
babel__implicit_cleanUpAndFailc_14(__CIL_TMP43, '%S:    `%S\' MAY BE INCOMPLETE.\\N', __CIL_TMP44, __CIL_TMP45),
BabelExp_34 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP46, BabelExp_34, 8),
BabelExp_35 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP47, BabelExp_35, 8),
babel__implicit_cleanUpAndFailc_15(__CIL_TMP46, '%S:    I SUGGEST DOING AN INTEGRITY TEST (BZIP2 -TV) OF IT.\\N', __CIL_TMP47))
; true)
; true)
; true),
BabelExp_36 is __CIL_GP_NOISY,
babelPtrR_byte(__CIL_TMP24, BabelExp_36, 1),
(__CIL_TMP24 \= 0 ->
BabelExp_37 is __CIL_GP_NUMFILENAMES,
babelPtrR(__CIL_TMP48, BabelExp_37, 4),

(__CIL_TMP48 > 0 ->
__CIL_TMP25 is 1
; __CIL_TMP25 is 0),

(__CIL_TMP25 \= 0 ->
BabelExp_38 is __CIL_GP_NUMFILESPROCESSED,
babelPtrR(__CIL_TMP49, BabelExp_38, 4),
BabelExp_39 is __CIL_GP_NUMFILENAMES,
babelPtrR(__CIL_TMP50, BabelExp_39, 4),

(__CIL_TMP49 < __CIL_TMP50 ->
__CIL_TMP26 is 1
; __CIL_TMP26 is 0),

(__CIL_TMP26 \= 0 ->
BabelExp_40 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP51, BabelExp_40, 8),
BabelExp_41 is __CIL_GP_NUMFILENAMES,
babelPtrR(__CIL_TMP52, BabelExp_41, 4),
BabelExp_42 is __CIL_GP_NUMFILESPROCESSED,
babelPtrR(__CIL_TMP53, BabelExp_42, 4),
BabelExp_43 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP54, BabelExp_43, 8),
BabelExp_44 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP55, BabelExp_44, 8),
BabelExp_45 is __CIL_GP_NUMFILENAMES,
babelPtrR(__CIL_TMP56, BabelExp_45, 4),
BabelExp_46 is __CIL_TMP52 - __CIL_TMP53,
__CIL_TMP57 is BabelExp_46,
babel__implicit_cleanUpAndFailc_16(__CIL_TMP51, '%S: WARNING: SOME FILES HAVE NOT BEEN PROCESSED:\\N%S:    %D SPECIFIED ON COMMAND LINE, %D NOT PROCESSED YET.\\N\\N', __CIL_TMP54, __CIL_TMP55, __CIL_TMP56, __CIL_TMP57)
; true)
; true)
; true),
babel__implicit_cleanUpAndFailc_17(EC),
BabelExp_47 is __CIL_GP_EXITVALUE,
babelPtrR(__CIL_TMP58, BabelExp_47, 4),
babel__implicit_cleanUpAndFailc_18(__CIL_TMP58). 

 :- foreign(babel__implicit_panicc_19(+integer, +integer, +integer, +integer)).
:- foreign(babel__implicit_panicc_20(+integer)).
:- foreign(babel__implicit_panicc_21(+integer)).

panic(__CIL_GP_STDERR, __CIL_GP_PROGNAME, S, BABEL_RET) :- 


 BabelExp_48 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP4, BabelExp_48, 8),
BabelExp_49 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP5, BabelExp_49, 8),
babel__implicit_panicc_19(__CIL_TMP4, '\\N%S: PANIC -- INTERNAL CONSISTENCY ERROR:\\N\\T%S\\N\\TTHIS IS A BUG.  PLEASE REPORT IT TO ME AT:\\N\\TJSEWARD@BZIP.ORG\\N', __CIL_TMP5, S),
babel__implicit_panicc_20(0),
babel__implicit_panicc_21(3). 

 :- foreign(babel__implicit_crcErrorc_22(+integer, +integer, +integer)).
:- foreign(babel__implicit_crcErrorc_23(+integer)).
:- foreign(babel__implicit_crcErrorc_24(+integer)).
:- foreign(babel__implicit_crcErrorc_25(+integer)).

crcError(__CIL_GP_STDERR, __CIL_GP_PROGNAME, BABEL_RET) :- 


 BabelExp_50 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP3, BabelExp_50, 8),
BabelExp_51 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP4, BabelExp_51, 8),
babel__implicit_crcErrorc_22(__CIL_TMP3, '\\N%S: DATA INTEGRITY ERROR WHEN DECOMPRESSING.\\N', __CIL_TMP4),
babel__implicit_crcErrorc_23(0),
babel__implicit_crcErrorc_24(0),
babel__implicit_crcErrorc_25(2). 

 :- foreign(babel__implicit_compressedStreamEOFc_26(+integer, +integer, +integer)).
:- foreign(babel__implicit_compressedStreamEOFc_27(+integer)).
:- foreign(babel__implicit_compressedStreamEOFc_28(+integer)).
:- foreign(babel__implicit_compressedStreamEOFc_29(+integer)).
:- foreign(babel__implicit_compressedStreamEOFc_30(+integer)).

compressedStreamEOF(__CIL_GP_NOISY, __CIL_GP_STDERR, __CIL_GP_PROGNAME, BABEL_RET) :- 


 BabelExp_52 is __CIL_GP_NOISY,
babelPtrR_byte(__CIL_TMP4, BabelExp_52, 1),
(__CIL_TMP4 \= 0 ->
BabelExp_53 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP5, BabelExp_53, 8),
BabelExp_54 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP6, BabelExp_54, 8),
babel__implicit_compressedStreamEOFc_26(__CIL_TMP5, '\\N%S: COMPRESSED FILE ENDS UNEXPECTEDLY;\\N\\TPERHAPS IT IS CORRUPTED?  *POSSIBLE* REASON FOLLOWS.\\N', __CIL_TMP6),
BabelExp_55 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP7, BabelExp_55, 8),
babel__implicit_compressedStreamEOFc_27(__CIL_TMP7),
babel__implicit_compressedStreamEOFc_28(0),
babel__implicit_compressedStreamEOFc_29(0)
; true),
babel__implicit_compressedStreamEOFc_30(2). 


 :- foreign(babel__implicit_saveInputFileMetaInfoc_63(+integer, +integer,  -integer)).
:- foreign(babel__implicit_saveInputFileMetaInfoc_64(+integer)).

saveInputFileMetaInfo(__CIL_PP_FILEMETAINFO, SRCNAME, VOID) :- 


 babel__implicit_saveInputFileMetaInfoc_63(SRCNAME, __CIL_PP_FILEMETAINFO , RETVAL_SSA_1),

(RETVAL_SSA_1 \= 0 ->
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
babel__implicit_saveInputFileMetaInfoc_64(0)
; true),
true. 

 :- foreign(babel__implicit_applySavedTimeInfoToOutputFilec_65(+integer, +integer,  -integer)).
:- foreign(babel__implicit_applySavedTimeInfoToOutputFilec_66(+integer)).

applySavedTimeInfoToOutputFile(__CIL_PP_UTIMBUF, __CIL_PP_FILEMETAINFO, DSTNAME, VOID) :- 


 __CIL_TMP8 is __CIL_PP_FILEMETAINFO +1* 72,
__CIL_TMP9 is __CIL_TMP8,
MEM_13 is __CIL_PP_UTIMBUF,
babelPtrR(BabelExp_79, __CIL_TMP9, 8),
babel_ptrE(MEM_13, BabelExp_79, 8),
__CIL_TMP10 is __CIL_PP_FILEMETAINFO +1* 88,
__CIL_TMP11 is __CIL_TMP10,
__CIL_TMP12 is __CIL_PP_UTIMBUF +1* 8,
__CIL_TMP13 is __CIL_TMP12,
babelPtrR(BabelExp_80, __CIL_TMP11, 8),
babel_ptrE(__CIL_TMP13, BabelExp_80, 8),
babel__implicit_applySavedTimeInfoToOutputFilec_65(DSTNAME, __CIL_PP_UTIMBUF , RETVAL_SSA_1),

(RETVAL_SSA_1 \= 0 ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
babel__implicit_applySavedTimeInfoToOutputFilec_66(0)
; true),
true. 

 :- foreign(babel__implicit_applySavedFileAttrToOutputFilec_67(+integer, +positive,  -integer)).
:- foreign(babel__implicit_applySavedFileAttrToOutputFilec_68(+integer)).
:- foreign(babel__implicit_applySavedFileAttrToOutputFilec_69(+integer, +positive, +positive)).

applySavedFileAttrToOutputFile(__CIL_PP_FILEMETAINFO, FD, VOID) :- 


 __CIL_TMP6 is __CIL_PP_FILEMETAINFO +1* 24,
__CIL_TMP7 is __CIL_TMP6,
BabelExp_81 is __CIL_TMP7,
babelPtrR(__CIL_TMP8, BabelExp_81, 4),
babel__implicit_applySavedFileAttrToOutputFilec_67(FD, __CIL_TMP8 , RETVAL_SSA_1),

(RETVAL_SSA_1 \= 0 ->
__CIL_TMP5 is 1
; __CIL_TMP5 is 0),

(__CIL_TMP5 \= 0 ->
babel__implicit_applySavedFileAttrToOutputFilec_68(0)
; true),
__CIL_TMP9 is __CIL_PP_FILEMETAINFO +1* 28,
__CIL_TMP10 is __CIL_TMP9,
__CIL_TMP11 is __CIL_PP_FILEMETAINFO +1* 32,
__CIL_TMP12 is __CIL_TMP11,
BabelExp_82 is __CIL_TMP10,
babelPtrR(__CIL_TMP13, BabelExp_82, 4),
BabelExp_83 is __CIL_TMP12,
babelPtrR(__CIL_TMP14, BabelExp_83, 4),
babel__implicit_applySavedFileAttrToOutputFilec_69(FD, __CIL_TMP13, __CIL_TMP14),true. 

 
containsDubiousChars(NAME, BABEL_RET) :- 


 BABEL_RET is 0, true. 

 :- foreign(babel__implicit_hasSuffixc_70(+integer,  -positive)).
:- foreign(babel__implicit_hasSuffixc_71(+integer,  -positive)).
:- foreign(babel__implicit_hasSuffixc_72(+integer, +integer,  -integer)).

hasSuffix(S, SUFFIX, BABEL_RET) :- 


 babel__implicit_hasSuffixc_70(S , TMP_SSA_1),
NS_SSA_1 is TMP_SSA_1,
babel__implicit_hasSuffixc_71(SUFFIX , TMP___0_SSA_1),
NX_SSA_1 is TMP___0_SSA_1,

(NS_SSA_1 < NX_SSA_1 ->
__CIL_TMP13 is 1
; __CIL_TMP13 is 0),

(__CIL_TMP13 \= 0 ->
BABEL_RET is 0, true
; __CIL_TMP15 is S +1* NS_SSA_1,
BabelExp_84 is __CIL_TMP15 - NX_SSA_1,
__CIL_TMP16 is BabelExp_84,
babel__implicit_hasSuffixc_72(__CIL_TMP16, SUFFIX , TMP___1_SSA_1),

(TMP___1_SSA_1 =:= 0 ->
__CIL_TMP14 is 1
; __CIL_TMP14 is 0),

(__CIL_TMP14 \= 0 ->
BABEL_RET is 1, true
; BABEL_RET is 0, true)). 

 :- foreign(babel__implicit_mapSuffixc_73(+integer, +integer,  -integer)).
:- foreign(babel__implicit_mapSuffixc_74(+integer,  -positive)).
:- foreign(babel__implicit_mapSuffixc_75(+integer,  -positive)).
:- foreign(babel__implicit_mapSuffixc_76(+integer, +integer)).

mapSuffix(NAME, OLDSUFFIX, NEWSUFFIX, BABEL_RET) :- 


 babel__implicit_mapSuffixc_73(NAME, OLDSUFFIX , TMP_SSA_1),
(TMP_SSA_1 \= 0 ->
babel__implicit_mapSuffixc_74(NAME , TMP___0_SSA_1),
babel__implicit_mapSuffixc_75(OLDSUFFIX , TMP___1_SSA_1),
BabelExp_85 is TMP___0_SSA_1 - TMP___1_SSA_1,
__CIL_TMP10 is BabelExp_85,
__CIL_TMP11 is NAME +1* __CIL_TMP10,
BabelExp_86 is 0,
babel_ptrE(__CIL_TMP11, BabelExp_86, 1),
babel__implicit_mapSuffixc_76(NAME, NEWSUFFIX),BABEL_RET is 1, true
; BABEL_RET is 0, true). 

 :- foreign(babel__implicit_licensec_77( -integer)).
:- foreign(babel__implicit_licensec_78(+integer, +integer, +integer)).

license(__CIL_GP_STDERR, VOID) :- 


 babel__implicit_licensec_77(TMP_SSA_1),
BabelExp_87 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP4, BabelExp_87, 8),
babel__implicit_licensec_78(__CIL_TMP4, 'BZIP2, A BLOCK-SORTING FILE COMPRESSOR.  VERSION %S.\\N   \\N   COPYRIGHT (C) 1996-2010 BY JULIAN SEWARD.\\N   \\N   THIS PROGRAM IS FREE SOFTWARE; YOU CAN REDISTRIBUTE IT AND/OR MODIFY\\N   IT UNDER THE TERMS SET OUT IN THE LICENSE FILE, WHICH IS INCLUDED\\N   IN THE BZIP2-1.0.6 SOURCE DISTRIBUTION.\\N   \\N   THIS PROGRAM IS DISTRIBUTED IN THE HOPE THAT IT WILL BE USEFUL,\\N   BUT WITHOUT ANY WARRANTY; WITHOUT EVEN THE IMPLIED WARRANTY OF\\N   MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.  SEE THE\\N   LICENSE FILE FOR MORE DETAILS.\\N   \\N', TMP_SSA_1),true. 

 :- foreign(babel__implicit_usagec_79( -integer)).
:- foreign(babel__implicit_usagec_80(+integer, +integer, +integer, +integer)).

usage(__CIL_GP_STDERR, FULLPROGNAME, VOID) :- 


 babel__implicit_usagec_79(TMP_SSA_1),
BabelExp_88 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP5, BabelExp_88, 8),
babel__implicit_usagec_80(__CIL_TMP5, 'BZIP2', TMP_SSA_1, FULLPROGNAME), 
%babel__implicit_usagec_80(__CIL_TMP5, 'BZIP2, A BLOCK-SORTING FILE COMPRESSOR.  VERSION %S.\\N\\N   USAGE: %S [FLAGS AND INPUT FILES IN ANY ORDER]\\N\\N   -H --HELP           PRINT THIS MESSAGE\\N   -D --DECOMPRESS     FORCE DECOMPRESSION\\N   -Z --COMPRESS       FORCE COMPRESSION\\N   -K --KEEP           KEEP (DON\'T DELETE) INPUT FILES\\N   -F --FORCE          OVERWRITE EXISTING OUTPUT FILES\\N   -T --TEST           TEST COMPRESSED FILE INTEGRITY\\N   -C --STDOUT         OUTPUT TO STANDARD OUT\\N   -Q --QUIET          SUPPRESS NONCRITICAL ERROR MESSAGES\\N   -V --VERBOSE        BE VERBOSE (A 2ND -V GIVES MORE)\\N   -L --LICENSE        DISPLAY SOFTWARE VERSION /\ LICENSE\\N   -V --VERSION        DISPLAY SOFTWARE VERSION /\ LICENSE\\N   -S --SMALL          USE LESS MEMORY (AT MOST 2500K)\\N   -1 .. -9            SET BLOCK SIZE TO 100K .. 900K\\N   --FAST              ALIAS FOR -1\\N   --BEST              ALIAS FOR -9\\N\\N   IF INVOKED AS `BZIP2\', DEFAULT ACTION IS TO COMPRESS.\\N              AS `BUNZIP2\',  DEFAULT ACTION IS TO DECOMPRESS.\\N              AS `BZCAT\', DEFAULT ACTION IS TO DECOMPRESS TO STDOUT.\\N\\N   IF NO FILE NAMES ARE GIVEN, BZIP2 COMPRESSES OR DECOMPRESSES\\N   FROM STANDARD INPUT TO STANDARD OUTPUT.  YOU CAN COMBINE\\N   SHORT FLAGS, SO `-V -4\' MEANS THE SAME AS -V4 OR -4V, /\C.\\N\\N', TMP_SSA_1, FULLPROGNAME),
true. 

 :- foreign(babel__implicit_redundantc_81(+integer, +integer, +integer, +integer)).

redundant(__CIL_GP_STDERR, __CIL_GP_PROGNAME, FLAG, VOID) :- 


 BabelExp_89 is __CIL_GP_STDERR,
babelPtrR(__CIL_TMP4, BabelExp_89, 8),
BabelExp_90 is __CIL_GP_PROGNAME,
babelPtrR(__CIL_TMP5, BabelExp_90, 8),
babel__implicit_redundantc_81(__CIL_TMP4, '%S: %S IS REDUNDANT IN VERSIONS 0.9.5 AND ABOVE\\N', __CIL_TMP5, FLAG),true. 

 :- foreign(babel__implicit_myMallocc_82(+positive,  -integer)).
:- foreign(babel__implicit_myMallocc_83(+integer)).

myMalloc(N, BABEL_RET) :- 


 babel__implicit_myMallocc_82(N , P_SSA_1),

(P_SSA_1 =:= 0 ->
__CIL_TMP4 is 1
; __CIL_TMP4 is 0),

(__CIL_TMP4 \= 0 ->
babel__implicit_myMallocc_83(0)
; true),
BABEL_RET is P_SSA_1, true. 

% :- foreign(babel__implicit_mkCellc_84(+integer,  -integer)).
%
%mkCell(BABEL_RET) :- 
%
%
% babel__implicit_mkCellc_84(16 , TMP_SSA_1),
%C_SSA_1 is TMP_SSA_1,
%MEM_5 is C_SSA_1,
%BabelExp_91 is 0,
%babel_ptrE(MEM_5, BabelExp_91, 8),
%__CIL_TMP5 is C_SSA_1 +1* 8,
%__CIL_TMP6 is __CIL_TMP5,
%BabelExp_92 is 0,
%babel_ptrE(__CIL_TMP6, BabelExp_92, 8),BABEL_RET is C_SSA_1, true. 

% :- foreign(babel__implicit_addFlagsFromEnvVarc_85(+integer,  -integer)).
%:- foreign(babel__implicit_addFlagsFromEnvVarc_86(+integer, +integer, +integer)).
%
%addFlagsFromEnvVar(ARGLIST, VARNAME, VOID) :- 
%
%
% babel__implicit_addFlagsFromEnvVarc_85(VARNAME , ENVBASE_SSA_1),
%
%(ENVBASE_SSA_1 \= 0 ->
%__CIL_TMP13 is 1
%; __CIL_TMP13 is 0),
%
%(__CIL_TMP13 \= 0 ->
%P_SSA_1 is ENVBASE_SSA_1,
%I_SSA_1 is 0,
%babel__implicit_addFlagsFromEnvVarc_86(ARGLIST, I_SSA_1, P_SSA_1)
%; true),
%true. 
%
% :- foreign(babel__implicit_addFlagsFromEnvVar_cil_lr_1_cil_lr_1c_87( -integer)).
%
%addFlagsFromEnvVar_cil_lr_1_cil_lr_1(__CIL_AP_ARGLIST, __CIL_AP_I, __CIL_AP_P, VOID) :- 
%
%
% babel__implicit_addFlagsFromEnvVar_cil_lr_1_cil_lr_1c_87(TMP_SSA_1),
%BabelExp_93 is __CIL_AP_P,
%babelPtrR(__CIL_TMP7, BabelExp_93, 8),
%__CIL_TMP8 is __CIL_TMP7 +1* 0,
%BabelExp_94 is __CIL_TMP8,
%babelPtrR_byte(__CIL_TMP9, BabelExp_94, 1),
%BabelExp_95 is TMP_SSA_1,
%babelPtrR(__CIL_TMP10, BabelExp_95, 8),
%__CIL_TMP11 is __CIL_TMP9,
%__CIL_TMP12 is __CIL_TMP10 +2* __CIL_TMP11,
%BabelExp_96 is __CIL_TMP12,
%babelPtrR(__CIL_TMP13, BabelExp_96, 2),
%__CIL_TMP14 is __CIL_TMP13,
%BabelExp_97 is __CIL_TMP14 /\ 8192,
%__CIL_TMP6 is BabelExp_97,
%(__CIL_TMP6 \= 0 ->
%BabelExp_98 is __CIL_AP_P,
%babelPtrR(__CIL_TMP15, BabelExp_98, 8),
%BabelExp_99 is __CIL_TMP15 +1* 1,
%babel_ptrE(__CIL_AP_P, BabelExp_99, 8),
%addFlagsFromEnvVar_cil_lr_1_cil_lr_1(__CIL_AP_ARGLIST, __CIL_AP_I, __CIL_AP_P, VOID),true
%; true). 
%
% :- foreign(babel__implicit_addFlagsFromEnvVar_cil_lr_1_cil_lr_2c_89( -integer)).
%
%addFlagsFromEnvVar_cil_lr_1_cil_lr_2(__CIL_AP_ARGLIST, __CIL_AP_I, __CIL_AP_P, VOID) :- 
%
%
% BabelExp_100 is __CIL_AP_P,
%babelPtrR(__CIL_TMP8, BabelExp_100, 8),
%BabelExp_101 is __CIL_AP_I,
%babelPtrR(__CIL_TMP9, BabelExp_101, 4),
%__CIL_TMP10 is __CIL_TMP8 +1* __CIL_TMP9,
%BabelExp_102 is __CIL_TMP10,
%babelPtrR_byte(__CIL_TMP11, BabelExp_102, 1),
%__CIL_TMP12 is __CIL_TMP11,
%
%(__CIL_TMP12 \= 0 ->
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%babel__implicit_addFlagsFromEnvVar_cil_lr_1_cil_lr_2c_89(TMP___0_SSA_1),
%BabelExp_103 is __CIL_AP_P,
%babelPtrR(__CIL_TMP13, BabelExp_103, 8),
%BabelExp_104 is __CIL_AP_I,
%babelPtrR(__CIL_TMP14, BabelExp_104, 4),
%__CIL_TMP15 is __CIL_TMP13 +1* __CIL_TMP14,
%BabelExp_105 is __CIL_TMP15,
%babelPtrR_byte(__CIL_TMP16, BabelExp_105, 1),
%BabelExp_106 is TMP___0_SSA_1,
%babelPtrR(__CIL_TMP17, BabelExp_106, 8),
%__CIL_TMP18 is __CIL_TMP16,
%__CIL_TMP19 is __CIL_TMP17 +2* __CIL_TMP18,
%BabelExp_107 is __CIL_TMP19,
%babelPtrR(__CIL_TMP20, BabelExp_107, 2),
%__CIL_TMP21 is __CIL_TMP20,
%BabelExp_108 is __CIL_TMP21 /\ 8192,
%__CIL_TMP7 is BabelExp_108,
%(__CIL_TMP7 \= 0 ->
%true
%; BabelExp_109 is __CIL_AP_I,
%babelPtrR(__CIL_TMP22, BabelExp_109, 4),
%BabelExp_110 is __CIL_TMP22 + 1,
%babel_ptrE(__CIL_AP_I, BabelExp_110, 4),
%addFlagsFromEnvVar_cil_lr_1_cil_lr_2(__CIL_AP_ARGLIST, __CIL_AP_I, __CIL_AP_P, VOID),true)
%; true). 
%
% 
%addFlagsFromEnvVar_cil_lr_1_cil_lr_3(__CIL_AP_ARGLIST, __CIL_AP_I, __CIL_AP_P, __CIL_AP_K, J, TMPNAME, VOID) :- 
%
%BabelExp_111 is __CIL_AP_K,
%babelPtrR(__CIL_TMP8, BabelExp_111, 4),
%
%(J < __CIL_TMP8 ->
%__CIL_TMP7 is 1
%; __CIL_TMP7 is 0),
%
%(__CIL_TMP7 \= 0 ->
%BabelExp_112 is __CIL_AP_P,
%babelPtrR(__CIL_TMP9, BabelExp_112, 8),
%__CIL_TMP10 is __CIL_TMP9 +1* J,
%__CIL_TMP11 is TMPNAME +1* J,
%babelPtrR_byte(BabelExp_113, __CIL_TMP10, 1),
%babel_ptrE(__CIL_TMP11, BabelExp_113, 1),
%BabelExp_114 is J + 1,
%J_SSA_1 is BabelExp_114,
%addFlagsFromEnvVar_cil_lr_1_cil_lr_3(__CIL_AP_ARGLIST, __CIL_AP_I, __CIL_AP_P, __CIL_AP_K, J_SSA_1, TMPNAME, VOID),true
%; true). 
%
 
%uInt64_toAscii_cil_lr_2(OUTBUF, I, BUF, NBUF, VOID) :- 
%
%
% (I < NBUF ->
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%BabelExp_119 is NBUF - I,
%__CIL_TMP7 is BabelExp_119,
%BabelExp_120 is __CIL_TMP7 - 1,
%__CIL_TMP8 is BabelExp_120,
%__CIL_TMP9 is BUF +1* __CIL_TMP8,
%BabelExp_121 is __CIL_TMP9,
%babelPtrR_byte(__CIL_TMP10, BabelExp_121, 1),
%__CIL_TMP11 is OUTBUF +1* I,
%BabelExp_122 is __CIL_TMP10,
%babel_ptrE(__CIL_TMP11, BabelExp_122, 1),
%BabelExp_123 is I + 1,
%I_SSA_1 is BabelExp_123,
%uInt64_toAscii_cil_lr_2(OUTBUF, I_SSA_1, BUF, NBUF, VOID),true
%; true). 

 
uInt64_qrm10_cil_lr_1(__CIL_AP_REM, N, I, VOID) :- 


 (I >= 0 ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
BabelExp_124 is __CIL_AP_REM,
babelPtrR(__CIL_TMP8, BabelExp_124, 4),
MEM_16 is N,
__CIL_TMP9 is MEM_16,
__CIL_TMP10 is __CIL_TMP9 +1* I,
BabelExp_125 is __CIL_TMP10,
babelPtrR_byte(__CIL_TMP11, BabelExp_125, 1),
BabelExp_126 is __CIL_TMP8 * 256,
__CIL_TMP12 is BabelExp_126,
__CIL_TMP13 is __CIL_TMP11,
BabelExp_127 is __CIL_TMP12 + __CIL_TMP13,
TMP_SSA_1 is BabelExp_127,
BabelExp_128 is TMP_SSA_1 // 10,
__CIL_TMP14 is BabelExp_128,
MEM_17 is N,
__CIL_TMP15 is MEM_17,
__CIL_TMP16 is __CIL_TMP15 +1* I,
BabelExp_129 is __CIL_TMP14,
babel_ptrE(__CIL_TMP16, BabelExp_129, 1),
BabelExp_130 is TMP_SSA_1 mod 10,
babel_ptrE(__CIL_AP_REM, BabelExp_130, 4),
BabelExp_131 is I - 1,
I_SSA_1 is BabelExp_131,
uInt64_qrm10_cil_lr_1(__CIL_AP_REM, N, I_SSA_1, VOID),true
; true). 

 
uInt64_isZero_cil_lr_1(__CIL_AP___CIL_RET3, N, I, BABEL_RET) :- 


 (I < 8 ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
MEM_12 is N,
__CIL_TMP9 is MEM_12,
__CIL_TMP10 is __CIL_TMP9 +1* I,
BabelExp_132 is __CIL_TMP10,
babelPtrR_byte(__CIL_TMP11, BabelExp_132, 1),
__CIL_TMP12 is __CIL_TMP11,

(__CIL_TMP12 \= 0 ->
__CIL_TMP8 is 1
; __CIL_TMP8 is 0),

(__CIL_TMP8 \= 0 ->
BabelExp_133 is 0,
babel_ptrE(__CIL_AP___CIL_RET3, BabelExp_133, 1),BABEL_RET is 1, true
; BabelExp_134 is I + 1,
I_SSA_1 is BabelExp_134,
uInt64_isZero_cil_lr_1(__CIL_AP___CIL_RET3, N, I_SSA_1 , RETFLAG4_SSA_1),BABEL_RET is RETFLAG4_SSA_1, true)
; BABEL_RET is 0, true). 

 
uInt64_to_double_cil_lr_1(__CIL_AP_SUM, N, I, BASE, VOID) :- 


 (I < 8 ->
__CIL_TMP7 is 1
; __CIL_TMP7 is 0),

(__CIL_TMP7 \= 0 ->
MEM_14 is N,
__CIL_TMP8 is MEM_14,
__CIL_TMP9 is __CIL_TMP8 +1* I,
BabelExp_135 is __CIL_TMP9,
babelPtrR_byte(__CIL_TMP10, BabelExp_135, 1),
__CIL_TMP11 is __CIL_TMP10,
BabelExp_136 is __CIL_AP_SUM,
babel_ptrFR(__CIL_TMP12, BabelExp_136,2),
BabelExp_137 is BASE * __CIL_TMP11,
__CIL_TMP13 is BabelExp_137,
BabelExp_138 is __CIL_TMP12 + __CIL_TMP13,
babel_ptrFW(__CIL_AP_SUM, BabelExp_138,2),
BabelExp_139 is BASE * 256.0,
BASE_SSA_1 is BabelExp_139,
BabelExp_140 is I + 1,
I_SSA_1 is BabelExp_140,
uInt64_to_double_cil_lr_1(__CIL_AP_SUM, N, I_SSA_1, BASE_SSA_1, VOID),true
; true). 

 
%uInt64_from_UInt32s(N, LO32, HI32, VOID) :- 
%
%
% BabelExp_0 is HI32 >> 24,
%__CIL_TMP4 is BabelExp_0,
%BabelExp_1 is __CIL_TMP4 /\ 255,
%__CIL_TMP5 is BabelExp_1,
%MEM_34 is N,
%__CIL_TMP6 is MEM_34,
%__CIL_TMP7 is __CIL_TMP6 +1* 7,
%BabelExp_2 is __CIL_TMP5,
%babel_ptrE(__CIL_TMP7, BabelExp_2, 1),
%BabelExp_3 is HI32 >> 16,
%__CIL_TMP8 is BabelExp_3,
%BabelExp_4 is __CIL_TMP8 /\ 255,
%__CIL_TMP9 is BabelExp_4,
%MEM_35 is N,
%__CIL_TMP10 is MEM_35,
%__CIL_TMP11 is __CIL_TMP10 +1* 6,
%BabelExp_5 is __CIL_TMP9,
%babel_ptrE(__CIL_TMP11, BabelExp_5, 1),
%BabelExp_6 is HI32 >> 8,
%__CIL_TMP12 is BabelExp_6,
%BabelExp_7 is __CIL_TMP12 /\ 255,
%__CIL_TMP13 is BabelExp_7,
%MEM_36 is N,
%__CIL_TMP14 is MEM_36,
%__CIL_TMP15 is __CIL_TMP14 +1* 5,
%BabelExp_8 is __CIL_TMP13,
%babel_ptrE(__CIL_TMP15, BabelExp_8, 1),
%BabelExp_9 is HI32 /\ 255,
%__CIL_TMP16 is BabelExp_9,
%MEM_37 is N,
%__CIL_TMP17 is MEM_37,
%__CIL_TMP18 is __CIL_TMP17 +1* 4,
%BabelExp_10 is __CIL_TMP16,
%babel_ptrE(__CIL_TMP18, BabelExp_10, 1),
%BabelExp_11 is LO32 >> 24,
%__CIL_TMP19 is BabelExp_11,
%BabelExp_12 is __CIL_TMP19 /\ 255,
%__CIL_TMP20 is BabelExp_12,
%MEM_38 is N,
%__CIL_TMP21 is MEM_38,
%__CIL_TMP22 is __CIL_TMP21 +1* 3,
%BabelExp_13 is __CIL_TMP20,
%babel_ptrE(__CIL_TMP22, BabelExp_13, 1),
%BabelExp_14 is LO32 >> 16,
%__CIL_TMP23 is BabelExp_14,
%BabelExp_15 is __CIL_TMP23 /\ 255,
%__CIL_TMP24 is BabelExp_15,
%MEM_39 is N,
%__CIL_TMP25 is MEM_39,
%__CIL_TMP26 is __CIL_TMP25 +1* 2,
%BabelExp_16 is __CIL_TMP24,
%babel_ptrE(__CIL_TMP26, BabelExp_16, 1),
%BabelExp_17 is LO32 >> 8,
%__CIL_TMP27 is BabelExp_17,
%BabelExp_18 is __CIL_TMP27 /\ 255,
%__CIL_TMP28 is BabelExp_18,
%MEM_40 is N,
%__CIL_TMP29 is MEM_40,
%__CIL_TMP30 is __CIL_TMP29 +1* 1,
%BabelExp_19 is __CIL_TMP28,
%babel_ptrE(__CIL_TMP30, BabelExp_19, 1),
%BabelExp_20 is LO32 /\ 255,
%__CIL_TMP31 is BabelExp_20,
%MEM_41 is N,
%__CIL_TMP32 is MEM_41,
%__CIL_TMP33 is __CIL_TMP32,
%BabelExp_21 is __CIL_TMP31,
%babel_ptrE(__CIL_TMP33, BabelExp_21, 1),true. 
%
% :- foreign(babel__implicit_uInt64_toAsciic_0(+integer, +integer, +integer, +positive)).
%:- foreign(babel__implicit_uInt64_toAsciic_1(+integer, +integer, +integer, +integer)).
%
%uInt64_toAscii(__CIL_PP_OUTBUF, __CIL_PP_NBUF, __CIL_FP_OUTBUF, __CIL_FP_NBUF, OUTBUF, N, VOID) :- 
%
%
% NBUF_SSA_1 is 0,
%BabelExp_22 is N,
%babelPtrR(N_COPY_SSA_1, BabelExp_22, 8),
%BabelExp_23 is OUTBUF,
%babel_ptrE(__CIL_FP_OUTBUF, BabelExp_23, 8),
%BabelExp_24 is NBUF_SSA_1,
%babel_ptrE(__CIL_FP_NBUF, BabelExp_24, 4),
%babel__implicit_uInt64_toAsciic_0(__CIL_PP_OUTBUF, __CIL_PP_NBUF, BUF, N_COPY_SSA_1),
%BabelExp_25 is __CIL_FP_OUTBUF,
%babelPtrR(OUTBUF_SSA_1, BabelExp_25, 8),
%BabelExp_26 is __CIL_FP_NBUF,
%babelPtrR(NBUF_SSA_2, BabelExp_26, 4),
%__CIL_TMP18 is OUTBUF_SSA_1 +1* NBUF_SSA_2,
%BabelExp_27 is 0,
%babel_ptrE(__CIL_TMP18, BabelExp_27, 1),
%I_SSA_1 is 0,
%babel__implicit_uInt64_toAsciic_1(OUTBUF_SSA_1, I_SSA_1, BUF, NBUF_SSA_2),true. 
%
% 
%
%uInt64_toAscii_cil_lr_2(OUTBUF, I, BUF, NBUF, VOID) :- 
%
%
% (I < NBUF ->
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%BabelExp_22 is NBUF - I,
%__CIL_TMP7 is BabelExp_22,
%BabelExp_23 is __CIL_TMP7 - 1,
%__CIL_TMP8 is BabelExp_23,
%__CIL_TMP9 is BUF +1* __CIL_TMP8,
%BabelExp_24 is __CIL_TMP9,
%babelPtrR_byte(__CIL_TMP10, BabelExp_24, 1),
%__CIL_TMP11 is OUTBUF +1* I,
%BabelExp_25 is __CIL_TMP10,
%babel_ptrE(__CIL_TMP11, BabelExp_25, 1),
%BabelExp_26 is I + 1,
%I_SSA_1 is BabelExp_26,
%uInt64_toAscii_cil_lr_2(OUTBUF, I_SSA_1, BUF, NBUF, VOID),true
%; true). 
%
 
%:- foreign(babel__implicit_BZ2_hbAssignCodesc_0(+integer, +integer, +integer, +integer, +integer, +integer)).
%
%bZ2_hbAssignCodes(CODE, LENGTH, MINLEN, MAXLEN, ALPHASIZE, VOID) :- 
%
%
% VEC_SSA_1 is 0,
%N_SSA_1 is MINLEN,
%babel__implicit_BZ2_hbAssignCodesc_0(CODE, LENGTH, MAXLEN, ALPHASIZE, N_SSA_1, VEC_SSA_1),true. 
%
% :- foreign(babel__implicit_BZ2_hbCreateDecodeTablesc_1(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_hbCreateDecodeTablesc_2(+integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_hbCreateDecodeTablesc_3(+integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_hbCreateDecodeTablesc_4(+integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_hbCreateDecodeTablesc_5(+integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_hbCreateDecodeTablesc_6(+integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_hbCreateDecodeTablesc_7(+integer, +integer, +integer, +integer)).
%
%bZ2_hbCreateDecodeTables(__CIL_PP_LIMIT, __CIL_PP_BASE, __CIL_PP_LENGTH, __CIL_PP_MINLEN, __CIL_PP_MAXLEN, __CIL_PP_ALPHASIZE, __CIL_FP_LIMIT, __CIL_FP_BASE, __CIL_FP_LENGTH, __CIL_FP_MINLEN, __CIL_FP_MAXLEN, __CIL_FP_ALPHASIZE, LIMIT, BASE, PERM, LENGTH, MINLEN, MAXLEN, ALPHASIZE, VOID) :- 
%
%
% PP_SSA_1 is 0,
%I_SSA_1 is MINLEN,
%BabelExp_0 is LIMIT,
%babel_ptrE(__CIL_FP_LIMIT, BabelExp_0, 8),
%BabelExp_1 is BASE,
%babel_ptrE(__CIL_FP_BASE, BabelExp_1, 8),
%BabelExp_2 is LENGTH,
%babel_ptrE(__CIL_FP_LENGTH, BabelExp_2, 8),
%BabelExp_3 is MINLEN,
%babel_ptrE(__CIL_FP_MINLEN, BabelExp_3, 4),
%BabelExp_4 is MAXLEN,
%babel_ptrE(__CIL_FP_MAXLEN, BabelExp_4, 4),
%BabelExp_5 is ALPHASIZE,
%babel_ptrE(__CIL_FP_ALPHASIZE, BabelExp_5, 4),
%babel__implicit_BZ2_hbCreateDecodeTablesc_1(__CIL_PP_LIMIT, __CIL_PP_BASE, __CIL_PP_LENGTH, __CIL_PP_MINLEN, __CIL_PP_MAXLEN, __CIL_PP_ALPHASIZE, PERM, PP_SSA_1, I_SSA_1),
%BabelExp_6 is __CIL_FP_LIMIT,
%babelPtrR(LIMIT_SSA_1, BabelExp_6, 8),
%BabelExp_7 is __CIL_FP_BASE,
%babelPtrR(BASE_SSA_1, BabelExp_7, 8),
%BabelExp_8 is __CIL_FP_LENGTH,
%babelPtrR(LENGTH_SSA_1, BabelExp_8, 8),
%BabelExp_9 is __CIL_FP_MINLEN,
%babelPtrR(MINLEN_SSA_1, BabelExp_9, 4),
%BabelExp_10 is __CIL_FP_MAXLEN,
%babelPtrR(MAXLEN_SSA_1, BabelExp_10, 4),
%BabelExp_11 is __CIL_FP_ALPHASIZE,
%babelPtrR(ALPHASIZE_SSA_1, BabelExp_11, 4),
%I_SSA_2 is 0,
%BabelExp_12 is LIMIT_SSA_1,
%babel_ptrE(__CIL_FP_LIMIT, BabelExp_12, 8),
%BabelExp_13 is BASE_SSA_1,
%babel_ptrE(__CIL_FP_BASE, BabelExp_13, 8),
%BabelExp_14 is LENGTH_SSA_1,
%babel_ptrE(__CIL_FP_LENGTH, BabelExp_14, 8),
%BabelExp_15 is MINLEN_SSA_1,
%babel_ptrE(__CIL_FP_MINLEN, BabelExp_15, 4),
%BabelExp_16 is MAXLEN_SSA_1,
%babel_ptrE(__CIL_FP_MAXLEN, BabelExp_16, 4),
%BabelExp_17 is ALPHASIZE_SSA_1,
%babel_ptrE(__CIL_FP_ALPHASIZE, BabelExp_17, 4),
%babel__implicit_BZ2_hbCreateDecodeTablesc_2(__CIL_PP_LIMIT, __CIL_PP_BASE, __CIL_PP_LENGTH, __CIL_PP_MINLEN, __CIL_PP_MAXLEN, __CIL_PP_ALPHASIZE, I_SSA_2),
%BabelExp_18 is __CIL_FP_LIMIT,
%babelPtrR(LIMIT_SSA_2, BabelExp_18, 8),
%BabelExp_19 is __CIL_FP_BASE,
%babelPtrR(BASE_SSA_2, BabelExp_19, 8),
%BabelExp_20 is __CIL_FP_LENGTH,
%babelPtrR(LENGTH_SSA_2, BabelExp_20, 8),
%BabelExp_21 is __CIL_FP_MINLEN,
%babelPtrR(MINLEN_SSA_2, BabelExp_21, 4),
%BabelExp_22 is __CIL_FP_MAXLEN,
%babelPtrR(MAXLEN_SSA_2, BabelExp_22, 4),
%BabelExp_23 is __CIL_FP_ALPHASIZE,
%babelPtrR(ALPHASIZE_SSA_2, BabelExp_23, 4),
%I_SSA_3 is 0,
%BabelExp_24 is LIMIT_SSA_2,
%babel_ptrE(__CIL_FP_LIMIT, BabelExp_24, 8),
%BabelExp_25 is BASE_SSA_2,
%babel_ptrE(__CIL_FP_BASE, BabelExp_25, 8),
%BabelExp_26 is MINLEN_SSA_2,
%babel_ptrE(__CIL_FP_MINLEN, BabelExp_26, 4),
%BabelExp_27 is MAXLEN_SSA_2,
%babel_ptrE(__CIL_FP_MAXLEN, BabelExp_27, 4),
%babel__implicit_BZ2_hbCreateDecodeTablesc_3(__CIL_PP_LIMIT, __CIL_PP_BASE, __CIL_PP_MINLEN, __CIL_PP_MAXLEN, LENGTH_SSA_2, ALPHASIZE_SSA_2, I_SSA_3),
%BabelExp_28 is __CIL_FP_LIMIT,
%babelPtrR(LIMIT_SSA_3, BabelExp_28, 8),
%BabelExp_29 is __CIL_FP_BASE,
%babelPtrR(BASE_SSA_3, BabelExp_29, 8),
%BabelExp_30 is __CIL_FP_MINLEN,
%babelPtrR(MINLEN_SSA_3, BabelExp_30, 4),
%BabelExp_31 is __CIL_FP_MAXLEN,
%babelPtrR(MAXLEN_SSA_3, BabelExp_31, 4),
%I_SSA_4 is 1,
%BabelExp_32 is LIMIT_SSA_3,
%babel_ptrE(__CIL_FP_LIMIT, BabelExp_32, 8),
%BabelExp_33 is BASE_SSA_3,
%babel_ptrE(__CIL_FP_BASE, BabelExp_33, 8),
%BabelExp_34 is MINLEN_SSA_3,
%babel_ptrE(__CIL_FP_MINLEN, BabelExp_34, 4),
%BabelExp_35 is MAXLEN_SSA_3,
%babel_ptrE(__CIL_FP_MAXLEN, BabelExp_35, 4),
%babel__implicit_BZ2_hbCreateDecodeTablesc_4(__CIL_PP_LIMIT, __CIL_PP_BASE, __CIL_PP_MINLEN, __CIL_PP_MAXLEN, I_SSA_4),
%BabelExp_36 is __CIL_FP_LIMIT,
%babelPtrR(LIMIT_SSA_4, BabelExp_36, 8),
%BabelExp_37 is __CIL_FP_BASE,
%babelPtrR(BASE_SSA_4, BabelExp_37, 8),
%BabelExp_38 is __CIL_FP_MINLEN,
%babelPtrR(MINLEN_SSA_4, BabelExp_38, 4),
%BabelExp_39 is __CIL_FP_MAXLEN,
%babelPtrR(MAXLEN_SSA_4, BabelExp_39, 4),
%I_SSA_5 is 0,
%BabelExp_40 is LIMIT_SSA_4,
%babel_ptrE(__CIL_FP_LIMIT, BabelExp_40, 8),
%BabelExp_41 is BASE_SSA_4,
%babel_ptrE(__CIL_FP_BASE, BabelExp_41, 8),
%BabelExp_42 is MINLEN_SSA_4,
%babel_ptrE(__CIL_FP_MINLEN, BabelExp_42, 4),
%BabelExp_43 is MAXLEN_SSA_4,
%babel_ptrE(__CIL_FP_MAXLEN, BabelExp_43, 4),
%babel__implicit_BZ2_hbCreateDecodeTablesc_5(__CIL_PP_LIMIT, __CIL_PP_BASE, __CIL_PP_MINLEN, __CIL_PP_MAXLEN, I_SSA_5),
%BabelExp_44 is __CIL_FP_LIMIT,
%babelPtrR(LIMIT_SSA_5, BabelExp_44, 8),
%BabelExp_45 is __CIL_FP_BASE,
%babelPtrR(BASE_SSA_5, BabelExp_45, 8),
%BabelExp_46 is __CIL_FP_MINLEN,
%babelPtrR(MINLEN_SSA_5, BabelExp_46, 4),
%BabelExp_47 is __CIL_FP_MAXLEN,
%babelPtrR(MAXLEN_SSA_5, BabelExp_47, 4),
%VEC_SSA_1 is 0,
%I_SSA_6 is MINLEN_SSA_5,
%BabelExp_48 is LIMIT_SSA_5,
%babel_ptrE(__CIL_FP_LIMIT, BabelExp_48, 8),
%BabelExp_49 is BASE_SSA_5,
%babel_ptrE(__CIL_FP_BASE, BabelExp_49, 8),
%BabelExp_50 is MINLEN_SSA_5,
%babel_ptrE(__CIL_FP_MINLEN, BabelExp_50, 4),
%BabelExp_51 is MAXLEN_SSA_5,
%babel_ptrE(__CIL_FP_MAXLEN, BabelExp_51, 4),
%babel__implicit_BZ2_hbCreateDecodeTablesc_6(__CIL_PP_LIMIT, __CIL_PP_BASE, __CIL_PP_MINLEN, __CIL_PP_MAXLEN, I_SSA_6, VEC_SSA_1),
%BabelExp_52 is __CIL_FP_LIMIT,
%babelPtrR(LIMIT_SSA_6, BabelExp_52, 8),
%BabelExp_53 is __CIL_FP_BASE,
%babelPtrR(BASE_SSA_6, BabelExp_53, 8),
%BabelExp_54 is __CIL_FP_MINLEN,
%babelPtrR(MINLEN_SSA_6, BabelExp_54, 4),
%BabelExp_55 is __CIL_FP_MAXLEN,
%babelPtrR(MAXLEN_SSA_6, BabelExp_55, 4),
%BabelExp_56 is MINLEN_SSA_6 + 1,
%I_SSA_7 is BabelExp_56,
%babel__implicit_BZ2_hbCreateDecodeTablesc_7(LIMIT_SSA_6, BASE_SSA_6, MAXLEN_SSA_6, I_SSA_7),true. 
%
% 
%bZ2_hbCreateDecodeTables_cil_lr_1_cil_lr_1(__CIL_AP_PERM, __CIL_AP_PP, __CIL_AP_I, __CIL_AP_LENGTH, __CIL_AP_ALPHASIZE, J, VOID) :- 
%
%
% BabelExp_57 is __CIL_AP_ALPHASIZE,
%babelPtrR(__CIL_TMP10, BabelExp_57, 4),
%
%(J < __CIL_TMP10 ->
%__CIL_TMP8 is 1
%; __CIL_TMP8 is 0),
%
%(__CIL_TMP8 \= 0 ->
%BabelExp_58 is __CIL_AP_LENGTH,
%babelPtrR(__CIL_TMP11, BabelExp_58, 8),
%__CIL_TMP12 is __CIL_TMP11 +1* J,
%BabelExp_59 is __CIL_TMP12,
%babelPtrR_byte(__CIL_TMP13, BabelExp_59, 1),
%__CIL_TMP14 is __CIL_TMP13,
%BabelExp_60 is __CIL_AP_I,
%babelPtrR(__CIL_TMP15, BabelExp_60, 4),
%
%(__CIL_TMP14 =:= __CIL_TMP15 ->
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%BabelExp_61 is __CIL_AP_PERM,
%babelPtrR(__CIL_TMP16, BabelExp_61, 8),
%BabelExp_62 is __CIL_AP_PP,
%babelPtrR(__CIL_TMP17, BabelExp_62, 4),
%__CIL_TMP18 is __CIL_TMP16 +4* __CIL_TMP17,
%BabelExp_63 is J,
%babel_ptrE(__CIL_TMP18, BabelExp_63, 4),
%BabelExp_64 is __CIL_AP_PP,
%babelPtrR(__CIL_TMP19, BabelExp_64, 4),
%BabelExp_65 is __CIL_TMP19 + 1,
%babel_ptrE(__CIL_AP_PP, BabelExp_65, 4)
%; true),
%BabelExp_66 is J + 1,
%J_SSA_1 is BabelExp_66,
%bZ2_hbCreateDecodeTables_cil_lr_1_cil_lr_1(__CIL_AP_PERM, __CIL_AP_PP, __CIL_AP_I, __CIL_AP_LENGTH, __CIL_AP_ALPHASIZE, J_SSA_1, VOID),true
%; true). 
%
% 
%bZ2_hbAssignCodes_cil_lr_1_cil_lr_1(__CIL_AP_CODE, __CIL_AP_LENGTH, __CIL_AP_MAXLEN, __CIL_AP_ALPHASIZE, __CIL_AP_N, __CIL_AP_VEC, I, VOID) :- 
%
%
% BabelExp_67 is __CIL_AP_ALPHASIZE,
%babelPtrR(__CIL_TMP11, BabelExp_67, 4),
%
%(I < __CIL_TMP11 ->
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%BabelExp_68 is __CIL_AP_LENGTH,
%babelPtrR(__CIL_TMP12, BabelExp_68, 8),
%__CIL_TMP13 is __CIL_TMP12 +1* I,
%BabelExp_69 is __CIL_TMP13,
%babelPtrR_byte(__CIL_TMP14, BabelExp_69, 1),
%__CIL_TMP15 is __CIL_TMP14,
%BabelExp_70 is __CIL_AP_N,
%babelPtrR(__CIL_TMP16, BabelExp_70, 4),
%
%(__CIL_TMP15 =:= __CIL_TMP16 ->
%__CIL_TMP10 is 1
%; __CIL_TMP10 is 0),
%
%(__CIL_TMP10 \= 0 ->
%BabelExp_71 is __CIL_AP_CODE,
%babelPtrR(__CIL_TMP17, BabelExp_71, 8),
%__CIL_TMP18 is __CIL_TMP17 +4* I,
%babelPtrR(BabelExp_72, __CIL_AP_VEC, 4),
%babel_ptrE(__CIL_TMP18, BabelExp_72, 4),
%BabelExp_73 is __CIL_AP_VEC,
%babelPtrR(__CIL_TMP19, BabelExp_73, 4),
%BabelExp_74 is __CIL_TMP19 + 1,
%babel_ptrE(__CIL_AP_VEC, BabelExp_74, 4)
%; true),
%BabelExp_75 is I + 1,
%I_SSA_1 is BabelExp_75,
%bZ2_hbAssignCodes_cil_lr_1_cil_lr_1(__CIL_AP_CODE, __CIL_AP_LENGTH, __CIL_AP_MAXLEN, __CIL_AP_ALPHASIZE, __CIL_AP_N, __CIL_AP_VEC, I_SSA_1, VOID),true
%; true). 
%
% :- foreign(babel__implicit_BZ2_hbCreateDecodeTables_cil_lr_1c_10(+integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_hbCreateDecodeTables_cil_lr_1c_11(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%
%bZ2_hbCreateDecodeTables_cil_lr_1(__CIL_PP_PERM, __CIL_PP_PP, __CIL_PP_I, __CIL_FP_PERM, __CIL_FP_PP, __CIL_FP_I, __CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_LENGTH, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, __CIL_AP_ALPHASIZE, PERM, PP, I, VOID) :- 
%
%
% BabelExp_76 is __CIL_AP_MAXLEN,
%babelPtrR(__CIL_TMP23, BabelExp_76, 4),
%
%(I =< __CIL_TMP23 ->
%__CIL_TMP22 is 1
%; __CIL_TMP22 is 0),
%
%(__CIL_TMP22 \= 0 ->
%J_SSA_1 is 0,
%BabelExp_77 is PERM,
%babel_ptrE(__CIL_FP_PERM, BabelExp_77, 8),
%BabelExp_78 is PP,
%babel_ptrE(__CIL_FP_PP, BabelExp_78, 4),
%BabelExp_79 is I,
%babel_ptrE(__CIL_FP_I, BabelExp_79, 4),
%babel__implicit_BZ2_hbCreateDecodeTables_cil_lr_1c_10(__CIL_PP_PERM, __CIL_PP_PP, __CIL_PP_I, __CIL_AP_LENGTH, __CIL_AP_ALPHASIZE, J_SSA_1),
%BabelExp_80 is __CIL_FP_PERM,
%babelPtrR(PERM_SSA_1, BabelExp_80, 8),
%BabelExp_81 is __CIL_FP_PP,
%babelPtrR(PP_SSA_1, BabelExp_81, 4),
%BabelExp_82 is __CIL_FP_I,
%babelPtrR(I_SSA_1, BabelExp_82, 4),
%BabelExp_83 is I_SSA_1 + 1,
%I_SSA_2 is BabelExp_83,
%babel__implicit_BZ2_hbCreateDecodeTables_cil_lr_1c_11(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_LENGTH, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, __CIL_AP_ALPHASIZE, PERM_SSA_1, PP_SSA_1, I_SSA_2),true
%; true). 
%
% 
%bZ2_hbCreateDecodeTables_cil_lr_2(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_LENGTH, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, __CIL_AP_ALPHASIZE, I, VOID) :- 
%
%
% (I < 23 ->
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%BabelExp_84 is __CIL_AP_BASE,
%babelPtrR(__CIL_TMP10, BabelExp_84, 8),
%__CIL_TMP11 is __CIL_TMP10 +4* I,
%BabelExp_85 is 0,
%babel_ptrE(__CIL_TMP11, BabelExp_85, 4),
%BabelExp_86 is I + 1,
%I_SSA_1 is BabelExp_86,
%bZ2_hbCreateDecodeTables_cil_lr_2(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_LENGTH, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, __CIL_AP_ALPHASIZE, I_SSA_1, VOID),true
%; true). 
%
% 
%bZ2_hbCreateDecodeTables_cil_lr_3(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, LENGTH, ALPHASIZE, I, VOID) :- 
%
%
% (I < ALPHASIZE ->
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%__CIL_TMP10 is LENGTH +1* I,
%BabelExp_87 is __CIL_TMP10,
%babelPtrR_byte(__CIL_TMP11, BabelExp_87, 1),
%__CIL_TMP12 is __CIL_TMP11,
%BabelExp_88 is __CIL_AP_BASE,
%babelPtrR(__CIL_TMP13, BabelExp_88, 8),
%BabelExp_89 is __CIL_TMP12 + 1,
%__CIL_TMP14 is BabelExp_89,
%__CIL_TMP15 is __CIL_TMP13 +4* __CIL_TMP14,
%BabelExp_90 is __CIL_TMP15,
%babelPtrR(__CIL_TMP16, BabelExp_90, 4),
%__CIL_TMP17 is LENGTH +1* I,
%BabelExp_91 is __CIL_TMP17,
%babelPtrR_byte(__CIL_TMP18, BabelExp_91, 1),
%__CIL_TMP19 is __CIL_TMP18,
%BabelExp_92 is __CIL_AP_BASE,
%babelPtrR(__CIL_TMP20, BabelExp_92, 8),
%BabelExp_93 is __CIL_TMP19 + 1,
%__CIL_TMP21 is BabelExp_93,
%__CIL_TMP22 is __CIL_TMP20 +4* __CIL_TMP21,
%BabelExp_94 is __CIL_TMP16 + 1,
%babel_ptrE(__CIL_TMP22, BabelExp_94, 4),
%BabelExp_95 is I + 1,
%I_SSA_1 is BabelExp_95,
%bZ2_hbCreateDecodeTables_cil_lr_3(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, LENGTH, ALPHASIZE, I_SSA_1, VOID),true
%; true). 
%
 
%bZ2_hbCreateDecodeTables_cil_lr_4(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, I, VOID) :- 
%
%
% (I < 23 ->
%__CIL_TMP7 is 1
%; __CIL_TMP7 is 0),
%
%(__CIL_TMP7 \= 0 ->
%BabelExp_96 is __CIL_AP_BASE,
%babelPtrR(__CIL_TMP8, BabelExp_96, 8),
%__CIL_TMP9 is __CIL_TMP8 +4* I,
%BabelExp_97 is __CIL_AP_BASE,
%babelPtrR(__CIL_TMP10, BabelExp_97, 8),
%BabelExp_98 is I - 1,
%__CIL_TMP11 is BabelExp_98,
%__CIL_TMP12 is __CIL_TMP10 +4* __CIL_TMP11,
%BabelExp_99 is __CIL_TMP9,
%babelPtrR(__CIL_TMP13, BabelExp_99, 4),
%BabelExp_100 is __CIL_TMP12,
%babelPtrR(__CIL_TMP14, BabelExp_100, 4),
%BabelExp_101 is __CIL_AP_BASE,
%babelPtrR(__CIL_TMP15, BabelExp_101, 8),
%__CIL_TMP16 is __CIL_TMP15 +4* I,
%BabelExp_102 is __CIL_TMP13 + __CIL_TMP14,
%babel_ptrE(__CIL_TMP16, BabelExp_102, 4),
%BabelExp_103 is I + 1,
%I_SSA_1 is BabelExp_103,
%bZ2_hbCreateDecodeTables_cil_lr_4(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, I_SSA_1, VOID),true
%; true). 
%
% 
%bZ2_hbCreateDecodeTables_cil_lr_5(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, I, VOID) :- 
%
%
% (I < 23 ->
%__CIL_TMP7 is 1
%; __CIL_TMP7 is 0),
%
%(__CIL_TMP7 \= 0 ->
%BabelExp_104 is __CIL_AP_LIMIT,
%babelPtrR(__CIL_TMP8, BabelExp_104, 8),
%__CIL_TMP9 is __CIL_TMP8 +4* I,
%BabelExp_105 is 0,
%babel_ptrE(__CIL_TMP9, BabelExp_105, 4),
%BabelExp_106 is I + 1,
%I_SSA_1 is BabelExp_106,
%bZ2_hbCreateDecodeTables_cil_lr_5(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, I_SSA_1, VOID),true
%; true). 
%
% 
%bZ2_hbCreateDecodeTables_cil_lr_6(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, I, VEC, VOID) :- 
%
%
% BabelExp_107 is __CIL_AP_MAXLEN,
%babelPtrR(__CIL_TMP11, BabelExp_107, 4),
%
%(I =< __CIL_TMP11 ->
%__CIL_TMP10 is 1
%; __CIL_TMP10 is 0),
%
%(__CIL_TMP10 \= 0 ->
%BabelExp_108 is __CIL_AP_BASE,
%babelPtrR(__CIL_TMP12, BabelExp_108, 8),
%BabelExp_109 is I + 1,
%__CIL_TMP13 is BabelExp_109,
%__CIL_TMP14 is __CIL_TMP12 +4* __CIL_TMP13,
%BabelExp_110 is __CIL_AP_BASE,
%babelPtrR(__CIL_TMP15, BabelExp_110, 8),
%__CIL_TMP16 is __CIL_TMP15 +4* I,
%BabelExp_111 is __CIL_TMP14,
%babelPtrR(__CIL_TMP17, BabelExp_111, 4),
%BabelExp_112 is __CIL_TMP16,
%babelPtrR(__CIL_TMP18, BabelExp_112, 4),
%BabelExp_113 is __CIL_TMP17 - __CIL_TMP18,
%__CIL_TMP19 is BabelExp_113,
%BabelExp_114 is VEC + __CIL_TMP19,
%VEC_SSA_1 is BabelExp_114,
%BabelExp_115 is __CIL_AP_LIMIT,
%babelPtrR(__CIL_TMP20, BabelExp_115, 8),
%__CIL_TMP21 is __CIL_TMP20 +4* I,
%BabelExp_116 is VEC_SSA_1 - 1,
%babel_ptrE(__CIL_TMP21, BabelExp_116, 4),
%BabelExp_117 is VEC_SSA_1 << 1,
%VEC_SSA_2 is BabelExp_117,
%BabelExp_118 is I + 1,
%I_SSA_1 is BabelExp_118,
%bZ2_hbCreateDecodeTables_cil_lr_6(__CIL_AP_LIMIT, __CIL_AP_BASE, __CIL_AP_MINLEN, __CIL_AP_MAXLEN, I_SSA_1, VEC_SSA_2, VOID),true
%; true). 
%
% 
%bZ2_hbCreateDecodeTables_cil_lr_7(LIMIT, BASE, MAXLEN, I, VOID) :- 
%
%
% (I =< MAXLEN ->
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%BabelExp_119 is I - 1,
%__CIL_TMP7 is BabelExp_119,
%__CIL_TMP8 is LIMIT +4* __CIL_TMP7,
%BabelExp_120 is __CIL_TMP8,
%babelPtrR(__CIL_TMP9, BabelExp_120, 4),
%BabelExp_121 is __CIL_TMP9 + 1,
%__CIL_TMP10 is BabelExp_121,
%__CIL_TMP11 is BASE +4* I,
%BabelExp_122 is __CIL_TMP10 << 1,
%__CIL_TMP12 is BabelExp_122,
%BabelExp_123 is __CIL_TMP11,
%babelPtrR(__CIL_TMP13, BabelExp_123, 4),
%__CIL_TMP14 is BASE +4* I,
%BabelExp_124 is __CIL_TMP12 - __CIL_TMP13,
%babel_ptrE(__CIL_TMP14, BabelExp_124, 4),
%BabelExp_125 is I + 1,
%I_SSA_1 is BabelExp_125,
%bZ2_hbCreateDecodeTables_cil_lr_7(LIMIT, BASE, MAXLEN, I_SSA_1, VOID),true
%; true). 

% :- foreign(babel__implicit_BZ2_hbAssignCodes_cil_lr_1c_18(+integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_hbAssignCodes_cil_lr_1c_19(+integer, +integer, +integer, +integer, +integer, +integer)).
%
%bZ2_hbAssignCodes_cil_lr_1(__CIL_PP_CODE, __CIL_PP_LENGTH, __CIL_PP_MAXLEN, __CIL_PP_ALPHASIZE, __CIL_PP_N, __CIL_PP_VEC, __CIL_FP_CODE, __CIL_FP_LENGTH, __CIL_FP_MAXLEN, __CIL_FP_ALPHASIZE, __CIL_FP_N, __CIL_FP_VEC, CODE, LENGTH, MAXLEN, ALPHASIZE, N, VEC, VOID) :- 
%
%
% (N =< MAXLEN ->
%__CIL_TMP29 is 1
%; __CIL_TMP29 is 0),
%
%(__CIL_TMP29 \= 0 ->
%I_SSA_1 is 0,
%BabelExp_126 is CODE,
%babel_ptrE(__CIL_FP_CODE, BabelExp_126, 8),
%BabelExp_127 is LENGTH,
%babel_ptrE(__CIL_FP_LENGTH, BabelExp_127, 8),
%BabelExp_128 is MAXLEN,
%babel_ptrE(__CIL_FP_MAXLEN, BabelExp_128, 4),
%BabelExp_129 is ALPHASIZE,
%babel_ptrE(__CIL_FP_ALPHASIZE, BabelExp_129, 4),
%BabelExp_130 is N,
%babel_ptrE(__CIL_FP_N, BabelExp_130, 4),
%BabelExp_131 is VEC,
%babel_ptrE(__CIL_FP_VEC, BabelExp_131, 4),
%babel__implicit_BZ2_hbAssignCodes_cil_lr_1c_18(__CIL_PP_CODE, __CIL_PP_LENGTH, __CIL_PP_MAXLEN, __CIL_PP_ALPHASIZE, __CIL_PP_N, __CIL_PP_VEC, I_SSA_1),
%BabelExp_132 is __CIL_FP_CODE,
%babelPtrR(CODE_SSA_1, BabelExp_132, 8),
%BabelExp_133 is __CIL_FP_LENGTH,
%babelPtrR(LENGTH_SSA_1, BabelExp_133, 8),
%BabelExp_134 is __CIL_FP_MAXLEN,
%babelPtrR(MAXLEN_SSA_1, BabelExp_134, 4),
%BabelExp_135 is __CIL_FP_ALPHASIZE,
%babelPtrR(ALPHASIZE_SSA_1, BabelExp_135, 4),
%BabelExp_136 is __CIL_FP_N,
%babelPtrR(N_SSA_1, BabelExp_136, 4),
%BabelExp_137 is __CIL_FP_VEC,
%babelPtrR(VEC_SSA_1, BabelExp_137, 4),
%BabelExp_138 is VEC_SSA_1 << 1,
%VEC_SSA_2 is BabelExp_138,
%BabelExp_139 is N_SSA_1 + 1,
%N_SSA_2 is BabelExp_139,
%babel__implicit_BZ2_hbAssignCodes_cil_lr_1c_19(CODE_SSA_1, LENGTH_SSA_1, MAXLEN_SSA_1, ALPHASIZE_SSA_1, N_SSA_2, VEC_SSA_2),true
%; true). 
%
 
%:- foreign(babel__implicit_fallbackSimpleSortc_0(+integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_fallbackSimpleSortc_1(+integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_fallbackSimpleSortc_2(+integer, +integer, +integer, +integer, +integer)).
%
%fallbackSimpleSort(__CIL_PP_FMAP, __CIL_PP_ECLASS, __CIL_PP_LO, __CIL_PP_HI, __CIL_FP_FMAP, __CIL_FP_ECLASS, __CIL_FP_LO, __CIL_FP_HI, FMAP, ECLASS, LO, HI, VOID) :- 
%
%
% (LO =:= HI ->
%__CIL_TMP23 is 1
%; __CIL_TMP23 is 0),
%
%(__CIL_TMP23 \= 0 ->
%true
%; BabelExp_0 is HI - LO,
%__CIL_TMP25 is BabelExp_0,
%
%(__CIL_TMP25 > 3 ->
%__CIL_TMP24 is 1
%; __CIL_TMP24 is 0),
%
%(__CIL_TMP24 \= 0 ->
%BabelExp_1 is HI - 4,
%I_SSA_1 is BabelExp_1,
%BabelExp_2 is FMAP,
%babel_ptrE(__CIL_FP_FMAP, BabelExp_2, 8),
%BabelExp_3 is ECLASS,
%babel_ptrE(__CIL_FP_ECLASS, BabelExp_3, 8),
%BabelExp_4 is LO,
%babel_ptrE(__CIL_FP_LO, BabelExp_4, 4),
%BabelExp_5 is HI,
%babel_ptrE(__CIL_FP_HI, BabelExp_5, 4),
%babel__implicit_fallbackSimpleSortc_0(__CIL_PP_FMAP, __CIL_PP_ECLASS, __CIL_PP_LO, __CIL_PP_HI, I_SSA_1),
%BabelExp_6 is __CIL_FP_FMAP,
%babelPtrR(FMAP_SSA_1, BabelExp_6, 8),
%BabelExp_7 is __CIL_FP_ECLASS,
%babelPtrR(ECLASS_SSA_1, BabelExp_7, 8),
%BabelExp_8 is __CIL_FP_LO,
%babelPtrR(LO_SSA_1, BabelExp_8, 4),
%BabelExp_9 is __CIL_FP_HI,
%babelPtrR(HI_SSA_1, BabelExp_9, 4)
%; ECLASS_SSA_1 is ECLASS,
%FMAP_SSA_1 is FMAP,
%HI_SSA_1 is HI,
%LO_SSA_1 is LO),
%BabelExp_10 is HI_SSA_1 - 1,
%I_SSA_2 is BabelExp_10,
%babel__implicit_fallbackSimpleSortc_1(FMAP_SSA_1, ECLASS_SSA_1, LO_SSA_1, HI_SSA_1, I_SSA_2),true),
%BabelExp_11 is HI - 1,
%I_SSA_1 is BabelExp_11,
%babel__implicit_fallbackSimpleSortc_2(FMAP, ECLASS, LO, HI, I_SSA_1),true. 
%
% :- foreign(babel__implicit_mainGtUc_3(+integer, +positive, +positive, +integer, +integer, +positive, +integer, +integer,  -integer)).
%
%mainGtU(__CIL_PP___CIL_RET12, __CIL_FP___CIL_RET12, I1, I2, BLOCK, QUADRANT, NBLOCK, BUDGET, BABEL_RET) :- 
%
%__CIL_TMP91 is BLOCK +1* I1,
%BabelExp_12 is __CIL_TMP91,
%babelPtrR_byte(C1_SSA_1, BabelExp_12, 1),
%__CIL_TMP92 is BLOCK +1* I2,
%BabelExp_13 is __CIL_TMP92,
%babelPtrR_byte(C2_SSA_1, BabelExp_13, 1),
%
%(C1_SSA_1 \= C2_SSA_1 ->
%__CIL_TMP67 is 1
%; __CIL_TMP67 is 0),
%
%(__CIL_TMP67 \= 0 ->
%(C1_SSA_1 > C2_SSA_1 ->
%__CIL_TMP93 is 1
%; __CIL_TMP93 is 0),
%
%__CIL_TMP68 is __CIL_TMP93,BABEL_RET is __CIL_TMP68, true
%; BabelExp_14 is I1 + 1,
%I1_SSA_1 is BabelExp_14,
%BabelExp_15 is I2 + 1,
%I2_SSA_1 is BabelExp_15,
%__CIL_TMP94 is BLOCK +1* I1_SSA_1,
%BabelExp_16 is __CIL_TMP94,
%babelPtrR_byte(C1_SSA_2, BabelExp_16, 1),
%__CIL_TMP95 is BLOCK +1* I2_SSA_1,
%BabelExp_17 is __CIL_TMP95,
%babelPtrR_byte(C2_SSA_2, BabelExp_17, 1),
%
%(C1_SSA_2 \= C2_SSA_2 ->
%__CIL_TMP69 is 1
%; __CIL_TMP69 is 0),
%
%(__CIL_TMP69 \= 0 ->
%(C1_SSA_2 > C2_SSA_2 ->
%__CIL_TMP96 is 1
%; __CIL_TMP96 is 0),
%
%__CIL_TMP70 is __CIL_TMP96,BABEL_RET is __CIL_TMP70, true
%; BabelExp_18 is I1_SSA_1 + 1,
%I1_SSA_2 is BabelExp_18,
%BabelExp_19 is I2_SSA_1 + 1,
%I2_SSA_2 is BabelExp_19,
%__CIL_TMP97 is BLOCK +1* I1_SSA_2,
%BabelExp_20 is __CIL_TMP97,
%babelPtrR_byte(C1_SSA_3, BabelExp_20, 1),
%__CIL_TMP98 is BLOCK +1* I2_SSA_2,
%BabelExp_21 is __CIL_TMP98,
%babelPtrR_byte(C2_SSA_3, BabelExp_21, 1),
%
%(C1_SSA_3 \= C2_SSA_3 ->
%__CIL_TMP71 is 1
%; __CIL_TMP71 is 0),
%
%(__CIL_TMP71 \= 0 ->
%(C1_SSA_3 > C2_SSA_3 ->
%__CIL_TMP99 is 1
%; __CIL_TMP99 is 0),
%
%__CIL_TMP72 is __CIL_TMP99,BABEL_RET is __CIL_TMP72, true
%; BabelExp_22 is I1_SSA_2 + 1,
%I1_SSA_3 is BabelExp_22,
%BabelExp_23 is I2_SSA_2 + 1,
%I2_SSA_3 is BabelExp_23,
%__CIL_TMP100 is BLOCK +1* I1_SSA_3,
%BabelExp_24 is __CIL_TMP100,
%babelPtrR_byte(C1_SSA_4, BabelExp_24, 1),
%__CIL_TMP101 is BLOCK +1* I2_SSA_3,
%BabelExp_25 is __CIL_TMP101,
%babelPtrR_byte(C2_SSA_4, BabelExp_25, 1),
%
%(C1_SSA_4 \= C2_SSA_4 ->
%__CIL_TMP73 is 1
%; __CIL_TMP73 is 0),
%
%(__CIL_TMP73 \= 0 ->
%(C1_SSA_4 > C2_SSA_4 ->
%__CIL_TMP102 is 1
%; __CIL_TMP102 is 0),
%
%__CIL_TMP74 is __CIL_TMP102,BABEL_RET is __CIL_TMP74, true
%; BabelExp_26 is I1_SSA_3 + 1,
%I1_SSA_4 is BabelExp_26,
%BabelExp_27 is I2_SSA_3 + 1,
%I2_SSA_4 is BabelExp_27,
%__CIL_TMP103 is BLOCK +1* I1_SSA_4,
%BabelExp_28 is __CIL_TMP103,
%babelPtrR_byte(C1_SSA_5, BabelExp_28, 1),
%__CIL_TMP104 is BLOCK +1* I2_SSA_4,
%BabelExp_29 is __CIL_TMP104,
%babelPtrR_byte(C2_SSA_5, BabelExp_29, 1),
%
%(C1_SSA_5 \= C2_SSA_5 ->
%__CIL_TMP75 is 1
%; __CIL_TMP75 is 0),
%
%(__CIL_TMP75 \= 0 ->
%(C1_SSA_5 > C2_SSA_5 ->
%__CIL_TMP105 is 1
%; __CIL_TMP105 is 0),
%
%__CIL_TMP76 is __CIL_TMP105,BABEL_RET is __CIL_TMP76, true
%; BabelExp_30 is I1_SSA_4 + 1,
%I1_SSA_5 is BabelExp_30,
%BabelExp_31 is I2_SSA_4 + 1,
%I2_SSA_5 is BabelExp_31,
%__CIL_TMP106 is BLOCK +1* I1_SSA_5,
%BabelExp_32 is __CIL_TMP106,
%babelPtrR_byte(C1_SSA_6, BabelExp_32, 1),
%__CIL_TMP107 is BLOCK +1* I2_SSA_5,
%BabelExp_33 is __CIL_TMP107,
%babelPtrR_byte(C2_SSA_6, BabelExp_33, 1),
%
%(C1_SSA_6 \= C2_SSA_6 ->
%__CIL_TMP77 is 1
%; __CIL_TMP77 is 0),
%
%(__CIL_TMP77 \= 0 ->
%(C1_SSA_6 > C2_SSA_6 ->
%__CIL_TMP108 is 1
%; __CIL_TMP108 is 0),
%
%__CIL_TMP78 is __CIL_TMP108,BABEL_RET is __CIL_TMP78, true
%; BabelExp_34 is I1_SSA_5 + 1,
%I1_SSA_6 is BabelExp_34,
%BabelExp_35 is I2_SSA_5 + 1,
%I2_SSA_6 is BabelExp_35,
%__CIL_TMP109 is BLOCK +1* I1_SSA_6,
%BabelExp_36 is __CIL_TMP109,
%babelPtrR_byte(C1_SSA_7, BabelExp_36, 1),
%__CIL_TMP110 is BLOCK +1* I2_SSA_6,
%BabelExp_37 is __CIL_TMP110,
%babelPtrR_byte(C2_SSA_7, BabelExp_37, 1),
%
%(C1_SSA_7 \= C2_SSA_7 ->
%__CIL_TMP79 is 1
%; __CIL_TMP79 is 0),
%
%(__CIL_TMP79 \= 0 ->
%(C1_SSA_7 > C2_SSA_7 ->
%__CIL_TMP111 is 1
%; __CIL_TMP111 is 0),
%
%__CIL_TMP80 is __CIL_TMP111,BABEL_RET is __CIL_TMP80, true
%; BabelExp_38 is I1_SSA_6 + 1,
%I1_SSA_7 is BabelExp_38,
%BabelExp_39 is I2_SSA_6 + 1,
%I2_SSA_7 is BabelExp_39,
%__CIL_TMP112 is BLOCK +1* I1_SSA_7,
%BabelExp_40 is __CIL_TMP112,
%babelPtrR_byte(C1_SSA_8, BabelExp_40, 1),
%__CIL_TMP113 is BLOCK +1* I2_SSA_7,
%BabelExp_41 is __CIL_TMP113,
%babelPtrR_byte(C2_SSA_8, BabelExp_41, 1),
%
%(C1_SSA_8 \= C2_SSA_8 ->
%__CIL_TMP81 is 1
%; __CIL_TMP81 is 0),
%
%(__CIL_TMP81 \= 0 ->
%(C1_SSA_8 > C2_SSA_8 ->
%__CIL_TMP114 is 1
%; __CIL_TMP114 is 0),
%
%__CIL_TMP82 is __CIL_TMP114,BABEL_RET is __CIL_TMP82, true
%; BabelExp_42 is I1_SSA_7 + 1,
%I1_SSA_8 is BabelExp_42,
%BabelExp_43 is I2_SSA_7 + 1,
%I2_SSA_8 is BabelExp_43,
%__CIL_TMP115 is BLOCK +1* I1_SSA_8,
%BabelExp_44 is __CIL_TMP115,
%babelPtrR_byte(C1_SSA_9, BabelExp_44, 1),
%__CIL_TMP116 is BLOCK +1* I2_SSA_8,
%BabelExp_45 is __CIL_TMP116,
%babelPtrR_byte(C2_SSA_9, BabelExp_45, 1),
%
%(C1_SSA_9 \= C2_SSA_9 ->
%__CIL_TMP83 is 1
%; __CIL_TMP83 is 0),
%
%(__CIL_TMP83 \= 0 ->
%(C1_SSA_9 > C2_SSA_9 ->
%__CIL_TMP117 is 1
%; __CIL_TMP117 is 0),
%
%__CIL_TMP84 is __CIL_TMP117,BABEL_RET is __CIL_TMP84, true
%; BabelExp_46 is I1_SSA_8 + 1,
%I1_SSA_9 is BabelExp_46,
%BabelExp_47 is I2_SSA_8 + 1,
%I2_SSA_9 is BabelExp_47,
%__CIL_TMP118 is BLOCK +1* I1_SSA_9,
%BabelExp_48 is __CIL_TMP118,
%babelPtrR_byte(C1_SSA_10, BabelExp_48, 1),
%__CIL_TMP119 is BLOCK +1* I2_SSA_9,
%BabelExp_49 is __CIL_TMP119,
%babelPtrR_byte(C2_SSA_10, BabelExp_49, 1),
%
%(C1_SSA_10 \= C2_SSA_10 ->
%__CIL_TMP85 is 1
%; __CIL_TMP85 is 0),
%
%(__CIL_TMP85 \= 0 ->
%(C1_SSA_10 > C2_SSA_10 ->
%__CIL_TMP120 is 1
%; __CIL_TMP120 is 0),
%
%__CIL_TMP86 is __CIL_TMP120,BABEL_RET is __CIL_TMP86, true
%; BabelExp_50 is I1_SSA_9 + 1,
%I1_SSA_10 is BabelExp_50,
%BabelExp_51 is I2_SSA_9 + 1,
%I2_SSA_10 is BabelExp_51,
%__CIL_TMP121 is BLOCK +1* I1_SSA_10,
%BabelExp_52 is __CIL_TMP121,
%babelPtrR_byte(C1_SSA_11, BabelExp_52, 1),
%__CIL_TMP122 is BLOCK +1* I2_SSA_10,
%BabelExp_53 is __CIL_TMP122,
%babelPtrR_byte(C2_SSA_11, BabelExp_53, 1),
%
%(C1_SSA_11 \= C2_SSA_11 ->
%__CIL_TMP87 is 1
%; __CIL_TMP87 is 0),
%
%(__CIL_TMP87 \= 0 ->
%(C1_SSA_11 > C2_SSA_11 ->
%__CIL_TMP123 is 1
%; __CIL_TMP123 is 0),
%
%__CIL_TMP88 is __CIL_TMP123,BABEL_RET is __CIL_TMP88, true
%; BabelExp_54 is I1_SSA_10 + 1,
%I1_SSA_11 is BabelExp_54,
%BabelExp_55 is I2_SSA_10 + 1,
%I2_SSA_11 is BabelExp_55,
%__CIL_TMP124 is BLOCK +1* I1_SSA_11,
%BabelExp_56 is __CIL_TMP124,
%babelPtrR_byte(C1_SSA_12, BabelExp_56, 1),
%__CIL_TMP125 is BLOCK +1* I2_SSA_11,
%BabelExp_57 is __CIL_TMP125,
%babelPtrR_byte(C2_SSA_12, BabelExp_57, 1),
%
%(C1_SSA_12 \= C2_SSA_12 ->
%__CIL_TMP89 is 1
%; __CIL_TMP89 is 0),
%
%(__CIL_TMP89 \= 0 ->
%(C1_SSA_12 > C2_SSA_12 ->
%__CIL_TMP126 is 1
%; __CIL_TMP126 is 0),
%
%__CIL_TMP90 is __CIL_TMP126,BABEL_RET is __CIL_TMP90, true
%; BabelExp_58 is I1_SSA_11 + 1,
%I1_SSA_12 is BabelExp_58,
%BabelExp_59 is I2_SSA_11 + 1,
%I2_SSA_12 is BabelExp_59,
%BabelExp_60 is NBLOCK + 8,
%__CIL_TMP127 is BabelExp_60,
%K_SSA_1 is __CIL_TMP127,
%__CIL_RET12 is 1,
%BabelExp_61 is __CIL_RET12,
%babel_ptrE(__CIL_FP___CIL_RET12, BabelExp_61, 1),
%babel__implicit_mainGtUc_3(__CIL_PP___CIL_RET12, I1_SSA_12, I2_SSA_12, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),
%BabelExp_62 is __CIL_FP___CIL_RET12,
%babelPtrR_byte(__CIL_RET12_SSA_1, BabelExp_62, 1),
%(RETFLAG13_SSA_1 \= 0 ->
%BABEL_RET is __CIL_RET12_SSA_1, true
%; BABEL_RET is 0, true))))))))))))). 
%
% :- foreign(babel__implicit_mainSimpleSortc_4(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_mainSimpleSortc_5(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer,  -integer)).
%
%mainSimpleSort(__CIL_PP_PTR, __CIL_PP_BLOCK, __CIL_PP_QUADRANT, __CIL_PP_NBLOCK, __CIL_PP_LO, __CIL_PP_HI, __CIL_PP_D, __CIL_PP_BUDGET, __CIL_PP_HP, __CIL_FP_PTR, __CIL_FP_BLOCK, __CIL_FP_QUADRANT, __CIL_FP_NBLOCK, __CIL_FP_LO, __CIL_FP_HI, __CIL_FP_D, __CIL_FP_BUDGET, __CIL_FP_HP, PTR, BLOCK, QUADRANT, NBLOCK, LO, HI, D, BUDGET, VOID) :- 
%
%
% BabelExp_63 is HI - LO,
%__CIL_TMP51 is BabelExp_63,
%BabelExp_64 is __CIL_TMP51 + 1,
%BIGN_SSA_1 is BabelExp_64,
%
%(BIGN_SSA_1 < 2 ->
%__CIL_TMP50 is 1
%; __CIL_TMP50 is 0),
%
%(__CIL_TMP50 \= 0 ->
%true
%; HP_SSA_1 is 0,
%BabelExp_65 is PTR,
%babel_ptrE(__CIL_FP_PTR, BabelExp_65, 8),
%BabelExp_66 is BLOCK,
%babel_ptrE(__CIL_FP_BLOCK, BabelExp_66, 8),
%BabelExp_67 is QUADRANT,
%babel_ptrE(__CIL_FP_QUADRANT, BabelExp_67, 8),
%BabelExp_68 is NBLOCK,
%babel_ptrE(__CIL_FP_NBLOCK, BabelExp_68, 4),
%BabelExp_69 is LO,
%babel_ptrE(__CIL_FP_LO, BabelExp_69, 4),
%BabelExp_70 is HI,
%babel_ptrE(__CIL_FP_HI, BabelExp_70, 4),
%BabelExp_71 is D,
%babel_ptrE(__CIL_FP_D, BabelExp_71, 4),
%BabelExp_72 is BUDGET,
%babel_ptrE(__CIL_FP_BUDGET, BabelExp_72, 8),
%BabelExp_73 is HP_SSA_1,
%babel_ptrE(__CIL_FP_HP, BabelExp_73, 4),
%babel__implicit_mainSimpleSortc_4(__CIL_PP_PTR, __CIL_PP_BLOCK, __CIL_PP_QUADRANT, __CIL_PP_NBLOCK, __CIL_PP_LO, __CIL_PP_HI, __CIL_PP_D, __CIL_PP_BUDGET, __CIL_PP_HP, BIGN_SSA_1),
%BabelExp_74 is __CIL_FP_PTR,
%babelPtrR(PTR_SSA_1, BabelExp_74, 8),
%BabelExp_75 is __CIL_FP_BLOCK,
%babelPtrR(BLOCK_SSA_1, BabelExp_75, 8),
%BabelExp_76 is __CIL_FP_QUADRANT,
%babelPtrR(QUADRANT_SSA_1, BabelExp_76, 8),
%BabelExp_77 is __CIL_FP_NBLOCK,
%babelPtrR(NBLOCK_SSA_1, BabelExp_77, 4),
%BabelExp_78 is __CIL_FP_LO,
%babelPtrR(LO_SSA_1, BabelExp_78, 4),
%BabelExp_79 is __CIL_FP_HI,
%babelPtrR(HI_SSA_1, BabelExp_79, 4),
%BabelExp_80 is __CIL_FP_D,
%babelPtrR(D_SSA_1, BabelExp_80, 4),
%BabelExp_81 is __CIL_FP_BUDGET,
%babelPtrR(BUDGET_SSA_1, BabelExp_81, 8),
%BabelExp_82 is __CIL_FP_HP,
%babelPtrR(HP_SSA_2, BabelExp_82, 4),
%BabelExp_83 is HP_SSA_2 - 1,
%HP_SSA_3 is BabelExp_83,
%babel__implicit_mainSimpleSortc_5(PTR_SSA_1, BLOCK_SSA_1, QUADRANT_SSA_1, NBLOCK_SSA_1, LO_SSA_1, HI_SSA_1, D_SSA_1, BUDGET_SSA_1, HP_SSA_3 , RETFLAG18_SSA_1),
%(RETFLAG18_SSA_1 \= 0 ->
%true
%; true)). 
%
% 
%mmed3(A, B, C, BABEL_RET) :- 
%
%
% (A > B ->
%__CIL_TMP10 is 1
%; __CIL_TMP10 is 0),
%
%(__CIL_TMP10 \= 0 ->
%T_SSA_1 is A,
%A_SSA_1 is B,
%B_SSA_1 is T_SSA_1
%; A_SSA_1 is A,
%B_SSA_1 is B),
%
%(B_SSA_1 > C ->
%__CIL_TMP11 is 1
%; __CIL_TMP11 is 0),
%
%(__CIL_TMP11 \= 0 ->
%B_SSA_2 is C,
%
%(A_SSA_1 > B_SSA_2 ->
%__CIL_TMP12 is 1
%; __CIL_TMP12 is 0),
%
%(__CIL_TMP12 \= 0 ->
%B_SSA_3 is A_SSA_1
%; B_SSA_3 is B_SSA_2)
%; B_SSA_3 is B_SSA_1),
%BABEL_RET is B_SSA_3, true. 
%
% :- foreign(babel__implicit_BZ2_blockSortc_6(+integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_blockSortc_7(+integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_blockSortc_8(+integer, +integer, +integer, +integer, +float)).
%:- foreign(babel__implicit_BZ2_blockSortc_9(+integer, +integer)).
%:- foreign(babel__implicit_BZ2_blockSortc_10(+integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_blockSortc_11(+integer, +integer, +integer)).
%:- foreign(babel__implicit_BZ2_blockSortc_12(+integer)).
%
%bZ2_blockSort(__CIL_PP_BUDGET, __CIL_PP_S, __CIL_GP_STDERR, __CIL_FP_BUDGET, __CIL_FP_S, S, VOID) :- 
%
%
% __CIL_TMP44 is S +1* 56,
%__CIL_TMP45 is __CIL_TMP44,
%BabelExp_84 is __CIL_TMP45,
%babelPtrR(PTR_SSA_1, BabelExp_84, 8),
%__CIL_TMP46 is S +1* 64,
%__CIL_TMP47 is __CIL_TMP46,
%BabelExp_85 is __CIL_TMP47,
%babelPtrR(BLOCK_SSA_1, BabelExp_85, 8),
%__CIL_TMP48 is S +1* 40,
%__CIL_TMP49 is __CIL_TMP48,
%BabelExp_86 is __CIL_TMP49,
%babelPtrR(FTAB_SSA_1, BabelExp_86, 8),
%__CIL_TMP50 is S +1* 108,
%__CIL_TMP51 is __CIL_TMP50,
%BabelExp_87 is __CIL_TMP51,
%babelPtrR(NBLOCK_SSA_1, BabelExp_87, 4),
%__CIL_TMP52 is S +1* 656,
%__CIL_TMP53 is __CIL_TMP52,
%BabelExp_88 is __CIL_TMP53,
%babelPtrR(VERB_SSA_1, BabelExp_88, 4),
%__CIL_TMP54 is S +1* 88,
%__CIL_TMP55 is __CIL_TMP54,
%BabelExp_89 is __CIL_TMP55,
%babelPtrR(WFACT_SSA_1, BabelExp_89, 4),
%
%(NBLOCK_SSA_1 < 10000 ->
%__CIL_TMP35 is 1
%; __CIL_TMP35 is 0),
%
%(__CIL_TMP35 \= 0 ->
%__CIL_TMP56 is S +1* 24,
%__CIL_TMP57 is __CIL_TMP56,
%__CIL_TMP58 is S +1* 32,
%__CIL_TMP59 is __CIL_TMP58,
%BabelExp_90 is __CIL_TMP57,
%babelPtrR(__CIL_TMP60, BabelExp_90, 8),
%BabelExp_91 is __CIL_TMP59,
%babelPtrR(__CIL_TMP61, BabelExp_91, 8),
%babel__implicit_BZ2_blockSortc_6(__CIL_TMP60, __CIL_TMP61, FTAB_SSA_1, NBLOCK_SSA_1, VERB_SSA_1)
%; BabelExp_92 is NBLOCK_SSA_1 + 34,
%I_SSA_1 is BabelExp_92,
%BabelExp_93 is I_SSA_1 /\ 1,
%__CIL_TMP36 is BabelExp_93,
%(__CIL_TMP36 \= 0 ->
%BabelExp_94 is I_SSA_1 + 1,
%I_SSA_2 is BabelExp_94
%; I_SSA_2 is I_SSA_1),
%__CIL_TMP62 is BLOCK_SSA_1 +1* I_SSA_2,
%QUADRANT_SSA_1 is __CIL_TMP62,
%
%(WFACT_SSA_1 < 1 ->
%__CIL_TMP37 is 1
%; __CIL_TMP37 is 0),
%
%(__CIL_TMP37 \= 0 ->
%WFACT_SSA_2 is 1
%; WFACT_SSA_2 is WFACT_SSA_1),
%
%(WFACT_SSA_2 > 100 ->
%__CIL_TMP38 is 1
%; __CIL_TMP38 is 0),
%
%(__CIL_TMP38 \= 0 ->
%WFACT_SSA_3 is 100
%; WFACT_SSA_3 is WFACT_SSA_2),
%BabelExp_95 is WFACT_SSA_3 - 1,
%__CIL_TMP63 is BabelExp_95,
%BabelExp_96 is __CIL_TMP63 // 3,
%__CIL_TMP64 is BabelExp_96,
%BabelExp_97 is NBLOCK_SSA_1 * __CIL_TMP64,
%BUDGETINIT_SSA_1 is BabelExp_97,
%BUDGET_SSA_1 is BUDGETINIT_SSA_1,
%BabelExp_98 is BUDGET_SSA_1,
%babel_ptrE(__CIL_FP_BUDGET, BabelExp_98, 4),
%babel__implicit_BZ2_blockSortc_7(PTR_SSA_1, BLOCK_SSA_1, QUADRANT_SSA_1, FTAB_SSA_1, NBLOCK_SSA_1, VERB_SSA_1, __CIL_PP_BUDGET),
%BabelExp_99 is __CIL_FP_BUDGET,
%babelPtrR(BUDGET_SSA_2, BabelExp_99, 4),
%
%(VERB_SSA_1 >= 3 ->
%__CIL_TMP39 is 1
%; __CIL_TMP39 is 0),
%
%(__CIL_TMP39 \= 0 ->
%(NBLOCK_SSA_1 =:= 0 ->
%__CIL_TMP40 is 1
%; __CIL_TMP40 is 0),
%
%(__CIL_TMP40 \= 0 ->
%TMP_SSA_1 is 1
%; TMP_SSA_1 is NBLOCK_SSA_1),
%BabelExp_100 is __CIL_GP_STDERR,
%babelPtrR(__CIL_TMP65, BabelExp_100, 8),
%BabelExp_101 is BUDGETINIT_SSA_1 - BUDGET_SSA_2,
%__CIL_TMP66 is BabelExp_101,
%__CIL_TMP67 is __CIL_TMP66,
%BabelExp_102 is __CIL_TMP67 / TMP_SSA_1,
%__CIL_TMP68 is BabelExp_102,
%BabelExp_103 is BUDGETINIT_SSA_1 - BUDGET_SSA_2,
%__CIL_TMP69 is BabelExp_103,
%babel__implicit_BZ2_blockSortc_8(__CIL_TMP65, '      %D WORK, %D BLOCK, RATIO %5.2F\\N', __CIL_TMP69, NBLOCK_SSA_1, __CIL_TMP68)
%; true),
%
%(BUDGET_SSA_2 < 0 ->
%__CIL_TMP41 is 1
%; __CIL_TMP41 is 0),
%
%(__CIL_TMP41 \= 0 ->
%(VERB_SSA_1 >= 2 ->
%__CIL_TMP42 is 1
%; __CIL_TMP42 is 0),
%
%(__CIL_TMP42 \= 0 ->
%BabelExp_104 is __CIL_GP_STDERR,
%babelPtrR(__CIL_TMP70, BabelExp_104, 8),
%babel__implicit_BZ2_blockSortc_9(__CIL_TMP70, '    TOO REPETITIVE; USING FALLBACK SORTING ALGORITHM\\N')
%; true),
%__CIL_TMP71 is S +1* 24,
%__CIL_TMP72 is __CIL_TMP71,
%__CIL_TMP73 is S +1* 32,
%__CIL_TMP74 is __CIL_TMP73,
%BabelExp_105 is __CIL_TMP72,
%babelPtrR(__CIL_TMP75, BabelExp_105, 8),
%BabelExp_106 is __CIL_TMP74,
%babelPtrR(__CIL_TMP76, BabelExp_106, 8),
%babel__implicit_BZ2_blockSortc_10(__CIL_TMP75, __CIL_TMP76, FTAB_SSA_1, NBLOCK_SSA_1, VERB_SSA_1)
%; true)),
%__CIL_TMP77 is S +1* 48,
%__CIL_TMP78 is __CIL_TMP77,
%BabelExp_107 is -1,
%babel_ptrE(__CIL_TMP78, BabelExp_107, 4),
%I_SSA_3 is 0,
%BabelExp_108 is S,
%babel_ptrE(__CIL_FP_S, BabelExp_108, 8),
%babel__implicit_BZ2_blockSortc_11(__CIL_PP_S, PTR_SSA_1, I_SSA_3),
%BabelExp_109 is __CIL_FP_S,
%babelPtrR(S_SSA_1, BabelExp_109, 8),
%__CIL_TMP79 is S_SSA_1 +1* 48,
%__CIL_TMP80 is __CIL_TMP79,
%BabelExp_110 is __CIL_TMP80,
%babelPtrR(__CIL_TMP81, BabelExp_110, 4),
%
%(__CIL_TMP81 \= -1 ->
%__CIL_TMP82 is 1
%; __CIL_TMP82 is 0),
%
%
%(__CIL_TMP82 =:= 0 ,
%__CIL_TMP43 is 1
%; __CIL_TMP43 is 0),
%
%(__CIL_TMP43 \= 0 ->
%babel__implicit_BZ2_blockSortc_12(1003)
%; true),
%true. 
%
% :- foreign(babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_1c_13(+positive, +positive, +integer, +integer, +positive, +integer,  -integer)).
%
%mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_1(__CIL_AP_H, __CIL_AP_I, __CIL_AP_V, __CIL_AP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET, VOID) :- 
%
%
% BabelExp_111 is __CIL_AP_J,
%babelPtrR(__CIL_TMP15, BabelExp_111, 4),
%BabelExp_112 is __CIL_AP_H,
%babelPtrR(__CIL_TMP16, BabelExp_112, 4),
%BabelExp_113 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP17, BabelExp_113, 8),
%BabelExp_114 is __CIL_TMP15 - __CIL_TMP16,
%__CIL_TMP18 is BabelExp_114,
%__CIL_TMP19 is __CIL_TMP17 +4* __CIL_TMP18,
%BabelExp_115 is __CIL_AP_D,
%babelPtrR(__CIL_TMP20, BabelExp_115, 4),
%BabelExp_116 is __CIL_TMP19,
%babelPtrR(__CIL_TMP21, BabelExp_116, 4),
%__CIL_TMP22 is __CIL_TMP20,
%BabelExp_117 is __CIL_AP_D,
%babelPtrR(__CIL_TMP23, BabelExp_117, 4),
%BabelExp_118 is __CIL_AP_V,
%babelPtrR(__CIL_TMP24, BabelExp_118, 4),
%__CIL_TMP25 is __CIL_TMP23,
%BabelExp_119 is __CIL_AP_NBLOCK,
%babelPtrR(__CIL_TMP26, BabelExp_119, 4),
%BabelExp_120 is __CIL_TMP21 + __CIL_TMP22,
%__CIL_TMP27 is BabelExp_120,
%BabelExp_121 is __CIL_TMP24 + __CIL_TMP25,
%__CIL_TMP28 is BabelExp_121,
%BabelExp_122 is __CIL_AP_BLOCK,
%babelPtrR(__CIL_TMP29, BabelExp_122, 8),
%BabelExp_123 is __CIL_AP_QUADRANT,
%babelPtrR(__CIL_TMP30, BabelExp_123, 8),
%BabelExp_124 is __CIL_AP_BUDGET,
%babelPtrR(__CIL_TMP31, BabelExp_124, 8),
%babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_1c_13(__CIL_TMP27, __CIL_TMP28, __CIL_TMP29, __CIL_TMP30, __CIL_TMP26, __CIL_TMP31 , TMP_SSA_1),
%(TMP_SSA_1 \= 0 ->
%BabelExp_125 is __CIL_AP_J,
%babelPtrR(__CIL_TMP32, BabelExp_125, 4),
%BabelExp_126 is __CIL_AP_H,
%babelPtrR(__CIL_TMP33, BabelExp_126, 4),
%BabelExp_127 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP34, BabelExp_127, 8),
%BabelExp_128 is __CIL_TMP32 - __CIL_TMP33,
%__CIL_TMP35 is BabelExp_128,
%__CIL_TMP36 is __CIL_TMP34 +4* __CIL_TMP35,
%BabelExp_129 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP37, BabelExp_129, 8),
%BabelExp_130 is __CIL_AP_J,
%babelPtrR(__CIL_TMP38, BabelExp_130, 4),
%__CIL_TMP39 is __CIL_TMP37 +4* __CIL_TMP38,
%babelPtrR(BabelExp_131, __CIL_TMP36, 4),
%babel_ptrE(__CIL_TMP39, BabelExp_131, 4),
%BabelExp_132 is __CIL_AP_J,
%babelPtrR(__CIL_TMP40, BabelExp_132, 4),
%BabelExp_133 is __CIL_AP_H,
%babelPtrR(__CIL_TMP41, BabelExp_133, 4),
%BabelExp_134 is __CIL_TMP40 - __CIL_TMP41,
%babel_ptrE(__CIL_AP_J, BabelExp_134, 4),
%BabelExp_135 is __CIL_AP_LO,
%babelPtrR(__CIL_TMP42, BabelExp_135, 4),
%BabelExp_136 is __CIL_AP_H,
%babelPtrR(__CIL_TMP43, BabelExp_136, 4),
%BabelExp_137 is __CIL_TMP42 + __CIL_TMP43,
%__CIL_TMP44 is BabelExp_137,
%BabelExp_138 is __CIL_AP_J,
%babelPtrR(__CIL_TMP45, BabelExp_138, 4),
%BabelExp_139 is __CIL_TMP44 - 1,
%__CIL_TMP46 is BabelExp_139,
%
%(__CIL_TMP45 =< __CIL_TMP46 ->
%__CIL_TMP14 is 1
%; __CIL_TMP14 is 0),
%
%(__CIL_TMP14 \= 0 ->
%true
%; mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_1(__CIL_AP_H, __CIL_AP_I, __CIL_AP_V, __CIL_AP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET, VOID),true)
%; true). 
%
% :- foreign(babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_2c_15(+positive, +positive, +integer, +integer, +positive, +integer,  -integer)).
%
%mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_2(__CIL_AP_H, __CIL_AP_I, __CIL_AP_V, __CIL_AP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET, VOID) :- 
%
%
% BabelExp_140 is __CIL_AP_J,
%babelPtrR(__CIL_TMP15, BabelExp_140, 4),
%BabelExp_141 is __CIL_AP_H,
%babelPtrR(__CIL_TMP16, BabelExp_141, 4),
%BabelExp_142 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP17, BabelExp_142, 8),
%BabelExp_143 is __CIL_TMP15 - __CIL_TMP16,
%__CIL_TMP18 is BabelExp_143,
%__CIL_TMP19 is __CIL_TMP17 +4* __CIL_TMP18,
%BabelExp_144 is __CIL_AP_D,
%babelPtrR(__CIL_TMP20, BabelExp_144, 4),
%BabelExp_145 is __CIL_TMP19,
%babelPtrR(__CIL_TMP21, BabelExp_145, 4),
%__CIL_TMP22 is __CIL_TMP20,
%BabelExp_146 is __CIL_AP_D,
%babelPtrR(__CIL_TMP23, BabelExp_146, 4),
%BabelExp_147 is __CIL_AP_V,
%babelPtrR(__CIL_TMP24, BabelExp_147, 4),
%__CIL_TMP25 is __CIL_TMP23,
%BabelExp_148 is __CIL_AP_NBLOCK,
%babelPtrR(__CIL_TMP26, BabelExp_148, 4),
%BabelExp_149 is __CIL_TMP21 + __CIL_TMP22,
%__CIL_TMP27 is BabelExp_149,
%BabelExp_150 is __CIL_TMP24 + __CIL_TMP25,
%__CIL_TMP28 is BabelExp_150,
%BabelExp_151 is __CIL_AP_BLOCK,
%babelPtrR(__CIL_TMP29, BabelExp_151, 8),
%BabelExp_152 is __CIL_AP_QUADRANT,
%babelPtrR(__CIL_TMP30, BabelExp_152, 8),
%BabelExp_153 is __CIL_AP_BUDGET,
%babelPtrR(__CIL_TMP31, BabelExp_153, 8),
%babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_2c_15(__CIL_TMP27, __CIL_TMP28, __CIL_TMP29, __CIL_TMP30, __CIL_TMP26, __CIL_TMP31 , TMP___0_SSA_1),
%(TMP___0_SSA_1 \= 0 ->
%BabelExp_154 is __CIL_AP_J,
%babelPtrR(__CIL_TMP32, BabelExp_154, 4),
%BabelExp_155 is __CIL_AP_H,
%babelPtrR(__CIL_TMP33, BabelExp_155, 4),
%BabelExp_156 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP34, BabelExp_156, 8),
%BabelExp_157 is __CIL_TMP32 - __CIL_TMP33,
%__CIL_TMP35 is BabelExp_157,
%__CIL_TMP36 is __CIL_TMP34 +4* __CIL_TMP35,
%BabelExp_158 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP37, BabelExp_158, 8),
%BabelExp_159 is __CIL_AP_J,
%babelPtrR(__CIL_TMP38, BabelExp_159, 4),
%__CIL_TMP39 is __CIL_TMP37 +4* __CIL_TMP38,
%babelPtrR(BabelExp_160, __CIL_TMP36, 4),
%babel_ptrE(__CIL_TMP39, BabelExp_160, 4),
%BabelExp_161 is __CIL_AP_J,
%babelPtrR(__CIL_TMP40, BabelExp_161, 4),
%BabelExp_162 is __CIL_AP_H,
%babelPtrR(__CIL_TMP41, BabelExp_162, 4),
%BabelExp_163 is __CIL_TMP40 - __CIL_TMP41,
%babel_ptrE(__CIL_AP_J, BabelExp_163, 4),
%BabelExp_164 is __CIL_AP_LO,
%babelPtrR(__CIL_TMP42, BabelExp_164, 4),
%BabelExp_165 is __CIL_AP_H,
%babelPtrR(__CIL_TMP43, BabelExp_165, 4),
%BabelExp_166 is __CIL_TMP42 + __CIL_TMP43,
%__CIL_TMP44 is BabelExp_166,
%BabelExp_167 is __CIL_AP_J,
%babelPtrR(__CIL_TMP45, BabelExp_167, 4),
%BabelExp_168 is __CIL_TMP44 - 1,
%__CIL_TMP46 is BabelExp_168,
%
%(__CIL_TMP45 =< __CIL_TMP46 ->
%__CIL_TMP14 is 1
%; __CIL_TMP14 is 0),
%
%(__CIL_TMP14 \= 0 ->
%true
%; mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_2(__CIL_AP_H, __CIL_AP_I, __CIL_AP_V, __CIL_AP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET, VOID),true)
%; true). 
%
% :- foreign(babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_3c_17(+positive, +positive, +integer, +integer, +positive, +integer,  -integer)).
%
%mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_3(__CIL_AP_H, __CIL_AP_I, __CIL_AP_V, __CIL_AP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET, VOID) :- 
%
%
% BabelExp_169 is __CIL_AP_J,
%babelPtrR(__CIL_TMP15, BabelExp_169, 4),
%BabelExp_170 is __CIL_AP_H,
%babelPtrR(__CIL_TMP16, BabelExp_170, 4),
%BabelExp_171 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP17, BabelExp_171, 8),
%BabelExp_172 is __CIL_TMP15 - __CIL_TMP16,
%__CIL_TMP18 is BabelExp_172,
%__CIL_TMP19 is __CIL_TMP17 +4* __CIL_TMP18,
%BabelExp_173 is __CIL_AP_D,
%babelPtrR(__CIL_TMP20, BabelExp_173, 4),
%BabelExp_174 is __CIL_TMP19,
%babelPtrR(__CIL_TMP21, BabelExp_174, 4),
%__CIL_TMP22 is __CIL_TMP20,
%BabelExp_175 is __CIL_AP_D,
%babelPtrR(__CIL_TMP23, BabelExp_175, 4),
%BabelExp_176 is __CIL_AP_V,
%babelPtrR(__CIL_TMP24, BabelExp_176, 4),
%__CIL_TMP25 is __CIL_TMP23,
%BabelExp_177 is __CIL_AP_NBLOCK,
%babelPtrR(__CIL_TMP26, BabelExp_177, 4),
%BabelExp_178 is __CIL_TMP21 + __CIL_TMP22,
%__CIL_TMP27 is BabelExp_178,
%BabelExp_179 is __CIL_TMP24 + __CIL_TMP25,
%__CIL_TMP28 is BabelExp_179,
%BabelExp_180 is __CIL_AP_BLOCK,
%babelPtrR(__CIL_TMP29, BabelExp_180, 8),
%BabelExp_181 is __CIL_AP_QUADRANT,
%babelPtrR(__CIL_TMP30, BabelExp_181, 8),
%BabelExp_182 is __CIL_AP_BUDGET,
%babelPtrR(__CIL_TMP31, BabelExp_182, 8),
%babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_3c_17(__CIL_TMP27, __CIL_TMP28, __CIL_TMP29, __CIL_TMP30, __CIL_TMP26, __CIL_TMP31 , TMP___1_SSA_1),
%(TMP___1_SSA_1 \= 0 ->
%BabelExp_183 is __CIL_AP_J,
%babelPtrR(__CIL_TMP32, BabelExp_183, 4),
%BabelExp_184 is __CIL_AP_H,
%babelPtrR(__CIL_TMP33, BabelExp_184, 4),
%BabelExp_185 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP34, BabelExp_185, 8),
%BabelExp_186 is __CIL_TMP32 - __CIL_TMP33,
%__CIL_TMP35 is BabelExp_186,
%__CIL_TMP36 is __CIL_TMP34 +4* __CIL_TMP35,
%BabelExp_187 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP37, BabelExp_187, 8),
%BabelExp_188 is __CIL_AP_J,
%babelPtrR(__CIL_TMP38, BabelExp_188, 4),
%__CIL_TMP39 is __CIL_TMP37 +4* __CIL_TMP38,
%babelPtrR(BabelExp_189, __CIL_TMP36, 4),
%babel_ptrE(__CIL_TMP39, BabelExp_189, 4),
%BabelExp_190 is __CIL_AP_J,
%babelPtrR(__CIL_TMP40, BabelExp_190, 4),
%BabelExp_191 is __CIL_AP_H,
%babelPtrR(__CIL_TMP41, BabelExp_191, 4),
%BabelExp_192 is __CIL_TMP40 - __CIL_TMP41,
%babel_ptrE(__CIL_AP_J, BabelExp_192, 4),
%BabelExp_193 is __CIL_AP_LO,
%babelPtrR(__CIL_TMP42, BabelExp_193, 4),
%BabelExp_194 is __CIL_AP_H,
%babelPtrR(__CIL_TMP43, BabelExp_194, 4),
%BabelExp_195 is __CIL_TMP42 + __CIL_TMP43,
%__CIL_TMP44 is BabelExp_195,
%BabelExp_196 is __CIL_AP_J,
%babelPtrR(__CIL_TMP45, BabelExp_196, 4),
%BabelExp_197 is __CIL_TMP44 - 1,
%__CIL_TMP46 is BabelExp_197,
%
%(__CIL_TMP45 =< __CIL_TMP46 ->
%__CIL_TMP14 is 1
%; __CIL_TMP14 is 0),
%
%(__CIL_TMP14 \= 0 ->
%true
%; mainSimpleSort_cil_lr_2_cil_lr_1_cil_lr_3(__CIL_AP_H, __CIL_AP_I, __CIL_AP_V, __CIL_AP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET, VOID),true)
%; true). 
%
% :- foreign(babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1c_19(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1c_20(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1c_21(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer)).
%:- foreign(babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1c_22(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer,  -integer)).
%
%mainSimpleSort_cil_lr_2_cil_lr_1(__CIL_PP_H, __CIL_PP_I, __CIL_PP_V, __CIL_PP_J, __CIL_FP_H, __CIL_FP_I, __CIL_FP_V, __CIL_FP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_HI, __CIL_AP_D, __CIL_AP_BUDGET, __CIL_AP_HP, __CIL_AP___CIL_RET18, H, I, BABEL_RET) :- 
%
%
% BabelExp_198 is __CIL_AP_HI,
%babelPtrR(__CIL_TMP53, BabelExp_198, 4),
%
%(I > __CIL_TMP53 ->
%__CIL_TMP49 is 1
%; __CIL_TMP49 is 0),
%
%(__CIL_TMP49 \= 0 ->
%BABEL_RET is 0, true
%; BabelExp_199 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP54, BabelExp_199, 8),
%__CIL_TMP55 is __CIL_TMP54 +4* I,
%BabelExp_200 is __CIL_TMP55,
%babelPtrR(V_SSA_1, BabelExp_200, 4),
%J_SSA_1 is I,
%BabelExp_201 is H,
%babel_ptrE(__CIL_FP_H, BabelExp_201, 4),
%BabelExp_202 is I,
%babel_ptrE(__CIL_FP_I, BabelExp_202, 4),
%BabelExp_203 is V_SSA_1,
%babel_ptrE(__CIL_FP_V, BabelExp_203, 4),
%BabelExp_204 is J_SSA_1,
%babel_ptrE(__CIL_FP_J, BabelExp_204, 4),
%babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1c_19(__CIL_PP_H, __CIL_PP_I, __CIL_PP_V, __CIL_PP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET),
%BabelExp_205 is __CIL_FP_H,
%babelPtrR(H_SSA_1, BabelExp_205, 4),
%BabelExp_206 is __CIL_FP_I,
%babelPtrR(I_SSA_1, BabelExp_206, 4),
%BabelExp_207 is __CIL_FP_V,
%babelPtrR(V_SSA_2, BabelExp_207, 4),
%BabelExp_208 is __CIL_FP_J,
%babelPtrR(J_SSA_2, BabelExp_208, 4),
%BabelExp_209 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP56, BabelExp_209, 8),
%__CIL_TMP57 is __CIL_TMP56 +4* J_SSA_2,
%BabelExp_210 is V_SSA_2,
%babel_ptrE(__CIL_TMP57, BabelExp_210, 4),
%BabelExp_211 is I_SSA_1 + 1,
%I_SSA_2 is BabelExp_211,
%BabelExp_212 is __CIL_AP_HI,
%babelPtrR(__CIL_TMP58, BabelExp_212, 4),
%
%(I_SSA_2 > __CIL_TMP58 ->
%__CIL_TMP50 is 1
%; __CIL_TMP50 is 0),
%
%(__CIL_TMP50 \= 0 ->
%BABEL_RET is 0, true
%; BabelExp_213 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP59, BabelExp_213, 8),
%__CIL_TMP60 is __CIL_TMP59 +4* I_SSA_2,
%BabelExp_214 is __CIL_TMP60,
%babelPtrR(V_SSA_3, BabelExp_214, 4),
%J_SSA_3 is I_SSA_2,
%BabelExp_215 is H_SSA_1,
%babel_ptrE(__CIL_FP_H, BabelExp_215, 4),
%BabelExp_216 is I_SSA_2,
%babel_ptrE(__CIL_FP_I, BabelExp_216, 4),
%BabelExp_217 is V_SSA_3,
%babel_ptrE(__CIL_FP_V, BabelExp_217, 4),
%BabelExp_218 is J_SSA_3,
%babel_ptrE(__CIL_FP_J, BabelExp_218, 4),
%babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1c_20(__CIL_PP_H, __CIL_PP_I, __CIL_PP_V, __CIL_PP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET),
%BabelExp_219 is __CIL_FP_H,
%babelPtrR(H_SSA_2, BabelExp_219, 4),
%BabelExp_220 is __CIL_FP_I,
%babelPtrR(I_SSA_3, BabelExp_220, 4),
%BabelExp_221 is __CIL_FP_V,
%babelPtrR(V_SSA_4, BabelExp_221, 4),
%BabelExp_222 is __CIL_FP_J,
%babelPtrR(J_SSA_4, BabelExp_222, 4),
%BabelExp_223 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP61, BabelExp_223, 8),
%__CIL_TMP62 is __CIL_TMP61 +4* J_SSA_4,
%BabelExp_224 is V_SSA_4,
%babel_ptrE(__CIL_TMP62, BabelExp_224, 4),
%BabelExp_225 is I_SSA_3 + 1,
%I_SSA_4 is BabelExp_225,
%BabelExp_226 is __CIL_AP_HI,
%babelPtrR(__CIL_TMP63, BabelExp_226, 4),
%
%(I_SSA_4 > __CIL_TMP63 ->
%__CIL_TMP51 is 1
%; __CIL_TMP51 is 0),
%
%(__CIL_TMP51 \= 0 ->
%BABEL_RET is 0, true
%; BabelExp_227 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP64, BabelExp_227, 8),
%__CIL_TMP65 is __CIL_TMP64 +4* I_SSA_4,
%BabelExp_228 is __CIL_TMP65,
%babelPtrR(V_SSA_5, BabelExp_228, 4),
%J_SSA_5 is I_SSA_4,
%BabelExp_229 is H_SSA_2,
%babel_ptrE(__CIL_FP_H, BabelExp_229, 4),
%BabelExp_230 is I_SSA_4,
%babel_ptrE(__CIL_FP_I, BabelExp_230, 4),
%BabelExp_231 is V_SSA_5,
%babel_ptrE(__CIL_FP_V, BabelExp_231, 4),
%BabelExp_232 is J_SSA_5,
%babel_ptrE(__CIL_FP_J, BabelExp_232, 4),
%babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1c_21(__CIL_PP_H, __CIL_PP_I, __CIL_PP_V, __CIL_PP_J, __CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_D, __CIL_AP_BUDGET),
%BabelExp_233 is __CIL_FP_H,
%babelPtrR(H_SSA_3, BabelExp_233, 4),
%BabelExp_234 is __CIL_FP_I,
%babelPtrR(I_SSA_5, BabelExp_234, 4),
%BabelExp_235 is __CIL_FP_V,
%babelPtrR(V_SSA_6, BabelExp_235, 4),
%BabelExp_236 is __CIL_FP_J,
%babelPtrR(J_SSA_6, BabelExp_236, 4),
%BabelExp_237 is __CIL_AP_PTR,
%babelPtrR(__CIL_TMP66, BabelExp_237, 8),
%__CIL_TMP67 is __CIL_TMP66 +4* J_SSA_6,
%BabelExp_238 is V_SSA_6,
%babel_ptrE(__CIL_TMP67, BabelExp_238, 4),
%BabelExp_239 is I_SSA_5 + 1,
%I_SSA_6 is BabelExp_239,
%BabelExp_240 is __CIL_AP_BUDGET,
%babelPtrR(__CIL_TMP68, BabelExp_240, 8),
%BabelExp_241 is __CIL_TMP68,
%babelPtrR(__CIL_TMP69, BabelExp_241, 4),
%
%(__CIL_TMP69 < 0 ->
%__CIL_TMP52 is 1
%; __CIL_TMP52 is 0),
%
%(__CIL_TMP52 \= 0 ->
%BABEL_RET is 1, true
%; babel__implicit_mainSimpleSort_cil_lr_2_cil_lr_1c_22(__CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_HI, __CIL_AP_D, __CIL_AP_BUDGET, __CIL_AP_HP, __CIL_AP___CIL_RET18, H_SSA_3, I_SSA_6 , RETFLAG18_SSA_1),BABEL_RET is RETFLAG18_SSA_1, true)))). 
%
% 
%fallbackSimpleSort_cil_lr_2_cil_lr_1(__CIL_AP_FMAP, __CIL_AP_ECLASS, __CIL_AP_LO, __CIL_AP_HI, __CIL_AP_I, __CIL_AP_TMP, __CIL_AP_J, EC_TMP, VOID) :- 
%
%
% BabelExp_242 is __CIL_AP_J,
%babelPtrR(__CIL_TMP11, BabelExp_242, 4),
%BabelExp_243 is __CIL_AP_HI,
%babelPtrR(__CIL_TMP12, BabelExp_243, 4),
%
%(__CIL_TMP11 =< __CIL_TMP12 ->
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%BabelExp_244 is __CIL_AP_FMAP,
%babelPtrR(__CIL_TMP13, BabelExp_244, 8),
%BabelExp_245 is __CIL_AP_J,
%babelPtrR(__CIL_TMP14, BabelExp_245, 4),
%__CIL_TMP15 is __CIL_TMP13 +4* __CIL_TMP14,
%BabelExp_246 is __CIL_AP_ECLASS,
%babelPtrR(__CIL_TMP16, BabelExp_246, 8),
%BabelExp_247 is __CIL_TMP15,
%babelPtrR(__CIL_TMP17, BabelExp_247, 4),
%__CIL_TMP18 is __CIL_TMP16 +4* __CIL_TMP17,
%BabelExp_248 is __CIL_TMP18,
%babelPtrR(__CIL_TMP19, BabelExp_248, 4),
%
%(EC_TMP > __CIL_TMP19 ->
%__CIL_TMP10 is 1
%; __CIL_TMP10 is 0),
%
%(__CIL_TMP10 \= 0 ->
%BabelExp_249 is __CIL_AP_FMAP,
%babelPtrR(__CIL_TMP20, BabelExp_249, 8),
%BabelExp_250 is __CIL_AP_J,
%babelPtrR(__CIL_TMP21, BabelExp_250, 4),
%__CIL_TMP22 is __CIL_TMP20 +4* __CIL_TMP21,
%BabelExp_251 is __CIL_AP_J,
%babelPtrR(__CIL_TMP23, BabelExp_251, 4),
%BabelExp_252 is __CIL_AP_FMAP,
%babelPtrR(__CIL_TMP24, BabelExp_252, 8),
%BabelExp_253 is __CIL_TMP23 - 1,
%__CIL_TMP25 is BabelExp_253,
%__CIL_TMP26 is __CIL_TMP24 +4* __CIL_TMP25,
%babelPtrR(BabelExp_254, __CIL_TMP22, 4),
%babel_ptrE(__CIL_TMP26, BabelExp_254, 4),
%BabelExp_255 is __CIL_AP_J,
%babelPtrR(__CIL_TMP27, BabelExp_255, 4),
%BabelExp_256 is __CIL_TMP27 + 1,
%babel_ptrE(__CIL_AP_J, BabelExp_256, 4),
%fallbackSimpleSort_cil_lr_2_cil_lr_1(__CIL_AP_FMAP, __CIL_AP_ECLASS, __CIL_AP_LO, __CIL_AP_HI, __CIL_AP_I, __CIL_AP_TMP, __CIL_AP_J, EC_TMP, VOID),true
%; true)
%; true). 
%
% 
%fallbackSimpleSort_cil_lr_1_cil_lr_1(__CIL_AP_I, __CIL_AP_TMP, __CIL_AP_J, __CIL_AP_FMAP, __CIL_AP_ECLASS, __CIL_AP_HI, EC_TMP, VOID) :- 
%
%
% BabelExp_257 is __CIL_AP_J,
%babelPtrR(__CIL_TMP10, BabelExp_257, 4),
%BabelExp_258 is __CIL_AP_HI,
%babelPtrR(__CIL_TMP11, BabelExp_258, 4),
%
%(__CIL_TMP10 =< __CIL_TMP11 ->
%__CIL_TMP8 is 1
%; __CIL_TMP8 is 0),
%
%(__CIL_TMP8 \= 0 ->
%BabelExp_259 is __CIL_AP_FMAP,
%babelPtrR(__CIL_TMP12, BabelExp_259, 8),
%BabelExp_260 is __CIL_AP_J,
%babelPtrR(__CIL_TMP13, BabelExp_260, 4),
%__CIL_TMP14 is __CIL_TMP12 +4* __CIL_TMP13,
%BabelExp_261 is __CIL_AP_ECLASS,
%babelPtrR(__CIL_TMP15, BabelExp_261, 8),
%BabelExp_262 is __CIL_TMP14,
%babelPtrR(__CIL_TMP16, BabelExp_262, 4),
%__CIL_TMP17 is __CIL_TMP15 +4* __CIL_TMP16,
%BabelExp_263 is __CIL_TMP17,
%babelPtrR(__CIL_TMP18, BabelExp_263, 4),
%
%(EC_TMP > __CIL_TMP18 ->
%__CIL_TMP9 is 1
%; __CIL_TMP9 is 0),
%
%(__CIL_TMP9 \= 0 ->
%BabelExp_264 is __CIL_AP_FMAP,
%babelPtrR(__CIL_TMP19, BabelExp_264, 8),
%BabelExp_265 is __CIL_AP_J,
%babelPtrR(__CIL_TMP20, BabelExp_265, 4),
%__CIL_TMP21 is __CIL_TMP19 +4* __CIL_TMP20,
%BabelExp_266 is __CIL_AP_J,
%babelPtrR(__CIL_TMP22, BabelExp_266, 4),
%BabelExp_267 is __CIL_AP_FMAP,
%babelPtrR(__CIL_TMP23, BabelExp_267, 8),
%BabelExp_268 is __CIL_TMP22 - 4,
%__CIL_TMP24 is BabelExp_268,
%__CIL_TMP25 is __CIL_TMP23 +4* __CIL_TMP24,
%babelPtrR(BabelExp_269, __CIL_TMP21, 4),
%babel_ptrE(__CIL_TMP25, BabelExp_269, 4),
%BabelExp_270 is __CIL_AP_J,
%babelPtrR(__CIL_TMP26, BabelExp_270, 4),
%BabelExp_271 is __CIL_TMP26 + 4,
%babel_ptrE(__CIL_AP_J, BabelExp_271, 4),
%fallbackSimpleSort_cil_lr_1_cil_lr_1(__CIL_AP_I, __CIL_AP_TMP, __CIL_AP_J, __CIL_AP_FMAP, __CIL_AP_ECLASS, __CIL_AP_HI, EC_TMP, VOID),true
%; true)
%; true). 
%
% 
%bZ2_blockSort_cil_lr_1(__CIL_AP_S, PTR, I, VOID) :- 
%
%
% BabelExp_272 is __CIL_AP_S,
%babelPtrR(__CIL_TMP7, BabelExp_272, 8),
%__CIL_TMP8 is __CIL_TMP7,
%__CIL_TMP9 is __CIL_TMP8 +1* 108,
%__CIL_TMP10 is __CIL_TMP9,
%BabelExp_273 is __CIL_TMP10,
%babelPtrR(__CIL_TMP11, BabelExp_273, 4),
%
%(I < __CIL_TMP11 ->
%__CIL_TMP5 is 1
%; __CIL_TMP5 is 0),
%
%(__CIL_TMP5 \= 0 ->
%__CIL_TMP12 is PTR +4* I,
%BabelExp_274 is __CIL_TMP12,
%babelPtrR(__CIL_TMP13, BabelExp_274, 4),
%
%(__CIL_TMP13 =:= 0 ->
%__CIL_TMP6 is 1
%; __CIL_TMP6 is 0),
%
%(__CIL_TMP6 \= 0 ->
%BabelExp_275 is __CIL_AP_S,
%babelPtrR(__CIL_TMP14, BabelExp_275, 8),
%__CIL_TMP15 is __CIL_TMP14,
%__CIL_TMP16 is __CIL_TMP15 +1* 48,
%__CIL_TMP17 is __CIL_TMP16,
%BabelExp_276 is I,
%babel_ptrE(__CIL_TMP17, BabelExp_276, 4),true
%; BabelExp_277 is I + 1,
%I_SSA_1 is BabelExp_277,
%bZ2_blockSort_cil_lr_1(__CIL_AP_S, PTR, I_SSA_1, VOID),true)
%; true). 
%
% 
%mainSimpleSort_cil_lr_1(__CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_HI, __CIL_AP_D, __CIL_AP_BUDGET, __CIL_AP_HP, BIGN, INCS, VOID) :- 
%
%BabelExp_278 is __CIL_AP_HP,
%babelPtrR(__CIL_TMP12, BabelExp_278, 4),
%__CIL_TMP13 is INCS +4* __CIL_TMP12,
%BabelExp_279 is __CIL_TMP13,
%babelPtrR(__CIL_TMP14, BabelExp_279, 4),
%
%(__CIL_TMP14 < BIGN ->
%__CIL_TMP11 is 1
%; __CIL_TMP11 is 0),
%
%(__CIL_TMP11 \= 0 ->
%BabelExp_280 is __CIL_AP_HP,
%babelPtrR(__CIL_TMP15, BabelExp_280, 4),
%BabelExp_281 is __CIL_TMP15 + 1,
%babel_ptrE(__CIL_AP_HP, BabelExp_281, 4),
%mainSimpleSort_cil_lr_1(__CIL_AP_PTR, __CIL_AP_BLOCK, __CIL_AP_QUADRANT, __CIL_AP_NBLOCK, __CIL_AP_LO, __CIL_AP_HI, __CIL_AP_D, __CIL_AP_BUDGET, __CIL_AP_HP, BIGN, INCS, VOID),true
%; true). 
%
% :- foreign(babel__implicit_mainSimpleSort_cil_lr_2c_27(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer,  -integer)).
%:- foreign(babel__implicit_mainSimpleSort_cil_lr_2c_28(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer, +integer,  -integer)).
%
%mainSimpleSort_cil_lr_2(__CIL_PP_PTR, __CIL_PP_BLOCK, __CIL_PP_QUADRANT, __CIL_PP_NBLOCK, __CIL_PP_LO, __CIL_PP_HI, __CIL_PP_D, __CIL_PP_BUDGET, __CIL_PP_HP, __CIL_PP___CIL_RET18, __CIL_FP_PTR, __CIL_FP_BLOCK, __CIL_FP_QUADRANT, __CIL_FP_NBLOCK, __CIL_FP_LO, __CIL_FP_HI, __CIL_FP_D, __CIL_FP_BUDGET, __CIL_FP_HP, __CIL_FP___CIL_RET18, PTR, BLOCK, QUADRANT, NBLOCK, LO, HI, D, BUDGET, HP, INCS, BABEL_RET) :- 
%
%
% (HP >= 0 ->
%__CIL_TMP55 is 1
%; __CIL_TMP55 is 0),
%
%(__CIL_TMP55 \= 0 ->
%__CIL_TMP56 is INCS +4* HP,
%BabelExp_282 is __CIL_TMP56,
%babelPtrR(H_SSA_1, BabelExp_282, 4),
%BabelExp_283 is LO + H_SSA_1,
%I_SSA_1 is BabelExp_283,
%BabelExp_284 is PTR,
%babel_ptrE(__CIL_FP_PTR, BabelExp_284, 8),
%BabelExp_285 is BLOCK,
%babel_ptrE(__CIL_FP_BLOCK, BabelExp_285, 8),
%BabelExp_286 is QUADRANT,
%babel_ptrE(__CIL_FP_QUADRANT, BabelExp_286, 8),
%BabelExp_287 is NBLOCK,
%babel_ptrE(__CIL_FP_NBLOCK, BabelExp_287, 4),
%BabelExp_288 is LO,
%babel_ptrE(__CIL_FP_LO, BabelExp_288, 4),
%BabelExp_289 is HI,
%babel_ptrE(__CIL_FP_HI, BabelExp_289, 4),
%BabelExp_290 is D,
%babel_ptrE(__CIL_FP_D, BabelExp_290, 4),
%BabelExp_291 is BUDGET,
%babel_ptrE(__CIL_FP_BUDGET, BabelExp_291, 8),
%BabelExp_292 is HP,
%babel_ptrE(__CIL_FP_HP, BabelExp_292, 4),
%__CIL_RET18 is 1,
%BabelExp_293 is __CIL_RET18,
%babel_ptrE(__CIL_FP___CIL_RET18, BabelExp_293, 4),
%babel__implicit_mainSimpleSort_cil_lr_2c_27(__CIL_PP_PTR, __CIL_PP_BLOCK, __CIL_PP_QUADRANT, __CIL_PP_NBLOCK, __CIL_PP_LO, __CIL_PP_HI, __CIL_PP_D, __CIL_PP_BUDGET, __CIL_PP_HP, __CIL_PP___CIL_RET18, H_SSA_1, I_SSA_1 , RETFLAG19_SSA_1),
%BabelExp_294 is __CIL_FP_PTR,
%babelPtrR(PTR_SSA_1, BabelExp_294, 8),
%BabelExp_295 is __CIL_FP_BLOCK,
%babelPtrR(BLOCK_SSA_1, BabelExp_295, 8),
%BabelExp_296 is __CIL_FP_QUADRANT,
%babelPtrR(QUADRANT_SSA_1, BabelExp_296, 8),
%BabelExp_297 is __CIL_FP_NBLOCK,
%babelPtrR(NBLOCK_SSA_1, BabelExp_297, 4),
%BabelExp_298 is __CIL_FP_LO,
%babelPtrR(LO_SSA_1, BabelExp_298, 4),
%BabelExp_299 is __CIL_FP_HI,
%babelPtrR(HI_SSA_1, BabelExp_299, 4),
%BabelExp_300 is __CIL_FP_D,
%babelPtrR(D_SSA_1, BabelExp_300, 4),
%BabelExp_301 is __CIL_FP_BUDGET,
%babelPtrR(BUDGET_SSA_1, BabelExp_301, 8),
%BabelExp_302 is __CIL_FP_HP,
%babelPtrR(HP_SSA_1, BabelExp_302, 4),
%BabelExp_303 is __CIL_FP___CIL_RET18,
%babelPtrR(__CIL_RET18_SSA_1, BabelExp_303, 4),
%(RETFLAG19_SSA_1 \= 0 ->
%BABEL_RET is __CIL_RET18_SSA_1, true
%; BabelExp_304 is HP_SSA_1 - 1,
%HP_SSA_2 is BabelExp_304,
%babel__implicit_mainSimpleSort_cil_lr_2c_28(PTR_SSA_1, BLOCK_SSA_1, QUADRANT_SSA_1, NBLOCK_SSA_1, LO_SSA_1, HI_SSA_1, D_SSA_1, BUDGET_SSA_1, HP_SSA_2 , RETFLAG17_SSA_1),BABEL_RET is RETFLAG17_SSA_1, true)
%; BABEL_RET is 0, true). 
%
% 
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2, BLOCK, QUADRANT, NBLOCK, BUDGET, K, BABEL_RET) :- 
%
%
% __CIL_TMP117 is BLOCK +1* I1,
%BabelExp_305 is __CIL_TMP117,
%babelPtrR_byte(C1_SSA_1, BabelExp_305, 1),
%__CIL_TMP118 is BLOCK +1* I2,
%BabelExp_306 is __CIL_TMP118,
%babelPtrR_byte(C2_SSA_1, BabelExp_306, 1),
%
%(C1_SSA_1 \= C2_SSA_1 ->
%__CIL_TMP66 is 1
%; __CIL_TMP66 is 0),
%
%(__CIL_TMP66 \= 0 ->
%(C1_SSA_1 > C2_SSA_1 ->
%__CIL_TMP119 is 1
%; __CIL_TMP119 is 0),
%
%BabelExp_307 is __CIL_TMP119,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_307, 1),BABEL_RET is 1, true
%; __CIL_TMP120 is QUADRANT +2* I1,
%BabelExp_308 is __CIL_TMP120,
%babelPtrR(S1_SSA_1, BabelExp_308, 2),
%__CIL_TMP121 is QUADRANT +2* I2,
%BabelExp_309 is __CIL_TMP121,
%babelPtrR(S2_SSA_1, BabelExp_309, 2),
%
%(S1_SSA_1 \= S2_SSA_1 ->
%__CIL_TMP67 is 1
%; __CIL_TMP67 is 0),
%
%(__CIL_TMP67 \= 0 ->
%(S1_SSA_1 > S2_SSA_1 ->
%__CIL_TMP122 is 1
%; __CIL_TMP122 is 0),
%
%BabelExp_310 is __CIL_TMP122,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_310, 1),BABEL_RET is 1, true
%; BabelExp_311 is I1 + 1,
%I1_SSA_1 is BabelExp_311,
%BabelExp_312 is I2 + 1,
%I2_SSA_1 is BabelExp_312,
%__CIL_TMP123 is BLOCK +1* I1_SSA_1,
%BabelExp_313 is __CIL_TMP123,
%babelPtrR_byte(C1_SSA_2, BabelExp_313, 1),
%__CIL_TMP124 is BLOCK +1* I2_SSA_1,
%BabelExp_314 is __CIL_TMP124,
%babelPtrR_byte(C2_SSA_2, BabelExp_314, 1),
%
%(C1_SSA_2 \= C2_SSA_2 ->
%__CIL_TMP68 is 1
%; __CIL_TMP68 is 0),
%
%(__CIL_TMP68 \= 0 ->
%(C1_SSA_2 > C2_SSA_2 ->
%__CIL_TMP125 is 1
%; __CIL_TMP125 is 0),
%
%BabelExp_315 is __CIL_TMP125,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_315, 1),BABEL_RET is 1, true
%; __CIL_TMP126 is QUADRANT +2* I1_SSA_1,
%BabelExp_316 is __CIL_TMP126,
%babelPtrR(S1_SSA_2, BabelExp_316, 2),
%__CIL_TMP127 is QUADRANT +2* I2_SSA_1,
%BabelExp_317 is __CIL_TMP127,
%babelPtrR(S2_SSA_2, BabelExp_317, 2),
%
%(S1_SSA_2 \= S2_SSA_2 ->
%__CIL_TMP69 is 1
%; __CIL_TMP69 is 0),
%
%(__CIL_TMP69 \= 0 ->
%(S1_SSA_2 > S2_SSA_2 ->
%__CIL_TMP128 is 1
%; __CIL_TMP128 is 0),
%
%BabelExp_318 is __CIL_TMP128,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_318, 1),BABEL_RET is 1, true
%; BabelExp_319 is I1_SSA_1 + 1,
%I1_SSA_2 is BabelExp_319,
%BabelExp_320 is I2_SSA_1 + 1,
%I2_SSA_2 is BabelExp_320,
%__CIL_TMP129 is BLOCK +1* I1_SSA_2,
%BabelExp_321 is __CIL_TMP129,
%babelPtrR_byte(C1_SSA_3, BabelExp_321, 1),
%__CIL_TMP130 is BLOCK +1* I2_SSA_2,
%BabelExp_322 is __CIL_TMP130,
%babelPtrR_byte(C2_SSA_3, BabelExp_322, 1),
%
%(C1_SSA_3 \= C2_SSA_3 ->
%__CIL_TMP70 is 1
%; __CIL_TMP70 is 0),
%
%(__CIL_TMP70 \= 0 ->
%(C1_SSA_3 > C2_SSA_3 ->
%__CIL_TMP131 is 1
%; __CIL_TMP131 is 0),
%
%BabelExp_323 is __CIL_TMP131,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_323, 1),BABEL_RET is 1, true
%; __CIL_TMP132 is QUADRANT +2* I1_SSA_2,
%BabelExp_324 is __CIL_TMP132,
%babelPtrR(S1_SSA_3, BabelExp_324, 2),
%__CIL_TMP133 is QUADRANT +2* I2_SSA_2,
%BabelExp_325 is __CIL_TMP133,
%babelPtrR(S2_SSA_3, BabelExp_325, 2),
%
%(S1_SSA_3 \= S2_SSA_3 ->
%__CIL_TMP71 is 1
%; __CIL_TMP71 is 0),
%
%(__CIL_TMP71 \= 0 ->
%(S1_SSA_3 > S2_SSA_3 ->
%__CIL_TMP134 is 1
%; __CIL_TMP134 is 0),
%
%BabelExp_326 is __CIL_TMP134,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_326, 1),BABEL_RET is 1, true
%; BabelExp_327 is I1_SSA_2 + 1,
%I1_SSA_3 is BabelExp_327,
%BabelExp_328 is I2_SSA_2 + 1,
%I2_SSA_3 is BabelExp_328,
%__CIL_TMP135 is BLOCK +1* I1_SSA_3,
%BabelExp_329 is __CIL_TMP135,
%babelPtrR_byte(C1_SSA_4, BabelExp_329, 1),
%__CIL_TMP136 is BLOCK +1* I2_SSA_3,
%BabelExp_330 is __CIL_TMP136,
%babelPtrR_byte(C2_SSA_4, BabelExp_330, 1),
%
%(C1_SSA_4 \= C2_SSA_4 ->
%__CIL_TMP72 is 1
%; __CIL_TMP72 is 0),
%
%(__CIL_TMP72 \= 0 ->
%(C1_SSA_4 > C2_SSA_4 ->
%__CIL_TMP137 is 1
%; __CIL_TMP137 is 0),
%
%BabelExp_331 is __CIL_TMP137,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_331, 1),BABEL_RET is 1, true
%; __CIL_TMP138 is QUADRANT +2* I1_SSA_3,
%BabelExp_332 is __CIL_TMP138,
%babelPtrR(S1_SSA_4, BabelExp_332, 2),
%__CIL_TMP139 is QUADRANT +2* I2_SSA_3,
%BabelExp_333 is __CIL_TMP139,
%babelPtrR(S2_SSA_4, BabelExp_333, 2),
%
%(S1_SSA_4 \= S2_SSA_4 ->
%__CIL_TMP73 is 1
%; __CIL_TMP73 is 0),
%
%(__CIL_TMP73 \= 0 ->
%(S1_SSA_4 > S2_SSA_4 ->
%__CIL_TMP140 is 1
%; __CIL_TMP140 is 0),
%
%BabelExp_334 is __CIL_TMP140,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_334, 1),BABEL_RET is 1, true
%; BabelExp_335 is I1_SSA_3 + 1,
%I1_SSA_4 is BabelExp_335,
%BabelExp_336 is I2_SSA_3 + 1,
%I2_SSA_4 is BabelExp_336,
%__CIL_TMP141 is BLOCK +1* I1_SSA_4,
%BabelExp_337 is __CIL_TMP141,
%babelPtrR_byte(C1_SSA_5, BabelExp_337, 1),
%__CIL_TMP142 is BLOCK +1* I2_SSA_4,
%BabelExp_338 is __CIL_TMP142,
%babelPtrR_byte(C2_SSA_5, BabelExp_338, 1),
%
%(C1_SSA_5 \= C2_SSA_5 ->
%__CIL_TMP74 is 1
%; __CIL_TMP74 is 0),
%
%(__CIL_TMP74 \= 0 ->
%(C1_SSA_5 > C2_SSA_5 ->
%__CIL_TMP143 is 1
%; __CIL_TMP143 is 0),
%
%BabelExp_339 is __CIL_TMP143,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_339, 1),BABEL_RET is 1, true
%; __CIL_TMP144 is QUADRANT +2* I1_SSA_4,
%BabelExp_340 is __CIL_TMP144,
%babelPtrR(S1_SSA_5, BabelExp_340, 2),
%__CIL_TMP145 is QUADRANT +2* I2_SSA_4,
%BabelExp_341 is __CIL_TMP145,
%babelPtrR(S2_SSA_5, BabelExp_341, 2),
%
%(S1_SSA_5 \= S2_SSA_5 ->
%__CIL_TMP75 is 1
%; __CIL_TMP75 is 0),
%
%(__CIL_TMP75 \= 0 ->
%(S1_SSA_5 > S2_SSA_5 ->
%__CIL_TMP146 is 1
%; __CIL_TMP146 is 0),
%
%BabelExp_342 is __CIL_TMP146,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_342, 1),BABEL_RET is 1, true
%; BabelExp_343 is I1_SSA_4 + 1,
%I1_SSA_5 is BabelExp_343,
%BabelExp_344 is I2_SSA_4 + 1,
%I2_SSA_5 is BabelExp_344,
%__CIL_TMP147 is BLOCK +1* I1_SSA_5,
%BabelExp_345 is __CIL_TMP147,
%babelPtrR_byte(C1_SSA_6, BabelExp_345, 1),
%__CIL_TMP148 is BLOCK +1* I2_SSA_5,
%BabelExp_346 is __CIL_TMP148,
%babelPtrR_byte(C2_SSA_6, BabelExp_346, 1),
%
%(C1_SSA_6 \= C2_SSA_6 ->
%__CIL_TMP76 is 1
%; __CIL_TMP76 is 0),
%
%(__CIL_TMP76 \= 0 ->
%(C1_SSA_6 > C2_SSA_6 ->
%__CIL_TMP149 is 1
%; __CIL_TMP149 is 0),
%
%BabelExp_347 is __CIL_TMP149,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_347, 1),BABEL_RET is 1, true
%; __CIL_TMP150 is QUADRANT +2* I1_SSA_5,
%BabelExp_348 is __CIL_TMP150,
%babelPtrR(S1_SSA_6, BabelExp_348, 2),
%__CIL_TMP151 is QUADRANT +2* I2_SSA_5,
%BabelExp_349 is __CIL_TMP151,
%babelPtrR(S2_SSA_6, BabelExp_349, 2),
%
%(S1_SSA_6 \= S2_SSA_6 ->
%__CIL_TMP77 is 1
%; __CIL_TMP77 is 0),
%
%(__CIL_TMP77 \= 0 ->
%(S1_SSA_6 > S2_SSA_6 ->
%__CIL_TMP152 is 1
%; __CIL_TMP152 is 0),
%
%BabelExp_350 is __CIL_TMP152,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_350, 1),BABEL_RET is 1, true
%; BabelExp_351 is I1_SSA_5 + 1,
%I1_SSA_6 is BabelExp_351,
%BabelExp_352 is I2_SSA_5 + 1,
%I2_SSA_6 is BabelExp_352,
%__CIL_TMP153 is BLOCK +1* I1_SSA_6,
%BabelExp_353 is __CIL_TMP153,
%babelPtrR_byte(C1_SSA_7, BabelExp_353, 1),
%__CIL_TMP154 is BLOCK +1* I2_SSA_6,
%BabelExp_354 is __CIL_TMP154,
%babelPtrR_byte(C2_SSA_7, BabelExp_354, 1),
%
%(C1_SSA_7 \= C2_SSA_7 ->
%__CIL_TMP78 is 1
%; __CIL_TMP78 is 0),
%
%(__CIL_TMP78 \= 0 ->
%(C1_SSA_7 > C2_SSA_7 ->
%__CIL_TMP155 is 1
%; __CIL_TMP155 is 0),
%
%BabelExp_355 is __CIL_TMP155,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_355, 1),BABEL_RET is 1, true
%; __CIL_TMP156 is QUADRANT +2* I1_SSA_6,
%BabelExp_356 is __CIL_TMP156,
%babelPtrR(S1_SSA_7, BabelExp_356, 2),
%__CIL_TMP157 is QUADRANT +2* I2_SSA_6,
%BabelExp_357 is __CIL_TMP157,
%babelPtrR(S2_SSA_7, BabelExp_357, 2),
%
%(S1_SSA_7 \= S2_SSA_7 ->
%__CIL_TMP79 is 1
%; __CIL_TMP79 is 0),
%
%(__CIL_TMP79 \= 0 ->
%(S1_SSA_7 > S2_SSA_7 ->
%__CIL_TMP158 is 1
%; __CIL_TMP158 is 0),
%
%BabelExp_358 is __CIL_TMP158,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_358, 1),BABEL_RET is 1, true
%; BabelExp_359 is I1_SSA_6 + 1,
%I1_SSA_7 is BabelExp_359,
%BabelExp_360 is I2_SSA_6 + 1,
%I2_SSA_7 is BabelExp_360,
%__CIL_TMP159 is BLOCK +1* I1_SSA_7,
%BabelExp_361 is __CIL_TMP159,
%babelPtrR_byte(C1_SSA_8, BabelExp_361, 1),
%__CIL_TMP160 is BLOCK +1* I2_SSA_7,
%BabelExp_362 is __CIL_TMP160,
%babelPtrR_byte(C2_SSA_8, BabelExp_362, 1),
%
%(C1_SSA_8 \= C2_SSA_8 ->
%__CIL_TMP80 is 1
%; __CIL_TMP80 is 0),
%
%(__CIL_TMP80 \= 0 ->
%(C1_SSA_8 > C2_SSA_8 ->
%__CIL_TMP161 is 1
%; __CIL_TMP161 is 0),
%
%BabelExp_363 is __CIL_TMP161,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_363, 1),BABEL_RET is 1, true
%; __CIL_TMP162 is QUADRANT +2* I1_SSA_7,
%BabelExp_364 is __CIL_TMP162,
%babelPtrR(S1_SSA_8, BabelExp_364, 2),
%__CIL_TMP163 is QUADRANT +2* I2_SSA_7,
%BabelExp_365 is __CIL_TMP163,
%babelPtrR(S2_SSA_8, BabelExp_365, 2),
%
%(S1_SSA_8 \= S2_SSA_8 ->
%__CIL_TMP81 is 1
%; __CIL_TMP81 is 0),
%
%(__CIL_TMP81 \= 0 ->
%(S1_SSA_8 > S2_SSA_8 ->
%__CIL_TMP164 is 1
%; __CIL_TMP164 is 0),
%
%BabelExp_366 is __CIL_TMP164,
%babel_ptrE(__CIL_AP___CIL_RET12, BabelExp_366, 1),BABEL_RET is 1, true
%; BabelExp_367 is I1_SSA_7 + 1,
%I1_SSA_8 is BabelExp_367,
%BabelExp_368 is I2_SSA_7 + 1,
%I2_SSA_8 is BabelExp_368,
%
%(I1_SSA_8 >= NBLOCK ->
%__CIL_TMP82 is 1
%; __CIL_TMP82 is 0),
%
%(__CIL_TMP82 \= 0 ->
%BabelExp_369 is I1_SSA_8 - NBLOCK,
%I1_SSA_9 is BabelExp_369
%; I1_SSA_9 is I1_SSA_8),
%
%(I2_SSA_8 >= NBLOCK ->
%__CIL_TMP83 is 1
%; __CIL_TMP83 is 0),
%
%(__CIL_TMP83 \= 0 ->
%BabelExp_370 is I2_SSA_8 - NBLOCK,
%I2_SSA_9 is BabelExp_370
%; I2_SSA_9 is I2_SSA_8),
%BabelExp_371 is K - 8,
%K_SSA_1 is BabelExp_371,
%BabelExp_372 is BUDGET,
%babelPtrR(__CIL_TMP165, BabelExp_372, 4),
%BabelExp_373 is __CIL_TMP165 - 1,
%babel_ptrE(BUDGET, BabelExp_373, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP84 is 1
%; __CIL_TMP84 is 0),
%
%(__CIL_TMP84 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1_SSA_9, I2_SSA_9, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP85 is 1
%; __CIL_TMP85 is 0),
%
%(__CIL_TMP85 \= 0 ->
%BabelExp_374 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_374
%; I2_SSA_1 is I2),
%BabelExp_375 is K - 8,
%K_SSA_1 is BabelExp_375,
%BabelExp_376 is BUDGET,
%babelPtrR(__CIL_TMP166, BabelExp_376, 4),
%BabelExp_377 is __CIL_TMP166 - 1,
%babel_ptrE(BUDGET, BabelExp_377, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP86 is 1
%; __CIL_TMP86 is 0),
%
%(__CIL_TMP86 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP87 is 1
%; __CIL_TMP87 is 0),
%
%(__CIL_TMP87 \= 0 ->
%BabelExp_378 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_378
%; I2_SSA_1 is I2),
%BabelExp_379 is K - 8,
%K_SSA_1 is BabelExp_379,
%BabelExp_380 is BUDGET,
%babelPtrR(__CIL_TMP167, BabelExp_380, 4),
%BabelExp_381 is __CIL_TMP167 - 1,
%babel_ptrE(BUDGET, BabelExp_381, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP88 is 1
%; __CIL_TMP88 is 0),
%
%(__CIL_TMP88 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP89 is 1
%; __CIL_TMP89 is 0),
%
%(__CIL_TMP89 \= 0 ->
%BabelExp_382 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_382
%; I2_SSA_1 is I2),
%BabelExp_383 is K - 8,
%K_SSA_1 is BabelExp_383,
%BabelExp_384 is BUDGET,
%babelPtrR(__CIL_TMP168, BabelExp_384, 4),
%BabelExp_385 is __CIL_TMP168 - 1,
%babel_ptrE(BUDGET, BabelExp_385, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP90 is 1
%; __CIL_TMP90 is 0),
%
%(__CIL_TMP90 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP91 is 1
%; __CIL_TMP91 is 0),
%
%(__CIL_TMP91 \= 0 ->
%BabelExp_386 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_386
%; I2_SSA_1 is I2),
%BabelExp_387 is K - 8,
%K_SSA_1 is BabelExp_387,
%BabelExp_388 is BUDGET,
%babelPtrR(__CIL_TMP169, BabelExp_388, 4),
%BabelExp_389 is __CIL_TMP169 - 1,
%babel_ptrE(BUDGET, BabelExp_389, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP92 is 1
%; __CIL_TMP92 is 0),
%
%(__CIL_TMP92 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP93 is 1
%; __CIL_TMP93 is 0),
%
%(__CIL_TMP93 \= 0 ->
%BabelExp_390 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_390
%; I2_SSA_1 is I2),
%BabelExp_391 is K - 8,
%K_SSA_1 is BabelExp_391,
%BabelExp_392 is BUDGET,
%babelPtrR(__CIL_TMP170, BabelExp_392, 4),
%BabelExp_393 is __CIL_TMP170 - 1,
%babel_ptrE(BUDGET, BabelExp_393, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP94 is 1
%; __CIL_TMP94 is 0),
%
%(__CIL_TMP94 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP95 is 1
%; __CIL_TMP95 is 0),
%
%(__CIL_TMP95 \= 0 ->
%BabelExp_394 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_394
%; I2_SSA_1 is I2),
%BabelExp_395 is K - 8,
%K_SSA_1 is BabelExp_395,
%BabelExp_396 is BUDGET,
%babelPtrR(__CIL_TMP171, BabelExp_396, 4),
%BabelExp_397 is __CIL_TMP171 - 1,
%babel_ptrE(BUDGET, BabelExp_397, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP96 is 1
%; __CIL_TMP96 is 0),
%
%(__CIL_TMP96 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP97 is 1
%; __CIL_TMP97 is 0),
%
%(__CIL_TMP97 \= 0 ->
%BabelExp_398 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_398
%; I2_SSA_1 is I2),
%BabelExp_399 is K - 8,
%K_SSA_1 is BabelExp_399,
%BabelExp_400 is BUDGET,
%babelPtrR(__CIL_TMP172, BabelExp_400, 4),
%BabelExp_401 is __CIL_TMP172 - 1,
%babel_ptrE(BUDGET, BabelExp_401, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP98 is 1
%; __CIL_TMP98 is 0),
%
%(__CIL_TMP98 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP99 is 1
%; __CIL_TMP99 is 0),
%
%(__CIL_TMP99 \= 0 ->
%BabelExp_402 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_402
%; I2_SSA_1 is I2),
%BabelExp_403 is K - 8,
%K_SSA_1 is BabelExp_403,
%BabelExp_404 is BUDGET,
%babelPtrR(__CIL_TMP173, BabelExp_404, 4),
%BabelExp_405 is __CIL_TMP173 - 1,
%babel_ptrE(BUDGET, BabelExp_405, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP100 is 1
%; __CIL_TMP100 is 0),
%
%(__CIL_TMP100 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP101 is 1
%; __CIL_TMP101 is 0),
%
%(__CIL_TMP101 \= 0 ->
%BabelExp_406 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_406
%; I2_SSA_1 is I2),
%BabelExp_407 is K - 8,
%K_SSA_1 is BabelExp_407,
%BabelExp_408 is BUDGET,
%babelPtrR(__CIL_TMP174, BabelExp_408, 4),
%BabelExp_409 is __CIL_TMP174 - 1,
%babel_ptrE(BUDGET, BabelExp_409, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP102 is 1
%; __CIL_TMP102 is 0),
%
%(__CIL_TMP102 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP103 is 1
%; __CIL_TMP103 is 0),
%
%(__CIL_TMP103 \= 0 ->
%BabelExp_410 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_410
%; I2_SSA_1 is I2),
%BabelExp_411 is K - 8,
%K_SSA_1 is BabelExp_411,
%BabelExp_412 is BUDGET,
%babelPtrR(__CIL_TMP175, BabelExp_412, 4),
%BabelExp_413 is __CIL_TMP175 - 1,
%babel_ptrE(BUDGET, BabelExp_413, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP104 is 1
%; __CIL_TMP104 is 0),
%
%(__CIL_TMP104 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP105 is 1
%; __CIL_TMP105 is 0),
%
%(__CIL_TMP105 \= 0 ->
%BabelExp_414 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_414
%; I2_SSA_1 is I2),
%BabelExp_415 is K - 8,
%K_SSA_1 is BabelExp_415,
%BabelExp_416 is BUDGET,
%babelPtrR(__CIL_TMP176, BabelExp_416, 4),
%BabelExp_417 is __CIL_TMP176 - 1,
%babel_ptrE(BUDGET, BabelExp_417, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP106 is 1
%; __CIL_TMP106 is 0),
%
%(__CIL_TMP106 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP107 is 1
%; __CIL_TMP107 is 0),
%
%(__CIL_TMP107 \= 0 ->
%BabelExp_418 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_418
%; I2_SSA_1 is I2),
%BabelExp_419 is K - 8,
%K_SSA_1 is BabelExp_419,
%BabelExp_420 is BUDGET,
%babelPtrR(__CIL_TMP177, BabelExp_420, 4),
%BabelExp_421 is __CIL_TMP177 - 1,
%babel_ptrE(BUDGET, BabelExp_421, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP108 is 1
%; __CIL_TMP108 is 0),
%
%(__CIL_TMP108 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP109 is 1
%; __CIL_TMP109 is 0),
%
%(__CIL_TMP109 \= 0 ->
%BabelExp_422 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_422
%; I2_SSA_1 is I2),
%BabelExp_423 is K - 8,
%K_SSA_1 is BabelExp_423,
%BabelExp_424 is BUDGET,
%babelPtrR(__CIL_TMP178, BabelExp_424, 4),
%BabelExp_425 is __CIL_TMP178 - 1,
%babel_ptrE(BUDGET, BabelExp_425, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP110 is 1
%; __CIL_TMP110 is 0),
%
%(__CIL_TMP110 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP111 is 1
%; __CIL_TMP111 is 0),
%
%(__CIL_TMP111 \= 0 ->
%BabelExp_426 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_426
%; I2_SSA_1 is I2),
%BabelExp_427 is K - 8,
%K_SSA_1 is BabelExp_427,
%BabelExp_428 is BUDGET,
%babelPtrR(__CIL_TMP179, BabelExp_428, 4),
%BabelExp_429 is __CIL_TMP179 - 1,
%babel_ptrE(BUDGET, BabelExp_429, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP112 is 1
%; __CIL_TMP112 is 0),
%
%(__CIL_TMP112 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP113 is 1
%; __CIL_TMP113 is 0),
%
%(__CIL_TMP113 \= 0 ->
%BabelExp_430 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_430
%; I2_SSA_1 is I2),
%BabelExp_431 is K - 8,
%K_SSA_1 is BabelExp_431,
%BabelExp_432 is BUDGET,
%babelPtrR(__CIL_TMP180, BabelExp_432, 4),
%BabelExp_433 is __CIL_TMP180 - 1,
%babel_ptrE(BUDGET, BabelExp_433, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP114 is 1
%; __CIL_TMP114 is 0),
%
%(__CIL_TMP114 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true)),
%
%(I2 >= NBLOCK ->
%__CIL_TMP115 is 1
%; __CIL_TMP115 is 0),
%
%(__CIL_TMP115 \= 0 ->
%BabelExp_434 is I2 - NBLOCK,
%I2_SSA_1 is BabelExp_434
%; I2_SSA_1 is I2),
%BabelExp_435 is K - 8,
%K_SSA_1 is BabelExp_435,
%BabelExp_436 is BUDGET,
%babelPtrR(__CIL_TMP181, BabelExp_436, 4),
%BabelExp_437 is __CIL_TMP181 - 1,
%babel_ptrE(BUDGET, BabelExp_437, 4),
%
%(K_SSA_1 >= 0 ->
%__CIL_TMP116 is 1
%; __CIL_TMP116 is 0),
%
%(__CIL_TMP116 \= 0 ->
%mainGtU_cil_lr_1(__CIL_AP___CIL_RET12, I1, I2_SSA_1, BLOCK, QUADRANT, NBLOCK, BUDGET, K_SSA_1 , RETFLAG13_SSA_1),BABEL_RET is RETFLAG13_SSA_1, true
%; BABEL_RET is 0, true). 
%
% :- foreign(babel__implicit_fallbackSimpleSort_cil_lr_1c_46(+integer, +integer, +integer, +integer, +integer, +integer, +positive)).
%:- foreign(babel__implicit_fallbackSimpleSort_cil_lr_1c_47(+integer, +integer, +integer, +integer, +integer)).
%
%fallbackSimpleSort_cil_lr_1(__CIL_PP_I, __CIL_PP_TMP, __CIL_PP_J, __CIL_FP_I, __CIL_FP_TMP, __CIL_FP_J, __CIL_AP_FMAP, __CIL_AP_ECLASS, __CIL_AP_LO, __CIL_AP_HI, I, VOID) :- 
%
%
% BabelExp_438 is __CIL_AP_LO,
%babelPtrR(__CIL_TMP23, BabelExp_438, 4),
%
%(I >= __CIL_TMP23 ->
%__CIL_TMP22 is 1
%; __CIL_TMP22 is 0),
%
%(__CIL_TMP22 \= 0 ->
%BabelExp_439 is __CIL_AP_FMAP,
%babelPtrR(__CIL_TMP24, BabelExp_439, 8),
%__CIL_TMP25 is __CIL_TMP24 +4* I,
%BabelExp_440 is __CIL_TMP25,
%babelPtrR(__CIL_TMP26, BabelExp_440, 4),
%TMP_SSA_1 is __CIL_TMP26,
%BabelExp_441 is __CIL_AP_ECLASS,
%babelPtrR(__CIL_TMP27, BabelExp_441, 8),
%__CIL_TMP28 is __CIL_TMP27 +4* TMP_SSA_1,
%BabelExp_442 is __CIL_TMP28,
%babelPtrR(EC_TMP_SSA_1, BabelExp_442, 4),
%BabelExp_443 is I + 4,
%J_SSA_1 is BabelExp_443,
%BabelExp_444 is I,
%babel_ptrE(__CIL_FP_I, BabelExp_444, 4),
%BabelExp_445 is TMP_SSA_1,
%babel_ptrE(__CIL_FP_TMP, BabelExp_445, 4),
%BabelExp_446 is J_SSA_1,
%babel_ptrE(__CIL_FP_J, BabelExp_446, 4),
%babel__implicit_fallbackSimpleSort_cil_lr_1c_46(__CIL_PP_I, __CIL_PP_TMP, __CIL_PP_J, __CIL_AP_FMAP, __CIL_AP_ECLASS, __CIL_AP_HI, EC_TMP_SSA_1),
%BabelExp_447 is __CIL_FP_I,
%babelPtrR(I_SSA_1, BabelExp_447, 4),
%BabelExp_448 is __CIL_FP_TMP,
%babelPtrR(TMP_SSA_2, BabelExp_448, 4),
%BabelExp_449 is __CIL_FP_J,
%babelPtrR(J_SSA_2, BabelExp_449, 4),
%BabelExp_450 is __CIL_AP_FMAP,
%babelPtrR(__CIL_TMP29, BabelExp_450, 8),
%BabelExp_451 is J_SSA_2 - 4,
%__CIL_TMP30 is BabelExp_451,
%__CIL_TMP31 is __CIL_TMP29 +4* __CIL_TMP30,
%BabelExp_452 is TMP_SSA_2,
%babel_ptrE(__CIL_TMP31, BabelExp_452, 4),
%BabelExp_453 is I_SSA_1 - 1,
%I_SSA_2 is BabelExp_453,
%babel__implicit_fallbackSimpleSort_cil_lr_1c_47(__CIL_AP_FMAP, __CIL_AP_ECLASS, __CIL_AP_LO, __CIL_AP_HI, I_SSA_2),true
%; true). 
%
% :- foreign(babel__implicit_fallbackSimpleSort_cil_lr_2c_48(+integer, +integer, +integer, +integer, +integer, +integer, +integer, +positive)).
%:- foreign(babel__implicit_fallbackSimpleSort_cil_lr_2c_49(+integer, +integer, +integer, +integer, +integer)).
%
%fallbackSimpleSort_cil_lr_2(__CIL_PP_FMAP, __CIL_PP_ECLASS, __CIL_PP_LO, __CIL_PP_HI, __CIL_PP_I, __CIL_PP_TMP, __CIL_PP_J, __CIL_FP_FMAP, __CIL_FP_ECLASS, __CIL_FP_LO, __CIL_FP_HI, __CIL_FP_I, __CIL_FP_TMP, __CIL_FP_J, FMAP, ECLASS, LO, HI, I, VOID) :- 
%
%
% (I >= LO ->
%__CIL_TMP34 is 1
%; __CIL_TMP34 is 0),
%
%(__CIL_TMP34 \= 0 ->
%__CIL_TMP35 is FMAP +4* I,
%BabelExp_454 is __CIL_TMP35,
%babelPtrR(__CIL_TMP36, BabelExp_454, 4),
%TMP_SSA_1 is __CIL_TMP36,
%__CIL_TMP37 is ECLASS +4* TMP_SSA_1,
%BabelExp_455 is __CIL_TMP37,
%babelPtrR(EC_TMP_SSA_1, BabelExp_455, 4),
%BabelExp_456 is I + 1,
%J_SSA_1 is BabelExp_456,
%BabelExp_457 is FMAP,
%babel_ptrE(__CIL_FP_FMAP, BabelExp_457, 8),
%BabelExp_458 is ECLASS,
%babel_ptrE(__CIL_FP_ECLASS, BabelExp_458, 8),
%BabelExp_459 is LO,
%babel_ptrE(__CIL_FP_LO, BabelExp_459, 4),
%BabelExp_460 is HI,
%babel_ptrE(__CIL_FP_HI, BabelExp_460, 4),
%BabelExp_461 is I,
%babel_ptrE(__CIL_FP_I, BabelExp_461, 4),
%BabelExp_462 is TMP_SSA_1,
%babel_ptrE(__CIL_FP_TMP, BabelExp_462, 4),
%BabelExp_463 is J_SSA_1,
%babel_ptrE(__CIL_FP_J, BabelExp_463, 4),
%babel__implicit_fallbackSimpleSort_cil_lr_2c_48(__CIL_PP_FMAP, __CIL_PP_ECLASS, __CIL_PP_LO, __CIL_PP_HI, __CIL_PP_I, __CIL_PP_TMP, __CIL_PP_J, EC_TMP_SSA_1),
%BabelExp_464 is __CIL_FP_FMAP,
%babelPtrR(FMAP_SSA_1, BabelExp_464, 8),
%BabelExp_465 is __CIL_FP_ECLASS,
%babelPtrR(ECLASS_SSA_1, BabelExp_465, 8),
%BabelExp_466 is __CIL_FP_LO,
%babelPtrR(LO_SSA_1, BabelExp_466, 4),
%BabelExp_467 is __CIL_FP_HI,
%babelPtrR(HI_SSA_1, BabelExp_467, 4),
%BabelExp_468 is __CIL_FP_I,
%babelPtrR(I_SSA_1, BabelExp_468, 4),
%BabelExp_469 is __CIL_FP_TMP,
%babelPtrR(TMP_SSA_2, BabelExp_469, 4),
%BabelExp_470 is __CIL_FP_J,
%babelPtrR(J_SSA_2, BabelExp_470, 4),
%BabelExp_471 is J_SSA_2 - 1,
%__CIL_TMP38 is BabelExp_471,
%__CIL_TMP39 is FMAP_SSA_1 +4* __CIL_TMP38,
%BabelExp_472 is TMP_SSA_2,
%babel_ptrE(__CIL_TMP39, BabelExp_472, 4),
%BabelExp_473 is I_SSA_1 - 1,
%I_SSA_2 is BabelExp_473,
%babel__implicit_fallbackSimpleSort_cil_lr_2c_49(FMAP_SSA_1, ECLASS_SSA_1, LO_SSA_1, HI_SSA_1, I_SSA_2),true
%; true). 
%
 
