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

namespace MSP430 {
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
    ADC16mi	= 95,
    ADC16mm	= 96,
    ADC16mr	= 97,
    ADC16ri	= 98,
    ADC16rm	= 99,
    ADC16rr	= 100,
    ADC8mi	= 101,
    ADC8mm	= 102,
    ADC8mr	= 103,
    ADC8ri	= 104,
    ADC8rm	= 105,
    ADC8rr	= 106,
    ADD16mi	= 107,
    ADD16mm	= 108,
    ADD16mr	= 109,
    ADD16ri	= 110,
    ADD16rm	= 111,
    ADD16rm_POST	= 112,
    ADD16rr	= 113,
    ADD8mi	= 114,
    ADD8mm	= 115,
    ADD8mr	= 116,
    ADD8ri	= 117,
    ADD8rm	= 118,
    ADD8rm_POST	= 119,
    ADD8rr	= 120,
    ADJCALLSTACKDOWN	= 121,
    ADJCALLSTACKUP	= 122,
    AND16mi	= 123,
    AND16mm	= 124,
    AND16mr	= 125,
    AND16ri	= 126,
    AND16rm	= 127,
    AND16rm_POST	= 128,
    AND16rr	= 129,
    AND8mi	= 130,
    AND8mm	= 131,
    AND8mr	= 132,
    AND8ri	= 133,
    AND8rm	= 134,
    AND8rm_POST	= 135,
    AND8rr	= 136,
    BIC16mm	= 137,
    BIC16mr	= 138,
    BIC16rm	= 139,
    BIC16rr	= 140,
    BIC8mm	= 141,
    BIC8mr	= 142,
    BIC8rm	= 143,
    BIC8rr	= 144,
    BIT16mi	= 145,
    BIT16mm	= 146,
    BIT16mr	= 147,
    BIT16ri	= 148,
    BIT16rm	= 149,
    BIT16rr	= 150,
    BIT8mi	= 151,
    BIT8mm	= 152,
    BIT8mr	= 153,
    BIT8ri	= 154,
    BIT8rm	= 155,
    BIT8rr	= 156,
    Bi	= 157,
    Bm	= 158,
    Br	= 159,
    CALLi	= 160,
    CALLm	= 161,
    CALLr	= 162,
    CMP16mi	= 163,
    CMP16mr	= 164,
    CMP16ri	= 165,
    CMP16rm	= 166,
    CMP16rr	= 167,
    CMP8mi	= 168,
    CMP8mr	= 169,
    CMP8ri	= 170,
    CMP8rm	= 171,
    CMP8rr	= 172,
    JCC	= 173,
    JMP	= 174,
    MOV16mi	= 175,
    MOV16mm	= 176,
    MOV16mr	= 177,
    MOV16ri	= 178,
    MOV16rm	= 179,
    MOV16rm_POST	= 180,
    MOV16rr	= 181,
    MOV8mi	= 182,
    MOV8mm	= 183,
    MOV8mr	= 184,
    MOV8ri	= 185,
    MOV8rm	= 186,
    MOV8rm_POST	= 187,
    MOV8rr	= 188,
    MOVZX16rm8	= 189,
    MOVZX16rr8	= 190,
    NOP	= 191,
    OR16mi	= 192,
    OR16mm	= 193,
    OR16mr	= 194,
    OR16ri	= 195,
    OR16rm	= 196,
    OR16rm_POST	= 197,
    OR16rr	= 198,
    OR8mi	= 199,
    OR8mm	= 200,
    OR8mr	= 201,
    OR8ri	= 202,
    OR8rm	= 203,
    OR8rm_POST	= 204,
    OR8rr	= 205,
    POP16r	= 206,
    PUSH16r	= 207,
    RET	= 208,
    RETI	= 209,
    SAR16r1	= 210,
    SAR16r1c	= 211,
    SAR8r1	= 212,
    SAR8r1c	= 213,
    SBC16mi	= 214,
    SBC16mm	= 215,
    SBC16mr	= 216,
    SBC16ri	= 217,
    SBC16rm	= 218,
    SBC16rr	= 219,
    SBC8mi	= 220,
    SBC8mm	= 221,
    SBC8mr	= 222,
    SBC8ri	= 223,
    SBC8rm	= 224,
    SBC8rr	= 225,
    SEXT16r	= 226,
    SHL16r1	= 227,
    SHL8r1	= 228,
    SUB16mi	= 229,
    SUB16mm	= 230,
    SUB16mr	= 231,
    SUB16ri	= 232,
    SUB16rm	= 233,
    SUB16rm_POST	= 234,
    SUB16rr	= 235,
    SUB8mi	= 236,
    SUB8mm	= 237,
    SUB8mr	= 238,
    SUB8ri	= 239,
    SUB8rm	= 240,
    SUB8rm_POST	= 241,
    SUB8rr	= 242,
    SWPB16r	= 243,
    Select16	= 244,
    Select8	= 245,
    Shl16	= 246,
    Shl8	= 247,
    Sra16	= 248,
    Sra8	= 249,
    Srl16	= 250,
    Srl8	= 251,
    XOR16mi	= 252,
    XOR16mm	= 253,
    XOR16mr	= 254,
    XOR16ri	= 255,
    XOR16rm	= 256,
    XOR16rm_POST	= 257,
    XOR16rr	= 258,
    XOR8mi	= 259,
    XOR8mm	= 260,
    XOR8mr	= 261,
    XOR8ri	= 262,
    XOR8rm	= 263,
    XOR8rm_POST	= 264,
    XOR8rr	= 265,
    ZEXT16r	= 266,
    INSTRUCTION_LIST_END = 267
  };

namespace Sched {
  enum {
    NoInstrModel	= 0,
    SCHED_LIST_END = 1
  };
} // end Sched namespace
} // end MSP430 namespace
} // end llvm namespace
#endif // GET_INSTRINFO_ENUM

