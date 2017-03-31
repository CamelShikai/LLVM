/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Assembly Writer Source Fragment                                            *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

/// printInstruction - This method is automatically generated by tablegen
/// from the instruction set description.
void XCoreInstPrinter::printInstruction(const MCInst *MI, raw_ostream &O) {
  static const char AsmStrs[] = {
  /* 0 */ 'l', 'd', 'a', 'p', 32, 'r', '1', '1', ',', 32, 0,
  /* 11 */ 'g', 'e', 't', 's', 'r', 32, 'r', '1', '1', ',', 32, 0,
  /* 23 */ 's', 'e', 't', 32, 'c', 'p', ',', 32, 0,
  /* 32 */ 's', 'e', 't', 32, 'd', 'p', ',', 32, 0,
  /* 41 */ 's', 'e', 't', 32, 's', 'p', ',', 32, 0,
  /* 50 */ 'c', 'r', 'c', '3', '2', 32, 0,
  /* 57 */ 'l', 'd', 'a', '1', '6', 32, 0,
  /* 64 */ 's', 't', '1', '6', 32, 0,
  /* 70 */ 'c', 'r', 'c', '8', 32, 0,
  /* 76 */ 's', 't', '8', 32, 0,
  /* 81 */ '#', 32, 'L', 'D', 'A', 'W', 'F', 'I', 32, 0,
  /* 91 */ '#', 32, 'L', 'D', 'W', 'F', 'I', 32, 0,
  /* 100 */ '#', 32, 'S', 'T', 'W', 'F', 'I', 32, 0,
  /* 109 */ '#', 32, 'E', 'H', '_', 'R', 'E', 'T', 'U', 'R', 'N', 32, 0,
  /* 122 */ '#', 32, 'A', 'D', 'J', 'C', 'A', 'L', 'L', 'S', 'T', 'A', 'C', 'K', 'D', 'O', 'W', 'N', 32, 0,
  /* 142 */ '#', 32, 'A', 'D', 'J', 'C', 'A', 'L', 'L', 'S', 'T', 'A', 'C', 'K', 'U', 'P', 32, 0,
  /* 160 */ '#', 32, 'F', 'R', 'A', 'M', 'E', '_', 'T', 'O', '_', 'A', 'R', 'G', 'S', '_', 'O', 'F', 'F', 'S', 'E', 'T', 32, 0,
  /* 184 */ 'b', 'l', 'a', 32, 0,
  /* 189 */ 'l', 's', 'u', 'b', 32, 0,
  /* 195 */ 'l', 'd', 'c', 32, 0,
  /* 200 */ 'l', 'a', 'd', 'd', 32, 0,
  /* 206 */ 'a', 'n', 'd', 32, 0,
  /* 211 */ 'g', 'e', 't', 'd', 32, 0,
  /* 217 */ 'b', 'f', 32, 0,
  /* 221 */ 'e', 'e', 'f', 32, 0,
  /* 226 */ 'w', 'a', 'i', 't', 'e', 'f', 32, 0,
  /* 234 */ 'e', 'c', 'a', 'l', 'l', 'f', 32, 0,
  /* 242 */ 'n', 'e', 'g', 32, 0,
  /* 247 */ 'd', 'g', 'e', 't', 'r', 'e', 'g', 32, 0,
  /* 256 */ 'p', 'e', 'e', 'k', 32, 0,
  /* 262 */ 'm', 'k', 'm', 's', 'k', 32, 0,
  /* 269 */ 'b', 'l', 32, 0,
  /* 273 */ 't', 'e', 's', 't', 'l', 'c', 'l', 32, 0,
  /* 282 */ 's', 'h', 'l', 32, 0,
  /* 287 */ 'k', 'c', 'a', 'l', 'l', 32, 0,
  /* 294 */ 'l', 'm', 'u', 'l', 32, 0,
  /* 300 */ 'e', 'n', 'd', 'i', 'n', 32, 0,
  /* 307 */ 'g', 'e', 't', 'n', 32, 0,
  /* 313 */ 'e', 'x', 't', 'd', 'p', 32, 0,
  /* 320 */ 'r', 'e', 't', 's', 'p', 32, 0,
  /* 327 */ 'k', 'e', 'n', 't', 's', 'p', 32, 0,
  /* 335 */ 'k', 'r', 'e', 's', 't', 's', 'p', 32, 0,
  /* 344 */ 'e', 'x', 't', 's', 'p', 32, 0,
  /* 351 */ 'e', 'q', 32, 0,
  /* 355 */ 'a', 's', 'h', 'r', 32, 0,
  /* 361 */ 'i', 'n', 's', 'h', 'r', 32, 0,
  /* 368 */ 'x', 'o', 'r', 32, 0,
  /* 373 */ 'c', 'l', 'r', 's', 'r', 32, 0,
  /* 380 */ 's', 'e', 't', 's', 'r', 32, 0,
  /* 387 */ 'g', 'e', 't', 'r', 32, 0,
  /* 393 */ 'l', 'd', '1', '6', 's', 32, 0,
  /* 400 */ 'm', 'a', 'c', 'c', 's', 32, 0,
  /* 407 */ 'r', 'e', 'm', 's', 32, 0,
  /* 413 */ 'l', 's', 's', 32, 0,
  /* 418 */ 'g', 'e', 't', 't', 's', 32, 0,
  /* 425 */ 'd', 'i', 'v', 's', 32, 0,
  /* 431 */ 'b', 'l', 'a', 't', 32, 0,
  /* 437 */ 'b', 't', 32, 0,
  /* 441 */ 'i', 'n', 'c', 't', 32, 0,
  /* 447 */ 't', 'e', 's', 't', 'c', 't', 32, 0,
  /* 455 */ 't', 'e', 's', 't', 'w', 'c', 't', 32, 0,
  /* 464 */ 'e', 'e', 't', 32, 0,
  /* 469 */ 'g', 'e', 't', 32, 0,
  /* 474 */ 'w', 'a', 'i', 't', 'e', 't', 32, 0,
  /* 482 */ 'e', 'c', 'a', 'l', 'l', 't', 32, 0,
  /* 490 */ 'i', 'n', 't', 32, 0,
  /* 495 */ 'a', 'n', 'd', 'n', 'o', 't', 32, 0,
  /* 503 */ 'g', 'e', 't', 's', 't', 32, 0,
  /* 510 */ 's', 'e', 'x', 't', 32, 0,
  /* 516 */ 'z', 'e', 'x', 't', 32, 0,
  /* 522 */ 'l', 'd', '8', 'u', 32, 0,
  /* 528 */ 'b', 'a', 'u', 32, 0,
  /* 533 */ 'b', 'u', 32, 0,
  /* 537 */ 'm', 'a', 'c', 'c', 'u', 32, 0,
  /* 544 */ 'r', 'e', 'm', 'u', 32, 0,
  /* 550 */ 'b', 'r', 'u', 32, 0,
  /* 555 */ 'l', 's', 'u', 32, 0,
  /* 560 */ 'l', 'd', 'i', 'v', 'u', 32, 0,
  /* 567 */ 'b', 'y', 't', 'e', 'r', 'e', 'v', 32, 0,
  /* 576 */ 'b', 'i', 't', 'r', 'e', 'v', 32, 0,
  /* 584 */ 'l', 'd', 'a', 'w', 32, 0,
  /* 590 */ 'l', 'd', 'w', 32, 0,
  /* 595 */ 'i', 'n', 'p', 'w', 32, 0,
  /* 601 */ 's', 't', 'w', 32, 0,
  /* 606 */ 'c', 'l', 'z', 32, 0,
  /* 611 */ '#', 32, 'S', 'E', 'L', 'E', 'C', 'T', '_', 'C', 'C', 32, 'P', 'S', 'E', 'U', 'D', 'O', '!', 0,
  /* 631 */ '#', 32, 'X', 'R', 'a', 'y', 32, 'F', 'u', 'n', 'c', 't', 'i', 'o', 'n', 32, 'P', 'a', 't', 'c', 'h', 'a', 'b', 'l', 'e', 32, 'R', 'E', 'T', '.', 0,
  /* 662 */ '#', 32, 'X', 'R', 'a', 'y', 32, 'F', 'u', 'n', 'c', 't', 'i', 'o', 'n', 32, 'E', 'n', 't', 'e', 'r', '.', 0,
  /* 685 */ '#', 32, 'X', 'R', 'a', 'y', 32, 'T', 'a', 'i', 'l', 32, 'C', 'a', 'l', 'l', 32, 'E', 'x', 'i', 't', '.', 0,
  /* 708 */ '#', 32, 'X', 'R', 'a', 'y', 32, 'F', 'u', 'n', 'c', 't', 'i', 'o', 'n', 32, 'E', 'x', 'i', 't', '.', 0,
  /* 730 */ 's', 'e', 't', 32, 'k', 'e', 'p', ',', 32, 'r', '1', '1', 0,
  /* 743 */ 'L', 'I', 'F', 'E', 'T', 'I', 'M', 'E', '_', 'E', 'N', 'D', 0,
  /* 756 */ 'B', 'U', 'N', 'D', 'L', 'E', 0,
  /* 763 */ 'D', 'B', 'G', '_', 'V', 'A', 'L', 'U', 'E', 0,
  /* 773 */ '#', 'M', 'E', 'M', 'B', 'A', 'R', 'R', 'I', 'E', 'R', 0,
  /* 785 */ 'L', 'I', 'F', 'E', 'T', 'I', 'M', 'E', '_', 'S', 'T', 'A', 'R', 'T', 0,
  /* 800 */ 'l', 'd', 'a', 'w', 32, 'r', '1', '1', ',', 32, 'c', 'p', '[', 0,
  /* 814 */ 'l', 'd', 'w', 32, 'r', '1', '1', ',', 32, 'c', 'p', '[', 0,
  /* 827 */ 'b', 'l', 'a', 32, 'c', 'p', '[', 0,
  /* 835 */ 'm', 's', 'y', 'n', 'c', 32, 'r', 'e', 's', '[', 0,
  /* 846 */ 's', 'e', 't', 'p', 's', 'c', 32, 'r', 'e', 's', '[', 0,
  /* 858 */ 's', 'e', 't', 'c', 32, 'r', 'e', 's', '[', 0,
  /* 868 */ 's', 'e', 't', 'd', 32, 'r', 'e', 's', '[', 0,
  /* 878 */ 's', 'e', 't', 'c', 'l', 'k', 32, 'r', 'e', 's', '[', 0,
  /* 890 */ 'm', 'j', 'o', 'i', 'n', 32, 'r', 'e', 's', '[', 0,
  /* 901 */ 's', 'e', 't', 'n', 32, 'r', 'e', 's', '[', 0,
  /* 911 */ 's', 'y', 'n', 'c', 'r', 32, 'r', 'e', 's', '[', 0,
  /* 922 */ 'f', 'r', 'e', 'e', 'r', 32, 'r', 'e', 's', '[', 0,
  /* 933 */ 'o', 'u', 't', 's', 'h', 'r', 32, 'r', 'e', 's', '[', 0,
  /* 945 */ 'c', 'h', 'k', 'c', 't', 32, 'r', 'e', 's', '[', 0,
  /* 956 */ 'o', 'u', 't', 'c', 't', 32, 'r', 'e', 's', '[', 0,
  /* 967 */ 'c', 'l', 'r', 'p', 't', 32, 'r', 'e', 's', '[', 0,
  /* 978 */ 's', 'e', 't', 'p', 't', 32, 'r', 'e', 's', '[', 0,
  /* 989 */ 'o', 'u', 't', 't', 32, 'r', 'e', 's', '[', 0,
  /* 999 */ 'o', 'u', 't', 32, 'r', 'e', 's', '[', 0,
  /* 1008 */ 'e', 'd', 'u', 32, 'r', 'e', 's', '[', 0,
  /* 1017 */ 'e', 'e', 'u', 32, 'r', 'e', 's', '[', 0,
  /* 1026 */ 's', 'e', 't', 'e', 'v', 32, 'r', 'e', 's', '[', 0,
  /* 1037 */ 's', 'e', 't', 'v', 32, 'r', 'e', 's', '[', 0,
  /* 1047 */ 'o', 'u', 't', 'p', 'w', 32, 'r', 'e', 's', '[', 0,
  /* 1058 */ 's', 'e', 't', 't', 'w', 32, 'r', 'e', 's', '[', 0,
  /* 1069 */ 's', 'e', 't', 'r', 'd', 'y', 32, 'r', 'e', 's', '[', 0,
  /* 1081 */ 's', 'e', 't', 32, 'p', 's', '[', 0,
  /* 1089 */ 's', 'e', 't', 32, 't', '[', 0,
  /* 1096 */ 'i', 'n', 'i', 't', 32, 't', '[', 0,
  /* 1104 */ 's', 't', 'a', 'r', 't', 32, 't', '[', 0,
  /* 1113 */ 'l', 'd', 'w', 32, 's', 'p', 'c', ',', 32, 's', 'p', '[', '1', ']', 0,
  /* 1128 */ 's', 't', 'w', 32, 's', 'p', 'c', ',', 32, 's', 'p', '[', '1', ']', 0,
  /* 1143 */ 'l', 'd', 'w', 32, 's', 's', 'r', ',', 32, 's', 'p', '[', '2', ']', 0,
  /* 1158 */ 's', 't', 'w', 32, 's', 's', 'r', ',', 32, 's', 'p', '[', '2', ']', 0,
  /* 1173 */ 'l', 'd', 'w', 32, 's', 'e', 'd', ',', 32, 's', 'p', '[', '3', ']', 0,
  /* 1188 */ 's', 't', 'w', 32, 's', 'e', 'd', ',', 32, 's', 'p', '[', '3', ']', 0,
  /* 1203 */ 'l', 'd', 'w', 32, 'e', 't', ',', 32, 's', 'p', '[', '4', ']', 0,
  /* 1217 */ 's', 't', 'w', 32, 'e', 't', ',', 32, 's', 'p', '[', '4', ']', 0,
  /* 1231 */ 's', 's', 'y', 'n', 'c', 0,
  /* 1237 */ 'g', 'e', 't', 32, 'r', '1', '1', ',', 32, 'e', 'd', 0,
  /* 1249 */ 'g', 'e', 't', 32, 'r', '1', '1', ',', 32, 'i', 'd', 0,
  /* 1261 */ 'c', 'l', 'r', 'e', 0,
  /* 1266 */ '#', 32, 'F', 'E', 'n', 't', 'r', 'y', 32, 'c', 'a', 'l', 'l', 0,
  /* 1280 */ 'd', 'c', 'a', 'l', 'l', 0,
  /* 1286 */ 'g', 'e', 't', 32, 'r', '1', '1', ',', 32, 'k', 'e', 'p', 0,
  /* 1299 */ 'g', 'e', 't', 32, 'r', '1', '1', ',', 32, 'k', 's', 'p', 0,
  /* 1312 */ 'd', 'e', 'n', 't', 's', 'p', 0,
  /* 1319 */ 'd', 'r', 'e', 's', 't', 's', 'p', 0,
  /* 1327 */ 't', 's', 'e', 't', 'm', 'r', 32, 'r', 0,
  /* 1336 */ 'g', 'e', 't', 32, 'r', '1', '1', ',', 32, 'e', 't', 0,
  /* 1348 */ 'f', 'r', 'e', 'e', 't', 0,
  /* 1354 */ 'd', 'r', 'e', 't', 0,
  /* 1359 */ 'k', 'r', 'e', 't', 0,
  /* 1364 */ 'w', 'a', 'i', 't', 'e', 'u', 0,
  };

  static const uint32_t OpInfo0[] = {
    0U,	// PHI
    0U,	// INLINEASM
    0U,	// CFI_INSTRUCTION
    0U,	// EH_LABEL
    0U,	// GC_LABEL
    0U,	// KILL
    0U,	// EXTRACT_SUBREG
    0U,	// INSERT_SUBREG
    0U,	// IMPLICIT_DEF
    0U,	// SUBREG_TO_REG
    0U,	// COPY_TO_REGCLASS
    764U,	// DBG_VALUE
    0U,	// REG_SEQUENCE
    0U,	// COPY
    757U,	// BUNDLE
    786U,	// LIFETIME_START
    744U,	// LIFETIME_END
    0U,	// STACKMAP
    1267U,	// FENTRY_CALL
    0U,	// PATCHPOINT
    0U,	// LOAD_STACK_GUARD
    0U,	// STATEPOINT
    0U,	// LOCAL_ESCAPE
    0U,	// FAULTING_OP
    0U,	// PATCHABLE_OP
    663U,	// PATCHABLE_FUNCTION_ENTER
    632U,	// PATCHABLE_RET
    709U,	// PATCHABLE_FUNCTION_EXIT
    686U,	// PATCHABLE_TAIL_CALL
    0U,	// G_ADD
    0U,	// G_SUB
    0U,	// G_MUL
    0U,	// G_SDIV
    0U,	// G_UDIV
    0U,	// G_SREM
    0U,	// G_UREM
    0U,	// G_AND
    0U,	// G_OR
    0U,	// G_XOR
    0U,	// G_FRAME_INDEX
    0U,	// G_GLOBAL_VALUE
    0U,	// G_EXTRACT
    0U,	// G_UNMERGE_VALUES
    0U,	// G_INSERT
    0U,	// G_SEQUENCE
    0U,	// G_MERGE_VALUES
    0U,	// G_PTRTOINT
    0U,	// G_INTTOPTR
    0U,	// G_BITCAST
    0U,	// G_LOAD
    0U,	// G_STORE
    0U,	// G_BRCOND
    0U,	// G_BRINDIRECT
    0U,	// G_INTRINSIC
    0U,	// G_INTRINSIC_W_SIDE_EFFECTS
    0U,	// G_ANYEXT
    0U,	// G_TRUNC
    0U,	// G_CONSTANT
    0U,	// G_FCONSTANT
    0U,	// G_VASTART
    0U,	// G_VAARG
    0U,	// G_SEXT
    0U,	// G_ZEXT
    0U,	// G_SHL
    0U,	// G_LSHR
    0U,	// G_ASHR
    0U,	// G_ICMP
    0U,	// G_FCMP
    0U,	// G_SELECT
    0U,	// G_UADDE
    0U,	// G_USUBE
    0U,	// G_SADDO
    0U,	// G_SSUBO
    0U,	// G_UMULO
    0U,	// G_SMULO
    0U,	// G_UMULH
    0U,	// G_SMULH
    0U,	// G_FADD
    0U,	// G_FSUB
    0U,	// G_FMUL
    0U,	// G_FDIV
    0U,	// G_FREM
    0U,	// G_FPOW
    0U,	// G_FNEG
    0U,	// G_FPEXT
    0U,	// G_FPTRUNC
    0U,	// G_FPTOSI
    0U,	// G_FPTOUI
    0U,	// G_SITOFP
    0U,	// G_UITOFP
    0U,	// G_GEP
    0U,	// G_PTR_MASK
    0U,	// G_BR
    0U,	// G_INSERT_VECTOR_ELT
    0U,	// G_EXTRACT_VECTOR_ELT
    2250U,	// ADD_2rus
    2250U,	// ADD_3r
    10363U,	// ADJCALLSTACKDOWN
    10383U,	// ADJCALLSTACKUP
    2361840U,	// ANDNOT_2r
    2255U,	// AND_3r
    2404U,	// ASHR_l2rus
    2404U,	// ASHR_l3r
    10769U,	// BAU_1r
    2099777U,	// BITREV_l2r
    19260U,	// BLACP_lu10
    19260U,	// BLACP_u10
    10672U,	// BLAT_lu6
    10672U,	// BLAT_u6
    10425U,	// BLA_1r
    10510U,	// BLRB_lu10
    10510U,	// BLRB_u10
    10510U,	// BLRF_lu10
    10510U,	// BLRF_u10
    2099418U,	// BRBF_lru6
    2099418U,	// BRBF_ru6
    2099638U,	// BRBT_lru6
    2099638U,	// BRBT_ru6
    10774U,	// BRBU_lu6
    10774U,	// BRBU_u6
    2099418U,	// BRFF_lru6
    2099418U,	// BRFF_ru6
    2099638U,	// BRFT_lru6
    2099638U,	// BRFT_ru6
    10774U,	// BRFU_lu6
    10774U,	// BRFU_u6
    10791U,	// BRU_1r
    553511U,	// BR_JT
    815655U,	// BR_JT32
    2099768U,	// BYTEREV_l2r
    2132914U,	// CHKCT_2r
    2132914U,	// CHKCT_rus
    1262U,	// CLRE_0R
    19400U,	// CLRPT_1R
    10614U,	// CLRSR_branch_lu6
    10614U,	// CLRSR_branch_u6
    10614U,	// CLRSR_lu6
    10614U,	// CLRSR_u6
    2099807U,	// CLZ_l2r
    5247047U,	// CRC8_l4r
    17041459U,	// CRC_l3r
    1281U,	// DCALL_0R
    1313U,	// DENTSP_0R
    10488U,	// DGETREG_1r
    2474U,	// DIVS_l3r
    2610U,	// DIVU_l3r
    1320U,	// DRESTSP_0R
    1355U,	// DRET_0R
    10475U,	// ECALLF_1r
    10723U,	// ECALLT_1r
    19441U,	// EDU_1r
    6334686U,	// EEF_2r
    6334929U,	// EET_2r
    19450U,	// EEU_1r
    2099310U,	// EH_RETURN
    6334765U,	// ENDIN_2r
    10569U,	// ENTSP_lu6
    10569U,	// ENTSP_u6
    2400U,	// EQ_2rus
    2400U,	// EQ_3r
    10554U,	// EXTDP_lu6
    10554U,	// EXTDP_u6
    10585U,	// EXTSP_lu6
    10585U,	// EXTSP_u6
    10401U,	// FRAME_TO_ARGS_OFFSET
    19355U,	// FREER_1r
    1349U,	// FREET_0R
    6334676U,	// GETD_l2r
    1238U,	// GETED_0R
    1337U,	// GETET_0R
    1250U,	// GETID_0R
    1287U,	// GETKEP_0R
    1300U,	// GETKSP_0R
    6334772U,	// GETN_l2r
    51670U,	// GETPS_l2r
    2099588U,	// GETR_rus
    10252U,	// GETSR_lu6
    10252U,	// GETSR_u6
    6334968U,	// GETST_2r
    6334883U,	// GETTS_2r
    6334906U,	// INCT_2r
    62537U,	// INITCP_2r
    70729U,	// INITDP_2r
    78921U,	// INITLR_l2r
    87113U,	// INITPC_2r
    95305U,	// INITSP_2r
    8432212U,	// INPW_l2rus
    6596970U,	// INSHR_2r
    6334955U,	// INT_2r
    6334768U,	// IN_2r
    774U,	// Int_MemBarrier
    10528U,	// KCALL_1r
    10528U,	// KCALL_lu6
    10528U,	// KCALL_u6
    10568U,	// KENTSP_lu6
    10568U,	// KENTSP_u6
    10576U,	// KRESTSP_lu6
    10576U,	// KRESTSP_u6
    1360U,	// KRET_0R
    45093065U,	// LADD_l5r
    12585354U,	// LD16S_3r
    12585483U,	// LD8U_3r
    14682170U,	// LDA16B_l3r
    12585018U,	// LDA16F_l3r
    10241U,	// LDAPB_lu10
    10241U,	// LDAPB_u10
    10241U,	// LDAPF_lu10
    10241U,	// LDAPF_lu10_ba
    10241U,	// LDAPF_u10
    14682697U,	// LDAWB_l2rus
    14682697U,	// LDAWB_l3r
    19233U,	// LDAWCP_lu6
    19233U,	// LDAWCP_u6
    100937U,	// LDAWDP_lru6
    100937U,	// LDAWDP_ru6
    2099282U,	// LDAWFI
    12585545U,	// LDAWF_l2rus
    12585545U,	// LDAWF_l3r
    109129U,	// LDAWSP_lru6
    109129U,	// LDAWSP_ru6
    2099396U,	// LDC_lru6
    2099396U,	// LDC_ru6
    1204U,	// LDET_0R
    184551985U,	// LDIVU_l5r
    1174U,	// LDSED_0R
    1114U,	// LDSPC_0R
    1144U,	// LDSSR_0R
    117327U,	// LDWCP_lru6
    19247U,	// LDWCP_lu10
    117327U,	// LDWCP_ru6
    19247U,	// LDWCP_u10
    100943U,	// LDWDP_lru6
    100943U,	// LDWDP_ru6
    2099292U,	// LDWFI
    109135U,	// LDWSP_lru6
    109135U,	// LDWSP_ru6
    12585551U,	// LDW_2rus
    12585551U,	// LDW_3r
    268437799U,	// LMUL_l6r
    2462U,	// LSS_3r
    45093054U,	// LSUB_l5r
    2604U,	// LSU_3r
    452987281U,	// MACCS_l4r
    452987418U,	// MACCU_l4r
    19323U,	// MJOIN_1r
    2099463U,	// MKMSK_2r
    2099463U,	// MKMSK_rus
    19268U,	// MSYNC_1r
    2344U,	// MUL_l3r
    2099443U,	// NEG
    2099699U,	// NOT
    2418U,	// OR_3r
    2132925U,	// OUTCT_2r
    2132925U,	// OUTCT_rus
    78681112U,	// OUTPW_l2rus
    2136998U,	// OUTSHR_2r
    2132958U,	// OUTT_2r
    2132968U,	// OUT_2r
    6334721U,	// PEEK_2r
    2456U,	// REMS_l3r
    2593U,	// REMU_l3r
    10561U,	// RETSP_lu6
    10561U,	// RETSP_u6
    612U,	// SELECT_CC
    2132847U,	// SETCLK_l2r
    10264U,	// SETCP_1r
    2132827U,	// SETC_l2r
    2132827U,	// SETC_lru6
    2132827U,	// SETC_ru6
    10273U,	// SETDP_1r
    2132837U,	// SETD_2r
    125955U,	// SETEV_1r
    731U,	// SETKEP_0R
    2132870U,	// SETN_l2r
    2132815U,	// SETPSC_2r
    2133050U,	// SETPS_l2r
    2132947U,	// SETPT_2r
    2133038U,	// SETRDY_l2r
    10282U,	// SETSP_1r
    10621U,	// SETSR_branch_lu6
    10621U,	// SETSR_branch_u6
    10621U,	// SETSR_lu6
    10621U,	// SETSR_u6
    2133027U,	// SETTW_l2r
    125966U,	// SETV_1r
    2361855U,	// SEXT_2r
    2361855U,	// SEXT_rus
    2331U,	// SHL_2rus
    2331U,	// SHL_3r
    2405U,	// SHR_2rus
    2405U,	// SHR_3r
    1232U,	// SSYNC_0r
    12585025U,	// ST16_l3r
    12585037U,	// ST8_l3r
    1218U,	// STET_0R
    1189U,	// STSED_0R
    1129U,	// STSPC_0R
    1159U,	// STSSR_0R
    100954U,	// STWDP_lru6
    100954U,	// STWDP_ru6
    2099301U,	// STWFI
    109146U,	// STWSP_lru6
    109146U,	// STWSP_ru6
    12585562U,	// STW_2rus
    12585562U,	// STW_l3r
    2239U,	// SUB_2rus
    2239U,	// SUB_3r
    19344U,	// SYNCR_1r
    6334912U,	// TESTCT_2r
    6334738U,	// TESTLCL_l2r
    6334920U,	// TESTWCT_2r
    2100528U,	// TSETMR_2r
    138306U,	// TSETR_3r
    19537U,	// TSTART_1R
    10467U,	// WAITEF_1R
    10715U,	// WAITET_1R
    1365U,	// WAITEU_0R
    2417U,	// XOR_l3r
    2361861U,	// ZEXT_2r
    2361861U,	// ZEXT_rus
  };

  O << "\t";

  // Emit the opcode for the instruction.
  uint32_t Bits = 0;
  Bits |= OpInfo0[MI->getOpcode()] << 0;
  assert(Bits != 0 && "Cannot print this instruction.");
  O << AsmStrs+(Bits & 2047)-1;


  // Fragment 0 encoded into 2 bits for 4 unique commands.
  switch ((Bits >> 11) & 3) {
  default: llvm_unreachable("Invalid command number.");
  case 0:
    // DBG_VALUE, BUNDLE, LIFETIME_START, LIFETIME_END, FENTRY_CALL, PATCHABL...
    return;
    break;
  case 1:
    // ADD_2rus, ADD_3r, ADJCALLSTACKDOWN, ADJCALLSTACKUP, ANDNOT_2r, AND_3r,...
    printOperand(MI, 0, O);
    break;
  case 2:
    // BR_JT, BR_JT32, CRC8_l4r, INITCP_2r, INITDP_2r, INITLR_l2r, INITPC_2r,...
    printOperand(MI, 1, O);
    break;
  case 3:
    // OUTSHR_2r, TSETR_3r
    printOperand(MI, 2, O);
    break;
  }


  // Fragment 1 encoded into 5 bits for 17 unique commands.
  switch ((Bits >> 13) & 31) {
  default: llvm_unreachable("Invalid command number.");
  case 0:
    // ADD_2rus, ADD_3r, ANDNOT_2r, AND_3r, ASHR_l2rus, ASHR_l3r, BITREV_l2r,...
    O << ", ";
    break;
  case 1:
    // ADJCALLSTACKDOWN, ADJCALLSTACKUP, BAU_1r, BLAT_lu6, BLAT_u6, BLA_1r, B...
    return;
    break;
  case 2:
    // BLACP_lu10, BLACP_u10, CLRPT_1R, EDU_1r, EEU_1r, FREER_1r, LDAWCP_lu6,...
    O << ']';
    return;
    break;
  case 3:
    // BR_JT, BR_JT32
    O << "\n";
    break;
  case 4:
    // CHKCT_2r, CHKCT_rus, OUTCT_2r, OUTCT_rus, OUTPW_l2rus, OUTSHR_2r, OUTT...
    O << "], ";
    break;
  case 5:
    // EEF_2r, EET_2r, ENDIN_2r, GETD_l2r, GETN_l2r, GETST_2r, GETTS_2r, INCT...
    O << ", res[";
    break;
  case 6:
    // GETPS_l2r
    O << ", ps[";
    printOperand(MI, 1, O);
    O << ']';
    return;
    break;
  case 7:
    // INITCP_2r
    O << "]:cp, ";
    printOperand(MI, 0, O);
    return;
    break;
  case 8:
    // INITDP_2r
    O << "]:dp, ";
    printOperand(MI, 0, O);
    return;
    break;
  case 9:
    // INITLR_l2r
    O << "]:lr, ";
    printOperand(MI, 0, O);
    return;
    break;
  case 10:
    // INITPC_2r
    O << "]:pc, ";
    printOperand(MI, 0, O);
    return;
    break;
  case 11:
    // INITSP_2r
    O << "]:sp, ";
    printOperand(MI, 0, O);
    return;
    break;
  case 12:
    // LDAWDP_lru6, LDAWDP_ru6, LDWDP_lru6, LDWDP_ru6, STWDP_lru6, STWDP_ru6
    O << ", dp[";
    printOperand(MI, 1, O);
    O << ']';
    return;
    break;
  case 13:
    // LDAWSP_lru6, LDAWSP_ru6, LDWSP_lru6, LDWSP_ru6, STWSP_lru6, STWSP_ru6
    O << ", sp[";
    printOperand(MI, 1, O);
    O << ']';
    return;
    break;
  case 14:
    // LDWCP_lru6, LDWCP_ru6
    O << ", cp[";
    printOperand(MI, 1, O);
    O << ']';
    return;
    break;
  case 15:
    // SETEV_1r, SETV_1r
    O << "], r11";
    return;
    break;
  case 16:
    // TSETR_3r
    O << "]:r";
    printOperand(MI, 0, O);
    O << ", ";
    printOperand(MI, 1, O);
    return;
    break;
  }


  // Fragment 2 encoded into 3 bits for 5 unique commands.
  switch ((Bits >> 18) & 7) {
  default: llvm_unreachable("Invalid command number.");
  case 0:
    // ADD_2rus, ADD_3r, AND_3r, ASHR_l2rus, ASHR_l3r, BITREV_l2r, BRBF_lru6,...
    printOperand(MI, 1, O);
    break;
  case 1:
    // ANDNOT_2r, CRC_l3r, INSHR_2r, SEXT_2r, SEXT_rus, ZEXT_2r, ZEXT_rus
    printOperand(MI, 2, O);
    break;
  case 2:
    // BR_JT
    printInlineJT(MI, 0, O);
    return;
    break;
  case 3:
    // BR_JT32
    printInlineJT32(MI, 0, O);
    return;
    break;
  case 4:
    // CRC8_l4r, LADD_l5r, LSUB_l5r, OUTPW_l2rus
    printOperand(MI, 0, O);
    O << ", ";
    break;
  }


  // Fragment 3 encoded into 3 bits for 8 unique commands.
  switch ((Bits >> 21) & 7) {
  default: llvm_unreachable("Invalid command number.");
  case 0:
    // ADD_2rus, ADD_3r, AND_3r, ASHR_l2rus, ASHR_l3r, CRC_l3r, DIVS_l3r, DIV...
    O << ", ";
    break;
  case 1:
    // ANDNOT_2r, BITREV_l2r, BRBF_lru6, BRBF_ru6, BRBT_lru6, BRBT_ru6, BRFF_...
    return;
    break;
  case 2:
    // CRC8_l4r
    printOperand(MI, 3, O);
    O << ", ";
    printOperand(MI, 4, O);
    return;
    break;
  case 3:
    // EEF_2r, EET_2r, ENDIN_2r, GETD_l2r, GETN_l2r, GETST_2r, GETTS_2r, INCT...
    O << ']';
    return;
    break;
  case 4:
    // INPW_l2rus
    O << "], ";
    printOperand(MI, 2, O);
    return;
    break;
  case 5:
    // LADD_l5r, LSUB_l5r, OUTPW_l2rus
    printOperand(MI, 2, O);
    break;
  case 6:
    // LD16S_3r, LD8U_3r, LDA16F_l3r, LDAWF_l2rus, LDAWF_l3r, LDW_2rus, LDW_3...
    O << '[';
    printOperand(MI, 2, O);
    O << ']';
    return;
    break;
  case 7:
    // LDA16B_l3r, LDAWB_l2rus, LDAWB_l3r
    O << "[-";
    printOperand(MI, 2, O);
    O << ']';
    return;
    break;
  }


  // Fragment 4 encoded into 3 bits for 5 unique commands.
  switch ((Bits >> 24) & 7) {
  default: llvm_unreachable("Invalid command number.");
  case 0:
    // ADD_2rus, ADD_3r, AND_3r, ASHR_l2rus, ASHR_l3r, DIVS_l3r, DIVU_l3r, EQ...
    printOperand(MI, 2, O);
    break;
  case 1:
    // CRC_l3r
    printOperand(MI, 3, O);
    return;
    break;
  case 2:
    // LADD_l5r, LSUB_l5r
    O << ", ";
    printOperand(MI, 3, O);
    O << ", ";
    printOperand(MI, 4, O);
    return;
    break;
  case 3:
    // LDIVU_l5r, MACCS_l4r, MACCU_l4r
    printOperand(MI, 4, O);
    O << ", ";
    break;
  case 4:
    // OUTPW_l2rus
    return;
    break;
  }


  // Fragment 5 encoded into 2 bits for 4 unique commands.
  switch ((Bits >> 27) & 3) {
  default: llvm_unreachable("Invalid command number.");
  case 0:
    // ADD_2rus, ADD_3r, AND_3r, ASHR_l2rus, ASHR_l3r, DIVS_l3r, DIVU_l3r, EQ...
    return;
    break;
  case 1:
    // LDIVU_l5r
    printOperand(MI, 2, O);
    O << ", ";
    printOperand(MI, 3, O);
    return;
    break;
  case 2:
    // LMUL_l6r
    O << ", ";
    printOperand(MI, 3, O);
    O << ", ";
    printOperand(MI, 4, O);
    O << ", ";
    printOperand(MI, 5, O);
    return;
    break;
  case 3:
    // MACCS_l4r, MACCU_l4r
    printOperand(MI, 5, O);
    return;
    break;
  }

}


