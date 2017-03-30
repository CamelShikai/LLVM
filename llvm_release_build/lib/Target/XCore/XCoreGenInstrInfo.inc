/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Target Instruction Enum Values and Descriptors                             *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#ifdef GET_INSTRINFO_ENUM
#undef GET_INSTRINFO_ENUM
namespace llvm {

namespace XCore {
  enum {
    PHI	= 0,
    INLINEASM	= 1,
    CFI_INSTRUCTION	= 2,
    EH_LABEL	= 3,
    GC_LABEL	= 4,
    KILL	= 5,
    EXTRACT_SUBREG	= 6,
    INSERT_SUBREG	= 7,
    IMPLICIT_DEF	= 8,
    SUBREG_TO_REG	= 9,
    COPY_TO_REGCLASS	= 10,
    DBG_VALUE	= 11,
    REG_SEQUENCE	= 12,
    COPY	= 13,
    BUNDLE	= 14,
    LIFETIME_START	= 15,
    LIFETIME_END	= 16,
    STACKMAP	= 17,
    FENTRY_CALL	= 18,
    PATCHPOINT	= 19,
    LOAD_STACK_GUARD	= 20,
    STATEPOINT	= 21,
    LOCAL_ESCAPE	= 22,
    FAULTING_OP	= 23,
    PATCHABLE_OP	= 24,
    PATCHABLE_FUNCTION_ENTER	= 25,
    PATCHABLE_RET	= 26,
    PATCHABLE_FUNCTION_EXIT	= 27,
    PATCHABLE_TAIL_CALL	= 28,
    G_ADD	= 29,
    G_SUB	= 30,
    G_MUL	= 31,
    G_SDIV	= 32,
    G_UDIV	= 33,
    G_SREM	= 34,
    G_UREM	= 35,
    G_AND	= 36,
    G_OR	= 37,
    G_XOR	= 38,
    G_FRAME_INDEX	= 39,
    G_GLOBAL_VALUE	= 40,
    G_EXTRACT	= 41,
    G_UNMERGE_VALUES	= 42,
    G_INSERT	= 43,
    G_SEQUENCE	= 44,
    G_MERGE_VALUES	= 45,
    G_PTRTOINT	= 46,
    G_INTTOPTR	= 47,
    G_BITCAST	= 48,
    G_LOAD	= 49,
    G_STORE	= 50,
    G_BRCOND	= 51,
    G_BRINDIRECT	= 52,
    G_INTRINSIC	= 53,
    G_INTRINSIC_W_SIDE_EFFECTS	= 54,
    G_ANYEXT	= 55,
    G_TRUNC	= 56,
    G_CONSTANT	= 57,
    G_FCONSTANT	= 58,
    G_VASTART	= 59,
    G_VAARG	= 60,
    G_SEXT	= 61,
    G_ZEXT	= 62,
    G_SHL	= 63,
    G_LSHR	= 64,
    G_ASHR	= 65,
    G_ICMP	= 66,
    G_FCMP	= 67,
    G_SELECT	= 68,
    G_UADDE	= 69,
    G_USUBE	= 70,
    G_SADDO	= 71,
    G_SSUBO	= 72,
    G_UMULO	= 73,
    G_SMULO	= 74,
    G_UMULH	= 75,
    G_SMULH	= 76,
    G_FADD	= 77,
    G_FSUB	= 78,
    G_FMUL	= 79,
    G_FDIV	= 80,
    G_FREM	= 81,
    G_FPOW	= 82,
    G_FNEG	= 83,
    G_FPEXT	= 84,
    G_FPTRUNC	= 85,
    G_FPTOSI	= 86,
    G_FPTOUI	= 87,
    G_SITOFP	= 88,
    G_UITOFP	= 89,
    G_GEP	= 90,
    G_PTR_MASK	= 91,
    G_BR	= 92,
    G_INSERT_VECTOR_ELT	= 93,
    G_EXTRACT_VECTOR_ELT	= 94,
    ADD_2rus	= 95,
    ADD_3r	= 96,
    ADJCALLSTACKDOWN	= 97,
    ADJCALLSTACKUP	= 98,
    ANDNOT_2r	= 99,
    AND_3r	= 100,
    ASHR_l2rus	= 101,
    ASHR_l3r	= 102,
    BAU_1r	= 103,
    BITREV_l2r	= 104,
    BLACP_lu10	= 105,
    BLACP_u10	= 106,
    BLAT_lu6	= 107,
    BLAT_u6	= 108,
    BLA_1r	= 109,
    BLRB_lu10	= 110,
    BLRB_u10	= 111,
    BLRF_lu10	= 112,
    BLRF_u10	= 113,
    BRBF_lru6	= 114,
    BRBF_ru6	= 115,
    BRBT_lru6	= 116,
    BRBT_ru6	= 117,
    BRBU_lu6	= 118,
    BRBU_u6	= 119,
    BRFF_lru6	= 120,
    BRFF_ru6	= 121,
    BRFT_lru6	= 122,
    BRFT_ru6	= 123,
    BRFU_lu6	= 124,
    BRFU_u6	= 125,
    BRU_1r	= 126,
    BR_JT	= 127,
    BR_JT32	= 128,
    BYTEREV_l2r	= 129,
    CHKCT_2r	= 130,
    CHKCT_rus	= 131,
    CLRE_0R	= 132,
    CLRPT_1R	= 133,
    CLRSR_branch_lu6	= 134,
    CLRSR_branch_u6	= 135,
    CLRSR_lu6	= 136,
    CLRSR_u6	= 137,
    CLZ_l2r	= 138,
    CRC8_l4r	= 139,
    CRC_l3r	= 140,
    DCALL_0R	= 141,
    DENTSP_0R	= 142,
    DGETREG_1r	= 143,
    DIVS_l3r	= 144,
    DIVU_l3r	= 145,
    DRESTSP_0R	= 146,
    DRET_0R	= 147,
    ECALLF_1r	= 148,
    ECALLT_1r	= 149,
    EDU_1r	= 150,
    EEF_2r	= 151,
    EET_2r	= 152,
    EEU_1r	= 153,
    EH_RETURN	= 154,
    ENDIN_2r	= 155,
    ENTSP_lu6	= 156,
    ENTSP_u6	= 157,
    EQ_2rus	= 158,
    EQ_3r	= 159,
    EXTDP_lu6	= 160,
    EXTDP_u6	= 161,
    EXTSP_lu6	= 162,
    EXTSP_u6	= 163,
    FRAME_TO_ARGS_OFFSET	= 164,
    FREER_1r	= 165,
    FREET_0R	= 166,
    GETD_l2r	= 167,
    GETED_0R	= 168,
    GETET_0R	= 169,
    GETID_0R	= 170,
    GETKEP_0R	= 171,
    GETKSP_0R	= 172,
    GETN_l2r	= 173,
    GETPS_l2r	= 174,
    GETR_rus	= 175,
    GETSR_lu6	= 176,
    GETSR_u6	= 177,
    GETST_2r	= 178,
    GETTS_2r	= 179,
    INCT_2r	= 180,
    INITCP_2r	= 181,
    INITDP_2r	= 182,
    INITLR_l2r	= 183,
    INITPC_2r	= 184,
    INITSP_2r	= 185,
    INPW_l2rus	= 186,
    INSHR_2r	= 187,
    INT_2r	= 188,
    IN_2r	= 189,
    Int_MemBarrier	= 190,
    KCALL_1r	= 191,
    KCALL_lu6	= 192,
    KCALL_u6	= 193,
    KENTSP_lu6	= 194,
    KENTSP_u6	= 195,
    KRESTSP_lu6	= 196,
    KRESTSP_u6	= 197,
    KRET_0R	= 198,
    LADD_l5r	= 199,
    LD16S_3r	= 200,
    LD8U_3r	= 201,
    LDA16B_l3r	= 202,
    LDA16F_l3r	= 203,
    LDAPB_lu10	= 204,
    LDAPB_u10	= 205,
    LDAPF_lu10	= 206,
    LDAPF_lu10_ba	= 207,
    LDAPF_u10	= 208,
    LDAWB_l2rus	= 209,
    LDAWB_l3r	= 210,
    LDAWCP_lu6	= 211,
    LDAWCP_u6	= 212,
    LDAWDP_lru6	= 213,
    LDAWDP_ru6	= 214,
    LDAWFI	= 215,
    LDAWF_l2rus	= 216,
    LDAWF_l3r	= 217,
    LDAWSP_lru6	= 218,
    LDAWSP_ru6	= 219,
    LDC_lru6	= 220,
    LDC_ru6	= 221,
    LDET_0R	= 222,
    LDIVU_l5r	= 223,
    LDSED_0R	= 224,
    LDSPC_0R	= 225,
    LDSSR_0R	= 226,
    LDWCP_lru6	= 227,
    LDWCP_lu10	= 228,
    LDWCP_ru6	= 229,
    LDWCP_u10	= 230,
    LDWDP_lru6	= 231,
    LDWDP_ru6	= 232,
    LDWFI	= 233,
    LDWSP_lru6	= 234,
    LDWSP_ru6	= 235,
    LDW_2rus	= 236,
    LDW_3r	= 237,
    LMUL_l6r	= 238,
    LSS_3r	= 239,
    LSUB_l5r	= 240,
    LSU_3r	= 241,
    MACCS_l4r	= 242,
    MACCU_l4r	= 243,
    MJOIN_1r	= 244,
    MKMSK_2r	= 245,
    MKMSK_rus	= 246,
    MSYNC_1r	= 247,
    MUL_l3r	= 248,
    NEG	= 249,
    NOT	= 250,
    OR_3r	= 251,
    OUTCT_2r	= 252,
    OUTCT_rus	= 253,
    OUTPW_l2rus	= 254,
    OUTSHR_2r	= 255,
    OUTT_2r	= 256,
    OUT_2r	= 257,
    PEEK_2r	= 258,
    REMS_l3r	= 259,
    REMU_l3r	= 260,
    RETSP_lu6	= 261,
    RETSP_u6	= 262,
    SELECT_CC	= 263,
    SETCLK_l2r	= 264,
    SETCP_1r	= 265,
    SETC_l2r	= 266,
    SETC_lru6	= 267,
    SETC_ru6	= 268,
    SETDP_1r	= 269,
    SETD_2r	= 270,
    SETEV_1r	= 271,
    SETKEP_0R	= 272,
    SETN_l2r	= 273,
    SETPSC_2r	= 274,
    SETPS_l2r	= 275,
    SETPT_2r	= 276,
    SETRDY_l2r	= 277,
    SETSP_1r	= 278,
    SETSR_branch_lu6	= 279,
    SETSR_branch_u6	= 280,
    SETSR_lu6	= 281,
    SETSR_u6	= 282,
    SETTW_l2r	= 283,
    SETV_1r	= 284,
    SEXT_2r	= 285,
    SEXT_rus	= 286,
    SHL_2rus	= 287,
    SHL_3r	= 288,
    SHR_2rus	= 289,
    SHR_3r	= 290,
    SSYNC_0r	= 291,
    ST16_l3r	= 292,
    ST8_l3r	= 293,
    STET_0R	= 294,
    STSED_0R	= 295,
    STSPC_0R	= 296,
    STSSR_0R	= 297,
    STWDP_lru6	= 298,
    STWDP_ru6	= 299,
    STWFI	= 300,
    STWSP_lru6	= 301,
    STWSP_ru6	= 302,
    STW_2rus	= 303,
    STW_l3r	= 304,
    SUB_2rus	= 305,
    SUB_3r	= 306,
    SYNCR_1r	= 307,
    TESTCT_2r	= 308,
    TESTLCL_l2r	= 309,
    TESTWCT_2r	= 310,
    TSETMR_2r	= 311,
    TSETR_3r	= 312,
    TSTART_1R	= 313,
    WAITEF_1R	= 314,
    WAITET_1R	= 315,
    WAITEU_0R	= 316,
    XOR_l3r	= 317,
    ZEXT_2r	= 318,
    ZEXT_rus	= 319,
    INSTRUCTION_LIST_END = 320
  };

namespace Sched {
  enum {
    NoInstrModel	= 0,
    SCHED_LIST_END = 1
  };
} // end Sched namespace
} // end XCore namespace
} // end llvm namespace
#endif // GET_INSTRINFO_ENUM