#ifdef GET_INSTRINFO_MC_DESC
#undef GET_INSTRINFO_MC_DESC
namespace llvm {

static const MCPhysReg ImplicitList1[] = { MSP430::SR, 0 };
static const MCPhysReg ImplicitList2[] = { MSP430::SP, 0 };
static const MCPhysReg ImplicitList3[] = { MSP430::SP, MSP430::SR, 0 };
static const MCPhysReg ImplicitList4[] = { MSP430::R12, MSP430::R13, MSP430::R14, MSP430::R15, MSP430::SR, 0 };

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
static const MCOperandInfo OperandInfo26[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo27[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo28[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo29[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo30[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo31[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo32[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo33[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo34[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo35[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo36[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((1 << 16) | (1 << MCOI::TIED_TO)) }, };
static const MCOperandInfo OperandInfo37[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((1 << 16) | (1 << MCOI::TIED_TO)) }, };
static const MCOperandInfo OperandInfo38[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo39[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo40[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo41[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo42[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo43[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo44[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_UNKNOWN, 0 }, { -1, 0, MCOI::OPERAND_UNKNOWN, 0 }, };
static const MCOperandInfo OperandInfo45[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo46[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((1 << 16) | (1 << MCOI::TIED_TO)) }, };
static const MCOperandInfo OperandInfo47[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((1 << 16) | (1 << MCOI::TIED_TO)) }, };
static const MCOperandInfo OperandInfo48[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo49[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, };
static const MCOperandInfo OperandInfo50[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, ((0 << 16) | (1 << MCOI::TIED_TO)) }, };
static const MCOperandInfo OperandInfo51[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo52[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { -1, 0, MCOI::OPERAND_IMMEDIATE, 0 }, };
static const MCOperandInfo OperandInfo53[] = { { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR16RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };
static const MCOperandInfo OperandInfo54[] = { { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, { MSP430::GR8RegClassID, 0, MCOI::OPERAND_REGISTER, 0 }, };

extern const MCInstrDesc MSP430Insts[] = {
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
  { 95,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #95 = ADC16mi
  { 96,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #96 = ADC16mm
  { 97,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, ImplicitList1, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #97 = ADC16mr
  { 98,	3,	1,	0,	0,	0, 0xeULL, ImplicitList1, ImplicitList1, OperandInfo29, -1 ,nullptr },  // Inst #98 = ADC16ri
  { 99,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, ImplicitList1, ImplicitList1, OperandInfo30, -1 ,nullptr },  // Inst #99 = ADC16rm
  { 100,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, ImplicitList1, ImplicitList1, OperandInfo31, -1 ,nullptr },  // Inst #100 = ADC16rr
  { 101,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #101 = ADC8mi
  { 102,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #102 = ADC8mm
  { 103,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, ImplicitList1, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #103 = ADC8mr
  { 104,	3,	1,	0,	0,	0, 0xeULL, ImplicitList1, ImplicitList1, OperandInfo33, -1 ,nullptr },  // Inst #104 = ADC8ri
  { 105,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, ImplicitList1, ImplicitList1, OperandInfo34, -1 ,nullptr },  // Inst #105 = ADC8rm
  { 106,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, ImplicitList1, ImplicitList1, OperandInfo35, -1 ,nullptr },  // Inst #106 = ADC8rr
  { 107,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #107 = ADD16mi
  { 108,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #108 = ADD16mm
  { 109,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #109 = ADD16mr
  { 110,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo29, -1 ,nullptr },  // Inst #110 = ADD16ri
  { 111,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo30, -1 ,nullptr },  // Inst #111 = ADD16rm
  { 112,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo36, -1 ,nullptr },  // Inst #112 = ADD16rm_POST
  { 113,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo31, -1 ,nullptr },  // Inst #113 = ADD16rr
  { 114,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #114 = ADD8mi
  { 115,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #115 = ADD8mm
  { 116,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #116 = ADD8mr
  { 117,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo33, -1 ,nullptr },  // Inst #117 = ADD8ri
  { 118,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo34, -1 ,nullptr },  // Inst #118 = ADD8rm
  { 119,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo37, -1 ,nullptr },  // Inst #119 = ADD8rm_POST
  { 120,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo35, -1 ,nullptr },  // Inst #120 = ADD8rr
  { 121,	1,	0,	0,	0,	0, 0x4ULL, ImplicitList2, ImplicitList3, OperandInfo3, -1 ,nullptr },  // Inst #121 = ADJCALLSTACKDOWN
  { 122,	2,	0,	0,	0,	0, 0x4ULL, ImplicitList2, ImplicitList3, OperandInfo8, -1 ,nullptr },  // Inst #122 = ADJCALLSTACKUP
  { 123,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #123 = AND16mi
  { 124,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #124 = AND16mm
  { 125,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #125 = AND16mr
  { 126,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo29, -1 ,nullptr },  // Inst #126 = AND16ri
  { 127,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo30, -1 ,nullptr },  // Inst #127 = AND16rm
  { 128,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo36, -1 ,nullptr },  // Inst #128 = AND16rm_POST
  { 129,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo31, -1 ,nullptr },  // Inst #129 = AND16rr
  { 130,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #130 = AND8mi
  { 131,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #131 = AND8mm
  { 132,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #132 = AND8mr
  { 133,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo33, -1 ,nullptr },  // Inst #133 = AND8ri
  { 134,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo34, -1 ,nullptr },  // Inst #134 = AND8rm
  { 135,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo37, -1 ,nullptr },  // Inst #135 = AND8rm_POST
  { 136,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo35, -1 ,nullptr },  // Inst #136 = AND8rr
  { 137,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #137 = BIC16mm
  { 138,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #138 = BIC16mr
  { 139,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo30, -1 ,nullptr },  // Inst #139 = BIC16rm
  { 140,	3,	1,	0,	0,	0, 0xaULL, nullptr, ImplicitList1, OperandInfo31, -1 ,nullptr },  // Inst #140 = BIC16rr
  { 141,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #141 = BIC8mm
  { 142,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #142 = BIC8mr
  { 143,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo34, -1 ,nullptr },  // Inst #143 = BIC8rm
  { 144,	3,	1,	0,	0,	0, 0xaULL, nullptr, ImplicitList1, OperandInfo35, -1 ,nullptr },  // Inst #144 = BIC8rr
  { 145,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #145 = BIT16mi
  { 146,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #146 = BIT16mm
  { 147,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #147 = BIT16mr
  { 148,	2,	0,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo38, -1 ,nullptr },  // Inst #148 = BIT16ri
  { 149,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo39, -1 ,nullptr },  // Inst #149 = BIT16rm
  { 150,	2,	0,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo40, -1 ,nullptr },  // Inst #150 = BIT16rr
  { 151,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #151 = BIT8mi
  { 152,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #152 = BIT8mm
  { 153,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #153 = BIT8mr
  { 154,	2,	0,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo41, -1 ,nullptr },  // Inst #154 = BIT8ri
  { 155,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo42, -1 ,nullptr },  // Inst #155 = BIT8rm
  { 156,	2,	0,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo43, -1 ,nullptr },  // Inst #156 = BIT8rr
  { 157,	1,	0,	0,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0xeULL, nullptr, nullptr, OperandInfo3, -1 ,nullptr },  // Inst #157 = Bi
  { 158,	2,	0,	0,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Terminator), 0xeULL, nullptr, nullptr, OperandInfo44, -1 ,nullptr },  // Inst #158 = Bm
  { 159,	1,	0,	0,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::IndirectBranch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0xaULL, nullptr, nullptr, OperandInfo45, -1 ,nullptr },  // Inst #159 = Br
  { 160,	1,	0,	0,	0,	0|(1ULL<<MCID::Call), 0xdULL, ImplicitList2, ImplicitList4, OperandInfo3, -1 ,nullptr },  // Inst #160 = CALLi
  { 161,	2,	0,	0,	0,	0|(1ULL<<MCID::Call)|(1ULL<<MCID::MayLoad), 0xdULL, ImplicitList2, ImplicitList4, OperandInfo44, -1 ,nullptr },  // Inst #161 = CALLm
  { 162,	1,	0,	0,	0,	0|(1ULL<<MCID::Call), 0x9ULL, ImplicitList2, ImplicitList4, OperandInfo45, -1 ,nullptr },  // Inst #162 = CALLr
  { 163,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #163 = CMP16mi
  { 164,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #164 = CMP16mr
  { 165,	2,	0,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo38, -1 ,nullptr },  // Inst #165 = CMP16ri
  { 166,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo39, -1 ,nullptr },  // Inst #166 = CMP16rm
  { 167,	2,	0,	0,	0,	0, 0xaULL, nullptr, ImplicitList1, OperandInfo40, -1 ,nullptr },  // Inst #167 = CMP16rr
  { 168,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #168 = CMP8mi
  { 169,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #169 = CMP8mr
  { 170,	2,	0,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo41, -1 ,nullptr },  // Inst #170 = CMP8ri
  { 171,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo42, -1 ,nullptr },  // Inst #171 = CMP8rm
  { 172,	2,	0,	0,	0,	0, 0xaULL, nullptr, ImplicitList1, OperandInfo43, -1 ,nullptr },  // Inst #172 = CMP8rr
  { 173,	2,	0,	0,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Terminator), 0xbULL, ImplicitList1, nullptr, OperandInfo7, -1 ,nullptr },  // Inst #173 = JCC
  { 174,	1,	0,	0,	0,	0|(1ULL<<MCID::Branch)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0xbULL, nullptr, nullptr, OperandInfo2, -1 ,nullptr },  // Inst #174 = JMP
  { 175,	3,	0,	0,	0,	0|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #175 = MOV16mi
  { 176,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #176 = MOV16mm
  { 177,	3,	0,	0,	0,	0|(1ULL<<MCID::MayStore), 0xeULL, nullptr, nullptr, OperandInfo28, -1 ,nullptr },  // Inst #177 = MOV16mr
  { 178,	2,	1,	0,	0,	0|(1ULL<<MCID::Rematerializable)|(1ULL<<MCID::CheapAsAMove), 0xeULL, nullptr, nullptr, OperandInfo38, -1 ,nullptr },  // Inst #178 = MOV16ri
  { 179,	3,	1,	0,	0,	0|(1ULL<<MCID::FoldableAsLoad)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Rematerializable), 0xeULL, nullptr, nullptr, OperandInfo39, -1 ,nullptr },  // Inst #179 = MOV16rm
  { 180,	3,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, nullptr, OperandInfo46, -1 ,nullptr },  // Inst #180 = MOV16rm_POST
  { 181,	2,	1,	0,	0,	0, 0xaULL, nullptr, nullptr, OperandInfo40, -1 ,nullptr },  // Inst #181 = MOV16rr
  { 182,	3,	0,	0,	0,	0|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, nullptr, OperandInfo26, -1 ,nullptr },  // Inst #182 = MOV8mi
  { 183,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, nullptr, OperandInfo27, -1 ,nullptr },  // Inst #183 = MOV8mm
  { 184,	3,	0,	0,	0,	0|(1ULL<<MCID::MayStore), 0xeULL, nullptr, nullptr, OperandInfo32, -1 ,nullptr },  // Inst #184 = MOV8mr
  { 185,	2,	1,	0,	0,	0|(1ULL<<MCID::Rematerializable)|(1ULL<<MCID::CheapAsAMove), 0xeULL, nullptr, nullptr, OperandInfo41, -1 ,nullptr },  // Inst #185 = MOV8ri
  { 186,	3,	1,	0,	0,	0|(1ULL<<MCID::FoldableAsLoad)|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::Rematerializable), 0xeULL, nullptr, nullptr, OperandInfo42, -1 ,nullptr },  // Inst #186 = MOV8rm
  { 187,	3,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, nullptr, OperandInfo47, -1 ,nullptr },  // Inst #187 = MOV8rm_POST
  { 188,	2,	1,	0,	0,	0, 0xaULL, nullptr, nullptr, OperandInfo43, -1 ,nullptr },  // Inst #188 = MOV8rr
  { 189,	3,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, nullptr, OperandInfo39, -1 ,nullptr },  // Inst #189 = MOVZX16rm8
  { 190,	2,	1,	0,	0,	0, 0xaULL, nullptr, nullptr, OperandInfo48, -1 ,nullptr },  // Inst #190 = MOVZX16rr8
  { 191,	0,	0,	0,	0,	0, 0x4ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #191 = NOP
  { 192,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #192 = OR16mi
  { 193,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #193 = OR16mm
  { 194,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #194 = OR16mr
  { 195,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo29, -1 ,nullptr },  // Inst #195 = OR16ri
  { 196,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo30, -1 ,nullptr },  // Inst #196 = OR16rm
  { 197,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo36, -1 ,nullptr },  // Inst #197 = OR16rm_POST
  { 198,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo31, -1 ,nullptr },  // Inst #198 = OR16rr
  { 199,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #199 = OR8mi
  { 200,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #200 = OR8mm
  { 201,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #201 = OR8mr
  { 202,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo33, -1 ,nullptr },  // Inst #202 = OR8ri
  { 203,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo34, -1 ,nullptr },  // Inst #203 = OR8rm
  { 204,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo37, -1 ,nullptr },  // Inst #204 = OR8rm_POST
  { 205,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo35, -1 ,nullptr },  // Inst #205 = OR8rr
  { 206,	1,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xaULL, ImplicitList2, ImplicitList2, OperandInfo45, -1 ,nullptr },  // Inst #206 = POP16r
  { 207,	1,	0,	0,	0,	0|(1ULL<<MCID::MayStore), 0x9ULL, ImplicitList2, ImplicitList2, OperandInfo45, -1 ,nullptr },  // Inst #207 = PUSH16r
  { 208,	0,	0,	0,	0,	0|(1ULL<<MCID::Return)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0xaULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #208 = RET
  { 209,	0,	0,	0,	0,	0|(1ULL<<MCID::Return)|(1ULL<<MCID::Barrier)|(1ULL<<MCID::Terminator), 0x9ULL, nullptr, nullptr, nullptr, -1 ,nullptr },  // Inst #209 = RETI
  { 210,	2,	1,	0,	0,	0, 0x9ULL, nullptr, ImplicitList1, OperandInfo49, -1 ,nullptr },  // Inst #210 = SAR16r1
  { 211,	2,	1,	0,	0,	0, 0x4ULL, nullptr, ImplicitList1, OperandInfo49, -1 ,nullptr },  // Inst #211 = SAR16r1c
  { 212,	2,	1,	0,	0,	0, 0x9ULL, nullptr, ImplicitList1, OperandInfo50, -1 ,nullptr },  // Inst #212 = SAR8r1
  { 213,	2,	1,	0,	0,	0, 0x4ULL, nullptr, ImplicitList1, OperandInfo50, -1 ,nullptr },  // Inst #213 = SAR8r1c
  { 214,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #214 = SBC16mi
  { 215,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #215 = SBC16mm
  { 216,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, ImplicitList1, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #216 = SBC16mr
  { 217,	3,	1,	0,	0,	0, 0xeULL, ImplicitList1, ImplicitList1, OperandInfo29, -1 ,nullptr },  // Inst #217 = SBC16ri
  { 218,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, ImplicitList1, ImplicitList1, OperandInfo30, -1 ,nullptr },  // Inst #218 = SBC16rm
  { 219,	3,	1,	0,	0,	0, 0xaULL, ImplicitList1, ImplicitList1, OperandInfo31, -1 ,nullptr },  // Inst #219 = SBC16rr
  { 220,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #220 = SBC8mi
  { 221,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, ImplicitList1, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #221 = SBC8mm
  { 222,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, ImplicitList1, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #222 = SBC8mr
  { 223,	3,	1,	0,	0,	0, 0xeULL, ImplicitList1, ImplicitList1, OperandInfo33, -1 ,nullptr },  // Inst #223 = SBC8ri
  { 224,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, ImplicitList1, ImplicitList1, OperandInfo34, -1 ,nullptr },  // Inst #224 = SBC8rm
  { 225,	3,	1,	0,	0,	0, 0xaULL, ImplicitList1, ImplicitList1, OperandInfo35, -1 ,nullptr },  // Inst #225 = SBC8rr
  { 226,	2,	1,	0,	0,	0, 0x9ULL, nullptr, ImplicitList1, OperandInfo49, -1 ,nullptr },  // Inst #226 = SEXT16r
  { 227,	2,	1,	0,	0,	0, 0xaULL, nullptr, ImplicitList1, OperandInfo49, -1 ,nullptr },  // Inst #227 = SHL16r1
  { 228,	2,	1,	0,	0,	0, 0xaULL, nullptr, ImplicitList1, OperandInfo50, -1 ,nullptr },  // Inst #228 = SHL8r1
  { 229,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #229 = SUB16mi
  { 230,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #230 = SUB16mm
  { 231,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #231 = SUB16mr
  { 232,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo29, -1 ,nullptr },  // Inst #232 = SUB16ri
  { 233,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo30, -1 ,nullptr },  // Inst #233 = SUB16rm
  { 234,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo36, -1 ,nullptr },  // Inst #234 = SUB16rm_POST
  { 235,	3,	1,	0,	0,	0, 0xaULL, nullptr, ImplicitList1, OperandInfo31, -1 ,nullptr },  // Inst #235 = SUB16rr
  { 236,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #236 = SUB8mi
  { 237,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #237 = SUB8mm
  { 238,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #238 = SUB8mr
  { 239,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo33, -1 ,nullptr },  // Inst #239 = SUB8ri
  { 240,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo34, -1 ,nullptr },  // Inst #240 = SUB8rm
  { 241,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo37, -1 ,nullptr },  // Inst #241 = SUB8rm_POST
  { 242,	3,	1,	0,	0,	0, 0xaULL, nullptr, ImplicitList1, OperandInfo35, -1 ,nullptr },  // Inst #242 = SUB8rr
  { 243,	2,	1,	0,	0,	0, 0x9ULL, nullptr, nullptr, OperandInfo49, -1 ,nullptr },  // Inst #243 = SWPB16r
  { 244,	4,	1,	0,	0,	0|(1ULL<<MCID::UsesCustomInserter), 0x4ULL, nullptr, nullptr, OperandInfo51, -1 ,nullptr },  // Inst #244 = Select16
  { 245,	4,	1,	0,	0,	0|(1ULL<<MCID::UsesCustomInserter), 0x4ULL, nullptr, nullptr, OperandInfo52, -1 ,nullptr },  // Inst #245 = Select8
  { 246,	3,	1,	0,	0,	0|(1ULL<<MCID::UsesCustomInserter), 0x4ULL, nullptr, ImplicitList1, OperandInfo53, -1 ,nullptr },  // Inst #246 = Shl16
  { 247,	3,	1,	0,	0,	0|(1ULL<<MCID::UsesCustomInserter), 0x4ULL, nullptr, ImplicitList1, OperandInfo54, -1 ,nullptr },  // Inst #247 = Shl8
  { 248,	3,	1,	0,	0,	0|(1ULL<<MCID::UsesCustomInserter), 0x4ULL, nullptr, ImplicitList1, OperandInfo53, -1 ,nullptr },  // Inst #248 = Sra16
  { 249,	3,	1,	0,	0,	0|(1ULL<<MCID::UsesCustomInserter), 0x4ULL, nullptr, ImplicitList1, OperandInfo54, -1 ,nullptr },  // Inst #249 = Sra8
  { 250,	3,	1,	0,	0,	0|(1ULL<<MCID::UsesCustomInserter), 0x4ULL, nullptr, ImplicitList1, OperandInfo53, -1 ,nullptr },  // Inst #250 = Srl16
  { 251,	3,	1,	0,	0,	0|(1ULL<<MCID::UsesCustomInserter), 0x4ULL, nullptr, ImplicitList1, OperandInfo54, -1 ,nullptr },  // Inst #251 = Srl8
  { 252,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #252 = XOR16mi
  { 253,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #253 = XOR16mm
  { 254,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo28, -1 ,nullptr },  // Inst #254 = XOR16mr
  { 255,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo29, -1 ,nullptr },  // Inst #255 = XOR16ri
  { 256,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo30, -1 ,nullptr },  // Inst #256 = XOR16rm
  { 257,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo36, -1 ,nullptr },  // Inst #257 = XOR16rm_POST
  { 258,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo31, -1 ,nullptr },  // Inst #258 = XOR16rr
  { 259,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo26, -1 ,nullptr },  // Inst #259 = XOR8mi
  { 260,	4,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0x12ULL, nullptr, ImplicitList1, OperandInfo27, -1 ,nullptr },  // Inst #260 = XOR8mm
  { 261,	3,	0,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::MayStore), 0xeULL, nullptr, ImplicitList1, OperandInfo32, -1 ,nullptr },  // Inst #261 = XOR8mr
  { 262,	3,	1,	0,	0,	0, 0xeULL, nullptr, ImplicitList1, OperandInfo33, -1 ,nullptr },  // Inst #262 = XOR8ri
  { 263,	4,	1,	0,	0,	0|(1ULL<<MCID::MayLoad), 0xeULL, nullptr, ImplicitList1, OperandInfo34, -1 ,nullptr },  // Inst #263 = XOR8rm
  { 264,	4,	2,	0,	0,	0|(1ULL<<MCID::MayLoad)|(1ULL<<MCID::UnmodeledSideEffects)|(1ULL<<MCID::ExtraDefRegAllocReq), 0xaULL, nullptr, ImplicitList1, OperandInfo37, -1 ,nullptr },  // Inst #264 = XOR8rm_POST
  { 265,	3,	1,	0,	0,	0|(1ULL<<MCID::Commutable), 0xaULL, nullptr, ImplicitList1, OperandInfo35, -1 ,nullptr },  // Inst #265 = XOR8rr
  { 266,	2,	1,	0,	0,	0, 0xaULL, nullptr, nullptr, OperandInfo49, -1 ,nullptr },  // Inst #266 = ZEXT16r
};

extern const char MSP430InstrNameData[] = {
  /* 0 */ 'S', 'H', 'L', '1', '6', 'r', '1', 0,
  /* 8 */ 'S', 'A', 'R', '1', '6', 'r', '1', 0,
  /* 16 */ 'S', 'H', 'L', '8', 'r', '1', 0,
  /* 23 */ 'S', 'A', 'R', '8', 'r', '1', 0,
  /* 30 */ 'S', 'r', 'a', '1', '6', 0,
  /* 36 */ 'S', 'h', 'l', '1', '6', 0,
  /* 42 */ 'S', 'r', 'l', '1', '6', 0,
  /* 48 */ 'S', 'e', 'l', 'e', 'c', 't', '1', '6', 0,
  /* 57 */ 'S', 'r', 'a', '8', 0,
  /* 62 */ 'S', 'h', 'l', '8', 0,
  /* 67 */ 'S', 'r', 'l', '8', 0,
  /* 72 */ 'M', 'O', 'V', 'Z', 'X', '1', '6', 'r', 'm', '8', 0,
  /* 83 */ 'M', 'O', 'V', 'Z', 'X', '1', '6', 'r', 'r', '8', 0,
  /* 94 */ 'S', 'e', 'l', 'e', 'c', 't', '8', 0,
  /* 102 */ 'G', '_', 'F', 'S', 'U', 'B', 0,
  /* 109 */ 'G', '_', 'S', 'U', 'B', 0,
  /* 115 */ 'J', 'C', 'C', 0,
  /* 119 */ 'G', '_', 'I', 'N', 'T', 'R', 'I', 'N', 'S', 'I', 'C', 0,
  /* 131 */ 'G', '_', 'F', 'P', 'T', 'R', 'U', 'N', 'C', 0,
  /* 141 */ 'G', '_', 'T', 'R', 'U', 'N', 'C', 0,
  /* 149 */ 'G', '_', 'L', 'O', 'A', 'D', 0,
  /* 156 */ 'G', '_', 'F', 'A', 'D', 'D', 0,
  /* 163 */ 'G', '_', 'A', 'D', 'D', 0,
  /* 169 */ 'G', '_', 'A', 'N', 'D', 0,
  /* 175 */ 'L', 'I', 'F', 'E', 'T', 'I', 'M', 'E', '_', 'E', 'N', 'D', 0,
  /* 188 */ 'G', '_', 'B', 'R', 'C', 'O', 'N', 'D', 0,
  /* 197 */ 'L', 'O', 'A', 'D', '_', 'S', 'T', 'A', 'C', 'K', '_', 'G', 'U', 'A', 'R', 'D', 0,
  /* 214 */ 'G', '_', 'U', 'S', 'U', 'B', 'E', 0,
  /* 222 */ 'R', 'E', 'G', '_', 'S', 'E', 'Q', 'U', 'E', 'N', 'C', 'E', 0,
  /* 235 */ 'G', '_', 'U', 'A', 'D', 'D', 'E', 0,
  /* 243 */ 'B', 'U', 'N', 'D', 'L', 'E', 0,
  /* 250 */ 'L', 'O', 'C', 'A', 'L', '_', 'E', 'S', 'C', 'A', 'P', 'E', 0,
  /* 263 */ 'G', '_', 'S', 'T', 'O', 'R', 'E', 0,
  /* 271 */ 'D', 'B', 'G', '_', 'V', 'A', 'L', 'U', 'E', 0,
  /* 281 */ 'G', '_', 'G', 'L', 'O', 'B', 'A', 'L', '_', 'V', 'A', 'L', 'U', 'E', 0,
  /* 296 */ 'I', 'M', 'P', 'L', 'I', 'C', 'I', 'T', '_', 'D', 'E', 'F', 0,
  /* 309 */ 'G', '_', 'F', 'N', 'E', 'G', 0,
  /* 316 */ 'E', 'X', 'T', 'R', 'A', 'C', 'T', '_', 'S', 'U', 'B', 'R', 'E', 'G', 0,
  /* 331 */ 'I', 'N', 'S', 'E', 'R', 'T', '_', 'S', 'U', 'B', 'R', 'E', 'G', 0,
  /* 345 */ 'S', 'U', 'B', 'R', 'E', 'G', '_', 'T', 'O', '_', 'R', 'E', 'G', 0,
  /* 359 */ 'G', '_', 'V', 'A', 'A', 'R', 'G', 0,
  /* 367 */ 'G', '_', 'S', 'M', 'U', 'L', 'H', 0,
  /* 375 */ 'G', '_', 'U', 'M', 'U', 'L', 'H', 0,
  /* 383 */ 'P', 'H', 'I', 0,
  /* 387 */ 'G', '_', 'F', 'P', 'T', 'O', 'S', 'I', 0,
  /* 396 */ 'R', 'E', 'T', 'I', 0,
  /* 401 */ 'G', '_', 'F', 'P', 'T', 'O', 'U', 'I', 0,
  /* 410 */ 'G', '_', 'P', 'T', 'R', '_', 'M', 'A', 'S', 'K', 0,
  /* 421 */ 'G', 'C', '_', 'L', 'A', 'B', 'E', 'L', 0,
  /* 430 */ 'E', 'H', '_', 'L', 'A', 'B', 'E', 'L', 0,
  /* 439 */ 'G', '_', 'S', 'H', 'L', 0,
  /* 445 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'T', 'A', 'I', 'L', '_', 'C', 'A', 'L', 'L', 0,
  /* 465 */ 'F', 'E', 'N', 'T', 'R', 'Y', '_', 'C', 'A', 'L', 'L', 0,
  /* 477 */ 'K', 'I', 'L', 'L', 0,
  /* 482 */ 'G', '_', 'F', 'M', 'U', 'L', 0,
  /* 489 */ 'G', '_', 'M', 'U', 'L', 0,
  /* 495 */ 'G', '_', 'F', 'R', 'E', 'M', 0,
  /* 502 */ 'G', '_', 'S', 'R', 'E', 'M', 0,
  /* 509 */ 'G', '_', 'U', 'R', 'E', 'M', 0,
  /* 516 */ 'I', 'N', 'L', 'I', 'N', 'E', 'A', 'S', 'M', 0,
  /* 526 */ 'C', 'F', 'I', '_', 'I', 'N', 'S', 'T', 'R', 'U', 'C', 'T', 'I', 'O', 'N', 0,
  /* 542 */ 'A', 'D', 'J', 'C', 'A', 'L', 'L', 'S', 'T', 'A', 'C', 'K', 'D', 'O', 'W', 'N', 0,
  /* 559 */ 'G', '_', 'S', 'S', 'U', 'B', 'O', 0,
  /* 567 */ 'G', '_', 'S', 'A', 'D', 'D', 'O', 0,
  /* 575 */ 'G', '_', 'S', 'M', 'U', 'L', 'O', 0,
  /* 583 */ 'G', '_', 'U', 'M', 'U', 'L', 'O', 0,
  /* 591 */ 'S', 'T', 'A', 'C', 'K', 'M', 'A', 'P', 0,
  /* 600 */ 'G', '_', 'G', 'E', 'P', 0,
  /* 606 */ 'G', '_', 'S', 'I', 'T', 'O', 'F', 'P', 0,
  /* 615 */ 'G', '_', 'U', 'I', 'T', 'O', 'F', 'P', 0,
  /* 624 */ 'G', '_', 'F', 'C', 'M', 'P', 0,
  /* 631 */ 'G', '_', 'I', 'C', 'M', 'P', 0,
  /* 638 */ 'J', 'M', 'P', 0,
  /* 642 */ 'N', 'O', 'P', 0,
  /* 646 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'O', 'P', 0,
  /* 659 */ 'F', 'A', 'U', 'L', 'T', 'I', 'N', 'G', '_', 'O', 'P', 0,
  /* 671 */ 'A', 'D', 'J', 'C', 'A', 'L', 'L', 'S', 'T', 'A', 'C', 'K', 'U', 'P', 0,
  /* 686 */ 'G', '_', 'B', 'R', 0,
  /* 691 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'F', 'U', 'N', 'C', 'T', 'I', 'O', 'N', '_', 'E', 'N', 'T', 'E', 'R', 0,
  /* 716 */ 'G', '_', 'A', 'S', 'H', 'R', 0,
  /* 723 */ 'G', '_', 'L', 'S', 'H', 'R', 0,
  /* 730 */ 'G', '_', 'X', 'O', 'R', 0,
  /* 736 */ 'G', '_', 'O', 'R', 0,
  /* 741 */ 'G', '_', 'I', 'N', 'T', 'T', 'O', 'P', 'T', 'R', 0,
  /* 752 */ 'G', '_', 'U', 'N', 'M', 'E', 'R', 'G', 'E', '_', 'V', 'A', 'L', 'U', 'E', 'S', 0,
  /* 769 */ 'G', '_', 'M', 'E', 'R', 'G', 'E', '_', 'V', 'A', 'L', 'U', 'E', 'S', 0,
  /* 784 */ 'C', 'O', 'P', 'Y', '_', 'T', 'O', '_', 'R', 'E', 'G', 'C', 'L', 'A', 'S', 'S', 0,
  /* 801 */ 'G', '_', 'I', 'N', 'T', 'R', 'I', 'N', 'S', 'I', 'C', '_', 'W', '_', 'S', 'I', 'D', 'E', '_', 'E', 'F', 'F', 'E', 'C', 'T', 'S', 0,
  /* 828 */ 'G', '_', 'E', 'X', 'T', 'R', 'A', 'C', 'T', 0,
  /* 838 */ 'G', '_', 'S', 'E', 'L', 'E', 'C', 'T', 0,
  /* 847 */ 'G', '_', 'B', 'R', 'I', 'N', 'D', 'I', 'R', 'E', 'C', 'T', 0,
  /* 860 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'R', 'E', 'T', 0,
  /* 874 */ 'P', 'A', 'T', 'C', 'H', 'A', 'B', 'L', 'E', '_', 'F', 'U', 'N', 'C', 'T', 'I', 'O', 'N', '_', 'E', 'X', 'I', 'T', 0,
  /* 898 */ 'G', '_', 'E', 'X', 'T', 'R', 'A', 'C', 'T', '_', 'V', 'E', 'C', 'T', 'O', 'R', '_', 'E', 'L', 'T', 0,
  /* 919 */ 'G', '_', 'I', 'N', 'S', 'E', 'R', 'T', '_', 'V', 'E', 'C', 'T', 'O', 'R', '_', 'E', 'L', 'T', 0,
  /* 939 */ 'G', '_', 'F', 'C', 'O', 'N', 'S', 'T', 'A', 'N', 'T', 0,
  /* 951 */ 'G', '_', 'C', 'O', 'N', 'S', 'T', 'A', 'N', 'T', 0,
  /* 962 */ 'S', 'T', 'A', 'T', 'E', 'P', 'O', 'I', 'N', 'T', 0,
  /* 973 */ 'P', 'A', 'T', 'C', 'H', 'P', 'O', 'I', 'N', 'T', 0,
  /* 984 */ 'G', '_', 'P', 'T', 'R', 'T', 'O', 'I', 'N', 'T', 0,
  /* 995 */ 'G', '_', 'V', 'A', 'S', 'T', 'A', 'R', 'T', 0,
  /* 1005 */ 'L', 'I', 'F', 'E', 'T', 'I', 'M', 'E', '_', 'S', 'T', 'A', 'R', 'T', 0,
  /* 1020 */ 'G', '_', 'I', 'N', 'S', 'E', 'R', 'T', 0,
  /* 1029 */ 'G', '_', 'B', 'I', 'T', 'C', 'A', 'S', 'T', 0,
  /* 1039 */ 'S', 'U', 'B', '1', '6', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1052 */ 'A', 'D', 'D', '1', '6', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1065 */ 'A', 'N', 'D', '1', '6', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1078 */ 'X', 'O', 'R', '1', '6', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1091 */ 'M', 'O', 'V', '1', '6', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1104 */ 'S', 'U', 'B', '8', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1116 */ 'A', 'D', 'D', '8', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1128 */ 'A', 'N', 'D', '8', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1140 */ 'X', 'O', 'R', '8', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1152 */ 'M', 'O', 'V', '8', 'r', 'm', '_', 'P', 'O', 'S', 'T', 0,
  /* 1164 */ 'G', '_', 'F', 'P', 'E', 'X', 'T', 0,
  /* 1172 */ 'G', '_', 'S', 'E', 'X', 'T', 0,
  /* 1179 */ 'G', '_', 'A', 'N', 'Y', 'E', 'X', 'T', 0,
  /* 1188 */ 'G', '_', 'Z', 'E', 'X', 'T', 0,
  /* 1195 */ 'G', '_', 'F', 'D', 'I', 'V', 0,
  /* 1202 */ 'G', '_', 'S', 'D', 'I', 'V', 0,
  /* 1209 */ 'G', '_', 'U', 'D', 'I', 'V', 0,
  /* 1216 */ 'G', '_', 'F', 'P', 'O', 'W', 0,
  /* 1223 */ 'G', '_', 'F', 'R', 'A', 'M', 'E', '_', 'I', 'N', 'D', 'E', 'X', 0,
  /* 1237 */ 'C', 'O', 'P', 'Y', 0,
  /* 1242 */ 'S', 'A', 'R', '1', '6', 'r', '1', 'c', 0,
  /* 1251 */ 'S', 'A', 'R', '8', 'r', '1', 'c', 0,
  /* 1259 */ 'B', 'i', 0,
  /* 1262 */ 'C', 'A', 'L', 'L', 'i', 0,
  /* 1268 */ 'S', 'U', 'B', '1', '6', 'm', 'i', 0,
  /* 1276 */ 'S', 'B', 'C', '1', '6', 'm', 'i', 0,
  /* 1284 */ 'A', 'D', 'C', '1', '6', 'm', 'i', 0,
  /* 1292 */ 'A', 'D', 'D', '1', '6', 'm', 'i', 0,
  /* 1300 */ 'A', 'N', 'D', '1', '6', 'm', 'i', 0,
  /* 1308 */ 'C', 'M', 'P', '1', '6', 'm', 'i', 0,
  /* 1316 */ 'X', 'O', 'R', '1', '6', 'm', 'i', 0,
  /* 1324 */ 'B', 'I', 'T', '1', '6', 'm', 'i', 0,
  /* 1332 */ 'M', 'O', 'V', '1', '6', 'm', 'i', 0,
  /* 1340 */ 'S', 'U', 'B', '8', 'm', 'i', 0,
  /* 1347 */ 'S', 'B', 'C', '8', 'm', 'i', 0,
  /* 1354 */ 'A', 'D', 'C', '8', 'm', 'i', 0,
  /* 1361 */ 'A', 'D', 'D', '8', 'm', 'i', 0,
  /* 1368 */ 'A', 'N', 'D', '8', 'm', 'i', 0,
  /* 1375 */ 'C', 'M', 'P', '8', 'm', 'i', 0,
  /* 1382 */ 'X', 'O', 'R', '8', 'm', 'i', 0,
  /* 1389 */ 'B', 'I', 'T', '8', 'm', 'i', 0,
  /* 1396 */ 'M', 'O', 'V', '8', 'm', 'i', 0,
  /* 1403 */ 'S', 'U', 'B', '1', '6', 'r', 'i', 0,
  /* 1411 */ 'S', 'B', 'C', '1', '6', 'r', 'i', 0,
  /* 1419 */ 'A', 'D', 'C', '1', '6', 'r', 'i', 0,
  /* 1427 */ 'A', 'D', 'D', '1', '6', 'r', 'i', 0,
  /* 1435 */ 'A', 'N', 'D', '1', '6', 'r', 'i', 0,
  /* 1443 */ 'C', 'M', 'P', '1', '6', 'r', 'i', 0,
  /* 1451 */ 'X', 'O', 'R', '1', '6', 'r', 'i', 0,
  /* 1459 */ 'B', 'I', 'T', '1', '6', 'r', 'i', 0,
  /* 1467 */ 'M', 'O', 'V', '1', '6', 'r', 'i', 0,
  /* 1475 */ 'S', 'U', 'B', '8', 'r', 'i', 0,
  /* 1482 */ 'S', 'B', 'C', '8', 'r', 'i', 0,
  /* 1489 */ 'A', 'D', 'C', '8', 'r', 'i', 0,
  /* 1496 */ 'A', 'D', 'D', '8', 'r', 'i', 0,
  /* 1503 */ 'A', 'N', 'D', '8', 'r', 'i', 0,
  /* 1510 */ 'C', 'M', 'P', '8', 'r', 'i', 0,
  /* 1517 */ 'X', 'O', 'R', '8', 'r', 'i', 0,
  /* 1524 */ 'B', 'I', 'T', '8', 'r', 'i', 0,
  /* 1531 */ 'M', 'O', 'V', '8', 'r', 'i', 0,
  /* 1538 */ 'B', 'm', 0,
  /* 1541 */ 'C', 'A', 'L', 'L', 'm', 0,
  /* 1547 */ 'S', 'U', 'B', '1', '6', 'm', 'm', 0,
  /* 1555 */ 'S', 'B', 'C', '1', '6', 'm', 'm', 0,
  /* 1563 */ 'A', 'D', 'C', '1', '6', 'm', 'm', 0,
  /* 1571 */ 'B', 'I', 'C', '1', '6', 'm', 'm', 0,
  /* 1579 */ 'A', 'D', 'D', '1', '6', 'm', 'm', 0,
  /* 1587 */ 'A', 'N', 'D', '1', '6', 'm', 'm', 0,
  /* 1595 */ 'X', 'O', 'R', '1', '6', 'm', 'm', 0,
  /* 1603 */ 'B', 'I', 'T', '1', '6', 'm', 'm', 0,
  /* 1611 */ 'M', 'O', 'V', '1', '6', 'm', 'm', 0,
  /* 1619 */ 'S', 'U', 'B', '8', 'm', 'm', 0,
  /* 1626 */ 'S', 'B', 'C', '8', 'm', 'm', 0,
  /* 1633 */ 'A', 'D', 'C', '8', 'm', 'm', 0,
  /* 1640 */ 'B', 'I', 'C', '8', 'm', 'm', 0,
  /* 1647 */ 'A', 'D', 'D', '8', 'm', 'm', 0,
  /* 1654 */ 'A', 'N', 'D', '8', 'm', 'm', 0,
  /* 1661 */ 'X', 'O', 'R', '8', 'm', 'm', 0,
  /* 1668 */ 'B', 'I', 'T', '8', 'm', 'm', 0,
  /* 1675 */ 'M', 'O', 'V', '8', 'm', 'm', 0,
  /* 1682 */ 'S', 'U', 'B', '1', '6', 'r', 'm', 0,
  /* 1690 */ 'S', 'B', 'C', '1', '6', 'r', 'm', 0,
  /* 1698 */ 'A', 'D', 'C', '1', '6', 'r', 'm', 0,
  /* 1706 */ 'B', 'I', 'C', '1', '6', 'r', 'm', 0,
  /* 1714 */ 'A', 'D', 'D', '1', '6', 'r', 'm', 0,
  /* 1722 */ 'A', 'N', 'D', '1', '6', 'r', 'm', 0,
  /* 1730 */ 'C', 'M', 'P', '1', '6', 'r', 'm', 0,
  /* 1738 */ 'X', 'O', 'R', '1', '6', 'r', 'm', 0,
  /* 1746 */ 'B', 'I', 'T', '1', '6', 'r', 'm', 0,
  /* 1754 */ 'M', 'O', 'V', '1', '6', 'r', 'm', 0,
  /* 1762 */ 'S', 'U', 'B', '8', 'r', 'm', 0,
  /* 1769 */ 'S', 'B', 'C', '8', 'r', 'm', 0,
  /* 1776 */ 'A', 'D', 'C', '8', 'r', 'm', 0,
  /* 1783 */ 'B', 'I', 'C', '8', 'r', 'm', 0,
  /* 1790 */ 'A', 'D', 'D', '8', 'r', 'm', 0,
  /* 1797 */ 'A', 'N', 'D', '8', 'r', 'm', 0,
  /* 1804 */ 'C', 'M', 'P', '8', 'r', 'm', 0,
  /* 1811 */ 'X', 'O', 'R', '8', 'r', 'm', 0,
  /* 1818 */ 'B', 'I', 'T', '8', 'r', 'm', 0,
  /* 1825 */ 'M', 'O', 'V', '8', 'r', 'm', 0,
  /* 1832 */ 'S', 'W', 'P', 'B', '1', '6', 'r', 0,
  /* 1840 */ 'P', 'U', 'S', 'H', '1', '6', 'r', 0,
  /* 1848 */ 'P', 'O', 'P', '1', '6', 'r', 0,
  /* 1855 */ 'S', 'E', 'X', 'T', '1', '6', 'r', 0,
  /* 1863 */ 'Z', 'E', 'X', 'T', '1', '6', 'r', 0,
  /* 1871 */ 'B', 'r', 0,
  /* 1874 */ 'C', 'A', 'L', 'L', 'r', 0,
  /* 1880 */ 'S', 'U', 'B', '1', '6', 'm', 'r', 0,
  /* 1888 */ 'S', 'B', 'C', '1', '6', 'm', 'r', 0,
  /* 1896 */ 'A', 'D', 'C', '1', '6', 'm', 'r', 0,
  /* 1904 */ 'B', 'I', 'C', '1', '6', 'm', 'r', 0,
  /* 1912 */ 'A', 'D', 'D', '1', '6', 'm', 'r', 0,
  /* 1920 */ 'A', 'N', 'D', '1', '6', 'm', 'r', 0,
  /* 1928 */ 'C', 'M', 'P', '1', '6', 'm', 'r', 0,
  /* 1936 */ 'X', 'O', 'R', '1', '6', 'm', 'r', 0,
  /* 1944 */ 'B', 'I', 'T', '1', '6', 'm', 'r', 0,
  /* 1952 */ 'M', 'O', 'V', '1', '6', 'm', 'r', 0,
  /* 1960 */ 'S', 'U', 'B', '8', 'm', 'r', 0,
  /* 1967 */ 'S', 'B', 'C', '8', 'm', 'r', 0,
  /* 1974 */ 'A', 'D', 'C', '8', 'm', 'r', 0,
  /* 1981 */ 'B', 'I', 'C', '8', 'm', 'r', 0,
  /* 1988 */ 'A', 'D', 'D', '8', 'm', 'r', 0,
  /* 1995 */ 'A', 'N', 'D', '8', 'm', 'r', 0,
  /* 2002 */ 'C', 'M', 'P', '8', 'm', 'r', 0,
  /* 2009 */ 'X', 'O', 'R', '8', 'm', 'r', 0,
  /* 2016 */ 'B', 'I', 'T', '8', 'm', 'r', 0,
  /* 2023 */ 'M', 'O', 'V', '8', 'm', 'r', 0,
  /* 2030 */ 'S', 'U', 'B', '1', '6', 'r', 'r', 0,
  /* 2038 */ 'S', 'B', 'C', '1', '6', 'r', 'r', 0,
  /* 2046 */ 'A', 'D', 'C', '1', '6', 'r', 'r', 0,
  /* 2054 */ 'B', 'I', 'C', '1', '6', 'r', 'r', 0,
  /* 2062 */ 'A', 'D', 'D', '1', '6', 'r', 'r', 0,
  /* 2070 */ 'A', 'N', 'D', '1', '6', 'r', 'r', 0,
  /* 2078 */ 'C', 'M', 'P', '1', '6', 'r', 'r', 0,
  /* 2086 */ 'X', 'O', 'R', '1', '6', 'r', 'r', 0,
  /* 2094 */ 'B', 'I', 'T', '1', '6', 'r', 'r', 0,
  /* 2102 */ 'M', 'O', 'V', '1', '6', 'r', 'r', 0,
  /* 2110 */ 'S', 'U', 'B', '8', 'r', 'r', 0,
  /* 2117 */ 'S', 'B', 'C', '8', 'r', 'r', 0,
  /* 2124 */ 'A', 'D', 'C', '8', 'r', 'r', 0,
  /* 2131 */ 'B', 'I', 'C', '8', 'r', 'r', 0,
  /* 2138 */ 'A', 'D', 'D', '8', 'r', 'r', 0,
  /* 2145 */ 'A', 'N', 'D', '8', 'r', 'r', 0,
  /* 2152 */ 'C', 'M', 'P', '8', 'r', 'r', 0,
  /* 2159 */ 'X', 'O', 'R', '8', 'r', 'r', 0,
  /* 2166 */ 'B', 'I', 'T', '8', 'r', 'r', 0,
  /* 2173 */ 'M', 'O', 'V', '8', 'r', 'r', 0,
};

extern const unsigned MSP430InstrNameIndices[] = {
    383U, 516U, 526U, 430U, 421U, 477U, 316U, 331U, 
    296U, 345U, 784U, 271U, 222U, 1237U, 243U, 1005U, 
    175U, 591U, 465U, 973U, 197U, 962U, 250U, 659U, 
    646U, 691U, 860U, 874U, 445U, 163U, 109U, 489U, 
    1202U, 1209U, 502U, 509U, 169U, 736U, 730U, 1223U, 
    281U, 828U, 752U, 1020U, 224U, 769U, 984U, 741U, 
    1029U, 149U, 263U, 188U, 847U, 119U, 801U, 1179U, 
    141U, 951U, 939U, 995U, 359U, 1172U, 1188U, 439U, 
    723U, 716U, 631U, 624U, 838U, 235U, 214U, 567U, 
    559U, 583U, 575U, 375U, 367U, 156U, 102U, 482U, 
    1195U, 495U, 1216U, 309U, 1164U, 131U, 387U, 401U, 
    606U, 615U, 600U, 410U, 686U, 919U, 898U, 1284U, 
    1563U, 1896U, 1419U, 1698U, 2046U, 1354U, 1633U, 1974U, 
    1489U, 1776U, 2124U, 1292U, 1579U, 1912U, 1427U, 1714U, 
    1052U, 2062U, 1361U, 1647U, 1988U, 1496U, 1790U, 1116U, 
    2138U, 542U, 671U, 1300U, 1587U, 1920U, 1435U, 1722U, 
    1065U, 2070U, 1368U, 1654U, 1995U, 1503U, 1797U, 1128U, 
    2145U, 1571U, 1904U, 1706U, 2054U, 1640U, 1981U, 1783U, 
    2131U, 1324U, 1603U, 1944U, 1459U, 1746U, 2094U, 1389U, 
    1668U, 2016U, 1524U, 1818U, 2166U, 1259U, 1538U, 1871U, 
    1262U, 1541U, 1874U, 1308U, 1928U, 1443U, 1730U, 2078U, 
    1375U, 2002U, 1510U, 1804U, 2152U, 115U, 638U, 1332U, 
    1611U, 1952U, 1467U, 1754U, 1091U, 2102U, 1396U, 1675U, 
    2023U, 1531U, 1825U, 1152U, 2173U, 72U, 83U, 642U, 
    1317U, 1596U, 1937U, 1452U, 1739U, 1079U, 2087U, 1383U, 
    1662U, 2010U, 1518U, 1812U, 1141U, 2160U, 1848U, 1840U, 
    870U, 396U, 8U, 1242U, 23U, 1251U, 1276U, 1555U, 
    1888U, 1411U, 1690U, 2038U, 1347U, 1626U, 1967U, 1482U, 
    1769U, 2117U, 1855U, 0U, 16U, 1268U, 1547U, 1880U, 
    1403U, 1682U, 1039U, 2030U, 1340U, 1619U, 1960U, 1475U, 
    1762U, 1104U, 2110U, 1832U, 48U, 94U, 36U, 62U, 
    30U, 57U, 42U, 67U, 1316U, 1595U, 1936U, 1451U, 
    1738U, 1078U, 2086U, 1382U, 1661U, 2009U, 1517U, 1811U, 
    1140U, 2159U, 1863U, 
};

static inline void InitMSP430MCInstrInfo(MCInstrInfo *II) {
  II->InitMCInstrInfo(MSP430Insts, MSP430InstrNameIndices, MSP430InstrNameData, 267);
}

} // end llvm namespace
#endif // GET_INSTRINFO_MC_DESC

#ifdef GET_INSTRINFO_HEADER
#undef GET_INSTRINFO_HEADER
namespace llvm {
struct MSP430GenInstrInfo : public TargetInstrInfo {
  explicit MSP430GenInstrInfo(int CFSetupOpcode = -1, int CFDestroyOpcode = -1, int CatchRetOpcode = -1, int ReturnOpcode = -1);
  ~MSP430GenInstrInfo() override = default;
};
} // end llvm namespace
#endif // GET_INSTRINFO_HEADER

#ifdef GET_INSTRINFO_CTOR_DTOR
#undef GET_INSTRINFO_CTOR_DTOR
namespace llvm {
extern const MCInstrDesc MSP430Insts[];
extern const unsigned MSP430InstrNameIndices[];
extern const char MSP430InstrNameData[];
MSP430GenInstrInfo::MSP430GenInstrInfo(int CFSetupOpcode, int CFDestroyOpcode, int CatchRetOpcode, int ReturnOpcode)
  : TargetInstrInfo(CFSetupOpcode, CFDestroyOpcode, CatchRetOpcode, ReturnOpcode) {
  InitMCInstrInfo(MSP430Insts, MSP430InstrNameIndices, MSP430InstrNameData, 267);
}
} // end llvm namespace
#endif // GET_INSTRINFO_CTOR_DTOR

#ifdef GET_INSTRINFO_OPERAND_ENUM
#undef GET_INSTRINFO_OPERAND_ENUM
namespace llvm {
namespace MSP430 {
namespace OpName {
enum {
OPERAND_LAST
};
} // end namespace OpName
} // end namespace MSP430
} // end namespace llvm
#endif //GET_INSTRINFO_OPERAND_ENUM

#ifdef GET_INSTRINFO_NAMED_OPS
#undef GET_INSTRINFO_NAMED_OPS
namespace llvm {
namespace MSP430 {
LLVM_READONLY
int16_t getNamedOperandIdx(uint16_t Opcode, uint16_t NamedIdx) {
  return -1;
}
} // end namespace MSP430
} // end namespace llvm
#endif //GET_INSTRINFO_NAMED_OPS

#ifdef GET_INSTRINFO_OPERAND_TYPES_ENUM
#undef GET_INSTRINFO_OPERAND_TYPES_ENUM
namespace llvm {
namespace MSP430 {
namespace OpTypes {
enum OperandType {
  cc = 0,
  f32imm = 1,
  f64imm = 2,
  i16imm = 3,
  i1imm = 4,
  i32imm = 5,
  i64imm = 6,
  i8imm = 7,
  jmptarget = 8,
  memdst = 9,
  memsrc = 10,
  type0 = 11,
  type1 = 12,
  type2 = 13,
  type3 = 14,
  type4 = 15,
  type5 = 16,
  OPERAND_TYPE_LIST_END
};
} // end namespace OpTypes
} // end namespace MSP430
} // end namespace llvm
#endif // GET_INSTRINFO_OPERAND_TYPES_ENUM