/// getRegisterName - This method is automatically generated by tblgen
/// from the register set description.  This returns the assembler name
/// for the specified register.
const char *XCoreInstPrinter::getRegisterName(unsigned RegNo) {
  assert(RegNo && RegNo < 17 && "Invalid register number!");

  static const char AsmStrs[] = {
  /* 0 */ 'r', '1', '0', 0,
  /* 4 */ 'r', '0', 0,
  /* 7 */ 'r', '1', '1', 0,
  /* 11 */ 'r', '1', 0,
  /* 14 */ 'r', '2', 0,
  /* 17 */ 'r', '3', 0,
  /* 20 */ 'r', '4', 0,
  /* 23 */ 'r', '5', 0,
  /* 26 */ 'r', '6', 0,
  /* 29 */ 'r', '7', 0,
  /* 32 */ 'r', '8', 0,
  /* 35 */ 'r', '9', 0,
  /* 38 */ 'c', 'p', 0,
  /* 41 */ 'd', 'p', 0,
  /* 44 */ 's', 'p', 0,
  /* 47 */ 'l', 'r', 0,
  };

  static const uint8_t RegAsmOffset[] = {
    38, 41, 47, 44, 4, 11, 14, 17, 20, 23, 26, 29, 32, 35, 
    0, 7, 
  };

  assert (*(AsmStrs+RegAsmOffset[RegNo-1]) &&
          "Invalid alt name index for register!");
  return AsmStrs+RegAsmOffset[RegNo-1];
}

#ifdef PRINT_ALIAS_INSTR
#undef PRINT_ALIAS_INSTR

bool XCoreInstPrinter::printAliasInstr(const MCInst *MI, raw_ostream &OS) {
  return false;
}

#endif // PRINT_ALIAS_INSTR