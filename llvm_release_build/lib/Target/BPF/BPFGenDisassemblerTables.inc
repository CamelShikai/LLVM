/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|*  * BPF Disassembler                                                        *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#include "llvm/MC/MCInst.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/DataTypes.h"
#include "llvm/Support/LEB128.h"
#include "llvm/Support/raw_ostream.h"
#include <assert.h>

namespace llvm {

// Helper function for extracting fields from encoded instructions.
template<typename InsnType>
static InsnType fieldFromInstruction(InsnType insn, unsigned startBit,
                                     unsigned numBits) {
    assert(startBit + numBits <= (sizeof(InsnType)*8) &&
           "Instruction field out of bounds!");
    InsnType fieldMask;
    if (numBits == sizeof(InsnType)*8)
      fieldMask = (InsnType)(-1LL);
    else
      fieldMask = (((InsnType)1 << numBits) - 1) << startBit;
    return (insn & fieldMask) >> startBit;
}

static const uint8_t DecoderTableBPF64[] = {
/* 0 */       MCD::OPC_ExtractField, 56, 8,  // Inst{63-56} ...
/* 3 */       MCD::OPC_FilterValue, 5, 3, 0, // Skip to: 10
/* 7 */       MCD::OPC_Decode, 110, 0, // Opcode: JMP
/* 10 */      MCD::OPC_FilterValue, 7, 3, 0, // Skip to: 17
/* 14 */      MCD::OPC_Decode, 95, 1, // Opcode: ADD_ri
/* 17 */      MCD::OPC_FilterValue, 15, 3, 0, // Skip to: 24
/* 21 */      MCD::OPC_Decode, 96, 2, // Opcode: ADD_rr
/* 24 */      MCD::OPC_FilterValue, 21, 3, 0, // Skip to: 31
/* 28 */      MCD::OPC_Decode, 108, 3, // Opcode: JEQ_ri
/* 31 */      MCD::OPC_FilterValue, 23, 4, 0, // Skip to: 39
/* 35 */      MCD::OPC_Decode, 151, 1, 1, // Opcode: SUB_ri
/* 39 */      MCD::OPC_FilterValue, 24, 36, 0, // Skip to: 79
/* 43 */      MCD::OPC_ExtractField, 32, 16,  // Inst{47-32} ...
/* 46 */      MCD::OPC_FilterValue, 0, 189, 1, // Skip to: 495
/* 50 */      MCD::OPC_CheckField, 48, 8, 32, 9, 0, // Skip to: 65
/* 56 */      MCD::OPC_CheckField, 0, 32, 0, 3, 0, // Skip to: 65
/* 62 */      MCD::OPC_Decode, 106, 4, // Opcode: FI_ri
/* 65 */      MCD::OPC_CheckField, 52, 4, 0, 4, 0, // Skip to: 75
/* 71 */      MCD::OPC_Decode, 131, 1, 5, // Opcode: LD_imm64
/* 75 */      MCD::OPC_Decode, 132, 1, 6, // Opcode: LD_pseudo
/* 79 */      MCD::OPC_FilterValue, 29, 3, 0, // Skip to: 86
/* 83 */      MCD::OPC_Decode, 109, 7, // Opcode: JEQ_rr
/* 86 */      MCD::OPC_FilterValue, 31, 4, 0, // Skip to: 94
/* 90 */      MCD::OPC_Decode, 152, 1, 2, // Opcode: SUB_rr
/* 94 */      MCD::OPC_FilterValue, 32, 3, 0, // Skip to: 101
/* 98 */      MCD::OPC_Decode, 127, 8, // Opcode: LD_ABS_W
/* 101 */     MCD::OPC_FilterValue, 37, 3, 0, // Skip to: 108
/* 105 */     MCD::OPC_Decode, 119, 3, // Opcode: JUGT_ri
/* 108 */     MCD::OPC_FilterValue, 39, 4, 0, // Skip to: 116
/* 112 */     MCD::OPC_Decode, 135, 1, 1, // Opcode: MUL_ri
/* 116 */     MCD::OPC_FilterValue, 40, 3, 0, // Skip to: 123
/* 120 */     MCD::OPC_Decode, 126, 8, // Opcode: LD_ABS_H
/* 123 */     MCD::OPC_FilterValue, 45, 3, 0, // Skip to: 130
/* 127 */     MCD::OPC_Decode, 120, 7, // Opcode: JUGT_rr
/* 130 */     MCD::OPC_FilterValue, 47, 4, 0, // Skip to: 138
/* 134 */     MCD::OPC_Decode, 136, 1, 2, // Opcode: MUL_rr
/* 138 */     MCD::OPC_FilterValue, 48, 3, 0, // Skip to: 145
/* 142 */     MCD::OPC_Decode, 125, 8, // Opcode: LD_ABS_B
/* 145 */     MCD::OPC_FilterValue, 53, 3, 0, // Skip to: 152
/* 149 */     MCD::OPC_Decode, 117, 3, // Opcode: JUGE_ri
/* 152 */     MCD::OPC_FilterValue, 55, 3, 0, // Skip to: 159
/* 156 */     MCD::OPC_Decode, 104, 1, // Opcode: DIV_ri
/* 159 */     MCD::OPC_FilterValue, 61, 3, 0, // Skip to: 166
/* 163 */     MCD::OPC_Decode, 118, 7, // Opcode: JUGE_rr
/* 166 */     MCD::OPC_FilterValue, 63, 3, 0, // Skip to: 173
/* 170 */     MCD::OPC_Decode, 105, 2, // Opcode: DIV_rr
/* 173 */     MCD::OPC_FilterValue, 64, 4, 0, // Skip to: 181
/* 177 */     MCD::OPC_Decode, 130, 1, 9, // Opcode: LD_IND_W
/* 181 */     MCD::OPC_FilterValue, 71, 4, 0, // Skip to: 189
/* 185 */     MCD::OPC_Decode, 138, 1, 1, // Opcode: OR_ri
/* 189 */     MCD::OPC_FilterValue, 72, 4, 0, // Skip to: 197
/* 193 */     MCD::OPC_Decode, 129, 1, 9, // Opcode: LD_IND_H
/* 197 */     MCD::OPC_FilterValue, 79, 4, 0, // Skip to: 205
/* 201 */     MCD::OPC_Decode, 139, 1, 2, // Opcode: OR_rr
/* 205 */     MCD::OPC_FilterValue, 80, 4, 0, // Skip to: 213
/* 209 */     MCD::OPC_Decode, 128, 1, 9, // Opcode: LD_IND_B
/* 213 */     MCD::OPC_FilterValue, 85, 3, 0, // Skip to: 220
/* 217 */     MCD::OPC_Decode, 111, 3, // Opcode: JNE_ri
/* 220 */     MCD::OPC_FilterValue, 87, 3, 0, // Skip to: 227
/* 224 */     MCD::OPC_Decode, 99, 1, // Opcode: AND_ri
/* 227 */     MCD::OPC_FilterValue, 93, 3, 0, // Skip to: 234
/* 231 */     MCD::OPC_Decode, 112, 7, // Opcode: JNE_rr
/* 234 */     MCD::OPC_FilterValue, 95, 3, 0, // Skip to: 241
/* 238 */     MCD::OPC_Decode, 100, 2, // Opcode: AND_rr
/* 241 */     MCD::OPC_FilterValue, 97, 3, 0, // Skip to: 248
/* 245 */     MCD::OPC_Decode, 124, 10, // Opcode: LDW
/* 248 */     MCD::OPC_FilterValue, 99, 4, 0, // Skip to: 256
/* 252 */     MCD::OPC_Decode, 150, 1, 11, // Opcode: STW
/* 256 */     MCD::OPC_FilterValue, 101, 3, 0, // Skip to: 263
/* 260 */     MCD::OPC_Decode, 115, 3, // Opcode: JSGT_ri
/* 263 */     MCD::OPC_FilterValue, 103, 4, 0, // Skip to: 271
/* 267 */     MCD::OPC_Decode, 141, 1, 1, // Opcode: SLL_ri
/* 271 */     MCD::OPC_FilterValue, 105, 3, 0, // Skip to: 278
/* 275 */     MCD::OPC_Decode, 123, 10, // Opcode: LDH
/* 278 */     MCD::OPC_FilterValue, 107, 4, 0, // Skip to: 286
/* 282 */     MCD::OPC_Decode, 149, 1, 11, // Opcode: STH
/* 286 */     MCD::OPC_FilterValue, 109, 3, 0, // Skip to: 293
/* 290 */     MCD::OPC_Decode, 116, 7, // Opcode: JSGT_rr
/* 293 */     MCD::OPC_FilterValue, 111, 4, 0, // Skip to: 301
/* 297 */     MCD::OPC_Decode, 142, 1, 2, // Opcode: SLL_rr
/* 301 */     MCD::OPC_FilterValue, 113, 3, 0, // Skip to: 308
/* 305 */     MCD::OPC_Decode, 121, 10, // Opcode: LDB
/* 308 */     MCD::OPC_FilterValue, 115, 4, 0, // Skip to: 316
/* 312 */     MCD::OPC_Decode, 147, 1, 11, // Opcode: STB
/* 316 */     MCD::OPC_FilterValue, 117, 3, 0, // Skip to: 323
/* 320 */     MCD::OPC_Decode, 113, 3, // Opcode: JSGE_ri
/* 323 */     MCD::OPC_FilterValue, 119, 4, 0, // Skip to: 331
/* 327 */     MCD::OPC_Decode, 145, 1, 1, // Opcode: SRL_ri
/* 331 */     MCD::OPC_FilterValue, 121, 3, 0, // Skip to: 338
/* 335 */     MCD::OPC_Decode, 122, 10, // Opcode: LDD
/* 338 */     MCD::OPC_FilterValue, 123, 4, 0, // Skip to: 346
/* 342 */     MCD::OPC_Decode, 148, 1, 11, // Opcode: STD
/* 346 */     MCD::OPC_FilterValue, 125, 3, 0, // Skip to: 353
/* 350 */     MCD::OPC_Decode, 114, 7, // Opcode: JSGE_rr
/* 353 */     MCD::OPC_FilterValue, 127, 4, 0, // Skip to: 361
/* 357 */     MCD::OPC_Decode, 146, 1, 2, // Opcode: SRL_rr
/* 361 */     MCD::OPC_FilterValue, 133, 1, 3, 0, // Skip to: 369
/* 366 */     MCD::OPC_Decode, 107, 8, // Opcode: JAL
/* 369 */     MCD::OPC_FilterValue, 149, 1, 10, 0, // Skip to: 384
/* 374 */     MCD::OPC_CheckField, 0, 32, 0, 115, 0, // Skip to: 495
/* 380 */     MCD::OPC_Decode, 140, 1, 4, // Opcode: RET
/* 384 */     MCD::OPC_FilterValue, 167, 1, 4, 0, // Skip to: 393
/* 389 */     MCD::OPC_Decode, 156, 1, 1, // Opcode: XOR_ri
/* 393 */     MCD::OPC_FilterValue, 175, 1, 4, 0, // Skip to: 402
/* 398 */     MCD::OPC_Decode, 157, 1, 2, // Opcode: XOR_rr
/* 402 */     MCD::OPC_FilterValue, 183, 1, 4, 0, // Skip to: 411
/* 407 */     MCD::OPC_Decode, 133, 1, 5, // Opcode: MOV_ri
/* 411 */     MCD::OPC_FilterValue, 191, 1, 14, 0, // Skip to: 430
/* 416 */     MCD::OPC_CheckField, 48, 8, 0, 4, 0, // Skip to: 426
/* 422 */     MCD::OPC_Decode, 137, 1, 4, // Opcode: NOP
/* 426 */     MCD::OPC_Decode, 134, 1, 12, // Opcode: MOV_rr
/* 430 */     MCD::OPC_FilterValue, 195, 1, 4, 0, // Skip to: 439
/* 435 */     MCD::OPC_Decode, 154, 1, 13, // Opcode: XADD32
/* 439 */     MCD::OPC_FilterValue, 199, 1, 4, 0, // Skip to: 448
/* 444 */     MCD::OPC_Decode, 143, 1, 1, // Opcode: SRA_ri
/* 448 */     MCD::OPC_FilterValue, 207, 1, 4, 0, // Skip to: 457
/* 453 */     MCD::OPC_Decode, 144, 1, 2, // Opcode: SRA_rr
/* 457 */     MCD::OPC_FilterValue, 219, 1, 4, 0, // Skip to: 466
/* 462 */     MCD::OPC_Decode, 155, 1, 13, // Opcode: XADD64
/* 466 */     MCD::OPC_FilterValue, 220, 1, 24, 0, // Skip to: 495
/* 471 */     MCD::OPC_ExtractField, 0, 32,  // Inst{31-0} ...
/* 474 */     MCD::OPC_FilterValue, 16, 3, 0, // Skip to: 481
/* 478 */     MCD::OPC_Decode, 101, 14, // Opcode: BSWAP16
/* 481 */     MCD::OPC_FilterValue, 32, 3, 0, // Skip to: 488
/* 485 */     MCD::OPC_Decode, 102, 14, // Opcode: BSWAP32
/* 488 */     MCD::OPC_FilterValue, 64, 3, 0, // Skip to: 495
/* 492 */     MCD::OPC_Decode, 103, 14, // Opcode: BSWAP64
/* 495 */     MCD::OPC_Fail,
  0
};

static bool checkDecoderPredicate(unsigned Idx, const FeatureBitset& Bits) {
  llvm_unreachable("Invalid index!");
}

template<typename InsnType>
static DecodeStatus decodeToMCInst(DecodeStatus S, unsigned Idx, InsnType insn, MCInst &MI,
                                   uint64_t Address, const void *Decoder, bool &DecodeComplete) {
  DecodeComplete = true;
  InsnType tmp;
  switch (Idx) {
  default: llvm_unreachable("Invalid index!");
  case 0:
    tmp = fieldFromInstruction(insn, 32, 16);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 1:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 32);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 2:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 52, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 3:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 32);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 32, 16);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 4:
    return S;
  case 5:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 32);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 6:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 52, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 0, 32);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 7:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 52, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 32, 16);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 8:
    tmp = fieldFromInstruction(insn, 0, 32);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 9:
    tmp = fieldFromInstruction(insn, 52, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 10:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 32, 16) << 0;
    tmp |= fieldFromInstruction(insn, 52, 4) << 16;
    if (decodeMemoryOpValue(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 11:
    tmp = fieldFromInstruction(insn, 52, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 32, 20);
    if (decodeMemoryOpValue(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 12:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 52, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 13:
    tmp = fieldFromInstruction(insn, 52, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 32, 20);
    if (decodeMemoryOpValue(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 52, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 14:
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 48, 4);
    if (DecodeGPRRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  }
}

template<typename InsnType>
static DecodeStatus decodeInstruction(const uint8_t DecodeTable[], MCInst &MI,
                                      InsnType insn, uint64_t Address,
                                      const void *DisAsm,
                                      const MCSubtargetInfo &STI) {
  const FeatureBitset& Bits = STI.getFeatureBits();

  const uint8_t *Ptr = DecodeTable;
  uint32_t CurFieldValue = 0;
  DecodeStatus S = MCDisassembler::Success;
  while (true) {
    ptrdiff_t Loc = Ptr - DecodeTable;
    switch (*Ptr) {
    default:
      errs() << Loc << ": Unexpected decode table opcode!\n";
      return MCDisassembler::Fail;
    case MCD::OPC_ExtractField: {
      unsigned Start = *++Ptr;
      unsigned Len = *++Ptr;
      ++Ptr;
      CurFieldValue = fieldFromInstruction(insn, Start, Len);
      DEBUG(dbgs() << Loc << ": OPC_ExtractField(" << Start << ", "
                   << Len << "): " << CurFieldValue << "\n");
      break;
    }
    case MCD::OPC_FilterValue: {
      // Decode the field value.
      unsigned Len;
      InsnType Val = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 16-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;

      // Perform the filter operation.
      if (Val != CurFieldValue)
        Ptr += NumToSkip;
      DEBUG(dbgs() << Loc << ": OPC_FilterValue(" << Val << ", " << NumToSkip
                   << "): " << ((Val != CurFieldValue) ? "FAIL:" : "PASS:")
                   << " continuing at " << (Ptr - DecodeTable) << "\n");

      break;
    }
    case MCD::OPC_CheckField: {
      unsigned Start = *++Ptr;
      unsigned Len = *++Ptr;
      InsnType FieldValue = fieldFromInstruction(insn, Start, Len);
      // Decode the field value.
      uint32_t ExpectedValue = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 16-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;

      // If the actual and expected values don't match, skip.
      if (ExpectedValue != FieldValue)
        Ptr += NumToSkip;
      DEBUG(dbgs() << Loc << ": OPC_CheckField(" << Start << ", "
                   << Len << ", " << ExpectedValue << ", " << NumToSkip
                   << "): FieldValue = " << FieldValue << ", ExpectedValue = "
                   << ExpectedValue << ": "
                   << ((ExpectedValue == FieldValue) ? "PASS\n" : "FAIL\n"));
      break;
    }
    case MCD::OPC_CheckPredicate: {
      unsigned Len;
      // Decode the Predicate Index value.
      unsigned PIdx = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 16-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      // Check the predicate.
      bool Pred;
      if (!(Pred = checkDecoderPredicate(PIdx, Bits)))
        Ptr += NumToSkip;
      (void)Pred;
      DEBUG(dbgs() << Loc << ": OPC_CheckPredicate(" << PIdx << "): "
            << (Pred ? "PASS\n" : "FAIL\n"));

      break;
    }
    case MCD::OPC_Decode: {
      unsigned Len;
      // Decode the Opcode value.
      unsigned Opc = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      unsigned DecodeIdx = decodeULEB128(Ptr, &Len);
      Ptr += Len;

      MI.clear();
      MI.setOpcode(Opc);
      bool DecodeComplete;
      S = decodeToMCInst(S, DecodeIdx, insn, MI, Address, DisAsm, DecodeComplete);
      assert(DecodeComplete);

      DEBUG(dbgs() << Loc << ": OPC_Decode: opcode " << Opc
                   << ", using decoder " << DecodeIdx << ": "
                   << (S != MCDisassembler::Fail ? "PASS" : "FAIL") << "\n");
      return S;
    }
    case MCD::OPC_TryDecode: {
      unsigned Len;
      // Decode the Opcode value.
      unsigned Opc = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      unsigned DecodeIdx = decodeULEB128(Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 16-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;

      // Perform the decode operation.
      MCInst TmpMI;
      TmpMI.setOpcode(Opc);
      bool DecodeComplete;
      S = decodeToMCInst(S, DecodeIdx, insn, TmpMI, Address, DisAsm, DecodeComplete);
      DEBUG(dbgs() << Loc << ": OPC_TryDecode: opcode " << Opc
                   << ", using decoder " << DecodeIdx << ": ");

      if (DecodeComplete) {
        // Decoding complete.
        DEBUG(dbgs() << (S != MCDisassembler::Fail ? "PASS" : "FAIL") << "\n");
        MI = TmpMI;
        return S;
      } else {
        assert(S == MCDisassembler::Fail);
        // If the decoding was incomplete, skip.
        Ptr += NumToSkip;
        DEBUG(dbgs() << "FAIL: continuing at " << (Ptr - DecodeTable) << "\n");
        // Reset decode status. This also drops a SoftFail status that could be
        // set before the decode attempt.
        S = MCDisassembler::Success;
      }
      break;
    }
    case MCD::OPC_SoftFail: {
      // Decode the mask values.
      unsigned Len;
      InsnType PositiveMask = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      InsnType NegativeMask = decodeULEB128(Ptr, &Len);
      Ptr += Len;
      bool Fail = (insn & PositiveMask) || (~insn & NegativeMask);
      if (Fail)
        S = MCDisassembler::SoftFail;
      DEBUG(dbgs() << Loc << ": OPC_SoftFail: " << (Fail ? "FAIL\n":"PASS\n"));
      break;
    }
    case MCD::OPC_Fail: {
      DEBUG(dbgs() << Loc << ": OPC_Fail\n");
      return MCDisassembler::Fail;
    }
    }
  }
  llvm_unreachable("bogosity detected in disassembler state machine!");
}


} // End llvm namespace