#ifdef GET_INSTRINFO_MC_DESC
#undef GET_INSTRINFO_MC_DESC
namespace llvm {

static const MCPhysReg ImplicitList1[] = { XCore::SP, 0 };
static const MCPhysReg ImplicitList2[] = { XCore::R0, XCore::R1, XCore::R2, XCore::R3, XCore::R11, XCore::LR, 0 };
static const MCPhysReg ImplicitList3[] = { XCore::R11, 0 };

static const MCOperandInfo OperandInfo2[] = { { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo3[] = { { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo4[] = { { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo5[] = { { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo6[] = { { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo7[] = { { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo8[] = { { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo9[] = { { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo10[] = { { 0, 0|(1<<MCOI::LookupPtrRegClass), MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo11[] = { { 0, 0|(1<<MCOI::LookupPtrRegClass), MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo12[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, };
static const MCOperandInfo OperandInfo13[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo14[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo15[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo16[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, };
static const MCOperandInfo OperandInfo17[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, };
static const MCOperandInfo OperandInfo18[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, };
static const MCOperandInfo OperandInfo19[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, };
static const MCOperandInfo OperandInfo20[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, };
static const MCOperandInfo OperandInfo21[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, };
static const MCOperandInfo OperandInfo22[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, };
static const MCOperandInfo OperandInfo23[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo24[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_2, 0 }, };
static const MCOperandInfo OperandInfo25[] = { { -1, 0, MCOI::OPERAND_GENERIC_0, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_1, 0 }, { -1, 0, MCOI::OPERAND_GENERIC_2, 0 }, };
static const MCOperandInfo OperandInfo26[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo27[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo28[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo29[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo30[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo31[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo32[] = { { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo33[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo34[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, ((1 << 16) | (1 << MCOI::TIED_TO)) }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo35[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo36[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo37[] = { { XCore::RRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo38[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo39[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo40[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, ((1 << 16) | (1 << MCOI::TIED_TO)) }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo41[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo42[] = { { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo43[] = { { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo44[] = { { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { XCore::GRRegsRegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };

extern const MCInstrDesc XCoreInsts[] = {
  { 0,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #0 = PHI
  { 1,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #1 = INLINEASM
  { 2,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::NotDuplicable)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #2 = CFI_INSTRUCTION
  { 3,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::NotDuplicable)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #3 = EH_LABEL
  { 4,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::NotDuplicable)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #4 = GC_LABEL
  { 5,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #5 = KILL
  { 6,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo4, -1 ,nullptr },  // Inst #6 = EXTRACT_SUBREG
  { 7,	4,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo5, -1 ,nullptr },  // Inst #7 = INSERT_SUBREG
  { 8,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Rematerializable)|(1ULL<<MCID::CheapAsAMove), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #8 = IMPLICIT_DEF
  { 9,	4,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo6, -1 ,nullptr },  // Inst #9 = SUBREG_TO_REG
  { 10,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::CheapAsAMove), 0x0ULL, nullptr, nullptr, OperandInfo4, -1 ,nullptr },  // Inst #10 = COPY_TO_REGCLASS
  { 11,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #11 = DBG_VALUE
  { 12,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::CheapAsAMove), 0x0ULL, nullptr, nullptr, OperandInfo7, -1 ,nullptr },  // Inst #12 = REG_SEQUENCE
  { 13,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::CheapAsAMove), 0x0ULL, nullptr, nullptr, OperandInfo7, -1 ,nullptr },  // Inst #13 = COPY
  { 14,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #14 = BUNDLE
  { 15,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #15 = LIFETIME_START
  { 16,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #16 = LIFETIME_END
  { 17,	2,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Call)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UsesCustomInserter)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo8, -1 ,nullptr },  // Inst #17 = STACKMAP
  { 18,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UsesCustomInserter)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #18 = FENTRY_CALL
  { 19,	6,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Call)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UsesCustomInserter)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo9, -1 ,nullptr },  // Inst #19 = PATCHPOINT
  { 20,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo10, -1 ,nullptr },  // Inst #20 = LOAD_STACK_GUARD
  { 21,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Call)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UsesCustomInserter)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #21 = STATEPOINT
  { 22,	2,	0,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo11, -1 ,nullptr },  // Inst #22 = LOCAL_ESCAPE
  { 23,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Branch)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UsesCustomInserter)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #23 = FAULTING_OP
  { 24,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UsesCustomInserter)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #24 = PATCHABLE_OP
  { 25,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::UsesCustomInserter), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #25 = PATCHABLE_FUNCTION_ENTER
  { 26,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Return)|(1ULL<<MCID::UsesCustomInserter)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #26 = PATCHABLE_RET
  { 27,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::UsesCustomInserter), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #27 = PATCHABLE_FUNCTION_EXIT
  { 28,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Return)|(1ULL<<MCID::UsesCustomInserter)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #28 = PATCHABLE_TAIL_CALL
  { 29,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #29 = G_ADD
  { 30,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #30 = G_SUB
  { 31,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #31 = G_MUL
  { 32,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #32 = G_SDIV
  { 33,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #33 = G_UDIV
  { 34,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #34 = G_SREM
  { 35,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #35 = G_UREM
  { 36,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #36 = G_AND
  { 37,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #37 = G_OR
  { 38,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #38 = G_XOR
  { 39,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo13, -1 ,nullptr },  // Inst #39 = G_FRAME_INDEX
  { 40,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo13, -1 ,nullptr },  // Inst #40 = G_GLOBAL_VALUE
  { 41,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo14, -1 ,nullptr },  // Inst #41 = G_EXTRACT
  { 42,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #42 = G_UNMERGE_VALUES
  { 43,	4,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo15, -1 ,nullptr },  // Inst #43 = G_INSERT
  { 44,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic), 0x0ULL, nullptr, nullptr, OperandInfo16, -1 ,nullptr },  // Inst #44 = G_SEQUENCE
  { 45,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic), 0x0ULL, nullptr, nullptr, OperandInfo16, -1 ,nullptr },  // Inst #45 = G_MERGE_VALUES
  { 46,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #46 = G_PTRTOINT
  { 47,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #47 = G_INTTOPTR
  { 48,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #48 = G_BITCAST
  { 49,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayLoad), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #49 = G_LOAD
  { 50,	2,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #50 = G_STORE
  { 51,	2,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo13, -1 ,nullptr },  // Inst #51 = G_BRCOND
  { 52,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo16, -1 ,nullptr },  // Inst #52 = G_BRINDIRECT
  { 53,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Variadic), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #53 = G_INTRINSIC
  { 54,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::Variadic)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #54 = G_INTRINSIC_W_SIDE_EFFECTS
  { 55,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #55 = G_ANYEXT
  { 56,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #56 = G_TRUNC
  { 57,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo13, -1 ,nullptr },  // Inst #57 = G_CONSTANT
  { 58,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo13, -1 ,nullptr },  // Inst #58 = G_FCONSTANT
  { 59,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo16, -1 ,nullptr },  // Inst #59 = G_VASTART
  { 60,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo14, -1 ,nullptr },  // Inst #60 = G_VAARG
  { 61,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #61 = G_SEXT
  { 62,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #62 = G_ZEXT
  { 63,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #63 = G_SHL
  { 64,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #64 = G_LSHR
  { 65,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #65 = G_ASHR
  { 66,	4,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo18, -1 ,nullptr },  // Inst #66 = G_ICMP
  { 67,	4,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo18, -1 ,nullptr },  // Inst #67 = G_FCMP
  { 68,	4,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo19, -1 ,nullptr },  // Inst #68 = G_SELECT
  { 69,	5,	2,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo20, -1 ,nullptr },  // Inst #69 = G_UADDE
  { 70,	5,	2,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo20, -1 ,nullptr },  // Inst #70 = G_USUBE
  { 71,	4,	2,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo19, -1 ,nullptr },  // Inst #71 = G_SADDO
  { 72,	4,	2,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo19, -1 ,nullptr },  // Inst #72 = G_SSUBO
  { 73,	4,	2,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo19, -1 ,nullptr },  // Inst #73 = G_UMULO
  { 74,	4,	2,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo19, -1 ,nullptr },  // Inst #74 = G_SMULO
  { 75,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #75 = G_UMULH
  { 76,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #76 = G_SMULH
  { 77,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #77 = G_FADD
  { 78,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #78 = G_FSUB
  { 79,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Commutable), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #79 = G_FMUL
  { 80,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #80 = G_FDIV
  { 81,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #81 = G_FREM
  { 82,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo12, -1 ,nullptr },  // Inst #82 = G_FPOW
  { 83,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo21, -1 ,nullptr },  // Inst #83 = G_FNEG
  { 84,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #84 = G_FPEXT
  { 85,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #85 = G_FPTRUNC
  { 86,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #86 = G_FPTOSI
  { 87,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #87 = G_FPTOUI
  { 88,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #88 = G_SITOFP
  { 89,	2,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo17, -1 ,nullptr },  // Inst #89 = G_UITOFP
  { 90,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo22, -1 ,nullptr },  // Inst #90 = G_GEP
  { 91,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo23, -1 ,nullptr },  // Inst #91 = G_PTR_MASK
  { 92,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Branch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #92 = G_BR
  { 93,	4,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo24, -1 ,nullptr },  // Inst #93 = G_INSERT_VECTOR_ELT
  { 94,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo25, -1 ,nullptr },  // Inst #94 = G_EXTRACT_VECTOR_ELT
  { 95,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #95 = ADD_2rus
  { 96,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #96 = ADD_3r
  { 97,	1,	0,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #97 = ADJCALLSTACKDOWN
  { 98,	2,	0,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo8, -1 ,nullptr },  // Inst #98 = ADJCALLSTACKUP
  { 99,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo28, -1 ,nullptr },  // Inst #99 = ANDNOT_2r
  { 100,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #100 = AND_3r
  { 101,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #101 = ASHR_l2rus
  { 102,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #102 = ASHR_l3r
  { 103,	1,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #103 = BAU_1r
  { 104,	2,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #104 = BITREV_l2r
  { 105,	1,	0,	4,	0,	0|(1ULL<<MCID::Call)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList2, OperandInfo3, -1 ,nullptr },  // Inst #105 = BLACP_lu10
  { 106,	1,	0,	2,	0,	0|(1ULL<<MCID::Call)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList2, OperandInfo3, -1 ,nullptr },  // Inst #106 = BLACP_u10
  { 107,	1,	0,	4,	0,	0|(1ULL<<MCID::Call)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList3, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #107 = BLAT_lu6
  { 108,	1,	0,	2,	0,	0|(1ULL<<MCID::Call)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList3, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #108 = BLAT_u6
  { 109,	1,	0,	2,	0,	0|(1ULL<<MCID::Call), 0x0ULL, ImplicitList1, ImplicitList2, OperandInfo29, -1 ,nullptr },  // Inst #109 = BLA_1r
  { 110,	1,	0,	4,	0,	0|(1ULL<<MCID::Call)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList2, OperandInfo2, -1 ,nullptr },  // Inst #110 = BLRB_lu10
  { 111,	1,	0,	2,	0,	0|(1ULL<<MCID::Call)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList2, OperandInfo2, -1 ,nullptr },  // Inst #111 = BLRB_u10
  { 112,	1,	0,	4,	0,	0|(1ULL<<MCID::Call), 0x0ULL, ImplicitList1, ImplicitList2, OperandInfo2, -1 ,nullptr },  // Inst #112 = BLRF_lu10
  { 113,	1,	0,	2,	0,	0|(1ULL<<MCID::Call)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList2, OperandInfo2, -1 ,nullptr },  // Inst #113 = BLRF_u10
  { 114,	2,	0,	4,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo31, -1 ,nullptr },  // Inst #114 = BRBF_lru6
  { 115,	2,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo31, -1 ,nullptr },  // Inst #115 = BRBF_ru6
  { 116,	2,	0,	4,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo31, -1 ,nullptr },  // Inst #116 = BRBT_lru6
  { 117,	2,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo31, -1 ,nullptr },  // Inst #117 = BRBT_ru6
  { 118,	1,	0,	4,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #118 = BRBU_lu6
  { 119,	1,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #119 = BRBU_u6
  { 120,	2,	0,	4,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo31, -1 ,nullptr },  // Inst #120 = BRFF_lru6
  { 121,	2,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo31, -1 ,nullptr },  // Inst #121 = BRFF_ru6
  { 122,	2,	0,	4,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo31, -1 ,nullptr },  // Inst #122 = BRFT_lru6
  { 123,	2,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo31, -1 ,nullptr },  // Inst #123 = BRFT_ru6
  { 124,	1,	0,	4,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #124 = BRFU_lu6
  { 125,	1,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #125 = BRFU_u6
  { 126,	1,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #126 = BRU_1r
  { 127,	2,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo32, -1 ,nullptr },  // Inst #127 = BR_JT
  { 128,	2,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo32, -1 ,nullptr },  // Inst #128 = BR_JT32
  { 129,	2,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #129 = BYTEREV_l2r
  { 130,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #130 = CHKCT_2r
  { 131,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo33, -1 ,nullptr },  // Inst #131 = CHKCT_rus
  { 132,	0,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #132 = CLRE_0R
  { 133,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #133 = CLRPT_1R
  { 134,	1,	0,	4,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #134 = CLRSR_branch_lu6
  { 135,	1,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #135 = CLRSR_branch_u6
  { 136,	1,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #136 = CLRSR_lu6
  { 137,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #137 = CLRSR_u6
  { 138,	2,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #138 = CLZ_l2r
  { 139,	5,	2,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo34, -1 ,nullptr },  // Inst #139 = CRC8_l4r
  { 140,	4,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo35, -1 ,nullptr },  // Inst #140 = CRC_l3r
  { 141,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #141 = DCALL_0R
  { 142,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList1, nullptr, -1 ,nullptr },  // Inst #142 = DENTSP_0R
  { 143,	1,	1,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #143 = DGETREG_1r
  { 144,	3,	1,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #144 = DIVS_l3r
  { 145,	3,	1,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #145 = DIVU_l3r
  { 146,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, ImplicitList1, nullptr, -1 ,nullptr },  // Inst #146 = DRESTSP_0R
  { 147,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #147 = DRET_0R
  { 148,	1,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #148 = ECALLF_1r
  { 149,	1,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #149 = ECALLT_1r
  { 150,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #150 = EDU_1r
  { 151,	2,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #151 = EEF_2r
  { 152,	2,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #152 = EET_2r
  { 153,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #153 = EEU_1r
  { 154,	2,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Return)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #154 = EH_RETURN
  { 155,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #155 = ENDIN_2r
  { 156,	1,	0,	4,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #156 = ENTSP_lu6
  { 157,	1,	0,	2,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #157 = ENTSP_u6
  { 158,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #158 = EQ_2rus
  { 159,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #159 = EQ_3r
  { 160,	1,	0,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #160 = EXTDP_lu6
  { 161,	1,	0,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #161 = EXTDP_u6
  { 162,	1,	0,	4,	0,	0, 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #162 = EXTSP_lu6
  { 163,	1,	0,	2,	0,	0, 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #163 = EXTSP_u6
  { 164,	1,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #164 = FRAME_TO_ARGS_OFFSET
  { 165,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #165 = FREER_1r
  { 166,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #166 = FREET_0R
  { 167,	2,	1,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #167 = GETD_l2r
  { 168,	0,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, ImplicitList3, nullptr, -1 ,nullptr },  // Inst #168 = GETED_0R
  { 169,	0,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, ImplicitList3, nullptr, -1 ,nullptr },  // Inst #169 = GETET_0R
  { 170,	0,	0,	2,	0,	0, 0x0ULL, nullptr, ImplicitList3, nullptr, -1 ,nullptr },  // Inst #170 = GETID_0R
  { 171,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, ImplicitList3, nullptr, -1 ,nullptr },  // Inst #171 = GETKEP_0R
  { 172,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, ImplicitList3, nullptr, -1 ,nullptr },  // Inst #172 = GETKSP_0R
  { 173,	2,	1,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #173 = GETN_l2r
  { 174,	2,	1,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #174 = GETPS_l2r
  { 175,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo33, -1 ,nullptr },  // Inst #175 = GETR_rus
  { 176,	1,	0,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, ImplicitList3, OperandInfo3, -1 ,nullptr },  // Inst #176 = GETSR_lu6
  { 177,	1,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, ImplicitList3, OperandInfo3, -1 ,nullptr },  // Inst #177 = GETSR_u6
  { 178,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #178 = GETST_2r
  { 179,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #179 = GETTS_2r
  { 180,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #180 = INCT_2r
  { 181,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #181 = INITCP_2r
  { 182,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #182 = INITDP_2r
  { 183,	2,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #183 = INITLR_l2r
  { 184,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #184 = INITPC_2r
  { 185,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #185 = INITSP_2r
  { 186,	3,	1,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #186 = INPW_l2rus
  { 187,	3,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo28, -1 ,nullptr },  // Inst #187 = INSHR_2r
  { 188,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #188 = INT_2r
  { 189,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #189 = IN_2r
  { 190,	0,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #190 = Int_MemBarrier
  { 191,	1,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #191 = KCALL_1r
  { 192,	1,	0,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #192 = KCALL_lu6
  { 193,	1,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #193 = KCALL_u6
  { 194,	1,	0,	4,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #194 = KENTSP_lu6
  { 195,	1,	0,	2,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #195 = KENTSP_u6
  { 196,	1,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #196 = KRESTSP_lu6
  { 197,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #197 = KRESTSP_u6
  { 198,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, ImplicitList1, nullptr, -1 ,nullptr },  // Inst #198 = KRET_0R
  { 199,	5,	2,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo36, -1 ,nullptr },  // Inst #199 = LADD_l5r
  { 200,	3,	1,	2,	0,	0|(1ULL<<MCID::MayLoad), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #200 = LD16S_3r
  { 201,	3,	1,	2,	0,	0|(1ULL<<MCID::MayLoad), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #201 = LD8U_3r
  { 202,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #202 = LDA16B_l3r
  { 203,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #203 = LDA16F_l3r
  { 204,	1,	0,	4,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo2, -1 ,nullptr },  // Inst #204 = LDAPB_lu10
  { 205,	1,	0,	2,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo2, -1 ,nullptr },  // Inst #205 = LDAPB_u10
  { 206,	1,	0,	4,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo2, -1 ,nullptr },  // Inst #206 = LDAPF_lu10
  { 207,	1,	0,	4,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo2, -1 ,nullptr },  // Inst #207 = LDAPF_lu10_ba
  { 208,	1,	0,	2,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo2, -1 ,nullptr },  // Inst #208 = LDAPF_u10
  { 209,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #209 = LDAWB_l2rus
  { 210,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #210 = LDAWB_l3r
  { 211,	1,	0,	4,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo3, -1 ,nullptr },  // Inst #211 = LDAWCP_lu6
  { 212,	1,	0,	2,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo3, -1 ,nullptr },  // Inst #212 = LDAWCP_u6
  { 213,	2,	1,	4,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #213 = LDAWDP_lru6
  { 214,	2,	1,	2,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #214 = LDAWDP_ru6
  { 215,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo), 0x0ULL, nullptr, nullptr, OperandInfo38, -1 ,nullptr },  // Inst #215 = LDAWFI
  { 216,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #216 = LDAWF_l2rus
  { 217,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #217 = LDAWF_l3r
  { 218,	2,	1,	4,	0,	0, 0x0ULL, ImplicitList1, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #218 = LDAWSP_lru6
  { 219,	2,	1,	2,	0,	0, 0x0ULL, ImplicitList1, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #219 = LDAWSP_ru6
  { 220,	2,	1,	4,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #220 = LDC_lru6
  { 221,	2,	1,	2,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #221 = LDC_ru6
  { 222,	0,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, nullptr, nullptr, -1 ,nullptr },  // Inst #222 = LDET_0R
  { 223,	5,	2,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo36, -1 ,nullptr },  // Inst #223 = LDIVU_l5r
  { 224,	0,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, nullptr, nullptr, -1 ,nullptr },  // Inst #224 = LDSED_0R
  { 225,	0,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, nullptr, nullptr, -1 ,nullptr },  // Inst #225 = LDSPC_0R
  { 226,	0,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, nullptr, nullptr, -1 ,nullptr },  // Inst #226 = LDSSR_0R
  { 227,	2,	1,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #227 = LDWCP_lru6
  { 228,	1,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo3, -1 ,nullptr },  // Inst #228 = LDWCP_lu10
  { 229,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #229 = LDWCP_ru6
  { 230,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, ImplicitList3, OperandInfo3, -1 ,nullptr },  // Inst #230 = LDWCP_u10
  { 231,	2,	1,	4,	0,	0|(1ULL<<MCID::MayLoad), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #231 = LDWDP_lru6
  { 232,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #232 = LDWDP_ru6
  { 233,	3,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayLoad), 0x0ULL, nullptr, nullptr, OperandInfo38, -1 ,nullptr },  // Inst #233 = LDWFI
  { 234,	2,	1,	4,	0,	0|(1ULL<<MCID::MayLoad), 0x0ULL, ImplicitList1, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #234 = LDWSP_lru6
  { 235,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad), 0x0ULL, ImplicitList1, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #235 = LDWSP_ru6
  { 236,	3,	1,	2,	0,	0|(1ULL<<MCID::MayLoad), 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #236 = LDW_2rus
  { 237,	3,	1,	2,	0,	0|(1ULL<<MCID::MayLoad), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #237 = LDW_3r
  { 238,	6,	2,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo39, -1 ,nullptr },  // Inst #238 = LMUL_l6r
  { 239,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #239 = LSS_3r
  { 240,	5,	2,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo36, -1 ,nullptr },  // Inst #240 = LSUB_l5r
  { 241,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #241 = LSU_3r
  { 242,	6,	2,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo40, -1 ,nullptr },  // Inst #242 = MACCS_l4r
  { 243,	6,	2,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo40, -1 ,nullptr },  // Inst #243 = MACCU_l4r
  { 244,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #244 = MJOIN_1r
  { 245,	2,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #245 = MKMSK_2r
  { 246,	2,	1,	2,	0,	0|(1ULL<<MCID::Rematerializable), 0x0ULL, nullptr, nullptr, OperandInfo33, -1 ,nullptr },  // Inst #246 = MKMSK_rus
  { 247,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #247 = MSYNC_1r
  { 248,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #248 = MUL_l3r
  { 249,	2,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #249 = NEG
  { 250,	2,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #250 = NOT
  { 251,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #251 = OR_3r
  { 252,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #252 = OUTCT_2r
  { 253,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo33, -1 ,nullptr },  // Inst #253 = OUTCT_rus
  { 254,	3,	0,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #254 = OUTPW_l2rus
  { 255,	3,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo28, -1 ,nullptr },  // Inst #255 = OUTSHR_2r
  { 256,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #256 = OUTT_2r
  { 257,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #257 = OUT_2r
  { 258,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #258 = PEEK_2r
  { 259,	3,	1,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #259 = REMS_l3r
  { 260,	3,	1,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #260 = REMU_l3r
  { 261,	1,	0,	4,	0,	0|(1ULL<<MCID::Return)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Terminator), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #261 = RETSP_lu6
  { 262,	1,	0,	2,	0,	0|(1ULL<<MCID::Return)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Terminator), 0x0ULL, ImplicitList1, ImplicitList1, OperandInfo3, -1 ,nullptr },  // Inst #262 = RETSP_u6
  { 263,	4,	1,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::UsesCustomInserter), 0x0ULL, nullptr, nullptr, OperandInfo41, -1 ,nullptr },  // Inst #263 = SELECT_CC
  { 264,	2,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #264 = SETCLK_l2r
  { 265,	1,	0,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #265 = SETCP_1r
  { 266,	2,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #266 = SETC_l2r
  { 267,	2,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo33, -1 ,nullptr },  // Inst #267 = SETC_lru6
  { 268,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo33, -1 ,nullptr },  // Inst #268 = SETC_ru6
  { 269,	1,	0,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #269 = SETDP_1r
  { 270,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #270 = SETD_2r
  { 271,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList3, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #271 = SETEV_1r
  { 272,	0,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList3, nullptr, nullptr, -1 ,nullptr },  // Inst #272 = SETKEP_0R
  { 273,	2,	0,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #273 = SETN_l2r
  { 274,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #274 = SETPSC_2r
  { 275,	2,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #275 = SETPS_l2r
  { 276,	2,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #276 = SETPT_2r
  { 277,	2,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #277 = SETRDY_l2r
  { 278,	1,	0,	2,	0,	0, 0x0ULL, nullptr, ImplicitList1, OperandInfo29, -1 ,nullptr },  // Inst #278 = SETSP_1r
  { 279,	1,	0,	4,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #279 = SETSR_branch_lu6
  { 280,	1,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #280 = SETSR_branch_u6
  { 281,	1,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #281 = SETSR_lu6
  { 282,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #282 = SETSR_u6
  { 283,	2,	0,	4,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #283 = SETTW_l2r
  { 284,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList3, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #284 = SETV_1r
  { 285,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo28, -1 ,nullptr },  // Inst #285 = SEXT_2r
  { 286,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo42, -1 ,nullptr },  // Inst #286 = SEXT_rus
  { 287,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #287 = SHL_2rus
  { 288,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #288 = SHL_3r
  { 289,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #289 = SHR_2rus
  { 290,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #290 = SHR_3r
  { 291,	0,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #291 = SSYNC_0r
  { 292,	3,	0,	4,	0,	0|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #292 = ST16_l3r
  { 293,	3,	0,	4,	0,	0|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #293 = ST8_l3r
  { 294,	0,	0,	2,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, nullptr, nullptr, -1 ,nullptr },  // Inst #294 = STET_0R
  { 295,	0,	0,	2,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, nullptr, nullptr, -1 ,nullptr },  // Inst #295 = STSED_0R
  { 296,	0,	0,	2,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, nullptr, nullptr, -1 ,nullptr },  // Inst #296 = STSPC_0R
  { 297,	0,	0,	2,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, ImplicitList1, nullptr, nullptr, -1 ,nullptr },  // Inst #297 = STSSR_0R
  { 298,	2,	0,	4,	0,	0|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #298 = STWDP_lru6
  { 299,	2,	0,	2,	0,	0|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #299 = STWDP_ru6
  { 300,	3,	0,	0,	0,	0|(1ULL<<MCID::Pseudo)|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo38, -1 ,nullptr },  // Inst #300 = STWFI
  { 301,	2,	0,	4,	0,	0|(1ULL<<MCID::MayStore), 0x0ULL, ImplicitList1, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #301 = STWSP_lru6
  { 302,	2,	0,	2,	0,	0|(1ULL<<MCID::MayStore), 0x0ULL, ImplicitList1, nullptr, OperandInfo37, -1 ,nullptr },  // Inst #302 = STWSP_ru6
  { 303,	3,	0,	2,	0,	0|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #303 = STW_2rus
  { 304,	3,	0,	4,	0,	0|(1ULL<<MCID::MayStore), 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #304 = STW_l3r
  { 305,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #305 = SUB_2rus
  { 306,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #306 = SUB_3r
  { 307,	1,	0,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #307 = SYNCR_1r
  { 308,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #308 = TESTCT_2r
  { 309,	2,	1,	4,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #309 = TESTLCL_l2r
  { 310,	2,	1,	2,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo30, -1 ,nullptr },  // Inst #310 = TESTWCT_2r
  { 311,	2,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo43, -1 ,nullptr },  // Inst #311 = TSETMR_2r
  { 312,	3,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo44, -1 ,nullptr },  // Inst #312 = TSETR_3r
  { 313,	1,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #313 = TSTART_1R
  { 314,	1,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #314 = WAITEF_1R
  { 315,	1,	0,	2,	0,	0|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, OperandInfo29, -1 ,nullptr },  // Inst #315 = WAITET_1R
  { 316,	0,	0,	2,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Terminator)|(1ULL<<MCID::UnmodeledSideEffects), 0x0ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #316 = WAITEU_0R
  { 317,	3,	1,	4,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #317 = XOR_l3r
  { 318,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo28, -1 ,nullptr },  // Inst #318 = ZEXT_2r
  { 319,	3,	1,	2,	0,	0, 0x0ULL, nullptr, nullptr, OperandInfo42, -1 ,nullptr },  // Inst #319 = ZEXT_rus
};

extern const char XCoreInstrNameData[] = {
  /* 0 */ 'L', 'D', 'A', 'P', 'B', '_', 'u', '1', '0', 0,
  /* 10 */ 'B', 'L', 'R', 'B', '_', 'u', '1', '0', 0,
  /* 19 */ 'L', 'D', 'A', 'P', 'F', '_', 'u', '1', '0', 0,
  /* 29 */ 'B', 'L', 'R', 'F', '_', 'u', '1', '0', 0,
  /* 38 */ 'B', 'L', 'A', 'C', 'P', '_', 'u', '1', '0', 0,
  /* 48 */ 'L', 'D', 'W', 'C', 'P', '_', 'u', '1', '0', 0,
  /* 58 */ 'L', 'D', 'A', 'P', 'B', '_', 'l', 'u', '1', '0', 0,
  /* 69 */ 'B', 'L', 'R', 'B', '_', 'l', 'u', '1', '0', 0,
  /* 79 */ 'L', 'D', 'A', 'P', 'F', '_', 'l', 'u', '1', '0', 0,
  /* 90 */ 'B', 'L', 'R', 'F', '_', 'l', 'u', '1', '0', 0,
  /* 100 */ 'B', 'L', 'A', 'C', 'P', '_', 'l', 'u', '1', '0', 0,
  /* 111 */ 'L', 'D', 'W', 'C', 'P', '_', 'l', 'u', '1', '0', 0,
  /* 122 */ 'B', 'R', '_', 'J', 'T', '3', '2', 0,
  /* 130 */ 'K', 'C', 'A', 'L', 'L', '_', 'u', '6', 0,
  /* 139 */ 'L', 'D', 'A', 'W', 'C', 'P', '_', 'u', '6', 0,
  /* 149 */ 'E', 'X', 'T', 'D', 'P', '_', 'u', '6', 0,
  /* 158 */ 'R', 'E', 'T', 'S', 'P', '_', 'u', '6', 0,
  /* 167 */ 'K', 'E', 'N', 'T', 'S', 'P', '_', 'u', '6', 0,
  /* 177 */ 'K', 'R', 'E', 'S', 'T', 'S', 'P', '_', 'u', '6', 0,
  /* 188 */ 'E', 'X', 'T', 'S', 'P', '_', 'u', '6', 0,
  /* 197 */ 'C', 'L', 'R', 'S', 'R', '_', 'u', '6', 0,
  /* 206 */ 'G', 'E', 'T', 'S', 'R', '_', 'u', '6', 0,
  /* 215 */ 'S', 'E', 'T', 'S', 'R', '_', 'u', '6', 0,
  /* 224 */ 'B', 'L', 'A', 'T', '_', 'u', '6', 0,
  /* 232 */ 'B', 'R', 'B', 'U', '_', 'u', '6', 0,
  /* 240 */ 'B', 'R', 'F', 'U', '_', 'u', '6', 0,
  /* 248 */ 'C', 'L', 'R', 'S', 'R', '_', 'b', 'r', 'a', 'n', 'c', 'h', '_', 'u', '6', 0,
  /* 264 */ 'S', 'E', 'T', 'S', 'R', '_', 'b', 'r', 'a', 'n', 'c', 'h', '_', 'u', '6', 0,
  /* 280 */ 'K', 'C', 'A', 'L', 'L', '_', 'l', 'u', '6', 0,
  /* 290 */ 'L', 'D', 'A', 'W', 'C', 'P', '_', 'l', 'u', '6', 0,
  /* 301 */ 'E', 'X', 'T', 'D', 'P', '_', 'l', 'u', '6', 0,
  /* 311 */ 'R', 'E', 'T', 'S', 'P', '_', 'l', 'u', '6', 0,
  /* 321 */ 'K', 'E', 'N', 'T', 'S', 'P', '_', 'l', 'u', '6', 0,
  /* 332 */ 'K', 'R', 'E', 'S', 'T', 'S', 'P', '_', 'l', 'u', '6', 0,
  /* 344 */ 'E', 'X', 'T', 'S', 'P', '_', 'l', 'u', '6', 0,
  /* 354 */ 'C', 'L', 'R', 'S', 'R', '_', 'l', 'u', '6', 0,
  /* 364 */ 'G', 'E', 'T', 'S', 'R', '_', 'l', 'u', '6', 0,
  /* 374 */ 'S', 'E', 'T', 'S', 'R', '_', 'l', 'u', '6', 0,
  /* 384 */ 'B', 'L', 'A', 'T', '_', 'l', 'u', '6', 0,
  /* 393 */ 'B', 'R', 'B', 'U', '_', 'l', 'u', '6', 0,
  /* 402 */ 'B', 'R', 'F', 'U', '_', 'l', 'u', '6', 0,
  /* 411 */ 'C', 'L', 'R', 'S', 'R', '_', 'b', 'r', 'a', 'n', 'c', 'h', '_', 'l', 'u', '6', 0,
  /* 428 */ 'S', 'E', 'T', 'S', 'R', '_', 'b', 'r', 'a', 'n', 'c', 'h', '_', 'l', 'u', '6', 0,
  /* 445 */ 'L', 'D', 'C', '_', 'r', 'u', '6', 0,
  /* 453 */ 'S', 'E', 'T', 'C', '_', 'r', 'u', '6', 0,
  /* 462 */ 'B', 'R', 'B', 'F', '_', 'r', 'u', '6', 0,
  /* 471 */ 'B', 'R', 'F', 'F', '_', 'r', 'u', '6', 0,
  /* 480 */ 'L', 'D', 'W', 'C', 'P', '_', 'r', 'u', '6', 0,
  /* 490 */ 'L', 'D', 'A', 'W', 'D', 'P', '_', 'r', 'u', '6', 0,
  /* 501 */ 'L', 'D', 'W', 'D', 'P', '_', 'r', 'u', '6', 0,
  /* 511 */ 'S', 'T', 'W', 'D', 'P', '_', 'r', 'u', '6', 0,
  /* 521 */ 'L', 'D', 'A', 'W', 'S', 'P', '_', 'r', 'u', '6', 0,
  /* 532 */ 'L', 'D', 'W', 'S', 'P', '_', 'r', 'u', '6', 0,
  /* 542 */ 'S', 'T', 'W', 'S', 'P', '_', 'r', 'u', '6', 0,
  /* 552 */ 'B', 'R', 'B', 'T', '_', 'r', 'u', '6', 0,
  /* 561 */ 'B', 'R', 'F', 'T', '_', 'r', 'u', '6', 0,
  /* 570 */ 'L', 'D', 'C', '_', 'l', 'r', 'u', '6', 0,
  /* 579 */ 'S', 'E', 'T', 'C', '_', 'l', 'r', 'u', '6', 0,
  /* 589 */ 'B', 'R', 'B', 'F', '_', 'l', 'r', 'u', '6', 0,
  /* 599 */ 'B', 'R', 'F', 'F', '_', 'l', 'r', 'u', '6', 0,
  /* 609 */ 'L', 'D', 'W', 'C', 'P', '_', 'l', 'r', 'u', '6', 0,
  /* 620 */ 'L', 'D', 'A', 'W', 'D', 'P', '_', 'l', 'r', 'u', '6', 0,
  /* 632 */ 'L', 'D', 'W', 'D', 'P', '_', 'l', 'r', 'u', '6', 0,
  /* 643 */ 'S', 'T', 'W', 'D', 'P', '_', 'l', 'r', 'u', '6', 0,
  /* 654 */ 'L', 'D', 'A', 'W', 'S', 'P', '_', 'l', 'r', 'u', '6', 0,
  /* 666 */ 'L', 'D', 'W', 'S', 'P', '_', 'l', 'r', 'u', '6', 0,
  /* 677 */ 'S', 'T', 'W', 'S', 'P', '_', 'l', 'r', 'u', '6', 0,
  /* 688 */ 'B', 'R', 'B', 'T', '_', 'l', 'r', 'u', '6', 0,
  /* 698 */ 'B', 'R', 'F', 'T', '_', 'l', 'r', 'u', '6', 0,
  /* 708 */ 'G', '_', 'F', 'S', 'U', 'B', 0,
  /* 715 */ 'G', '_', 'S', 'U', 'B', 0,
  /* 721 */ 'S', 'E', 'L', 'E', 'C', 'T', '_', 'C', 'C', 0,
  /* 731 */ 'G', '_', 'I', 'N', 'T', 'R', 'I', 'N', 'S', 'I', 'C', 0,
  /* 743 */ 'G', '_', 'F', 'P', 'T', 'R', 'U', 'N', 'C', 0,
  /* 753 */ 'G', '_', 'T', 'R', 'U', 'N', 'C', 0,
  /* 761 */ 'G', '_', 'L', 'O', 'A', 'D', 0,
  /* 768 */ 'G', '_', 'F', 'A', 'D', 'D', 0,
  /* 775 */ 'G', '_', 'A', 'D', 'D', 0,
  /* 781 */ 'G', '_', 'A', 'N', 'D', 0,
  /* 787 */ 'L', 'I', 'F', 'E', 'T', 'I', 'M', 'E', '_', 'E', 'N', 'D', 0,
  /* 800 */ 'G', '_', 'B', 'R', 'C', 'O', 'N', 'D', 0,
  /* 809 */ 'L', 'O', 'A', 'D', '_', 'S', 'T', 'A', 'C', 'K', '_', 'G', 'U', 'A', 'R', 'D', 0,
  /* 826 */ 'G', '_', 'U', 'S', 'U', 'B', 'E', 0,
  /* 834 */ 'R', 'E', 'G', '_', 'S', 'E', 'Q', 'U', 'E', 'N', 'C', 'E', 0,
  /* 847 */ 'G', '_', 'U', 'A', 'D', 'D', 'E', 0,
  /* 855 */ 'B', 'U', 'N', 'D', 'L', 'E', 0,
  /* 862 */ 'L', 'O', 'C', 'A', 'L', '_', 'E', 'S', 'C', 'A', 'P', 'E', 0,
  /* 875 */ 'G', '_', 'S', 'T', 'O', 'R', 'E', 0,
  /* 883 */ 'D', 'B', 'G', '_', 'V', 'A', 'L', 'U', 'E', 0,
  /* 893 */ 'G', '_', 'G', 'L', 'O', 'B', 'A', 'L', '_', 'V', 'A', 'L', 'U', 'E', 0,
  /* 908 */ 'I', 'M', 'P', 'L', 'I', 'C', 'I', 'T', '_', 'D', 'E', 'F', 0,
  /* 921 */ 'G', '_', 'F', 'N', 'E', 'G', 0,
  /* 928 */ 'E', 'X', 'T', 'R', 'A', 'C', 'T', '_', 'S', 'U', 'B', 'R', 'E', 'G', 0,
  /* 943 */ 'I', 'N', 'S', 'E', 'R', 'T', '_', 'S', 'U', 'B', 'R', 'E', 'G', 0,
  /* 957 */ 'S', 'U', 'B', 'R', 'E', 'G', '_', 'T', 'O', '_', 'R', 'E', 'G', 0,
  /* 971 */ 'G', '_', 'V', 'A', 'A', 'R', 'G', 0,
  /* 979 */ 'G', '_', 'S', 'M', 'U', 'L', 'H', 0,
  /* 987 */ 'G', '_', 'U', 'M', 'U', 'L', 'H', 0,
  /* 995 */ 'L', 'D', 'A', 'W', 'F', 'I', 0,
  /* 1002 */ 'L', 'D', 'W', 'F', 'I', 0,
  /* 1008 */ 'S', 'T', 'W', 'F', 'I', 0,
  /* 1014 */ 'P', 'H', 'I', 0,
  /* 1018 */ 'G', '_', 'F', 'P', 'T', 'O', 'S', 'I', 0,
  /* 1027 */ 'G', '_', 'F', 'P', 'T', 'O', 'U', 'I', 0,
  /* 1036 */ 'G', '_', 'P', 'T', 'R', '_', 'M', 'A', 'S', 'K', 0,
  /* 1047 */ 'G', 'C', '_', 'L', 'A', 'B', 'E', 'L', 0,
  /* 1056 */ 'E', 'H', '_', 'L', 'A', 'B', 'E', 'L', 0,
  /* 1065 */ 'G', '_', 'S', 'H', 'L', 0,
  /* 1071 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'T', 'A', 'I', 'L', '_', 'C', 'A', 'L', 'L', 0,
  /* 1091 */ 'F', 'E', 'N', 'T', 'R', 'Y', '_', 'C', 'A', 'L', 'L', 0,
  /* 1103 */ 'K', 'I', 'L', 'L', 0,
  /* 1108 */ 'G', '_', 'F', 'M', 'U', 'L', 0,
  /* 1115 */ 'G', '_', 'M', 'U', 'L', 0,
  /* 1121 */ 'G', '_', 'F', 'R', 'E', 'M', 0,
  /* 1128 */ 'G', '_', 'S', 'R', 'E', 'M', 0,
  /* 1135 */ 'G', '_', 'U', 'R', 'E', 'M', 0,
  /* 1142 */ 'I', 'N', 'L', 'I', 'N', 'E', 'A', 'S', 'M', 0,
  /* 1152 */ 'C', 'F', 'I', '_', 'I', 'N', 'S', 'T', 'R', 'U', 'C', 'T', 'I', 'O', 'N', 0,
  /* 1168 */ 'E', 'H', '_', 'R', 'E', 'T', 'U', 'R', 'N', 0,
  /* 1178 */ 'A', 'D', 'J', 'C', 'A', 'L', 'L', 'S', 'T', 'A', 'C', 'K', 'D', 'O', 'W', 'N', 0,
  /* 1195 */ 'G', '_', 'S', 'S', 'U', 'B', 'O', 0,
  /* 1203 */ 'G', '_', 'S', 'A', 'D', 'D', 'O', 0,
  /* 1211 */ 'G', '_', 'S', 'M', 'U', 'L', 'O', 0,
  /* 1219 */ 'G', '_', 'U', 'M', 'U', 'L', 'O', 0,
  /* 1227 */ 'S', 'T', 'A', 'C', 'K', 'M', 'A', 'P', 0,
  /* 1236 */ 'G', '_', 'G', 'E', 'P', 0,
  /* 1242 */ 'G', '_', 'S', 'I', 'T', 'O', 'F', 'P', 0,
  /* 1251 */ 'G', '_', 'U', 'I', 'T', 'O', 'F', 'P', 0,
  /* 1260 */ 'G', '_', 'F', 'C', 'M', 'P', 0,
  /* 1267 */ 'G', '_', 'I', 'C', 'M', 'P', 0,
  /* 1274 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'O', 'P', 0,
  /* 1287 */ 'F', 'A', 'U', 'L', 'T', 'I', 'N', 'G', '_', 'O', 'P', 0,
  /* 1299 */ 'A', 'D', 'J', 'C', 'A', 'L', 'L', 'S', 'T', 'A', 'C', 'K', 'U', 'P', 0,
  /* 1314 */ 'L', 'D', 'S', 'P', 'C', '_', '0', 'R', 0,
  /* 1323 */ 'S', 'T', 'S', 'P', 'C', '_', '0', 'R', 0,
  /* 1332 */ 'L', 'D', 'S', 'E', 'D', '_', '0', 'R', 0,
  /* 1341 */ 'S', 'T', 'S', 'E', 'D', '_', '0', 'R', 0,
  /* 1350 */ 'G', 'E', 'T', 'E', 'D', '_', '0', 'R', 0,
  /* 1359 */ 'G', 'E', 'T', 'I', 'D', '_', '0', 'R', 0,
  /* 1368 */ 'C', 'L', 'R', 'E', '_', '0', 'R', 0,
  /* 1376 */ 'D', 'C', 'A', 'L', 'L', '_', '0', 'R', 0,
  /* 1385 */ 'G', 'E', 'T', 'K', 'E', 'P', '_', '0', 'R', 0,
  /* 1395 */ 'S', 'E', 'T', 'K', 'E', 'P', '_', '0', 'R', 0,
  /* 1405 */ 'G', 'E', 'T', 'K', 'S', 'P', '_', '0', 'R', 0,
  /* 1415 */ 'D', 'E', 'N', 'T', 'S', 'P', '_', '0', 'R', 0,
  /* 1425 */ 'D', 'R', 'E', 'S', 'T', 'S', 'P', '_', '0', 'R', 0,
  /* 1436 */ 'L', 'D', 'S', 'S', 'R', '_', '0', 'R', 0,
  /* 1445 */ 'S', 'T', 'S', 'S', 'R', '_', '0', 'R', 0,
  /* 1454 */ 'L', 'D', 'E', 'T', '_', '0', 'R', 0,
  /* 1462 */ 'F', 'R', 'E', 'E', 'T', '_', '0', 'R', 0,
  /* 1471 */ 'D', 'R', 'E', 'T', '_', '0', 'R', 0,
  /* 1479 */ 'K', 'R', 'E', 'T', '_', '0', 'R', 0,
  /* 1487 */ 'G', 'E', 'T', 'E', 'T', '_', '0', 'R', 0,
  /* 1496 */ 'S', 'T', 'E', 'T', '_', '0', 'R', 0,
  /* 1504 */ 'W', 'A', 'I', 'T', 'E', 'U', '_', '0', 'R', 0,
  /* 1514 */ 'W', 'A', 'I', 'T', 'E', 'F', '_', '1', 'R', 0,
  /* 1524 */ 'W', 'A', 'I', 'T', 'E', 'T', '_', '1', 'R', 0,
  /* 1534 */ 'C', 'L', 'R', 'P', 'T', '_', '1', 'R', 0,
  /* 1543 */ 'T', 'S', 'T', 'A', 'R', 'T', '_', '1', 'R', 0,
  /* 1553 */ 'G', '_', 'B', 'R', 0,
  /* 1558 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'F', 'U', 'N', 'C', 'T', 'I', 'O', 'N', '_', 'E', 'N', 'T', 'E', 'R', 0,
  /* 1583 */ 'G', '_', 'A', 'S', 'H', 'R', 0,
  /* 1590 */ 'G', '_', 'L', 'S', 'H', 'R', 0,
  /* 1597 */ 'G', '_', 'X', 'O', 'R', 0,
  /* 1603 */ 'G', '_', 'O', 'R', 0,
  /* 1608 */ 'G', '_', 'I', 'N', 'T', 'T', 'O', 'P', 'T', 'R', 0,
  /* 1619 */ 'G', '_', 'U', 'N', 'M', 'E', 'R', 'G', 'E', '_', 'V', 'A', 'L', 'U', 'E', 'S', 0,
  /* 1636 */ 'G', '_', 'M', 'E', 'R', 'G', 'E', '_', 'V', 'A', 'L', 'U', 'E', 'S', 0,
  /* 1651 */ 'C', 'O', 'P', 'Y', '_', 'T', 'O', '_', 'R', 'E', 'G', 'C', 'L', 'A', 'S', 'S', 0,
  /* 1668 */ 'G', '_', 'I', 'N', 'T', 'R', 'I', 'N', 'S', 'I', 'C', '_', 'W', '_', 'S', 'I', 'D', 'E', '_', 'E', 'F', 'F', 'E', 'C', 'T', 'S', 0,
  /* 1695 */ 'G', '_', 'E', 'X', 'T', 'R', 'A', 'C', 'T', 0,
  /* 1705 */ 'G', '_', 'S', 'E', 'L', 'E', 'C', 'T', 0,
  /* 1714 */ 'G', '_', 'B', 'R', 'I', 'N', 'D', 'I', 'R', 'E', 'C', 'T', 0,
  /* 1727 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'R', 'E', 'T', 0,
  /* 1741 */ 'F', 'R', 'A', 'M', 'E', '_', 'T', 'O', '_', 'A', 'R', 'G', 'S', '_', 'O', 'F', 'F', 'S', 'E', 'T', 0,
  /* 1762 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'F', 'U', 'N', 'C', 'T', 'I', 'O', 'N', '_', 'E', 'X', 'I', 'T', 0,
  /* 1786 */ 'B', 'R', '_', 'J', 'T', 0,
  /* 1792 */ 'G', '_', 'E', 'X', 'T', 'R', 'A', 'C', 'T', '_', 'V', 'E', 'C', 'T', 'O', 'R', '_', 'E', 'L', 'T', 0,
  /* 1813 */ 'G', '_', 'I', 'N', 'S', 'E', 'R', 'T', '_', 'V', 'E', 'C', 'T', 'O', 'R', '_', 'E', 'L', 'T', 0,
  /* 1833 */ 'G', '_', 'F', 'C', 'O', 'N', 'S', 'T', 'A', 'N', 'T', 0,
  /* 1845 */ 'G', '_', 'C', 'O', 'N', 'S', 'T', 'A', 'N', 'T', 0,
  /* 1856 */ 'S', 'T', 'A', 'T', 'E', 'P', 'O', 'I', 'N', 'T', 0,
  /* 1867 */ 'P', 'A', 'T', 'C', 'H', 'P', 'O', 'I', 'N', 'T', 0,
  /* 1878 */ 'G', '_', 'P', 'T', 'R', 'T', 'O', 'I', 'N', 'T', 0,
  /* 1889 */ 'N', 'O', 'T', 0,
  /* 1893 */ 'G', '_', 'V', 'A', 'S', 'T', 'A', 'R', 'T', 0,
  /* 1903 */ 'L', 'I', 'F', 'E', 'T', 'I', 'M', 'E', '_', 'S', 'T', 'A', 'R', 'T', 0,
  /* 1918 */ 'G', '_', 'I', 'N', 'S', 'E', 'R', 'T', 0,
  /* 1927 */ 'G', '_', 'B', 'I', 'T', 'C', 'A', 'S', 'T', 0,
  /* 1937 */ 'G', '_', 'F', 'P', 'E', 'X', 'T', 0,
  /* 1945 */ 'G', '_', 'S', 'E', 'X', 'T', 0,
  /* 1952 */ 'G', '_', 'A', 'N', 'Y', 'E', 'X', 'T', 0,
  /* 1961 */ 'G', '_', 'Z', 'E', 'X', 'T', 0,
  /* 1968 */ 'G', '_', 'F', 'D', 'I', 'V', 0,
  /* 1975 */ 'G', '_', 'S', 'D', 'I', 'V', 0,
  /* 1982 */ 'G', '_', 'U', 'D', 'I', 'V', 0,
  /* 1989 */ 'G', '_', 'F', 'P', 'O', 'W', 0,
  /* 1996 */ 'G', '_', 'F', 'R', 'A', 'M', 'E', '_', 'I', 'N', 'D', 'E', 'X', 0,
  /* 2010 */ 'C', 'O', 'P', 'Y', 0,
  /* 2015 */ 'L', 'D', 'A', 'P', 'F', '_', 'l', 'u', '1', '0', '_', 'b', 'a', 0,
  /* 2029 */ 'S', 'S', 'Y', 'N', 'C', '_', '0', 'r', 0,
  /* 2038 */ 'B', 'L', 'A', '_', '1', 'r', 0,
  /* 2045 */ 'M', 'S', 'Y', 'N', 'C', '_', '1', 'r', 0,
  /* 2054 */ 'E', 'C', 'A', 'L', 'L', 'F', '_', '1', 'r', 0,
  /* 2064 */ 'D', 'G', 'E', 'T', 'R', 'E', 'G', '_', '1', 'r', 0,
  /* 2075 */ 'K', 'C', 'A', 'L', 'L', '_', '1', 'r', 0,
  /* 2084 */ 'M', 'J', 'O', 'I', 'N', '_', '1', 'r', 0,
  /* 2093 */ 'S', 'E', 'T', 'C', 'P', '_', '1', 'r', 0,
  /* 2102 */ 'S', 'E', 'T', 'D', 'P', '_', '1', 'r', 0,
  /* 2111 */ 'S', 'E', 'T', 'S', 'P', '_', '1', 'r', 0,
  /* 2120 */ 'S', 'Y', 'N', 'C', 'R', '_', '1', 'r', 0,
  /* 2129 */ 'F', 'R', 'E', 'E', 'R', '_', '1', 'r', 0,
  /* 2138 */ 'E', 'C', 'A', 'L', 'L', 'T', '_', '1', 'r', 0,
  /* 2148 */ 'B', 'A', 'U', '_', '1', 'r', 0,
  /* 2155 */ 'E', 'D', 'U', '_', '1', 'r', 0,
  /* 2162 */ 'E', 'E', 'U', '_', '1', 'r', 0,
  /* 2169 */ 'B', 'R', 'U', '_', '1', 'r', 0,
  /* 2176 */ 'S', 'E', 'T', 'E', 'V', '_', '1', 'r', 0,
  /* 2185 */ 'S', 'E', 'T', 'V', '_', '1', 'r', 0,
  /* 2193 */ 'I', 'N', 'I', 'T', 'P', 'C', '_', '2', 'r', 0,
  /* 2203 */ 'S', 'E', 'T', 'P', 'S', 'C', '_', '2', 'r', 0,
  /* 2213 */ 'S', 'E', 'T', 'D', '_', '2', 'r', 0,
  /* 2221 */ 'E', 'E', 'F', '_', '2', 'r', 0,
  /* 2228 */ 'P', 'E', 'E', 'K', '_', '2', 'r', 0,
  /* 2236 */ 'M', 'K', 'M', 'S', 'K', '_', '2', 'r', 0,
  /* 2245 */ 'E', 'N', 'D', 'I', 'N', '_', '2', 'r', 0,
  /* 2254 */ 'I', 'N', 'I', 'T', 'C', 'P', '_', '2', 'r', 0,
  /* 2264 */ 'I', 'N', 'I', 'T', 'D', 'P', '_', '2', 'r', 0,
  /* 2274 */ 'I', 'N', 'I', 'T', 'S', 'P', '_', '2', 'r', 0,
  /* 2284 */ 'I', 'N', 'S', 'H', 'R', '_', '2', 'r', 0,
  /* 2293 */ 'O', 'U', 'T', 'S', 'H', 'R', '_', '2', 'r', 0,
  /* 2303 */ 'T', 'S', 'E', 'T', 'M', 'R', '_', '2', 'r', 0,
  /* 2313 */ 'G', 'E', 'T', 'T', 'S', '_', '2', 'r', 0,
  /* 2322 */ 'C', 'H', 'K', 'C', 'T', '_', '2', 'r', 0,
  /* 2331 */ 'I', 'N', 'C', 'T', '_', '2', 'r', 0,
  /* 2339 */ 'T', 'E', 'S', 'T', 'C', 'T', '_', '2', 'r', 0,
  /* 2349 */ 'O', 'U', 'T', 'C', 'T', '_', '2', 'r', 0,
  /* 2358 */ 'T', 'E', 'S', 'T', 'W', 'C', 'T', '_', '2', 'r', 0,
  /* 2369 */ 'E', 'E', 'T', '_', '2', 'r', 0,
  /* 2376 */ 'I', 'N', 'T', '_', '2', 'r', 0,
  /* 2383 */ 'A', 'N', 'D', 'N', 'O', 'T', '_', '2', 'r', 0,
  /* 2393 */ 'S', 'E', 'T', 'P', 'T', '_', '2', 'r', 0,
  /* 2402 */ 'G', 'E', 'T', 'S', 'T', '_', '2', 'r', 0,
  /* 2411 */ 'O', 'U', 'T', 'T', '_', '2', 'r', 0,
  /* 2419 */ 'O', 'U', 'T', '_', '2', 'r', 0,
  /* 2426 */ 'S', 'E', 'X', 'T', '_', '2', 'r', 0,
  /* 2434 */ 'Z', 'E', 'X', 'T', '_', '2', 'r', 0,
  /* 2442 */ 'S', 'E', 'T', 'C', '_', 'l', '2', 'r', 0,
  /* 2451 */ 'G', 'E', 'T', 'D', '_', 'l', '2', 'r', 0,
  /* 2460 */ 'S', 'E', 'T', 'C', 'L', 'K', '_', 'l', '2', 'r', 0,
  /* 2471 */ 'T', 'E', 'S', 'T', 'L', 'C', 'L', '_', 'l', '2', 'r', 0,
  /* 2483 */ 'G', 'E', 'T', 'N', '_', 'l', '2', 'r', 0,
  /* 2492 */ 'S', 'E', 'T', 'N', '_', 'l', '2', 'r', 0,
  /* 2501 */ 'I', 'N', 'I', 'T', 'L', 'R', '_', 'l', '2', 'r', 0,
  /* 2512 */ 'G', 'E', 'T', 'P', 'S', '_', 'l', '2', 'r', 0,
  /* 2522 */ 'S', 'E', 'T', 'P', 'S', '_', 'l', '2', 'r', 0,
  /* 2532 */ 'B', 'Y', 'T', 'E', 'R', 'E', 'V', '_', 'l', '2', 'r', 0,
  /* 2544 */ 'B', 'I', 'T', 'R', 'E', 'V', '_', 'l', '2', 'r', 0,
  /* 2555 */ 'S', 'E', 'T', 'T', 'W', '_', 'l', '2', 'r', 0,
  /* 2565 */ 'S', 'E', 'T', 'R', 'D', 'Y', '_', 'l', '2', 'r', 0,
  /* 2576 */ 'C', 'L', 'Z', '_', 'l', '2', 'r', 0,
  /* 2584 */ 'S', 'U', 'B', '_', '3', 'r', 0,
  /* 2591 */ 'A', 'D', 'D', '_', '3', 'r', 0,
  /* 2598 */ 'A', 'N', 'D', '_', '3', 'r', 0,
  /* 2605 */ 'S', 'H', 'L', '_', '3', 'r', 0,
  /* 2612 */ 'E', 'Q', '_', '3', 'r', 0,
  /* 2618 */ 'S', 'H', 'R', '_', '3', 'r', 0,
  /* 2625 */ 'O', 'R', '_', '3', 'r', 0,
  /* 2631 */ 'T', 'S', 'E', 'T', 'R', '_', '3', 'r', 0,
  /* 2640 */ 'L', 'D', '1', '6', 'S', '_', '3', 'r', 0,
  /* 2649 */ 'L', 'S', 'S', '_', '3', 'r', 0,
  /* 2656 */ 'L', 'D', '8', 'U', '_', '3', 'r', 0,
  /* 2664 */ 'L', 'S', 'U', '_', '3', 'r', 0,
  /* 2671 */ 'L', 'D', 'W', '_', '3', 'r', 0,
  /* 2678 */ 'S', 'T', '1', '6', '_', 'l', '3', 'r', 0,
  /* 2687 */ 'S', 'T', '8', '_', 'l', '3', 'r', 0,
  /* 2695 */ 'L', 'D', 'A', '1', '6', 'B', '_', 'l', '3', 'r', 0,
  /* 2706 */ 'L', 'D', 'A', 'W', 'B', '_', 'l', '3', 'r', 0,
  /* 2716 */ 'C', 'R', 'C', '_', 'l', '3', 'r', 0,
  /* 2724 */ 'L', 'D', 'A', '1', '6', 'F', '_', 'l', '3', 'r', 0,
  /* 2735 */ 'L', 'D', 'A', 'W', 'F', '_', 'l', '3', 'r', 0,
  /* 2745 */ 'M', 'U', 'L', '_', 'l', '3', 'r', 0,
  /* 2753 */ 'A', 'S', 'H', 'R', '_', 'l', '3', 'r', 0,
  /* 2762 */ 'X', 'O', 'R', '_', 'l', '3', 'r', 0,
  /* 2770 */ 'R', 'E', 'M', 'S', '_', 'l', '3', 'r', 0,
  /* 2779 */ 'D', 'I', 'V', 'S', '_', 'l', '3', 'r', 0,
  /* 2788 */ 'R', 'E', 'M', 'U', '_', 'l', '3', 'r', 0,
  /* 2797 */ 'D', 'I', 'V', 'U', '_', 'l', '3', 'r', 0,
  /* 2806 */ 'S', 'T', 'W', '_', 'l', '3', 'r', 0,
  /* 2814 */ 'C', 'R', 'C', '8', '_', 'l', '4', 'r', 0,
  /* 2823 */ 'M', 'A', 'C', 'C', 'S', '_', 'l', '4', 'r', 0,
  /* 2833 */ 'M', 'A', 'C', 'C', 'U', '_', 'l', '4', 'r', 0,
  /* 2843 */ 'L', 'S', 'U', 'B', '_', 'l', '5', 'r', 0,
  /* 2852 */ 'L', 'A', 'D', 'D', '_', 'l', '5', 'r', 0,
  /* 2861 */ 'L', 'D', 'I', 'V', 'U', '_', 'l', '5', 'r', 0,
  /* 2871 */ 'L', 'M', 'U', 'L', '_', 'l', '6', 'r', 0,
  /* 2880 */ 'I', 'n', 't', '_', 'M', 'e', 'm', 'B', 'a', 'r', 'r', 'i', 'e', 'r', 0,
  /* 2895 */ 'S', 'U', 'B', '_', '2', 'r', 'u', 's', 0,
  /* 2904 */ 'A', 'D', 'D', '_', '2', 'r', 'u', 's', 0,
  /* 2913 */ 'S', 'H', 'L', '_', '2', 'r', 'u', 's', 0,
  /* 2922 */ 'E', 'Q', '_', '2', 'r', 'u', 's', 0,
  /* 2930 */ 'S', 'H', 'R', '_', '2', 'r', 'u', 's', 0,
  /* 2939 */ 'L', 'D', 'W', '_', '2', 'r', 'u', 's', 0,
  /* 2948 */ 'S', 'T', 'W', '_', '2', 'r', 'u', 's', 0,
  /* 2957 */ 'L', 'D', 'A', 'W', 'B', '_', 'l', '2', 'r', 'u', 's', 0,
  /* 2969 */ 'L', 'D', 'A', 'W', 'F', '_', 'l', '2', 'r', 'u', 's', 0,
  /* 2981 */ 'A', 'S', 'H', 'R', '_', 'l', '2', 'r', 'u', 's', 0,
  /* 2992 */ 'I', 'N', 'P', 'W', '_', 'l', '2', 'r', 'u', 's', 0,
  /* 3003 */ 'O', 'U', 'T', 'P', 'W', '_', 'l', '2', 'r', 'u', 's', 0,
  /* 3015 */ 'M', 'K', 'M', 'S', 'K', '_', 'r', 'u', 's', 0,
  /* 3025 */ 'G', 'E', 'T', 'R', '_', 'r', 'u', 's', 0,
  /* 3034 */ 'C', 'H', 'K', 'C', 'T', '_', 'r', 'u', 's', 0,
  /* 3044 */ 'O', 'U', 'T', 'C', 'T', '_', 'r', 'u', 's', 0,
  /* 3054 */ 'S', 'E', 'X', 'T', '_', 'r', 'u', 's', 0,
  /* 3063 */ 'Z', 'E', 'X', 'T', '_', 'r', 'u', 's', 0,
};

extern const unsigned XCoreInstrNameIndices[] = {
    1014U, 1142U, 1152U, 1056U, 1047U, 1103U, 928U, 943U, 
    908U, 957U, 1651U, 883U, 834U, 2010U, 855U, 1903U, 
    787U, 1227U, 1091U, 1867U, 809U, 1856U, 862U, 1287U, 
    1274U, 1558U, 1727U, 1762U, 1071U, 775U, 715U, 1115U, 
    1975U, 1982U, 1128U, 1135U, 781U, 1603U, 1597U, 1996U, 
    893U, 1695U, 1619U, 1918U, 836U, 1636U, 1878U, 1608U, 
    1927U, 761U, 875U, 800U, 1714U, 731U, 1668U, 1952U, 
    753U, 1845U, 1833U, 1893U, 971U, 1945U, 1961U, 1065U, 
    1590U, 1583U, 1267U, 1260U, 1705U, 847U, 826U, 1203U, 
    1195U, 1219U, 1211U, 987U, 979U, 768U, 708U, 1108U, 
    1968U, 1121U, 1989U, 921U, 1937U, 743U, 1018U, 1027U, 
    1242U, 1251U, 1236U, 1036U, 1553U, 1813U, 1792U, 2904U, 
    2591U, 1178U, 1299U, 2383U, 2598U, 2981U, 2753U, 2148U, 
    2544U, 100U, 38U, 384U, 224U, 2038U, 69U, 10U, 
    90U, 29U, 589U, 462U, 688U, 552U, 393U, 232U, 
    599U, 471U, 698U, 561U, 402U, 240U, 2169U, 1786U, 
    122U, 2532U, 2322U, 3034U, 1368U, 1534U, 411U, 248U, 
    354U, 197U, 2576U, 2814U, 2716U, 1376U, 1415U, 2064U, 
    2779U, 2797U, 1425U, 1471U, 2054U, 2138U, 2155U, 2221U, 
    2369U, 2162U, 1168U, 2245U, 322U, 168U, 2922U, 2612U, 
    301U, 149U, 344U, 188U, 1741U, 2129U, 1462U, 2451U, 
    1350U, 1487U, 1359U, 1385U, 1405U, 2483U, 2512U, 3025U, 
    364U, 206U, 2402U, 2313U, 2331U, 2254U, 2264U, 2501U, 
    2193U, 2274U, 2992U, 2284U, 2376U, 2248U, 2880U, 2075U, 
    280U, 130U, 321U, 167U, 332U, 177U, 1479U, 2852U, 
    2640U, 2656U, 2695U, 2724U, 58U, 0U, 79U, 2015U, 
    19U, 2957U, 2706U, 290U, 139U, 620U, 490U, 995U, 
    2969U, 2735U, 654U, 521U, 570U, 445U, 1454U, 2861U, 
    1332U, 1314U, 1436U, 609U, 111U, 480U, 48U, 632U, 
    501U, 1002U, 666U, 532U, 2939U, 2671U, 2871U, 2649U, 
    2843U, 2664U, 2823U, 2833U, 2084U, 2236U, 3015U, 2045U, 
    2745U, 924U, 1889U, 2625U, 2349U, 3044U, 3003U, 2293U, 
    2411U, 2419U, 2228U, 2770U, 2788U, 311U, 158U, 721U, 
    2460U, 2093U, 2442U, 579U, 453U, 2102U, 2213U, 2176U, 
    1395U, 2492U, 2203U, 2522U, 2393U, 2565U, 2111U, 428U, 
    264U, 374U, 215U, 2555U, 2185U, 2426U, 3054U, 2913U, 
    2605U, 2930U, 2618U, 2029U, 2678U, 2687U, 1496U, 1341U, 
    1323U, 1445U, 643U, 511U, 1008U, 677U, 542U, 2948U, 
    2806U, 2895U, 2584U, 2120U, 2339U, 2471U, 2358U, 2303U, 
    2631U, 1543U, 1514U, 1524U, 1504U, 2762U, 2434U, 3063U, 
};

static inline void InitXCoreMCInstrInfo(MCInstrInfo *II) {
  II->InitMCInstrInfo(XCoreInsts, XCoreInstrNameIndices, XCoreInstrNameData, 320);
}

} // end llvm namespace
#endif // GET_INSTRINFO_MC_DESC

#ifdef GET_INSTRINFO_HEADER
#undef GET_INSTRINFO_HEADER
namespace llvm {
struct XCoreGenInstrInfo : public TargetInstrInfo {
  explicit XCoreGenInstrInfo(int CFSetupOpcode = -1, int CFDestroyOpcode = -1, int CatchRetOpcode = -1, int ReturnOpcode = -1);
  ~XCoreGenInstrInfo() override = default;
};
} // end llvm namespace
#endif // GET_INSTRINFO_HEADER

#ifdef GET_INSTRINFO_CTOR_DTOR
#undef GET_INSTRINFO_CTOR_DTOR
namespace llvm {
extern const MCInstrDesc XCoreInsts[];
extern const unsigned XCoreInstrNameIndices[];
extern const char XCoreInstrNameData[];
XCoreGenInstrInfo::XCoreGenInstrInfo(int CFSetupOpcode, int CFDestroyOpcode, int CatchRetOpcode, int ReturnOpcode)
  : TargetInstrInfo(CFSetupOpcode, CFDestroyOpcode, CatchRetOpcode, ReturnOpcode) {
  InitMCInstrInfo(XCoreInsts, XCoreInstrNameIndices, XCoreInstrNameData, 320);
}
} // end llvm namespace
#endif // GET_INSTRINFO_CTOR_DTOR

#ifdef GET_INSTRINFO_OPERAND_ENUM
#undef GET_INSTRINFO_OPERAND_ENUM
namespace llvm {
namespace XCore {
namespace OpName {
enum {
OPERAND_LAST
};
} // end namespace OpName
} // end namespace XCore
} // end namespace llvm
#endif //GET_INSTRINFO_OPERAND_ENUM

#ifdef GET_INSTRINFO_NAMED_OPS
#undef GET_INSTRINFO_NAMED_OPS
namespace llvm {
namespace XCore {
LLVM_READONLY
int16_t getNamedOperandIdx(uint16_t Opcode, uint16_t NamedIdx) {
  return -1;
}
} // end namespace XCore
} // end namespace llvm
#endif //GET_INSTRINFO_NAMED_OPS

#ifdef GET_INSTRINFO_OPERAND_TYPES_ENUM
#undef GET_INSTRINFO_OPERAND_TYPES_ENUM
namespace llvm {
namespace XCore {
namespace OpTypes {
enum OperandType {
  InlineJT = 0,
  InlineJT32 = 1,
  MEMii = 2,
  brtarget = 3,
  brtarget_neg = 4,
  f32imm = 5,
  f64imm = 6,
  i16imm = 7,
  i1imm = 8,
  i32imm = 9,
  i64imm = 10,
  i8imm = 11,
  pcrel_imm = 12,
  pcrel_imm_neg = 13,
  type0 = 14,
  type1 = 15,
  type2 = 16,
  type3 = 17,
  type4 = 18,
  type5 = 19,
  OPERAND_TYPE_LIST_END
};
} // end namespace OpTypes
} // end namespace XCore
} // end namespace llvm
#endif // GET_INSTRINFO_OPERAND_TYPES_ENUM

