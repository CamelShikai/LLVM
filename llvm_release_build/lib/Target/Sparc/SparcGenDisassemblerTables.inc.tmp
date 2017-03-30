/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|*  * Sparc Disassembler                                                      *|
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

static const uint8_t DecoderTableSparc32[] = {
/* 0 */       MCD::OPC_ExtractField, 30, 2,  // Inst{31-30} ...
/* 3 */       MCD::OPC_FilterValue, 0, 72, 2, // Skip to: 591
/* 7 */       MCD::OPC_ExtractField, 22, 3,  // Inst{24-22} ...
/* 10 */      MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 24
/* 14 */      MCD::OPC_CheckField, 25, 5, 0, 243, 26, // Skip to: 6919
/* 20 */      MCD::OPC_Decode, 207, 4, 0, // Opcode: UNIMP
/* 24 */      MCD::OPC_FilterValue, 1, 111, 0, // Skip to: 139
/* 28 */      MCD::OPC_ExtractField, 19, 3,  // Inst{21-19} ...
/* 31 */      MCD::OPC_FilterValue, 0, 27, 0, // Skip to: 62
/* 35 */      MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 38 */      MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 50
/* 42 */      MCD::OPC_CheckPredicate, 0, 217, 26, // Skip to: 6919
/* 46 */      MCD::OPC_Decode, 146, 1, 1, // Opcode: BPICCNT
/* 50 */      MCD::OPC_FilterValue, 1, 209, 26, // Skip to: 6919
/* 54 */      MCD::OPC_CheckPredicate, 0, 205, 26, // Skip to: 6919
/* 58 */      MCD::OPC_Decode, 145, 1, 1, // Opcode: BPICCANT
/* 62 */      MCD::OPC_FilterValue, 1, 27, 0, // Skip to: 93
/* 66 */      MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 69 */      MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 81
/* 73 */      MCD::OPC_CheckPredicate, 0, 186, 26, // Skip to: 6919
/* 77 */      MCD::OPC_Decode, 143, 1, 1, // Opcode: BPICC
/* 81 */      MCD::OPC_FilterValue, 1, 178, 26, // Skip to: 6919
/* 85 */      MCD::OPC_CheckPredicate, 0, 174, 26, // Skip to: 6919
/* 89 */      MCD::OPC_Decode, 144, 1, 1, // Opcode: BPICCA
/* 93 */      MCD::OPC_FilterValue, 4, 19, 0, // Skip to: 116
/* 97 */      MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 100 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 108
/* 104 */     MCD::OPC_Decode, 162, 1, 1, // Opcode: BPXCCNT
/* 108 */     MCD::OPC_FilterValue, 1, 151, 26, // Skip to: 6919
/* 112 */     MCD::OPC_Decode, 161, 1, 1, // Opcode: BPXCCANT
/* 116 */     MCD::OPC_FilterValue, 5, 143, 26, // Skip to: 6919
/* 120 */     MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 123 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 131
/* 127 */     MCD::OPC_Decode, 159, 1, 1, // Opcode: BPXCC
/* 131 */     MCD::OPC_FilterValue, 1, 128, 26, // Skip to: 6919
/* 135 */     MCD::OPC_Decode, 160, 1, 1, // Opcode: BPXCCA
/* 139 */     MCD::OPC_FilterValue, 2, 26, 0, // Skip to: 169
/* 143 */     MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 146 */     MCD::OPC_FilterValue, 0, 12, 0, // Skip to: 162
/* 150 */     MCD::OPC_CheckField, 25, 4, 8, 3, 0, // Skip to: 159
/* 156 */     MCD::OPC_Decode, 125, 0, // Opcode: BA
/* 159 */     MCD::OPC_Decode, 126, 2, // Opcode: BCOND
/* 162 */     MCD::OPC_FilterValue, 1, 97, 26, // Skip to: 6919
/* 166 */     MCD::OPC_Decode, 127, 2, // Opcode: BCONDA
/* 169 */     MCD::OPC_FilterValue, 3, 23, 1, // Skip to: 452
/* 173 */     MCD::OPC_ExtractField, 25, 5,  // Inst{29-25} ...
/* 176 */     MCD::OPC_FilterValue, 1, 19, 0, // Skip to: 199
/* 180 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 183 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 191
/* 187 */     MCD::OPC_Decode, 165, 1, 3, // Opcode: BPZnapn
/* 191 */     MCD::OPC_FilterValue, 1, 68, 26, // Skip to: 6919
/* 195 */     MCD::OPC_Decode, 166, 1, 3, // Opcode: BPZnapt
/* 199 */     MCD::OPC_FilterValue, 2, 19, 0, // Skip to: 222
/* 203 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 206 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 214
/* 210 */     MCD::OPC_Decode, 149, 1, 3, // Opcode: BPLEZnapn
/* 214 */     MCD::OPC_FilterValue, 1, 45, 26, // Skip to: 6919
/* 218 */     MCD::OPC_Decode, 150, 1, 3, // Opcode: BPLEZnapt
/* 222 */     MCD::OPC_FilterValue, 3, 19, 0, // Skip to: 245
/* 226 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 229 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 237
/* 233 */     MCD::OPC_Decode, 153, 1, 3, // Opcode: BPLZnapn
/* 237 */     MCD::OPC_FilterValue, 1, 22, 26, // Skip to: 6919
/* 241 */     MCD::OPC_Decode, 154, 1, 3, // Opcode: BPLZnapt
/* 245 */     MCD::OPC_FilterValue, 5, 19, 0, // Skip to: 268
/* 249 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 252 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 260
/* 256 */     MCD::OPC_Decode, 157, 1, 3, // Opcode: BPNZnapn
/* 260 */     MCD::OPC_FilterValue, 1, 255, 25, // Skip to: 6919
/* 264 */     MCD::OPC_Decode, 158, 1, 3, // Opcode: BPNZnapt
/* 268 */     MCD::OPC_FilterValue, 6, 19, 0, // Skip to: 291
/* 272 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 275 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 283
/* 279 */     MCD::OPC_Decode, 141, 1, 3, // Opcode: BPGZnapn
/* 283 */     MCD::OPC_FilterValue, 1, 232, 25, // Skip to: 6919
/* 287 */     MCD::OPC_Decode, 142, 1, 3, // Opcode: BPGZnapt
/* 291 */     MCD::OPC_FilterValue, 7, 19, 0, // Skip to: 314
/* 295 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 298 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 306
/* 302 */     MCD::OPC_Decode, 137, 1, 3, // Opcode: BPGEZnapn
/* 306 */     MCD::OPC_FilterValue, 1, 209, 25, // Skip to: 6919
/* 310 */     MCD::OPC_Decode, 138, 1, 3, // Opcode: BPGEZnapt
/* 314 */     MCD::OPC_FilterValue, 17, 19, 0, // Skip to: 337
/* 318 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 321 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 329
/* 325 */     MCD::OPC_Decode, 163, 1, 3, // Opcode: BPZapn
/* 329 */     MCD::OPC_FilterValue, 1, 186, 25, // Skip to: 6919
/* 333 */     MCD::OPC_Decode, 164, 1, 3, // Opcode: BPZapt
/* 337 */     MCD::OPC_FilterValue, 18, 19, 0, // Skip to: 360
/* 341 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 344 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 352
/* 348 */     MCD::OPC_Decode, 147, 1, 3, // Opcode: BPLEZapn
/* 352 */     MCD::OPC_FilterValue, 1, 163, 25, // Skip to: 6919
/* 356 */     MCD::OPC_Decode, 148, 1, 3, // Opcode: BPLEZapt
/* 360 */     MCD::OPC_FilterValue, 19, 19, 0, // Skip to: 383
/* 364 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 367 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 375
/* 371 */     MCD::OPC_Decode, 151, 1, 3, // Opcode: BPLZapn
/* 375 */     MCD::OPC_FilterValue, 1, 140, 25, // Skip to: 6919
/* 379 */     MCD::OPC_Decode, 152, 1, 3, // Opcode: BPLZapt
/* 383 */     MCD::OPC_FilterValue, 21, 19, 0, // Skip to: 406
/* 387 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 390 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 398
/* 394 */     MCD::OPC_Decode, 155, 1, 3, // Opcode: BPNZapn
/* 398 */     MCD::OPC_FilterValue, 1, 117, 25, // Skip to: 6919
/* 402 */     MCD::OPC_Decode, 156, 1, 3, // Opcode: BPNZapt
/* 406 */     MCD::OPC_FilterValue, 22, 19, 0, // Skip to: 429
/* 410 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 413 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 421
/* 417 */     MCD::OPC_Decode, 139, 1, 3, // Opcode: BPGZapn
/* 421 */     MCD::OPC_FilterValue, 1, 94, 25, // Skip to: 6919
/* 425 */     MCD::OPC_Decode, 140, 1, 3, // Opcode: BPGZapt
/* 429 */     MCD::OPC_FilterValue, 23, 86, 25, // Skip to: 6919
/* 433 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 436 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 444
/* 440 */     MCD::OPC_Decode, 135, 1, 3, // Opcode: BPGEZapn
/* 444 */     MCD::OPC_FilterValue, 1, 71, 25, // Skip to: 6919
/* 448 */     MCD::OPC_Decode, 136, 1, 3, // Opcode: BPGEZapt
/* 452 */     MCD::OPC_FilterValue, 4, 20, 0, // Skip to: 476
/* 456 */     MCD::OPC_CheckField, 25, 5, 0, 10, 0, // Skip to: 472
/* 462 */     MCD::OPC_CheckField, 0, 22, 0, 4, 0, // Skip to: 472
/* 468 */     MCD::OPC_Decode, 185, 3, 4, // Opcode: NOP
/* 472 */     MCD::OPC_Decode, 229, 3, 5, // Opcode: SETHIi
/* 476 */     MCD::OPC_FilterValue, 5, 65, 0, // Skip to: 545
/* 480 */     MCD::OPC_ExtractField, 19, 1,  // Inst{19} ...
/* 483 */     MCD::OPC_FilterValue, 0, 27, 0, // Skip to: 514
/* 487 */     MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 490 */     MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 502
/* 494 */     MCD::OPC_CheckPredicate, 0, 21, 25, // Skip to: 6919
/* 498 */     MCD::OPC_Decode, 134, 1, 6, // Opcode: BPFCCNT
/* 502 */     MCD::OPC_FilterValue, 1, 13, 25, // Skip to: 6919
/* 506 */     MCD::OPC_CheckPredicate, 0, 9, 25, // Skip to: 6919
/* 510 */     MCD::OPC_Decode, 133, 1, 6, // Opcode: BPFCCANT
/* 514 */     MCD::OPC_FilterValue, 1, 1, 25, // Skip to: 6919
/* 518 */     MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 521 */     MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 533
/* 525 */     MCD::OPC_CheckPredicate, 0, 246, 24, // Skip to: 6919
/* 529 */     MCD::OPC_Decode, 131, 1, 6, // Opcode: BPFCC
/* 533 */     MCD::OPC_FilterValue, 1, 238, 24, // Skip to: 6919
/* 537 */     MCD::OPC_CheckPredicate, 0, 234, 24, // Skip to: 6919
/* 541 */     MCD::OPC_Decode, 132, 1, 6, // Opcode: BPFCCA
/* 545 */     MCD::OPC_FilterValue, 6, 19, 0, // Skip to: 568
/* 549 */     MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 552 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 560
/* 556 */     MCD::OPC_Decode, 211, 1, 2, // Opcode: FBCOND
/* 560 */     MCD::OPC_FilterValue, 1, 211, 24, // Skip to: 6919
/* 564 */     MCD::OPC_Decode, 212, 1, 2, // Opcode: FBCONDA
/* 568 */     MCD::OPC_FilterValue, 7, 203, 24, // Skip to: 6919
/* 572 */     MCD::OPC_ExtractField, 29, 1,  // Inst{29} ...
/* 575 */     MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 583
/* 579 */     MCD::OPC_Decode, 175, 1, 2, // Opcode: CBCOND
/* 583 */     MCD::OPC_FilterValue, 1, 188, 24, // Skip to: 6919
/* 587 */     MCD::OPC_Decode, 176, 1, 2, // Opcode: CBCONDA
/* 591 */     MCD::OPC_FilterValue, 1, 4, 0, // Skip to: 599
/* 595 */     MCD::OPC_Decode, 168, 1, 7, // Opcode: CALL
/* 599 */     MCD::OPC_FilterValue, 2, 134, 19, // Skip to: 5601
/* 603 */     MCD::OPC_ExtractField, 19, 6,  // Inst{24-19} ...
/* 606 */     MCD::OPC_FilterValue, 0, 23, 0, // Skip to: 633
/* 610 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 613 */     MCD::OPC_FilterValue, 0, 9, 0, // Skip to: 626
/* 617 */     MCD::OPC_CheckField, 5, 8, 0, 152, 24, // Skip to: 6919
/* 623 */     MCD::OPC_Decode, 106, 8, // Opcode: ADDrr
/* 626 */     MCD::OPC_FilterValue, 1, 145, 24, // Skip to: 6919
/* 630 */     MCD::OPC_Decode, 105, 9, // Opcode: ADDri
/* 633 */     MCD::OPC_FilterValue, 1, 23, 0, // Skip to: 660
/* 637 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 640 */     MCD::OPC_FilterValue, 0, 9, 0, // Skip to: 653
/* 644 */     MCD::OPC_CheckField, 5, 8, 0, 125, 24, // Skip to: 6919
/* 650 */     MCD::OPC_Decode, 121, 8, // Opcode: ANDrr
/* 653 */     MCD::OPC_FilterValue, 1, 118, 24, // Skip to: 6919
/* 657 */     MCD::OPC_Decode, 120, 9, // Opcode: ANDri
/* 660 */     MCD::OPC_FilterValue, 2, 25, 0, // Skip to: 689
/* 664 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 667 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 681
/* 671 */     MCD::OPC_CheckField, 5, 8, 0, 98, 24, // Skip to: 6919
/* 677 */     MCD::OPC_Decode, 196, 3, 8, // Opcode: ORrr
/* 681 */     MCD::OPC_FilterValue, 1, 90, 24, // Skip to: 6919
/* 685 */     MCD::OPC_Decode, 195, 3, 9, // Opcode: ORri
/* 689 */     MCD::OPC_FilterValue, 3, 25, 0, // Skip to: 718
/* 693 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 696 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 710
/* 700 */     MCD::OPC_CheckField, 5, 8, 0, 69, 24, // Skip to: 6919
/* 706 */     MCD::OPC_Decode, 241, 4, 8, // Opcode: XORrr
/* 710 */     MCD::OPC_FilterValue, 1, 61, 24, // Skip to: 6919
/* 714 */     MCD::OPC_Decode, 240, 4, 9, // Opcode: XORri
/* 718 */     MCD::OPC_FilterValue, 4, 25, 0, // Skip to: 747
/* 722 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 725 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 739
/* 729 */     MCD::OPC_CheckField, 5, 8, 0, 40, 24, // Skip to: 6919
/* 735 */     MCD::OPC_Decode, 169, 4, 8, // Opcode: SUBrr
/* 739 */     MCD::OPC_FilterValue, 1, 32, 24, // Skip to: 6919
/* 743 */     MCD::OPC_Decode, 168, 4, 9, // Opcode: SUBri
/* 747 */     MCD::OPC_FilterValue, 5, 23, 0, // Skip to: 774
/* 751 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 754 */     MCD::OPC_FilterValue, 0, 9, 0, // Skip to: 767
/* 758 */     MCD::OPC_CheckField, 5, 8, 0, 11, 24, // Skip to: 6919
/* 764 */     MCD::OPC_Decode, 116, 8, // Opcode: ANDNrr
/* 767 */     MCD::OPC_FilterValue, 1, 4, 24, // Skip to: 6919
/* 771 */     MCD::OPC_Decode, 115, 9, // Opcode: ANDNri
/* 774 */     MCD::OPC_FilterValue, 6, 25, 0, // Skip to: 803
/* 778 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 781 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 795
/* 785 */     MCD::OPC_CheckField, 5, 8, 0, 240, 23, // Skip to: 6919
/* 791 */     MCD::OPC_Decode, 191, 3, 8, // Opcode: ORNrr
/* 795 */     MCD::OPC_FilterValue, 1, 232, 23, // Skip to: 6919
/* 799 */     MCD::OPC_Decode, 190, 3, 9, // Opcode: ORNri
/* 803 */     MCD::OPC_FilterValue, 7, 25, 0, // Skip to: 832
/* 807 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 810 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 824
/* 814 */     MCD::OPC_CheckField, 5, 8, 0, 211, 23, // Skip to: 6919
/* 820 */     MCD::OPC_Decode, 235, 4, 8, // Opcode: XNORrr
/* 824 */     MCD::OPC_FilterValue, 1, 203, 23, // Skip to: 6919
/* 828 */     MCD::OPC_Decode, 234, 4, 9, // Opcode: XNORri
/* 832 */     MCD::OPC_FilterValue, 8, 23, 0, // Skip to: 859
/* 836 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 839 */     MCD::OPC_FilterValue, 0, 9, 0, // Skip to: 852
/* 843 */     MCD::OPC_CheckField, 5, 8, 0, 182, 23, // Skip to: 6919
/* 849 */     MCD::OPC_Decode, 98, 8, // Opcode: ADDCrr
/* 852 */     MCD::OPC_FilterValue, 1, 175, 23, // Skip to: 6919
/* 856 */     MCD::OPC_Decode, 97, 9, // Opcode: ADDCri
/* 859 */     MCD::OPC_FilterValue, 9, 25, 0, // Skip to: 888
/* 863 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 866 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 880
/* 870 */     MCD::OPC_CheckField, 5, 8, 0, 155, 23, // Skip to: 6919
/* 876 */     MCD::OPC_Decode, 184, 3, 10, // Opcode: MULXrr
/* 880 */     MCD::OPC_FilterValue, 1, 147, 23, // Skip to: 6919
/* 884 */     MCD::OPC_Decode, 183, 3, 11, // Opcode: MULXri
/* 888 */     MCD::OPC_FilterValue, 10, 25, 0, // Skip to: 917
/* 892 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 895 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 909
/* 899 */     MCD::OPC_CheckField, 5, 8, 0, 126, 23, // Skip to: 6919
/* 905 */     MCD::OPC_Decode, 206, 4, 8, // Opcode: UMULrr
/* 909 */     MCD::OPC_FilterValue, 1, 118, 23, // Skip to: 6919
/* 913 */     MCD::OPC_Decode, 205, 4, 9, // Opcode: UMULri
/* 917 */     MCD::OPC_FilterValue, 11, 25, 0, // Skip to: 946
/* 921 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 924 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 938
/* 928 */     MCD::OPC_CheckField, 5, 8, 0, 97, 23, // Skip to: 6919
/* 934 */     MCD::OPC_Decode, 241, 3, 8, // Opcode: SMULrr
/* 938 */     MCD::OPC_FilterValue, 1, 89, 23, // Skip to: 6919
/* 942 */     MCD::OPC_Decode, 240, 3, 9, // Opcode: SMULri
/* 946 */     MCD::OPC_FilterValue, 12, 25, 0, // Skip to: 975
/* 950 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 953 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 967
/* 957 */     MCD::OPC_CheckField, 5, 8, 0, 68, 23, // Skip to: 6919
/* 963 */     MCD::OPC_Decode, 163, 4, 8, // Opcode: SUBCrr
/* 967 */     MCD::OPC_FilterValue, 1, 60, 23, // Skip to: 6919
/* 971 */     MCD::OPC_Decode, 162, 4, 9, // Opcode: SUBCri
/* 975 */     MCD::OPC_FilterValue, 13, 25, 0, // Skip to: 1004
/* 979 */     MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 982 */     MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 996
/* 986 */     MCD::OPC_CheckField, 5, 8, 0, 39, 23, // Skip to: 6919
/* 992 */     MCD::OPC_Decode, 197, 4, 10, // Opcode: UDIVXrr
/* 996 */     MCD::OPC_FilterValue, 1, 31, 23, // Skip to: 6919
/* 1000 */    MCD::OPC_Decode, 196, 4, 11, // Opcode: UDIVXri
/* 1004 */    MCD::OPC_FilterValue, 14, 25, 0, // Skip to: 1033
/* 1008 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1011 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1025
/* 1015 */    MCD::OPC_CheckField, 5, 8, 0, 10, 23, // Skip to: 6919
/* 1021 */    MCD::OPC_Decode, 199, 4, 8, // Opcode: UDIVrr
/* 1025 */    MCD::OPC_FilterValue, 1, 2, 23, // Skip to: 6919
/* 1029 */    MCD::OPC_Decode, 198, 4, 9, // Opcode: UDIVri
/* 1033 */    MCD::OPC_FilterValue, 15, 25, 0, // Skip to: 1062
/* 1037 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1040 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1054
/* 1044 */    MCD::OPC_CheckField, 5, 8, 0, 237, 22, // Skip to: 6919
/* 1050 */    MCD::OPC_Decode, 218, 3, 8, // Opcode: SDIVrr
/* 1054 */    MCD::OPC_FilterValue, 1, 229, 22, // Skip to: 6919
/* 1058 */    MCD::OPC_Decode, 217, 3, 9, // Opcode: SDIVri
/* 1062 */    MCD::OPC_FilterValue, 16, 23, 0, // Skip to: 1089
/* 1066 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1069 */    MCD::OPC_FilterValue, 0, 9, 0, // Skip to: 1082
/* 1073 */    MCD::OPC_CheckField, 5, 8, 0, 208, 22, // Skip to: 6919
/* 1079 */    MCD::OPC_Decode, 96, 8, // Opcode: ADDCCrr
/* 1082 */    MCD::OPC_FilterValue, 1, 201, 22, // Skip to: 6919
/* 1086 */    MCD::OPC_Decode, 95, 9, // Opcode: ADDCCri
/* 1089 */    MCD::OPC_FilterValue, 17, 23, 0, // Skip to: 1116
/* 1093 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1096 */    MCD::OPC_FilterValue, 0, 9, 0, // Skip to: 1109
/* 1100 */    MCD::OPC_CheckField, 5, 8, 0, 181, 22, // Skip to: 6919
/* 1106 */    MCD::OPC_Decode, 112, 8, // Opcode: ANDCCrr
/* 1109 */    MCD::OPC_FilterValue, 1, 174, 22, // Skip to: 6919
/* 1113 */    MCD::OPC_Decode, 111, 9, // Opcode: ANDCCri
/* 1116 */    MCD::OPC_FilterValue, 18, 25, 0, // Skip to: 1145
/* 1120 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1123 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1137
/* 1127 */    MCD::OPC_CheckField, 5, 8, 0, 154, 22, // Skip to: 6919
/* 1133 */    MCD::OPC_Decode, 187, 3, 8, // Opcode: ORCCrr
/* 1137 */    MCD::OPC_FilterValue, 1, 146, 22, // Skip to: 6919
/* 1141 */    MCD::OPC_Decode, 186, 3, 9, // Opcode: ORCCri
/* 1145 */    MCD::OPC_FilterValue, 19, 25, 0, // Skip to: 1174
/* 1149 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1152 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1166
/* 1156 */    MCD::OPC_CheckField, 5, 8, 0, 125, 22, // Skip to: 6919
/* 1162 */    MCD::OPC_Decode, 237, 4, 8, // Opcode: XORCCrr
/* 1166 */    MCD::OPC_FilterValue, 1, 117, 22, // Skip to: 6919
/* 1170 */    MCD::OPC_Decode, 236, 4, 9, // Opcode: XORCCri
/* 1174 */    MCD::OPC_FilterValue, 20, 46, 0, // Skip to: 1224
/* 1178 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1181 */    MCD::OPC_FilterValue, 0, 21, 0, // Skip to: 1206
/* 1185 */    MCD::OPC_ExtractField, 5, 8,  // Inst{12-5} ...
/* 1188 */    MCD::OPC_FilterValue, 0, 95, 22, // Skip to: 6919
/* 1192 */    MCD::OPC_CheckField, 25, 5, 0, 4, 0, // Skip to: 1202
/* 1198 */    MCD::OPC_Decode, 181, 1, 12, // Opcode: CMPrr
/* 1202 */    MCD::OPC_Decode, 161, 4, 8, // Opcode: SUBCCrr
/* 1206 */    MCD::OPC_FilterValue, 1, 77, 22, // Skip to: 6919
/* 1210 */    MCD::OPC_CheckField, 25, 5, 0, 4, 0, // Skip to: 1220
/* 1216 */    MCD::OPC_Decode, 180, 1, 13, // Opcode: CMPri
/* 1220 */    MCD::OPC_Decode, 160, 4, 9, // Opcode: SUBCCri
/* 1224 */    MCD::OPC_FilterValue, 21, 23, 0, // Skip to: 1251
/* 1228 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1231 */    MCD::OPC_FilterValue, 0, 9, 0, // Skip to: 1244
/* 1235 */    MCD::OPC_CheckField, 5, 8, 0, 46, 22, // Skip to: 6919
/* 1241 */    MCD::OPC_Decode, 114, 8, // Opcode: ANDNCCrr
/* 1244 */    MCD::OPC_FilterValue, 1, 39, 22, // Skip to: 6919
/* 1248 */    MCD::OPC_Decode, 113, 9, // Opcode: ANDNCCri
/* 1251 */    MCD::OPC_FilterValue, 22, 25, 0, // Skip to: 1280
/* 1255 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1258 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1272
/* 1262 */    MCD::OPC_CheckField, 5, 8, 0, 19, 22, // Skip to: 6919
/* 1268 */    MCD::OPC_Decode, 189, 3, 8, // Opcode: ORNCCrr
/* 1272 */    MCD::OPC_FilterValue, 1, 11, 22, // Skip to: 6919
/* 1276 */    MCD::OPC_Decode, 188, 3, 9, // Opcode: ORNCCri
/* 1280 */    MCD::OPC_FilterValue, 23, 25, 0, // Skip to: 1309
/* 1284 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1287 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1301
/* 1291 */    MCD::OPC_CheckField, 5, 8, 0, 246, 21, // Skip to: 6919
/* 1297 */    MCD::OPC_Decode, 232, 4, 8, // Opcode: XNORCCrr
/* 1301 */    MCD::OPC_FilterValue, 1, 238, 21, // Skip to: 6919
/* 1305 */    MCD::OPC_Decode, 231, 4, 9, // Opcode: XNORCCri
/* 1309 */    MCD::OPC_FilterValue, 24, 23, 0, // Skip to: 1336
/* 1313 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1316 */    MCD::OPC_FilterValue, 0, 9, 0, // Skip to: 1329
/* 1320 */    MCD::OPC_CheckField, 5, 8, 0, 217, 21, // Skip to: 6919
/* 1326 */    MCD::OPC_Decode, 100, 8, // Opcode: ADDErr
/* 1329 */    MCD::OPC_FilterValue, 1, 210, 21, // Skip to: 6919
/* 1333 */    MCD::OPC_Decode, 99, 9, // Opcode: ADDEri
/* 1336 */    MCD::OPC_FilterValue, 26, 25, 0, // Skip to: 1365
/* 1340 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1343 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1357
/* 1347 */    MCD::OPC_CheckField, 5, 8, 0, 190, 21, // Skip to: 6919
/* 1353 */    MCD::OPC_Decode, 203, 4, 8, // Opcode: UMULCCrr
/* 1357 */    MCD::OPC_FilterValue, 1, 182, 21, // Skip to: 6919
/* 1361 */    MCD::OPC_Decode, 202, 4, 9, // Opcode: UMULCCri
/* 1365 */    MCD::OPC_FilterValue, 27, 25, 0, // Skip to: 1394
/* 1369 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1372 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1386
/* 1376 */    MCD::OPC_CheckField, 5, 8, 0, 161, 21, // Skip to: 6919
/* 1382 */    MCD::OPC_Decode, 239, 3, 8, // Opcode: SMULCCrr
/* 1386 */    MCD::OPC_FilterValue, 1, 153, 21, // Skip to: 6919
/* 1390 */    MCD::OPC_Decode, 238, 3, 9, // Opcode: SMULCCri
/* 1394 */    MCD::OPC_FilterValue, 28, 25, 0, // Skip to: 1423
/* 1398 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1401 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1415
/* 1405 */    MCD::OPC_CheckField, 5, 8, 0, 132, 21, // Skip to: 6919
/* 1411 */    MCD::OPC_Decode, 165, 4, 8, // Opcode: SUBErr
/* 1415 */    MCD::OPC_FilterValue, 1, 124, 21, // Skip to: 6919
/* 1419 */    MCD::OPC_Decode, 164, 4, 9, // Opcode: SUBEri
/* 1423 */    MCD::OPC_FilterValue, 30, 25, 0, // Skip to: 1452
/* 1427 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1430 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1444
/* 1434 */    MCD::OPC_CheckField, 5, 8, 0, 103, 21, // Skip to: 6919
/* 1440 */    MCD::OPC_Decode, 195, 4, 8, // Opcode: UDIVCCrr
/* 1444 */    MCD::OPC_FilterValue, 1, 95, 21, // Skip to: 6919
/* 1448 */    MCD::OPC_Decode, 194, 4, 9, // Opcode: UDIVCCri
/* 1452 */    MCD::OPC_FilterValue, 31, 25, 0, // Skip to: 1481
/* 1456 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1459 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1473
/* 1463 */    MCD::OPC_CheckField, 5, 8, 0, 74, 21, // Skip to: 6919
/* 1469 */    MCD::OPC_Decode, 214, 3, 8, // Opcode: SDIVCCrr
/* 1473 */    MCD::OPC_FilterValue, 1, 66, 21, // Skip to: 6919
/* 1477 */    MCD::OPC_Decode, 213, 3, 9, // Opcode: SDIVCCri
/* 1481 */    MCD::OPC_FilterValue, 32, 25, 0, // Skip to: 1510
/* 1485 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1488 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1502
/* 1492 */    MCD::OPC_CheckField, 5, 8, 0, 45, 21, // Skip to: 6919
/* 1498 */    MCD::OPC_Decode, 178, 4, 8, // Opcode: TADDCCrr
/* 1502 */    MCD::OPC_FilterValue, 1, 37, 21, // Skip to: 6919
/* 1506 */    MCD::OPC_Decode, 177, 4, 9, // Opcode: TADDCCri
/* 1510 */    MCD::OPC_FilterValue, 33, 25, 0, // Skip to: 1539
/* 1514 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1517 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1531
/* 1521 */    MCD::OPC_CheckField, 5, 8, 0, 16, 21, // Skip to: 6919
/* 1527 */    MCD::OPC_Decode, 191, 4, 8, // Opcode: TSUBCCrr
/* 1531 */    MCD::OPC_FilterValue, 1, 8, 21, // Skip to: 6919
/* 1535 */    MCD::OPC_Decode, 190, 4, 9, // Opcode: TSUBCCri
/* 1539 */    MCD::OPC_FilterValue, 34, 25, 0, // Skip to: 1568
/* 1543 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1546 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1560
/* 1550 */    MCD::OPC_CheckField, 5, 8, 0, 243, 20, // Skip to: 6919
/* 1556 */    MCD::OPC_Decode, 176, 4, 8, // Opcode: TADDCCTVrr
/* 1560 */    MCD::OPC_FilterValue, 1, 235, 20, // Skip to: 6919
/* 1564 */    MCD::OPC_Decode, 175, 4, 9, // Opcode: TADDCCTVri
/* 1568 */    MCD::OPC_FilterValue, 35, 25, 0, // Skip to: 1597
/* 1572 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1575 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1589
/* 1579 */    MCD::OPC_CheckField, 5, 8, 0, 214, 20, // Skip to: 6919
/* 1585 */    MCD::OPC_Decode, 189, 4, 8, // Opcode: TSUBCCTVrr
/* 1589 */    MCD::OPC_FilterValue, 1, 206, 20, // Skip to: 6919
/* 1593 */    MCD::OPC_Decode, 188, 4, 9, // Opcode: TSUBCCTVri
/* 1597 */    MCD::OPC_FilterValue, 36, 25, 0, // Skip to: 1626
/* 1601 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1604 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1618
/* 1608 */    MCD::OPC_CheckField, 5, 8, 0, 185, 20, // Skip to: 6919
/* 1614 */    MCD::OPC_Decode, 182, 3, 8, // Opcode: MULSCCrr
/* 1618 */    MCD::OPC_FilterValue, 1, 177, 20, // Skip to: 6919
/* 1622 */    MCD::OPC_Decode, 181, 3, 9, // Opcode: MULSCCri
/* 1626 */    MCD::OPC_FilterValue, 37, 50, 0, // Skip to: 1680
/* 1630 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1633 */    MCD::OPC_FilterValue, 0, 25, 0, // Skip to: 1662
/* 1637 */    MCD::OPC_ExtractField, 12, 1,  // Inst{12} ...
/* 1640 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1654
/* 1644 */    MCD::OPC_CheckField, 5, 7, 0, 149, 20, // Skip to: 6919
/* 1650 */    MCD::OPC_Decode, 235, 3, 8, // Opcode: SLLrr
/* 1654 */    MCD::OPC_FilterValue, 1, 141, 20, // Skip to: 6919
/* 1658 */    MCD::OPC_Decode, 233, 3, 14, // Opcode: SLLXrr
/* 1662 */    MCD::OPC_FilterValue, 1, 133, 20, // Skip to: 6919
/* 1666 */    MCD::OPC_CheckField, 12, 1, 1, 4, 0, // Skip to: 1676
/* 1672 */    MCD::OPC_Decode, 232, 3, 15, // Opcode: SLLXri
/* 1676 */    MCD::OPC_Decode, 234, 3, 9, // Opcode: SLLri
/* 1680 */    MCD::OPC_FilterValue, 38, 50, 0, // Skip to: 1734
/* 1684 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1687 */    MCD::OPC_FilterValue, 0, 25, 0, // Skip to: 1716
/* 1691 */    MCD::OPC_ExtractField, 12, 1,  // Inst{12} ...
/* 1694 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1708
/* 1698 */    MCD::OPC_CheckField, 5, 7, 0, 95, 20, // Skip to: 6919
/* 1704 */    MCD::OPC_Decode, 249, 3, 8, // Opcode: SRLrr
/* 1708 */    MCD::OPC_FilterValue, 1, 87, 20, // Skip to: 6919
/* 1712 */    MCD::OPC_Decode, 247, 3, 14, // Opcode: SRLXrr
/* 1716 */    MCD::OPC_FilterValue, 1, 79, 20, // Skip to: 6919
/* 1720 */    MCD::OPC_CheckField, 12, 1, 1, 4, 0, // Skip to: 1730
/* 1726 */    MCD::OPC_Decode, 246, 3, 15, // Opcode: SRLXri
/* 1730 */    MCD::OPC_Decode, 248, 3, 9, // Opcode: SRLri
/* 1734 */    MCD::OPC_FilterValue, 39, 50, 0, // Skip to: 1788
/* 1738 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1741 */    MCD::OPC_FilterValue, 0, 25, 0, // Skip to: 1770
/* 1745 */    MCD::OPC_ExtractField, 12, 1,  // Inst{12} ...
/* 1748 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 1762
/* 1752 */    MCD::OPC_CheckField, 5, 7, 0, 41, 20, // Skip to: 6919
/* 1758 */    MCD::OPC_Decode, 245, 3, 8, // Opcode: SRArr
/* 1762 */    MCD::OPC_FilterValue, 1, 33, 20, // Skip to: 6919
/* 1766 */    MCD::OPC_Decode, 243, 3, 14, // Opcode: SRAXrr
/* 1770 */    MCD::OPC_FilterValue, 1, 25, 20, // Skip to: 6919
/* 1774 */    MCD::OPC_CheckField, 12, 1, 1, 4, 0, // Skip to: 1784
/* 1780 */    MCD::OPC_Decode, 242, 3, 15, // Opcode: SRAXri
/* 1784 */    MCD::OPC_Decode, 244, 3, 9, // Opcode: SRAri
/* 1788 */    MCD::OPC_FilterValue, 40, 58, 0, // Skip to: 1850
/* 1792 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1795 */    MCD::OPC_FilterValue, 0, 27, 0, // Skip to: 1826
/* 1799 */    MCD::OPC_ExtractField, 0, 13,  // Inst{12-0} ...
/* 1802 */    MCD::OPC_FilterValue, 0, 249, 19, // Skip to: 6919
/* 1806 */    MCD::OPC_CheckField, 25, 5, 0, 10, 0, // Skip to: 1822
/* 1812 */    MCD::OPC_CheckField, 14, 5, 15, 4, 0, // Skip to: 1822
/* 1818 */    MCD::OPC_Decode, 251, 3, 4, // Opcode: STBAR
/* 1822 */    MCD::OPC_Decode, 200, 3, 16, // Opcode: RDASR
/* 1826 */    MCD::OPC_FilterValue, 1, 225, 19, // Skip to: 6919
/* 1830 */    MCD::OPC_CheckPredicate, 0, 221, 19, // Skip to: 6919
/* 1834 */    MCD::OPC_CheckField, 25, 5, 0, 215, 19, // Skip to: 6919
/* 1840 */    MCD::OPC_CheckField, 14, 5, 15, 209, 19, // Skip to: 6919
/* 1846 */    MCD::OPC_Decode, 157, 3, 17, // Opcode: MEMBARi
/* 1850 */    MCD::OPC_FilterValue, 41, 10, 0, // Skip to: 1864
/* 1854 */    MCD::OPC_CheckField, 0, 19, 0, 195, 19, // Skip to: 6919
/* 1860 */    MCD::OPC_Decode, 202, 3, 18, // Opcode: RDPSR
/* 1864 */    MCD::OPC_FilterValue, 42, 25, 0, // Skip to: 1893
/* 1868 */    MCD::OPC_ExtractField, 0, 14,  // Inst{13-0} ...
/* 1871 */    MCD::OPC_FilterValue, 0, 180, 19, // Skip to: 6919
/* 1875 */    MCD::OPC_CheckField, 14, 5, 0, 4, 0, // Skip to: 1885
/* 1881 */    MCD::OPC_Decode, 204, 3, 18, // Opcode: RDWIM
/* 1885 */    MCD::OPC_CheckPredicate, 0, 166, 19, // Skip to: 6919
/* 1889 */    MCD::OPC_Decode, 201, 3, 19, // Opcode: RDPR
/* 1893 */    MCD::OPC_FilterValue, 43, 25, 0, // Skip to: 1922
/* 1897 */    MCD::OPC_ExtractField, 0, 19,  // Inst{18-0} ...
/* 1900 */    MCD::OPC_FilterValue, 0, 151, 19, // Skip to: 6919
/* 1904 */    MCD::OPC_CheckPredicate, 0, 10, 0, // Skip to: 1918
/* 1908 */    MCD::OPC_CheckField, 25, 5, 0, 4, 0, // Skip to: 1918
/* 1914 */    MCD::OPC_Decode, 244, 1, 4, // Opcode: FLUSHW
/* 1918 */    MCD::OPC_Decode, 203, 3, 18, // Opcode: RDTBR
/* 1922 */    MCD::OPC_FilterValue, 44, 123, 0, // Skip to: 2049
/* 1926 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 1929 */    MCD::OPC_FilterValue, 0, 56, 0, // Skip to: 1989
/* 1933 */    MCD::OPC_ExtractField, 18, 1,  // Inst{18} ...
/* 1936 */    MCD::OPC_FilterValue, 0, 22, 0, // Skip to: 1962
/* 1940 */    MCD::OPC_CheckPredicate, 0, 10, 0, // Skip to: 1954
/* 1944 */    MCD::OPC_CheckField, 11, 2, 0, 4, 0, // Skip to: 1954
/* 1950 */    MCD::OPC_Decode, 160, 3, 20, // Opcode: MOVFCCrr
/* 1954 */    MCD::OPC_CheckPredicate, 0, 97, 19, // Skip to: 6919
/* 1958 */    MCD::OPC_Decode, 218, 4, 21, // Opcode: V9MOVFCCrr
/* 1962 */    MCD::OPC_FilterValue, 1, 89, 19, // Skip to: 6919
/* 1966 */    MCD::OPC_ExtractField, 11, 2,  // Inst{12-11} ...
/* 1969 */    MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 1981
/* 1973 */    MCD::OPC_CheckPredicate, 0, 78, 19, // Skip to: 6919
/* 1977 */    MCD::OPC_Decode, 162, 3, 20, // Opcode: MOVICCrr
/* 1981 */    MCD::OPC_FilterValue, 2, 70, 19, // Skip to: 6919
/* 1985 */    MCD::OPC_Decode, 179, 3, 20, // Opcode: MOVXCCrr
/* 1989 */    MCD::OPC_FilterValue, 1, 62, 19, // Skip to: 6919
/* 1993 */    MCD::OPC_ExtractField, 18, 1,  // Inst{18} ...
/* 1996 */    MCD::OPC_FilterValue, 0, 22, 0, // Skip to: 2022
/* 2000 */    MCD::OPC_CheckPredicate, 0, 10, 0, // Skip to: 2014
/* 2004 */    MCD::OPC_CheckField, 11, 2, 0, 4, 0, // Skip to: 2014
/* 2010 */    MCD::OPC_Decode, 159, 3, 22, // Opcode: MOVFCCri
/* 2014 */    MCD::OPC_CheckPredicate, 0, 37, 19, // Skip to: 6919
/* 2018 */    MCD::OPC_Decode, 217, 4, 23, // Opcode: V9MOVFCCri
/* 2022 */    MCD::OPC_FilterValue, 1, 29, 19, // Skip to: 6919
/* 2026 */    MCD::OPC_ExtractField, 11, 2,  // Inst{12-11} ...
/* 2029 */    MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 2041
/* 2033 */    MCD::OPC_CheckPredicate, 0, 18, 19, // Skip to: 6919
/* 2037 */    MCD::OPC_Decode, 161, 3, 22, // Opcode: MOVICCri
/* 2041 */    MCD::OPC_FilterValue, 2, 10, 19, // Skip to: 6919
/* 2045 */    MCD::OPC_Decode, 178, 3, 22, // Opcode: MOVXCCri
/* 2049 */    MCD::OPC_FilterValue, 45, 25, 0, // Skip to: 2078
/* 2053 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 2056 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 2070
/* 2060 */    MCD::OPC_CheckField, 5, 8, 0, 245, 18, // Skip to: 6919
/* 2066 */    MCD::OPC_Decode, 216, 3, 10, // Opcode: SDIVXrr
/* 2070 */    MCD::OPC_FilterValue, 1, 237, 18, // Skip to: 6919
/* 2074 */    MCD::OPC_Decode, 215, 3, 11, // Opcode: SDIVXri
/* 2078 */    MCD::OPC_FilterValue, 46, 14, 0, // Skip to: 2096
/* 2082 */    MCD::OPC_CheckPredicate, 0, 225, 18, // Skip to: 6919
/* 2086 */    MCD::OPC_CheckField, 5, 14, 0, 219, 18, // Skip to: 6919
/* 2092 */    MCD::OPC_Decode, 199, 3, 24, // Opcode: POPCrr
/* 2096 */    MCD::OPC_FilterValue, 47, 135, 0, // Skip to: 2235
/* 2100 */    MCD::OPC_ExtractField, 10, 4,  // Inst{13-10} ...
/* 2103 */    MCD::OPC_FilterValue, 1, 10, 0, // Skip to: 2117
/* 2107 */    MCD::OPC_CheckField, 5, 5, 0, 198, 18, // Skip to: 6919
/* 2113 */    MCD::OPC_Decode, 174, 3, 14, // Opcode: MOVRRZrr
/* 2117 */    MCD::OPC_FilterValue, 2, 10, 0, // Skip to: 2131
/* 2121 */    MCD::OPC_CheckField, 5, 5, 0, 184, 18, // Skip to: 6919
/* 2127 */    MCD::OPC_Decode, 168, 3, 14, // Opcode: MOVRLEZrr
/* 2131 */    MCD::OPC_FilterValue, 3, 10, 0, // Skip to: 2145
/* 2135 */    MCD::OPC_CheckField, 5, 5, 0, 170, 18, // Skip to: 6919
/* 2141 */    MCD::OPC_Decode, 170, 3, 14, // Opcode: MOVRLZrr
/* 2145 */    MCD::OPC_FilterValue, 5, 10, 0, // Skip to: 2159
/* 2149 */    MCD::OPC_CheckField, 5, 5, 0, 156, 18, // Skip to: 6919
/* 2155 */    MCD::OPC_Decode, 172, 3, 14, // Opcode: MOVRNZrr
/* 2159 */    MCD::OPC_FilterValue, 6, 10, 0, // Skip to: 2173
/* 2163 */    MCD::OPC_CheckField, 5, 5, 0, 142, 18, // Skip to: 6919
/* 2169 */    MCD::OPC_Decode, 166, 3, 14, // Opcode: MOVRGZrr
/* 2173 */    MCD::OPC_FilterValue, 7, 10, 0, // Skip to: 2187
/* 2177 */    MCD::OPC_CheckField, 5, 5, 0, 128, 18, // Skip to: 6919
/* 2183 */    MCD::OPC_Decode, 164, 3, 14, // Opcode: MOVRGEZrr
/* 2187 */    MCD::OPC_FilterValue, 9, 4, 0, // Skip to: 2195
/* 2191 */    MCD::OPC_Decode, 173, 3, 25, // Opcode: MOVRRZri
/* 2195 */    MCD::OPC_FilterValue, 10, 4, 0, // Skip to: 2203
/* 2199 */    MCD::OPC_Decode, 167, 3, 25, // Opcode: MOVRLEZri
/* 2203 */    MCD::OPC_FilterValue, 11, 4, 0, // Skip to: 2211
/* 2207 */    MCD::OPC_Decode, 169, 3, 25, // Opcode: MOVRLZri
/* 2211 */    MCD::OPC_FilterValue, 13, 4, 0, // Skip to: 2219
/* 2215 */    MCD::OPC_Decode, 171, 3, 25, // Opcode: MOVRNZri
/* 2219 */    MCD::OPC_FilterValue, 14, 4, 0, // Skip to: 2227
/* 2223 */    MCD::OPC_Decode, 165, 3, 25, // Opcode: MOVRGZri
/* 2227 */    MCD::OPC_FilterValue, 15, 80, 18, // Skip to: 6919
/* 2231 */    MCD::OPC_Decode, 163, 3, 25, // Opcode: MOVRGEZri
/* 2235 */    MCD::OPC_FilterValue, 48, 25, 0, // Skip to: 2264
/* 2239 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 2242 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 2256
/* 2246 */    MCD::OPC_CheckField, 5, 8, 0, 59, 18, // Skip to: 6919
/* 2252 */    MCD::OPC_Decode, 220, 4, 26, // Opcode: WRASRrr
/* 2256 */    MCD::OPC_FilterValue, 1, 51, 18, // Skip to: 6919
/* 2260 */    MCD::OPC_Decode, 219, 4, 27, // Opcode: WRASRri
/* 2264 */    MCD::OPC_FilterValue, 49, 37, 0, // Skip to: 2305
/* 2268 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 2271 */    MCD::OPC_FilterValue, 0, 16, 0, // Skip to: 2291
/* 2275 */    MCD::OPC_CheckField, 25, 5, 0, 30, 18, // Skip to: 6919
/* 2281 */    MCD::OPC_CheckField, 5, 8, 0, 24, 18, // Skip to: 6919
/* 2287 */    MCD::OPC_Decode, 224, 4, 12, // Opcode: WRPSRrr
/* 2291 */    MCD::OPC_FilterValue, 1, 16, 18, // Skip to: 6919
/* 2295 */    MCD::OPC_CheckField, 25, 5, 0, 10, 18, // Skip to: 6919
/* 2301 */    MCD::OPC_Decode, 223, 4, 13, // Opcode: WRPSRri
/* 2305 */    MCD::OPC_FilterValue, 50, 54, 0, // Skip to: 2363
/* 2309 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 2312 */    MCD::OPC_FilterValue, 0, 25, 0, // Skip to: 2341
/* 2316 */    MCD::OPC_ExtractField, 5, 8,  // Inst{12-5} ...
/* 2319 */    MCD::OPC_FilterValue, 0, 244, 17, // Skip to: 6919
/* 2323 */    MCD::OPC_CheckField, 25, 5, 0, 4, 0, // Skip to: 2333
/* 2329 */    MCD::OPC_Decode, 228, 4, 12, // Opcode: WRWIMrr
/* 2333 */    MCD::OPC_CheckPredicate, 0, 230, 17, // Skip to: 6919
/* 2337 */    MCD::OPC_Decode, 222, 4, 28, // Opcode: WRPRrr
/* 2341 */    MCD::OPC_FilterValue, 1, 222, 17, // Skip to: 6919
/* 2345 */    MCD::OPC_CheckField, 25, 5, 0, 4, 0, // Skip to: 2355
/* 2351 */    MCD::OPC_Decode, 227, 4, 13, // Opcode: WRWIMri
/* 2355 */    MCD::OPC_CheckPredicate, 0, 208, 17, // Skip to: 6919
/* 2359 */    MCD::OPC_Decode, 221, 4, 29, // Opcode: WRPRri
/* 2363 */    MCD::OPC_FilterValue, 51, 37, 0, // Skip to: 2404
/* 2367 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 2370 */    MCD::OPC_FilterValue, 0, 16, 0, // Skip to: 2390
/* 2374 */    MCD::OPC_CheckField, 25, 5, 0, 187, 17, // Skip to: 6919
/* 2380 */    MCD::OPC_CheckField, 5, 8, 0, 181, 17, // Skip to: 6919
/* 2386 */    MCD::OPC_Decode, 226, 4, 12, // Opcode: WRTBRrr
/* 2390 */    MCD::OPC_FilterValue, 1, 173, 17, // Skip to: 6919
/* 2394 */    MCD::OPC_CheckField, 25, 5, 0, 167, 17, // Skip to: 6919
/* 2400 */    MCD::OPC_Decode, 225, 4, 13, // Opcode: WRTBRri
/* 2404 */    MCD::OPC_FilterValue, 52, 197, 2, // Skip to: 3117
/* 2408 */    MCD::OPC_ExtractField, 5, 9,  // Inst{13-5} ...
/* 2411 */    MCD::OPC_FilterValue, 1, 10, 0, // Skip to: 2425
/* 2415 */    MCD::OPC_CheckField, 14, 5, 0, 146, 17, // Skip to: 6919
/* 2421 */    MCD::OPC_Decode, 146, 2, 30, // Opcode: FMOVS
/* 2425 */    MCD::OPC_FilterValue, 2, 14, 0, // Skip to: 2443
/* 2429 */    MCD::OPC_CheckPredicate, 0, 134, 17, // Skip to: 6919
/* 2433 */    MCD::OPC_CheckField, 14, 5, 0, 128, 17, // Skip to: 6919
/* 2439 */    MCD::OPC_Decode, 248, 1, 31, // Opcode: FMOVD
/* 2443 */    MCD::OPC_FilterValue, 3, 14, 0, // Skip to: 2461
/* 2447 */    MCD::OPC_CheckPredicate, 0, 116, 17, // Skip to: 6919
/* 2451 */    MCD::OPC_CheckField, 14, 5, 0, 110, 17, // Skip to: 6919
/* 2457 */    MCD::OPC_Decode, 252, 1, 32, // Opcode: FMOVQ
/* 2461 */    MCD::OPC_FilterValue, 5, 10, 0, // Skip to: 2475
/* 2465 */    MCD::OPC_CheckField, 14, 5, 0, 96, 17, // Skip to: 6919
/* 2471 */    MCD::OPC_Decode, 166, 2, 30, // Opcode: FNEGS
/* 2475 */    MCD::OPC_FilterValue, 6, 14, 0, // Skip to: 2493
/* 2479 */    MCD::OPC_CheckPredicate, 0, 84, 17, // Skip to: 6919
/* 2483 */    MCD::OPC_CheckField, 14, 5, 0, 78, 17, // Skip to: 6919
/* 2489 */    MCD::OPC_Decode, 164, 2, 31, // Opcode: FNEGD
/* 2493 */    MCD::OPC_FilterValue, 7, 14, 0, // Skip to: 2511
/* 2497 */    MCD::OPC_CheckPredicate, 0, 66, 17, // Skip to: 6919
/* 2501 */    MCD::OPC_CheckField, 14, 5, 0, 60, 17, // Skip to: 6919
/* 2507 */    MCD::OPC_Decode, 165, 2, 32, // Opcode: FNEGQ
/* 2511 */    MCD::OPC_FilterValue, 9, 10, 0, // Skip to: 2525
/* 2515 */    MCD::OPC_CheckField, 14, 5, 0, 46, 17, // Skip to: 6919
/* 2521 */    MCD::OPC_Decode, 200, 1, 30, // Opcode: FABSS
/* 2525 */    MCD::OPC_FilterValue, 10, 14, 0, // Skip to: 2543
/* 2529 */    MCD::OPC_CheckPredicate, 0, 34, 17, // Skip to: 6919
/* 2533 */    MCD::OPC_CheckField, 14, 5, 0, 28, 17, // Skip to: 6919
/* 2539 */    MCD::OPC_Decode, 198, 1, 31, // Opcode: FABSD
/* 2543 */    MCD::OPC_FilterValue, 11, 14, 0, // Skip to: 2561
/* 2547 */    MCD::OPC_CheckPredicate, 0, 16, 17, // Skip to: 6919
/* 2551 */    MCD::OPC_CheckField, 14, 5, 0, 10, 17, // Skip to: 6919
/* 2557 */    MCD::OPC_Decode, 199, 1, 32, // Opcode: FABSQ
/* 2561 */    MCD::OPC_FilterValue, 41, 10, 0, // Skip to: 2575
/* 2565 */    MCD::OPC_CheckField, 14, 5, 0, 252, 16, // Skip to: 6919
/* 2571 */    MCD::OPC_Decode, 210, 2, 30, // Opcode: FSQRTS
/* 2575 */    MCD::OPC_FilterValue, 42, 10, 0, // Skip to: 2589
/* 2579 */    MCD::OPC_CheckField, 14, 5, 0, 238, 16, // Skip to: 6919
/* 2585 */    MCD::OPC_Decode, 208, 2, 31, // Opcode: FSQRTD
/* 2589 */    MCD::OPC_FilterValue, 43, 10, 0, // Skip to: 2603
/* 2593 */    MCD::OPC_CheckField, 14, 5, 0, 224, 16, // Skip to: 6919
/* 2599 */    MCD::OPC_Decode, 209, 2, 32, // Opcode: FSQRTQ
/* 2603 */    MCD::OPC_FilterValue, 65, 4, 0, // Skip to: 2611
/* 2607 */    MCD::OPC_Decode, 203, 1, 33, // Opcode: FADDS
/* 2611 */    MCD::OPC_FilterValue, 66, 4, 0, // Skip to: 2619
/* 2615 */    MCD::OPC_Decode, 201, 1, 34, // Opcode: FADDD
/* 2619 */    MCD::OPC_FilterValue, 67, 4, 0, // Skip to: 2627
/* 2623 */    MCD::OPC_Decode, 202, 1, 35, // Opcode: FADDQ
/* 2627 */    MCD::OPC_FilterValue, 69, 4, 0, // Skip to: 2635
/* 2631 */    MCD::OPC_Decode, 225, 2, 33, // Opcode: FSUBS
/* 2635 */    MCD::OPC_FilterValue, 70, 4, 0, // Skip to: 2643
/* 2639 */    MCD::OPC_Decode, 223, 2, 34, // Opcode: FSUBD
/* 2643 */    MCD::OPC_FilterValue, 71, 4, 0, // Skip to: 2651
/* 2647 */    MCD::OPC_Decode, 224, 2, 35, // Opcode: FSUBQ
/* 2651 */    MCD::OPC_FilterValue, 73, 4, 0, // Skip to: 2659
/* 2655 */    MCD::OPC_Decode, 159, 2, 33, // Opcode: FMULS
/* 2659 */    MCD::OPC_FilterValue, 74, 4, 0, // Skip to: 2667
/* 2663 */    MCD::OPC_Decode, 155, 2, 34, // Opcode: FMULD
/* 2667 */    MCD::OPC_FilterValue, 75, 4, 0, // Skip to: 2675
/* 2671 */    MCD::OPC_Decode, 158, 2, 35, // Opcode: FMULQ
/* 2675 */    MCD::OPC_FilterValue, 77, 4, 0, // Skip to: 2683
/* 2679 */    MCD::OPC_Decode, 227, 1, 33, // Opcode: FDIVS
/* 2683 */    MCD::OPC_FilterValue, 78, 4, 0, // Skip to: 2691
/* 2687 */    MCD::OPC_Decode, 225, 1, 34, // Opcode: FDIVD
/* 2691 */    MCD::OPC_FilterValue, 79, 4, 0, // Skip to: 2699
/* 2695 */    MCD::OPC_Decode, 226, 1, 35, // Opcode: FDIVQ
/* 2699 */    MCD::OPC_FilterValue, 81, 8, 0, // Skip to: 2711
/* 2703 */    MCD::OPC_CheckPredicate, 1, 116, 16, // Skip to: 6919
/* 2707 */    MCD::OPC_Decode, 161, 2, 34, // Opcode: FNADDS
/* 2711 */    MCD::OPC_FilterValue, 82, 8, 0, // Skip to: 2723
/* 2715 */    MCD::OPC_CheckPredicate, 1, 104, 16, // Skip to: 6919
/* 2719 */    MCD::OPC_Decode, 160, 2, 34, // Opcode: FNADDD
/* 2723 */    MCD::OPC_FilterValue, 89, 8, 0, // Skip to: 2735
/* 2727 */    MCD::OPC_CheckPredicate, 1, 92, 16, // Skip to: 6919
/* 2731 */    MCD::OPC_Decode, 170, 2, 34, // Opcode: FNMULS
/* 2735 */    MCD::OPC_FilterValue, 90, 8, 0, // Skip to: 2747
/* 2739 */    MCD::OPC_CheckPredicate, 1, 80, 16, // Skip to: 6919
/* 2743 */    MCD::OPC_Decode, 169, 2, 34, // Opcode: FNMULD
/* 2747 */    MCD::OPC_FilterValue, 97, 8, 0, // Skip to: 2759
/* 2751 */    MCD::OPC_CheckPredicate, 1, 68, 16, // Skip to: 6919
/* 2755 */    MCD::OPC_Decode, 235, 1, 34, // Opcode: FHADDS
/* 2759 */    MCD::OPC_FilterValue, 98, 8, 0, // Skip to: 2771
/* 2763 */    MCD::OPC_CheckPredicate, 1, 56, 16, // Skip to: 6919
/* 2767 */    MCD::OPC_Decode, 234, 1, 34, // Opcode: FHADDD
/* 2771 */    MCD::OPC_FilterValue, 101, 8, 0, // Skip to: 2783
/* 2775 */    MCD::OPC_CheckPredicate, 1, 44, 16, // Skip to: 6919
/* 2779 */    MCD::OPC_Decode, 237, 1, 34, // Opcode: FHSUBS
/* 2783 */    MCD::OPC_FilterValue, 102, 8, 0, // Skip to: 2795
/* 2787 */    MCD::OPC_CheckPredicate, 1, 32, 16, // Skip to: 6919
/* 2791 */    MCD::OPC_Decode, 236, 1, 34, // Opcode: FHSUBD
/* 2795 */    MCD::OPC_FilterValue, 105, 4, 0, // Skip to: 2803
/* 2799 */    MCD::OPC_Decode, 207, 2, 36, // Opcode: FSMULD
/* 2803 */    MCD::OPC_FilterValue, 110, 4, 0, // Skip to: 2811
/* 2807 */    MCD::OPC_Decode, 228, 1, 37, // Opcode: FDMULQ
/* 2811 */    MCD::OPC_FilterValue, 113, 8, 0, // Skip to: 2823
/* 2815 */    MCD::OPC_CheckPredicate, 1, 4, 16, // Skip to: 6919
/* 2819 */    MCD::OPC_Decode, 168, 2, 34, // Opcode: FNHADDS
/* 2823 */    MCD::OPC_FilterValue, 114, 8, 0, // Skip to: 2835
/* 2827 */    MCD::OPC_CheckPredicate, 1, 248, 15, // Skip to: 6919
/* 2831 */    MCD::OPC_Decode, 167, 2, 34, // Opcode: FNHADDD
/* 2835 */    MCD::OPC_FilterValue, 121, 8, 0, // Skip to: 2847
/* 2839 */    MCD::OPC_CheckPredicate, 1, 236, 15, // Skip to: 6919
/* 2843 */    MCD::OPC_Decode, 177, 2, 34, // Opcode: FNSMULD
/* 2847 */    MCD::OPC_FilterValue, 129, 1, 10, 0, // Skip to: 2862
/* 2852 */    MCD::OPC_CheckField, 14, 5, 0, 221, 15, // Skip to: 6919
/* 2858 */    MCD::OPC_Decode, 222, 2, 38, // Opcode: FSTOX
/* 2862 */    MCD::OPC_FilterValue, 130, 1, 10, 0, // Skip to: 2877
/* 2867 */    MCD::OPC_CheckField, 14, 5, 0, 206, 15, // Skip to: 6919
/* 2873 */    MCD::OPC_Decode, 232, 1, 31, // Opcode: FDTOX
/* 2877 */    MCD::OPC_FilterValue, 131, 1, 10, 0, // Skip to: 2892
/* 2882 */    MCD::OPC_CheckField, 14, 5, 0, 191, 15, // Skip to: 6919
/* 2888 */    MCD::OPC_Decode, 202, 2, 39, // Opcode: FQTOX
/* 2892 */    MCD::OPC_FilterValue, 132, 1, 10, 0, // Skip to: 2907
/* 2897 */    MCD::OPC_CheckField, 14, 5, 0, 176, 15, // Skip to: 6919
/* 2903 */    MCD::OPC_Decode, 232, 2, 40, // Opcode: FXTOS
/* 2907 */    MCD::OPC_FilterValue, 136, 1, 10, 0, // Skip to: 2922
/* 2912 */    MCD::OPC_CheckField, 14, 5, 0, 161, 15, // Skip to: 6919
/* 2918 */    MCD::OPC_Decode, 230, 2, 31, // Opcode: FXTOD
/* 2922 */    MCD::OPC_FilterValue, 140, 1, 10, 0, // Skip to: 2937
/* 2927 */    MCD::OPC_CheckField, 14, 5, 0, 146, 15, // Skip to: 6919
/* 2933 */    MCD::OPC_Decode, 231, 2, 41, // Opcode: FXTOQ
/* 2937 */    MCD::OPC_FilterValue, 196, 1, 10, 0, // Skip to: 2952
/* 2942 */    MCD::OPC_CheckField, 14, 5, 0, 131, 15, // Skip to: 6919
/* 2948 */    MCD::OPC_Decode, 240, 1, 30, // Opcode: FITOS
/* 2952 */    MCD::OPC_FilterValue, 198, 1, 10, 0, // Skip to: 2967
/* 2957 */    MCD::OPC_CheckField, 14, 5, 0, 116, 15, // Skip to: 6919
/* 2963 */    MCD::OPC_Decode, 231, 1, 40, // Opcode: FDTOS
/* 2967 */    MCD::OPC_FilterValue, 199, 1, 10, 0, // Skip to: 2982
/* 2972 */    MCD::OPC_CheckField, 14, 5, 0, 101, 15, // Skip to: 6919
/* 2978 */    MCD::OPC_Decode, 201, 2, 42, // Opcode: FQTOS
/* 2982 */    MCD::OPC_FilterValue, 200, 1, 10, 0, // Skip to: 2997
/* 2987 */    MCD::OPC_CheckField, 14, 5, 0, 86, 15, // Skip to: 6919
/* 2993 */    MCD::OPC_Decode, 238, 1, 38, // Opcode: FITOD
/* 2997 */    MCD::OPC_FilterValue, 201, 1, 10, 0, // Skip to: 3012
/* 3002 */    MCD::OPC_CheckField, 14, 5, 0, 71, 15, // Skip to: 6919
/* 3008 */    MCD::OPC_Decode, 219, 2, 38, // Opcode: FSTOD
/* 3012 */    MCD::OPC_FilterValue, 203, 1, 10, 0, // Skip to: 3027
/* 3017 */    MCD::OPC_CheckField, 14, 5, 0, 56, 15, // Skip to: 6919
/* 3023 */    MCD::OPC_Decode, 199, 2, 39, // Opcode: FQTOD
/* 3027 */    MCD::OPC_FilterValue, 204, 1, 10, 0, // Skip to: 3042
/* 3032 */    MCD::OPC_CheckField, 14, 5, 0, 41, 15, // Skip to: 6919
/* 3038 */    MCD::OPC_Decode, 239, 1, 43, // Opcode: FITOQ
/* 3042 */    MCD::OPC_FilterValue, 205, 1, 10, 0, // Skip to: 3057
/* 3047 */    MCD::OPC_CheckField, 14, 5, 0, 26, 15, // Skip to: 6919
/* 3053 */    MCD::OPC_Decode, 221, 2, 43, // Opcode: FSTOQ
/* 3057 */    MCD::OPC_FilterValue, 206, 1, 10, 0, // Skip to: 3072
/* 3062 */    MCD::OPC_CheckField, 14, 5, 0, 11, 15, // Skip to: 6919
/* 3068 */    MCD::OPC_Decode, 230, 1, 41, // Opcode: FDTOQ
/* 3072 */    MCD::OPC_FilterValue, 209, 1, 10, 0, // Skip to: 3087
/* 3077 */    MCD::OPC_CheckField, 14, 5, 0, 252, 14, // Skip to: 6919
/* 3083 */    MCD::OPC_Decode, 220, 2, 30, // Opcode: FSTOI
/* 3087 */    MCD::OPC_FilterValue, 210, 1, 10, 0, // Skip to: 3102
/* 3092 */    MCD::OPC_CheckField, 14, 5, 0, 237, 14, // Skip to: 6919
/* 3098 */    MCD::OPC_Decode, 229, 1, 40, // Opcode: FDTOI
/* 3102 */    MCD::OPC_FilterValue, 211, 1, 228, 14, // Skip to: 6919
/* 3107 */    MCD::OPC_CheckField, 14, 5, 0, 222, 14, // Skip to: 6919
/* 3113 */    MCD::OPC_Decode, 200, 2, 42, // Opcode: FQTOI
/* 3117 */    MCD::OPC_FilterValue, 53, 70, 2, // Skip to: 3703
/* 3121 */    MCD::OPC_ExtractField, 5, 6,  // Inst{10-5} ...
/* 3124 */    MCD::OPC_FilterValue, 1, 75, 0, // Skip to: 3203
/* 3128 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 3131 */    MCD::OPC_FilterValue, 0, 29, 0, // Skip to: 3164
/* 3135 */    MCD::OPC_ExtractField, 18, 1,  // Inst{18} ...
/* 3138 */    MCD::OPC_FilterValue, 0, 193, 14, // Skip to: 6919
/* 3142 */    MCD::OPC_CheckPredicate, 0, 10, 0, // Skip to: 3156
/* 3146 */    MCD::OPC_CheckField, 11, 2, 0, 4, 0, // Skip to: 3156
/* 3152 */    MCD::OPC_Decode, 147, 2, 44, // Opcode: FMOVS_FCC
/* 3156 */    MCD::OPC_CheckPredicate, 0, 175, 14, // Skip to: 6919
/* 3160 */    MCD::OPC_Decode, 216, 4, 45, // Opcode: V9FMOVS_FCC
/* 3164 */    MCD::OPC_FilterValue, 1, 167, 14, // Skip to: 6919
/* 3168 */    MCD::OPC_ExtractField, 11, 2,  // Inst{12-11} ...
/* 3171 */    MCD::OPC_FilterValue, 0, 14, 0, // Skip to: 3189
/* 3175 */    MCD::OPC_CheckPredicate, 0, 156, 14, // Skip to: 6919
/* 3179 */    MCD::OPC_CheckField, 18, 1, 0, 150, 14, // Skip to: 6919
/* 3185 */    MCD::OPC_Decode, 148, 2, 44, // Opcode: FMOVS_ICC
/* 3189 */    MCD::OPC_FilterValue, 2, 142, 14, // Skip to: 6919
/* 3193 */    MCD::OPC_CheckField, 18, 1, 0, 136, 14, // Skip to: 6919
/* 3199 */    MCD::OPC_Decode, 149, 2, 44, // Opcode: FMOVS_XCC
/* 3203 */    MCD::OPC_FilterValue, 2, 75, 0, // Skip to: 3282
/* 3207 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 3210 */    MCD::OPC_FilterValue, 0, 29, 0, // Skip to: 3243
/* 3214 */    MCD::OPC_ExtractField, 18, 1,  // Inst{18} ...
/* 3217 */    MCD::OPC_FilterValue, 0, 114, 14, // Skip to: 6919
/* 3221 */    MCD::OPC_CheckPredicate, 0, 10, 0, // Skip to: 3235
/* 3225 */    MCD::OPC_CheckField, 11, 2, 0, 4, 0, // Skip to: 3235
/* 3231 */    MCD::OPC_Decode, 249, 1, 46, // Opcode: FMOVD_FCC
/* 3235 */    MCD::OPC_CheckPredicate, 0, 96, 14, // Skip to: 6919
/* 3239 */    MCD::OPC_Decode, 214, 4, 47, // Opcode: V9FMOVD_FCC
/* 3243 */    MCD::OPC_FilterValue, 1, 88, 14, // Skip to: 6919
/* 3247 */    MCD::OPC_ExtractField, 11, 2,  // Inst{12-11} ...
/* 3250 */    MCD::OPC_FilterValue, 0, 14, 0, // Skip to: 3268
/* 3254 */    MCD::OPC_CheckPredicate, 0, 77, 14, // Skip to: 6919
/* 3258 */    MCD::OPC_CheckField, 18, 1, 0, 71, 14, // Skip to: 6919
/* 3264 */    MCD::OPC_Decode, 250, 1, 46, // Opcode: FMOVD_ICC
/* 3268 */    MCD::OPC_FilterValue, 2, 63, 14, // Skip to: 6919
/* 3272 */    MCD::OPC_CheckField, 18, 1, 0, 57, 14, // Skip to: 6919
/* 3278 */    MCD::OPC_Decode, 251, 1, 46, // Opcode: FMOVD_XCC
/* 3282 */    MCD::OPC_FilterValue, 3, 75, 0, // Skip to: 3361
/* 3286 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 3289 */    MCD::OPC_FilterValue, 0, 29, 0, // Skip to: 3322
/* 3293 */    MCD::OPC_ExtractField, 18, 1,  // Inst{18} ...
/* 3296 */    MCD::OPC_FilterValue, 0, 35, 14, // Skip to: 6919
/* 3300 */    MCD::OPC_CheckPredicate, 0, 10, 0, // Skip to: 3314
/* 3304 */    MCD::OPC_CheckField, 11, 2, 0, 4, 0, // Skip to: 3314
/* 3310 */    MCD::OPC_Decode, 253, 1, 48, // Opcode: FMOVQ_FCC
/* 3314 */    MCD::OPC_CheckPredicate, 0, 17, 14, // Skip to: 6919
/* 3318 */    MCD::OPC_Decode, 215, 4, 49, // Opcode: V9FMOVQ_FCC
/* 3322 */    MCD::OPC_FilterValue, 1, 9, 14, // Skip to: 6919
/* 3326 */    MCD::OPC_ExtractField, 11, 2,  // Inst{12-11} ...
/* 3329 */    MCD::OPC_FilterValue, 0, 14, 0, // Skip to: 3347
/* 3333 */    MCD::OPC_CheckPredicate, 0, 254, 13, // Skip to: 6919
/* 3337 */    MCD::OPC_CheckField, 18, 1, 0, 248, 13, // Skip to: 6919
/* 3343 */    MCD::OPC_Decode, 254, 1, 48, // Opcode: FMOVQ_ICC
/* 3347 */    MCD::OPC_FilterValue, 2, 240, 13, // Skip to: 6919
/* 3351 */    MCD::OPC_CheckField, 18, 1, 0, 234, 13, // Skip to: 6919
/* 3357 */    MCD::OPC_Decode, 255, 1, 48, // Opcode: FMOVQ_XCC
/* 3361 */    MCD::OPC_FilterValue, 5, 27, 0, // Skip to: 3392
/* 3365 */    MCD::OPC_ExtractField, 11, 3,  // Inst{13-11} ...
/* 3368 */    MCD::OPC_FilterValue, 1, 8, 0, // Skip to: 3380
/* 3372 */    MCD::OPC_CheckPredicate, 0, 215, 13, // Skip to: 6919
/* 3376 */    MCD::OPC_Decode, 136, 2, 50, // Opcode: FMOVRLEZS
/* 3380 */    MCD::OPC_FilterValue, 3, 207, 13, // Skip to: 6919
/* 3384 */    MCD::OPC_CheckPredicate, 0, 203, 13, // Skip to: 6919
/* 3388 */    MCD::OPC_Decode, 133, 2, 50, // Opcode: FMOVRGZS
/* 3392 */    MCD::OPC_FilterValue, 6, 27, 0, // Skip to: 3423
/* 3396 */    MCD::OPC_ExtractField, 11, 3,  // Inst{13-11} ...
/* 3399 */    MCD::OPC_FilterValue, 1, 8, 0, // Skip to: 3411
/* 3403 */    MCD::OPC_CheckPredicate, 0, 184, 13, // Skip to: 6919
/* 3407 */    MCD::OPC_Decode, 134, 2, 50, // Opcode: FMOVRLEZD
/* 3411 */    MCD::OPC_FilterValue, 3, 176, 13, // Skip to: 6919
/* 3415 */    MCD::OPC_CheckPredicate, 0, 172, 13, // Skip to: 6919
/* 3419 */    MCD::OPC_Decode, 131, 2, 50, // Opcode: FMOVRGZD
/* 3423 */    MCD::OPC_FilterValue, 7, 27, 0, // Skip to: 3454
/* 3427 */    MCD::OPC_ExtractField, 11, 3,  // Inst{13-11} ...
/* 3430 */    MCD::OPC_FilterValue, 1, 8, 0, // Skip to: 3442
/* 3434 */    MCD::OPC_CheckPredicate, 0, 153, 13, // Skip to: 6919
/* 3438 */    MCD::OPC_Decode, 135, 2, 50, // Opcode: FMOVRLEZQ
/* 3442 */    MCD::OPC_FilterValue, 3, 145, 13, // Skip to: 6919
/* 3446 */    MCD::OPC_CheckPredicate, 0, 141, 13, // Skip to: 6919
/* 3450 */    MCD::OPC_Decode, 132, 2, 50, // Opcode: FMOVRGZQ
/* 3454 */    MCD::OPC_FilterValue, 17, 10, 0, // Skip to: 3468
/* 3458 */    MCD::OPC_CheckField, 11, 3, 1, 127, 13, // Skip to: 6919
/* 3464 */    MCD::OPC_Decode, 213, 4, 51, // Opcode: V9FCMPS
/* 3468 */    MCD::OPC_FilterValue, 18, 10, 0, // Skip to: 3482
/* 3472 */    MCD::OPC_CheckField, 11, 3, 1, 113, 13, // Skip to: 6919
/* 3478 */    MCD::OPC_Decode, 208, 4, 52, // Opcode: V9FCMPD
/* 3482 */    MCD::OPC_FilterValue, 19, 10, 0, // Skip to: 3496
/* 3486 */    MCD::OPC_CheckField, 11, 3, 1, 99, 13, // Skip to: 6919
/* 3492 */    MCD::OPC_Decode, 212, 4, 53, // Opcode: V9FCMPQ
/* 3496 */    MCD::OPC_FilterValue, 21, 10, 0, // Skip to: 3510
/* 3500 */    MCD::OPC_CheckField, 11, 3, 1, 85, 13, // Skip to: 6919
/* 3506 */    MCD::OPC_Decode, 211, 4, 51, // Opcode: V9FCMPES
/* 3510 */    MCD::OPC_FilterValue, 22, 10, 0, // Skip to: 3524
/* 3514 */    MCD::OPC_CheckField, 11, 3, 1, 71, 13, // Skip to: 6919
/* 3520 */    MCD::OPC_Decode, 209, 4, 52, // Opcode: V9FCMPED
/* 3524 */    MCD::OPC_FilterValue, 23, 10, 0, // Skip to: 3538
/* 3528 */    MCD::OPC_CheckField, 11, 3, 1, 57, 13, // Skip to: 6919
/* 3534 */    MCD::OPC_Decode, 210, 4, 53, // Opcode: V9FCMPEQ
/* 3538 */    MCD::OPC_FilterValue, 37, 51, 0, // Skip to: 3593
/* 3542 */    MCD::OPC_ExtractField, 11, 3,  // Inst{13-11} ...
/* 3545 */    MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 3557
/* 3549 */    MCD::OPC_CheckPredicate, 0, 38, 13, // Skip to: 6919
/* 3553 */    MCD::OPC_Decode, 145, 2, 50, // Opcode: FMOVRZS
/* 3557 */    MCD::OPC_FilterValue, 1, 8, 0, // Skip to: 3569
/* 3561 */    MCD::OPC_CheckPredicate, 0, 26, 13, // Skip to: 6919
/* 3565 */    MCD::OPC_Decode, 139, 2, 50, // Opcode: FMOVRLZS
/* 3569 */    MCD::OPC_FilterValue, 2, 8, 0, // Skip to: 3581
/* 3573 */    MCD::OPC_CheckPredicate, 0, 14, 13, // Skip to: 6919
/* 3577 */    MCD::OPC_Decode, 142, 2, 50, // Opcode: FMOVRNZS
/* 3581 */    MCD::OPC_FilterValue, 3, 6, 13, // Skip to: 6919
/* 3585 */    MCD::OPC_CheckPredicate, 0, 2, 13, // Skip to: 6919
/* 3589 */    MCD::OPC_Decode, 130, 2, 50, // Opcode: FMOVRGEZS
/* 3593 */    MCD::OPC_FilterValue, 38, 51, 0, // Skip to: 3648
/* 3597 */    MCD::OPC_ExtractField, 11, 3,  // Inst{13-11} ...
/* 3600 */    MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 3612
/* 3604 */    MCD::OPC_CheckPredicate, 0, 239, 12, // Skip to: 6919
/* 3608 */    MCD::OPC_Decode, 143, 2, 50, // Opcode: FMOVRZD
/* 3612 */    MCD::OPC_FilterValue, 1, 8, 0, // Skip to: 3624
/* 3616 */    MCD::OPC_CheckPredicate, 0, 227, 12, // Skip to: 6919
/* 3620 */    MCD::OPC_Decode, 137, 2, 50, // Opcode: FMOVRLZD
/* 3624 */    MCD::OPC_FilterValue, 2, 8, 0, // Skip to: 3636
/* 3628 */    MCD::OPC_CheckPredicate, 0, 215, 12, // Skip to: 6919
/* 3632 */    MCD::OPC_Decode, 140, 2, 50, // Opcode: FMOVRNZD
/* 3636 */    MCD::OPC_FilterValue, 3, 207, 12, // Skip to: 6919
/* 3640 */    MCD::OPC_CheckPredicate, 0, 203, 12, // Skip to: 6919
/* 3644 */    MCD::OPC_Decode, 128, 2, 50, // Opcode: FMOVRGEZD
/* 3648 */    MCD::OPC_FilterValue, 39, 195, 12, // Skip to: 6919
/* 3652 */    MCD::OPC_ExtractField, 11, 3,  // Inst{13-11} ...
/* 3655 */    MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 3667
/* 3659 */    MCD::OPC_CheckPredicate, 0, 184, 12, // Skip to: 6919
/* 3663 */    MCD::OPC_Decode, 144, 2, 50, // Opcode: FMOVRZQ
/* 3667 */    MCD::OPC_FilterValue, 1, 8, 0, // Skip to: 3679
/* 3671 */    MCD::OPC_CheckPredicate, 0, 172, 12, // Skip to: 6919
/* 3675 */    MCD::OPC_Decode, 138, 2, 50, // Opcode: FMOVRLZQ
/* 3679 */    MCD::OPC_FilterValue, 2, 8, 0, // Skip to: 3691
/* 3683 */    MCD::OPC_CheckPredicate, 0, 160, 12, // Skip to: 6919
/* 3687 */    MCD::OPC_Decode, 141, 2, 50, // Opcode: FMOVRNZQ
/* 3691 */    MCD::OPC_FilterValue, 3, 152, 12, // Skip to: 6919
/* 3695 */    MCD::OPC_CheckPredicate, 0, 148, 12, // Skip to: 6919
/* 3699 */    MCD::OPC_Decode, 129, 2, 50, // Opcode: FMOVRGEZQ
/* 3703 */    MCD::OPC_FilterValue, 54, 25, 6, // Skip to: 5268
/* 3707 */    MCD::OPC_ExtractField, 5, 9,  // Inst{13-5} ...
/* 3710 */    MCD::OPC_FilterValue, 0, 8, 0, // Skip to: 3722
/* 3714 */    MCD::OPC_CheckPredicate, 2, 129, 12, // Skip to: 6919
/* 3718 */    MCD::OPC_Decode, 190, 1, 10, // Opcode: EDGE8
/* 3722 */    MCD::OPC_FilterValue, 1, 8, 0, // Skip to: 3734
/* 3726 */    MCD::OPC_CheckPredicate, 3, 117, 12, // Skip to: 6919
/* 3730 */    MCD::OPC_Decode, 193, 1, 10, // Opcode: EDGE8N
/* 3734 */    MCD::OPC_FilterValue, 2, 8, 0, // Skip to: 3746
/* 3738 */    MCD::OPC_CheckPredicate, 2, 105, 12, // Skip to: 6919
/* 3742 */    MCD::OPC_Decode, 191, 1, 10, // Opcode: EDGE8L
/* 3746 */    MCD::OPC_FilterValue, 3, 8, 0, // Skip to: 3758
/* 3750 */    MCD::OPC_CheckPredicate, 3, 93, 12, // Skip to: 6919
/* 3754 */    MCD::OPC_Decode, 192, 1, 10, // Opcode: EDGE8LN
/* 3758 */    MCD::OPC_FilterValue, 4, 8, 0, // Skip to: 3770
/* 3762 */    MCD::OPC_CheckPredicate, 2, 81, 12, // Skip to: 6919
/* 3766 */    MCD::OPC_Decode, 182, 1, 10, // Opcode: EDGE16
/* 3770 */    MCD::OPC_FilterValue, 5, 8, 0, // Skip to: 3782
/* 3774 */    MCD::OPC_CheckPredicate, 3, 69, 12, // Skip to: 6919
/* 3778 */    MCD::OPC_Decode, 185, 1, 10, // Opcode: EDGE16N
/* 3782 */    MCD::OPC_FilterValue, 6, 8, 0, // Skip to: 3794
/* 3786 */    MCD::OPC_CheckPredicate, 2, 57, 12, // Skip to: 6919
/* 3790 */    MCD::OPC_Decode, 183, 1, 10, // Opcode: EDGE16L
/* 3794 */    MCD::OPC_FilterValue, 7, 8, 0, // Skip to: 3806
/* 3798 */    MCD::OPC_CheckPredicate, 3, 45, 12, // Skip to: 6919
/* 3802 */    MCD::OPC_Decode, 184, 1, 10, // Opcode: EDGE16LN
/* 3806 */    MCD::OPC_FilterValue, 8, 8, 0, // Skip to: 3818
/* 3810 */    MCD::OPC_CheckPredicate, 2, 33, 12, // Skip to: 6919
/* 3814 */    MCD::OPC_Decode, 186, 1, 10, // Opcode: EDGE32
/* 3818 */    MCD::OPC_FilterValue, 9, 8, 0, // Skip to: 3830
/* 3822 */    MCD::OPC_CheckPredicate, 3, 21, 12, // Skip to: 6919
/* 3826 */    MCD::OPC_Decode, 189, 1, 10, // Opcode: EDGE32N
/* 3830 */    MCD::OPC_FilterValue, 10, 8, 0, // Skip to: 3842
/* 3834 */    MCD::OPC_CheckPredicate, 2, 9, 12, // Skip to: 6919
/* 3838 */    MCD::OPC_Decode, 187, 1, 10, // Opcode: EDGE32L
/* 3842 */    MCD::OPC_FilterValue, 11, 8, 0, // Skip to: 3854
/* 3846 */    MCD::OPC_CheckPredicate, 3, 253, 11, // Skip to: 6919
/* 3850 */    MCD::OPC_Decode, 188, 1, 10, // Opcode: EDGE32LN
/* 3854 */    MCD::OPC_FilterValue, 16, 7, 0, // Skip to: 3865
/* 3858 */    MCD::OPC_CheckPredicate, 2, 241, 11, // Skip to: 6919
/* 3862 */    MCD::OPC_Decode, 124, 10, // Opcode: ARRAY8
/* 3865 */    MCD::OPC_FilterValue, 17, 7, 0, // Skip to: 3876
/* 3869 */    MCD::OPC_CheckPredicate, 1, 230, 11, // Skip to: 6919
/* 3873 */    MCD::OPC_Decode, 101, 10, // Opcode: ADDXC
/* 3876 */    MCD::OPC_FilterValue, 18, 7, 0, // Skip to: 3887
/* 3880 */    MCD::OPC_CheckPredicate, 2, 219, 11, // Skip to: 6919
/* 3884 */    MCD::OPC_Decode, 122, 10, // Opcode: ARRAY16
/* 3887 */    MCD::OPC_FilterValue, 19, 7, 0, // Skip to: 3898
/* 3891 */    MCD::OPC_CheckPredicate, 1, 208, 11, // Skip to: 6919
/* 3895 */    MCD::OPC_Decode, 102, 10, // Opcode: ADDXCCC
/* 3898 */    MCD::OPC_FilterValue, 20, 7, 0, // Skip to: 3909
/* 3902 */    MCD::OPC_CheckPredicate, 2, 197, 11, // Skip to: 6919
/* 3906 */    MCD::OPC_Decode, 123, 10, // Opcode: ARRAY32
/* 3909 */    MCD::OPC_FilterValue, 22, 8, 0, // Skip to: 3921
/* 3913 */    MCD::OPC_CheckPredicate, 1, 186, 11, // Skip to: 6919
/* 3917 */    MCD::OPC_Decode, 204, 4, 10, // Opcode: UMULXHI
/* 3921 */    MCD::OPC_FilterValue, 23, 14, 0, // Skip to: 3939
/* 3925 */    MCD::OPC_CheckPredicate, 1, 174, 11, // Skip to: 6919
/* 3929 */    MCD::OPC_CheckField, 14, 5, 0, 168, 11, // Skip to: 6919
/* 3935 */    MCD::OPC_Decode, 156, 3, 54, // Opcode: LZCNT
/* 3939 */    MCD::OPC_FilterValue, 24, 7, 0, // Skip to: 3950
/* 3943 */    MCD::OPC_CheckPredicate, 2, 156, 11, // Skip to: 6919
/* 3947 */    MCD::OPC_Decode, 109, 10, // Opcode: ALIGNADDR
/* 3950 */    MCD::OPC_FilterValue, 25, 8, 0, // Skip to: 3962
/* 3954 */    MCD::OPC_CheckPredicate, 3, 145, 11, // Skip to: 6919
/* 3958 */    MCD::OPC_Decode, 130, 1, 10, // Opcode: BMASK
/* 3962 */    MCD::OPC_FilterValue, 26, 7, 0, // Skip to: 3973
/* 3966 */    MCD::OPC_CheckPredicate, 2, 133, 11, // Skip to: 6919
/* 3970 */    MCD::OPC_Decode, 110, 10, // Opcode: ALIGNADDRL
/* 3973 */    MCD::OPC_FilterValue, 27, 20, 0, // Skip to: 3997
/* 3977 */    MCD::OPC_CheckPredicate, 1, 122, 11, // Skip to: 6919
/* 3981 */    MCD::OPC_CheckField, 25, 5, 0, 116, 11, // Skip to: 6919
/* 3987 */    MCD::OPC_CheckField, 14, 5, 0, 110, 11, // Skip to: 6919
/* 3993 */    MCD::OPC_Decode, 179, 1, 55, // Opcode: CMASK8
/* 3997 */    MCD::OPC_FilterValue, 28, 8, 0, // Skip to: 4009
/* 4001 */    MCD::OPC_CheckPredicate, 3, 98, 11, // Skip to: 6919
/* 4005 */    MCD::OPC_Decode, 167, 1, 34, // Opcode: BSHUFFLE
/* 4009 */    MCD::OPC_FilterValue, 29, 20, 0, // Skip to: 4033
/* 4013 */    MCD::OPC_CheckPredicate, 1, 86, 11, // Skip to: 6919
/* 4017 */    MCD::OPC_CheckField, 25, 5, 0, 80, 11, // Skip to: 6919
/* 4023 */    MCD::OPC_CheckField, 14, 5, 0, 74, 11, // Skip to: 6919
/* 4029 */    MCD::OPC_Decode, 177, 1, 55, // Opcode: CMASK16
/* 4033 */    MCD::OPC_FilterValue, 31, 20, 0, // Skip to: 4057
/* 4037 */    MCD::OPC_CheckPredicate, 1, 62, 11, // Skip to: 6919
/* 4041 */    MCD::OPC_CheckField, 25, 5, 0, 56, 11, // Skip to: 6919
/* 4047 */    MCD::OPC_CheckField, 14, 5, 0, 50, 11, // Skip to: 6919
/* 4053 */    MCD::OPC_Decode, 178, 1, 55, // Opcode: CMASK32
/* 4057 */    MCD::OPC_FilterValue, 32, 8, 0, // Skip to: 4069
/* 4061 */    MCD::OPC_CheckPredicate, 2, 38, 11, // Skip to: 6919
/* 4065 */    MCD::OPC_Decode, 219, 1, 56, // Opcode: FCMPLE16
/* 4069 */    MCD::OPC_FilterValue, 33, 8, 0, // Skip to: 4081
/* 4073 */    MCD::OPC_CheckPredicate, 1, 26, 11, // Skip to: 6919
/* 4077 */    MCD::OPC_Decode, 205, 2, 34, // Opcode: FSLL16
/* 4081 */    MCD::OPC_FilterValue, 34, 8, 0, // Skip to: 4093
/* 4085 */    MCD::OPC_CheckPredicate, 2, 14, 11, // Skip to: 6919
/* 4089 */    MCD::OPC_Decode, 221, 1, 56, // Opcode: FCMPNE16
/* 4093 */    MCD::OPC_FilterValue, 35, 8, 0, // Skip to: 4105
/* 4097 */    MCD::OPC_CheckPredicate, 1, 2, 11, // Skip to: 6919
/* 4101 */    MCD::OPC_Decode, 217, 2, 34, // Opcode: FSRL16
/* 4105 */    MCD::OPC_FilterValue, 36, 8, 0, // Skip to: 4117
/* 4109 */    MCD::OPC_CheckPredicate, 2, 246, 10, // Skip to: 6919
/* 4113 */    MCD::OPC_Decode, 220, 1, 56, // Opcode: FCMPLE32
/* 4117 */    MCD::OPC_FilterValue, 37, 8, 0, // Skip to: 4129
/* 4121 */    MCD::OPC_CheckPredicate, 1, 234, 10, // Skip to: 6919
/* 4125 */    MCD::OPC_Decode, 206, 2, 34, // Opcode: FSLL32
/* 4129 */    MCD::OPC_FilterValue, 38, 8, 0, // Skip to: 4141
/* 4133 */    MCD::OPC_CheckPredicate, 2, 222, 10, // Skip to: 6919
/* 4137 */    MCD::OPC_Decode, 222, 1, 56, // Opcode: FCMPNE32
/* 4141 */    MCD::OPC_FilterValue, 39, 8, 0, // Skip to: 4153
/* 4145 */    MCD::OPC_CheckPredicate, 1, 210, 10, // Skip to: 6919
/* 4149 */    MCD::OPC_Decode, 218, 2, 34, // Opcode: FSRL32
/* 4153 */    MCD::OPC_FilterValue, 40, 8, 0, // Skip to: 4165
/* 4157 */    MCD::OPC_CheckPredicate, 2, 198, 10, // Skip to: 6919
/* 4161 */    MCD::OPC_Decode, 217, 1, 56, // Opcode: FCMPGT16
/* 4165 */    MCD::OPC_FilterValue, 41, 8, 0, // Skip to: 4177
/* 4169 */    MCD::OPC_CheckPredicate, 1, 186, 10, // Skip to: 6919
/* 4173 */    MCD::OPC_Decode, 203, 2, 34, // Opcode: FSLAS16
/* 4177 */    MCD::OPC_FilterValue, 42, 8, 0, // Skip to: 4189
/* 4181 */    MCD::OPC_CheckPredicate, 2, 174, 10, // Skip to: 6919
/* 4185 */    MCD::OPC_Decode, 215, 1, 56, // Opcode: FCMPEQ16
/* 4189 */    MCD::OPC_FilterValue, 43, 8, 0, // Skip to: 4201
/* 4193 */    MCD::OPC_CheckPredicate, 1, 162, 10, // Skip to: 6919
/* 4197 */    MCD::OPC_Decode, 211, 2, 34, // Opcode: FSRA16
/* 4201 */    MCD::OPC_FilterValue, 44, 8, 0, // Skip to: 4213
/* 4205 */    MCD::OPC_CheckPredicate, 2, 150, 10, // Skip to: 6919
/* 4209 */    MCD::OPC_Decode, 218, 1, 56, // Opcode: FCMPGT32
/* 4213 */    MCD::OPC_FilterValue, 45, 8, 0, // Skip to: 4225
/* 4217 */    MCD::OPC_CheckPredicate, 1, 138, 10, // Skip to: 6919
/* 4221 */    MCD::OPC_Decode, 204, 2, 34, // Opcode: FSLAS32
/* 4225 */    MCD::OPC_FilterValue, 46, 8, 0, // Skip to: 4237
/* 4229 */    MCD::OPC_CheckPredicate, 2, 126, 10, // Skip to: 6919
/* 4233 */    MCD::OPC_Decode, 216, 1, 56, // Opcode: FCMPEQ32
/* 4237 */    MCD::OPC_FilterValue, 47, 8, 0, // Skip to: 4249
/* 4241 */    MCD::OPC_CheckPredicate, 1, 114, 10, // Skip to: 6919
/* 4245 */    MCD::OPC_Decode, 212, 2, 34, // Opcode: FSRA32
/* 4249 */    MCD::OPC_FilterValue, 49, 8, 0, // Skip to: 4261
/* 4253 */    MCD::OPC_CheckPredicate, 2, 102, 10, // Skip to: 6919
/* 4257 */    MCD::OPC_Decode, 152, 2, 34, // Opcode: FMUL8X16
/* 4261 */    MCD::OPC_FilterValue, 51, 8, 0, // Skip to: 4273
/* 4265 */    MCD::OPC_CheckPredicate, 2, 90, 10, // Skip to: 6919
/* 4269 */    MCD::OPC_Decode, 154, 2, 34, // Opcode: FMUL8X16AU
/* 4273 */    MCD::OPC_FilterValue, 53, 8, 0, // Skip to: 4285
/* 4277 */    MCD::OPC_CheckPredicate, 2, 78, 10, // Skip to: 6919
/* 4281 */    MCD::OPC_Decode, 153, 2, 34, // Opcode: FMUL8X16AL
/* 4285 */    MCD::OPC_FilterValue, 54, 8, 0, // Skip to: 4297
/* 4289 */    MCD::OPC_CheckPredicate, 2, 66, 10, // Skip to: 6919
/* 4293 */    MCD::OPC_Decode, 150, 2, 34, // Opcode: FMUL8SUX16
/* 4297 */    MCD::OPC_FilterValue, 55, 8, 0, // Skip to: 4309
/* 4301 */    MCD::OPC_CheckPredicate, 2, 54, 10, // Skip to: 6919
/* 4305 */    MCD::OPC_Decode, 151, 2, 34, // Opcode: FMUL8ULX16
/* 4309 */    MCD::OPC_FilterValue, 56, 8, 0, // Skip to: 4321
/* 4313 */    MCD::OPC_CheckPredicate, 2, 42, 10, // Skip to: 6919
/* 4317 */    MCD::OPC_Decode, 156, 2, 34, // Opcode: FMULD8SUX16
/* 4321 */    MCD::OPC_FilterValue, 57, 8, 0, // Skip to: 4333
/* 4325 */    MCD::OPC_CheckPredicate, 2, 30, 10, // Skip to: 6919
/* 4329 */    MCD::OPC_Decode, 157, 2, 34, // Opcode: FMULD8ULX16
/* 4333 */    MCD::OPC_FilterValue, 58, 8, 0, // Skip to: 4345
/* 4337 */    MCD::OPC_CheckPredicate, 2, 18, 10, // Skip to: 6919
/* 4341 */    MCD::OPC_Decode, 187, 2, 34, // Opcode: FPACK32
/* 4345 */    MCD::OPC_FilterValue, 59, 14, 0, // Skip to: 4363
/* 4349 */    MCD::OPC_CheckPredicate, 2, 6, 10, // Skip to: 6919
/* 4353 */    MCD::OPC_CheckField, 14, 5, 0, 0, 10, // Skip to: 6919
/* 4359 */    MCD::OPC_Decode, 186, 2, 31, // Opcode: FPACK16
/* 4363 */    MCD::OPC_FilterValue, 61, 14, 0, // Skip to: 4381
/* 4367 */    MCD::OPC_CheckPredicate, 2, 244, 9, // Skip to: 6919
/* 4371 */    MCD::OPC_CheckField, 14, 5, 0, 238, 9, // Skip to: 6919
/* 4377 */    MCD::OPC_Decode, 188, 2, 31, // Opcode: FPACKFIX
/* 4381 */    MCD::OPC_FilterValue, 62, 8, 0, // Skip to: 4393
/* 4385 */    MCD::OPC_CheckPredicate, 2, 226, 9, // Skip to: 6919
/* 4389 */    MCD::OPC_Decode, 197, 3, 34, // Opcode: PDIST
/* 4393 */    MCD::OPC_FilterValue, 63, 8, 0, // Skip to: 4405
/* 4397 */    MCD::OPC_CheckPredicate, 1, 214, 9, // Skip to: 6919
/* 4401 */    MCD::OPC_Decode, 198, 3, 34, // Opcode: PDISTN
/* 4405 */    MCD::OPC_FilterValue, 64, 8, 0, // Skip to: 4417
/* 4409 */    MCD::OPC_CheckPredicate, 1, 202, 9, // Skip to: 6919
/* 4413 */    MCD::OPC_Decode, 247, 1, 34, // Opcode: FMEAN16
/* 4417 */    MCD::OPC_FilterValue, 66, 8, 0, // Skip to: 4429
/* 4421 */    MCD::OPC_CheckPredicate, 1, 190, 9, // Skip to: 6919
/* 4425 */    MCD::OPC_Decode, 193, 2, 34, // Opcode: FPADD64
/* 4429 */    MCD::OPC_FilterValue, 68, 8, 0, // Skip to: 4441
/* 4433 */    MCD::OPC_CheckPredicate, 1, 178, 9, // Skip to: 6919
/* 4437 */    MCD::OPC_Decode, 213, 1, 34, // Opcode: FCHKSM16
/* 4441 */    MCD::OPC_FilterValue, 72, 8, 0, // Skip to: 4453
/* 4445 */    MCD::OPC_CheckPredicate, 2, 166, 9, // Skip to: 6919
/* 4449 */    MCD::OPC_Decode, 204, 1, 34, // Opcode: FALIGNADATA
/* 4453 */    MCD::OPC_FilterValue, 75, 8, 0, // Skip to: 4465
/* 4457 */    MCD::OPC_CheckPredicate, 2, 154, 9, // Skip to: 6919
/* 4461 */    MCD::OPC_Decode, 194, 2, 34, // Opcode: FPMERGE
/* 4465 */    MCD::OPC_FilterValue, 77, 14, 0, // Skip to: 4483
/* 4469 */    MCD::OPC_CheckPredicate, 2, 142, 9, // Skip to: 6919
/* 4473 */    MCD::OPC_CheckField, 14, 5, 0, 136, 9, // Skip to: 6919
/* 4479 */    MCD::OPC_Decode, 233, 1, 31, // Opcode: FEXPAND
/* 4483 */    MCD::OPC_FilterValue, 80, 8, 0, // Skip to: 4495
/* 4487 */    MCD::OPC_CheckPredicate, 2, 124, 9, // Skip to: 6919
/* 4491 */    MCD::OPC_Decode, 189, 2, 34, // Opcode: FPADD16
/* 4495 */    MCD::OPC_FilterValue, 81, 8, 0, // Skip to: 4507
/* 4499 */    MCD::OPC_CheckPredicate, 2, 112, 9, // Skip to: 6919
/* 4503 */    MCD::OPC_Decode, 190, 2, 34, // Opcode: FPADD16S
/* 4507 */    MCD::OPC_FilterValue, 82, 8, 0, // Skip to: 4519
/* 4511 */    MCD::OPC_CheckPredicate, 2, 100, 9, // Skip to: 6919
/* 4515 */    MCD::OPC_Decode, 191, 2, 34, // Opcode: FPADD32
/* 4519 */    MCD::OPC_FilterValue, 83, 8, 0, // Skip to: 4531
/* 4523 */    MCD::OPC_CheckPredicate, 2, 88, 9, // Skip to: 6919
/* 4527 */    MCD::OPC_Decode, 192, 2, 34, // Opcode: FPADD32S
/* 4531 */    MCD::OPC_FilterValue, 84, 8, 0, // Skip to: 4543
/* 4535 */    MCD::OPC_CheckPredicate, 2, 76, 9, // Skip to: 6919
/* 4539 */    MCD::OPC_Decode, 195, 2, 34, // Opcode: FPSUB16
/* 4543 */    MCD::OPC_FilterValue, 85, 8, 0, // Skip to: 4555
/* 4547 */    MCD::OPC_CheckPredicate, 2, 64, 9, // Skip to: 6919
/* 4551 */    MCD::OPC_Decode, 196, 2, 34, // Opcode: FPSUB16S
/* 4555 */    MCD::OPC_FilterValue, 86, 8, 0, // Skip to: 4567
/* 4559 */    MCD::OPC_CheckPredicate, 2, 52, 9, // Skip to: 6919
/* 4563 */    MCD::OPC_Decode, 197, 2, 34, // Opcode: FPSUB32
/* 4567 */    MCD::OPC_FilterValue, 87, 8, 0, // Skip to: 4579
/* 4571 */    MCD::OPC_CheckPredicate, 2, 40, 9, // Skip to: 6919
/* 4575 */    MCD::OPC_Decode, 198, 2, 34, // Opcode: FPSUB32S
/* 4579 */    MCD::OPC_FilterValue, 96, 20, 0, // Skip to: 4603
/* 4583 */    MCD::OPC_CheckPredicate, 2, 28, 9, // Skip to: 6919
/* 4587 */    MCD::OPC_CheckField, 14, 5, 0, 22, 9, // Skip to: 6919
/* 4593 */    MCD::OPC_CheckField, 0, 5, 0, 16, 9, // Skip to: 6919
/* 4599 */    MCD::OPC_Decode, 233, 2, 57, // Opcode: FZERO
/* 4603 */    MCD::OPC_FilterValue, 97, 20, 0, // Skip to: 4627
/* 4607 */    MCD::OPC_CheckPredicate, 2, 4, 9, // Skip to: 6919
/* 4611 */    MCD::OPC_CheckField, 14, 5, 0, 254, 8, // Skip to: 6919
/* 4617 */    MCD::OPC_CheckField, 0, 5, 0, 248, 8, // Skip to: 6919
/* 4623 */    MCD::OPC_Decode, 234, 2, 58, // Opcode: FZEROS
/* 4627 */    MCD::OPC_FilterValue, 98, 8, 0, // Skip to: 4639
/* 4631 */    MCD::OPC_CheckPredicate, 2, 236, 8, // Skip to: 6919
/* 4635 */    MCD::OPC_Decode, 171, 2, 34, // Opcode: FNOR
/* 4639 */    MCD::OPC_FilterValue, 99, 8, 0, // Skip to: 4651
/* 4643 */    MCD::OPC_CheckPredicate, 2, 224, 8, // Skip to: 6919
/* 4647 */    MCD::OPC_Decode, 172, 2, 33, // Opcode: FNORS
/* 4651 */    MCD::OPC_FilterValue, 100, 8, 0, // Skip to: 4663
/* 4655 */    MCD::OPC_CheckPredicate, 2, 212, 8, // Skip to: 6919
/* 4659 */    MCD::OPC_Decode, 208, 1, 34, // Opcode: FANDNOT2
/* 4663 */    MCD::OPC_FilterValue, 101, 8, 0, // Skip to: 4675
/* 4667 */    MCD::OPC_CheckPredicate, 2, 200, 8, // Skip to: 6919
/* 4671 */    MCD::OPC_Decode, 209, 1, 33, // Opcode: FANDNOT2S
/* 4675 */    MCD::OPC_FilterValue, 102, 14, 0, // Skip to: 4693
/* 4679 */    MCD::OPC_CheckPredicate, 2, 188, 8, // Skip to: 6919
/* 4683 */    MCD::OPC_CheckField, 14, 5, 0, 182, 8, // Skip to: 6919
/* 4689 */    MCD::OPC_Decode, 175, 2, 31, // Opcode: FNOT2
/* 4693 */    MCD::OPC_FilterValue, 103, 14, 0, // Skip to: 4711
/* 4697 */    MCD::OPC_CheckPredicate, 2, 170, 8, // Skip to: 6919
/* 4701 */    MCD::OPC_CheckField, 14, 5, 0, 164, 8, // Skip to: 6919
/* 4707 */    MCD::OPC_Decode, 176, 2, 30, // Opcode: FNOT2S
/* 4711 */    MCD::OPC_FilterValue, 104, 8, 0, // Skip to: 4723
/* 4715 */    MCD::OPC_CheckPredicate, 2, 152, 8, // Skip to: 6919
/* 4719 */    MCD::OPC_Decode, 206, 1, 34, // Opcode: FANDNOT1
/* 4723 */    MCD::OPC_FilterValue, 105, 8, 0, // Skip to: 4735
/* 4727 */    MCD::OPC_CheckPredicate, 2, 140, 8, // Skip to: 6919
/* 4731 */    MCD::OPC_Decode, 207, 1, 33, // Opcode: FANDNOT1S
/* 4735 */    MCD::OPC_FilterValue, 106, 14, 0, // Skip to: 4753
/* 4739 */    MCD::OPC_CheckPredicate, 2, 128, 8, // Skip to: 6919
/* 4743 */    MCD::OPC_CheckField, 0, 5, 0, 122, 8, // Skip to: 6919
/* 4749 */    MCD::OPC_Decode, 173, 2, 59, // Opcode: FNOT1
/* 4753 */    MCD::OPC_FilterValue, 107, 14, 0, // Skip to: 4771
/* 4757 */    MCD::OPC_CheckPredicate, 2, 110, 8, // Skip to: 6919
/* 4761 */    MCD::OPC_CheckField, 0, 5, 0, 104, 8, // Skip to: 6919
/* 4767 */    MCD::OPC_Decode, 174, 2, 60, // Opcode: FNOT1S
/* 4771 */    MCD::OPC_FilterValue, 108, 8, 0, // Skip to: 4783
/* 4775 */    MCD::OPC_CheckPredicate, 2, 92, 8, // Skip to: 6919
/* 4779 */    MCD::OPC_Decode, 228, 2, 34, // Opcode: FXOR
/* 4783 */    MCD::OPC_FilterValue, 109, 8, 0, // Skip to: 4795
/* 4787 */    MCD::OPC_CheckPredicate, 2, 80, 8, // Skip to: 6919
/* 4791 */    MCD::OPC_Decode, 229, 2, 33, // Opcode: FXORS
/* 4795 */    MCD::OPC_FilterValue, 110, 8, 0, // Skip to: 4807
/* 4799 */    MCD::OPC_CheckPredicate, 2, 68, 8, // Skip to: 6919
/* 4803 */    MCD::OPC_Decode, 162, 2, 34, // Opcode: FNAND
/* 4807 */    MCD::OPC_FilterValue, 111, 8, 0, // Skip to: 4819
/* 4811 */    MCD::OPC_CheckPredicate, 2, 56, 8, // Skip to: 6919
/* 4815 */    MCD::OPC_Decode, 163, 2, 33, // Opcode: FNANDS
/* 4819 */    MCD::OPC_FilterValue, 112, 8, 0, // Skip to: 4831
/* 4823 */    MCD::OPC_CheckPredicate, 2, 44, 8, // Skip to: 6919
/* 4827 */    MCD::OPC_Decode, 205, 1, 34, // Opcode: FAND
/* 4831 */    MCD::OPC_FilterValue, 113, 8, 0, // Skip to: 4843
/* 4835 */    MCD::OPC_CheckPredicate, 2, 32, 8, // Skip to: 6919
/* 4839 */    MCD::OPC_Decode, 210, 1, 33, // Opcode: FANDS
/* 4843 */    MCD::OPC_FilterValue, 114, 8, 0, // Skip to: 4855
/* 4847 */    MCD::OPC_CheckPredicate, 2, 20, 8, // Skip to: 6919
/* 4851 */    MCD::OPC_Decode, 226, 2, 34, // Opcode: FXNOR
/* 4855 */    MCD::OPC_FilterValue, 115, 8, 0, // Skip to: 4867
/* 4859 */    MCD::OPC_CheckPredicate, 2, 8, 8, // Skip to: 6919
/* 4863 */    MCD::OPC_Decode, 227, 2, 33, // Opcode: FXNORS
/* 4867 */    MCD::OPC_FilterValue, 116, 14, 0, // Skip to: 4885
/* 4871 */    MCD::OPC_CheckPredicate, 2, 252, 7, // Skip to: 6919
/* 4875 */    MCD::OPC_CheckField, 0, 5, 0, 246, 7, // Skip to: 6919
/* 4881 */    MCD::OPC_Decode, 213, 2, 59, // Opcode: FSRC1
/* 4885 */    MCD::OPC_FilterValue, 117, 14, 0, // Skip to: 4903
/* 4889 */    MCD::OPC_CheckPredicate, 2, 234, 7, // Skip to: 6919
/* 4893 */    MCD::OPC_CheckField, 0, 5, 0, 228, 7, // Skip to: 6919
/* 4899 */    MCD::OPC_Decode, 214, 2, 60, // Opcode: FSRC1S
/* 4903 */    MCD::OPC_FilterValue, 118, 8, 0, // Skip to: 4915
/* 4907 */    MCD::OPC_CheckPredicate, 2, 216, 7, // Skip to: 6919
/* 4911 */    MCD::OPC_Decode, 183, 2, 34, // Opcode: FORNOT2
/* 4915 */    MCD::OPC_FilterValue, 119, 8, 0, // Skip to: 4927
/* 4919 */    MCD::OPC_CheckPredicate, 2, 204, 7, // Skip to: 6919
/* 4923 */    MCD::OPC_Decode, 184, 2, 33, // Opcode: FORNOT2S
/* 4927 */    MCD::OPC_FilterValue, 120, 14, 0, // Skip to: 4945
/* 4931 */    MCD::OPC_CheckPredicate, 2, 192, 7, // Skip to: 6919
/* 4935 */    MCD::OPC_CheckField, 14, 5, 0, 186, 7, // Skip to: 6919
/* 4941 */    MCD::OPC_Decode, 215, 2, 31, // Opcode: FSRC2
/* 4945 */    MCD::OPC_FilterValue, 121, 14, 0, // Skip to: 4963
/* 4949 */    MCD::OPC_CheckPredicate, 2, 174, 7, // Skip to: 6919
/* 4953 */    MCD::OPC_CheckField, 14, 5, 0, 168, 7, // Skip to: 6919
/* 4959 */    MCD::OPC_Decode, 216, 2, 30, // Opcode: FSRC2S
/* 4963 */    MCD::OPC_FilterValue, 122, 8, 0, // Skip to: 4975
/* 4967 */    MCD::OPC_CheckPredicate, 2, 156, 7, // Skip to: 6919
/* 4971 */    MCD::OPC_Decode, 181, 2, 34, // Opcode: FORNOT1
/* 4975 */    MCD::OPC_FilterValue, 123, 8, 0, // Skip to: 4987
/* 4979 */    MCD::OPC_CheckPredicate, 2, 144, 7, // Skip to: 6919
/* 4983 */    MCD::OPC_Decode, 182, 2, 33, // Opcode: FORNOT1S
/* 4987 */    MCD::OPC_FilterValue, 124, 8, 0, // Skip to: 4999
/* 4991 */    MCD::OPC_CheckPredicate, 2, 132, 7, // Skip to: 6919
/* 4995 */    MCD::OPC_Decode, 180, 2, 34, // Opcode: FOR
/* 4999 */    MCD::OPC_FilterValue, 125, 8, 0, // Skip to: 5011
/* 5003 */    MCD::OPC_CheckPredicate, 2, 120, 7, // Skip to: 6919
/* 5007 */    MCD::OPC_Decode, 185, 2, 33, // Opcode: FORS
/* 5011 */    MCD::OPC_FilterValue, 126, 20, 0, // Skip to: 5035
/* 5015 */    MCD::OPC_CheckPredicate, 2, 108, 7, // Skip to: 6919
/* 5019 */    MCD::OPC_CheckField, 14, 5, 0, 102, 7, // Skip to: 6919
/* 5025 */    MCD::OPC_CheckField, 0, 5, 0, 96, 7, // Skip to: 6919
/* 5031 */    MCD::OPC_Decode, 178, 2, 57, // Opcode: FONE
/* 5035 */    MCD::OPC_FilterValue, 127, 20, 0, // Skip to: 5059
/* 5039 */    MCD::OPC_CheckPredicate, 2, 84, 7, // Skip to: 6919
/* 5043 */    MCD::OPC_CheckField, 14, 5, 0, 78, 7, // Skip to: 6919
/* 5049 */    MCD::OPC_CheckField, 0, 5, 0, 72, 7, // Skip to: 6919
/* 5055 */    MCD::OPC_Decode, 179, 2, 58, // Opcode: FONES
/* 5059 */    MCD::OPC_FilterValue, 128, 1, 26, 0, // Skip to: 5090
/* 5064 */    MCD::OPC_CheckPredicate, 2, 59, 7, // Skip to: 6919
/* 5068 */    MCD::OPC_CheckField, 25, 5, 0, 53, 7, // Skip to: 6919
/* 5074 */    MCD::OPC_CheckField, 14, 5, 0, 47, 7, // Skip to: 6919
/* 5080 */    MCD::OPC_CheckField, 0, 5, 0, 41, 7, // Skip to: 6919
/* 5086 */    MCD::OPC_Decode, 230, 3, 4, // Opcode: SHUTDOWN
/* 5090 */    MCD::OPC_FilterValue, 129, 1, 26, 0, // Skip to: 5121
/* 5095 */    MCD::OPC_CheckPredicate, 3, 28, 7, // Skip to: 6919
/* 5099 */    MCD::OPC_CheckField, 25, 5, 0, 22, 7, // Skip to: 6919
/* 5105 */    MCD::OPC_CheckField, 14, 5, 0, 16, 7, // Skip to: 6919
/* 5111 */    MCD::OPC_CheckField, 0, 5, 0, 10, 7, // Skip to: 6919
/* 5117 */    MCD::OPC_Decode, 231, 3, 4, // Opcode: SIAM
/* 5121 */    MCD::OPC_FilterValue, 144, 2, 14, 0, // Skip to: 5140
/* 5126 */    MCD::OPC_CheckPredicate, 1, 253, 6, // Skip to: 6919
/* 5130 */    MCD::OPC_CheckField, 14, 5, 0, 247, 6, // Skip to: 6919
/* 5136 */    MCD::OPC_Decode, 158, 3, 61, // Opcode: MOVDTOX
/* 5140 */    MCD::OPC_FilterValue, 145, 2, 14, 0, // Skip to: 5159
/* 5145 */    MCD::OPC_CheckPredicate, 1, 234, 6, // Skip to: 6919
/* 5149 */    MCD::OPC_CheckField, 14, 5, 0, 228, 6, // Skip to: 6919
/* 5155 */    MCD::OPC_Decode, 176, 3, 61, // Opcode: MOVSTOUW
/* 5159 */    MCD::OPC_FilterValue, 147, 2, 14, 0, // Skip to: 5178
/* 5164 */    MCD::OPC_CheckPredicate, 1, 215, 6, // Skip to: 6919
/* 5168 */    MCD::OPC_CheckField, 14, 5, 0, 209, 6, // Skip to: 6919
/* 5174 */    MCD::OPC_Decode, 175, 3, 61, // Opcode: MOVSTOSW
/* 5178 */    MCD::OPC_FilterValue, 149, 2, 8, 0, // Skip to: 5191
/* 5183 */    MCD::OPC_CheckPredicate, 1, 196, 6, // Skip to: 6919
/* 5187 */    MCD::OPC_Decode, 229, 4, 10, // Opcode: XMULX
/* 5191 */    MCD::OPC_FilterValue, 151, 2, 8, 0, // Skip to: 5204
/* 5196 */    MCD::OPC_CheckPredicate, 1, 183, 6, // Skip to: 6919
/* 5200 */    MCD::OPC_Decode, 230, 4, 10, // Opcode: XMULXHI
/* 5204 */    MCD::OPC_FilterValue, 152, 2, 14, 0, // Skip to: 5223
/* 5209 */    MCD::OPC_CheckPredicate, 1, 170, 6, // Skip to: 6919
/* 5213 */    MCD::OPC_CheckField, 14, 5, 0, 164, 6, // Skip to: 6919
/* 5219 */    MCD::OPC_Decode, 180, 3, 62, // Opcode: MOVXTOD
/* 5223 */    MCD::OPC_FilterValue, 153, 2, 14, 0, // Skip to: 5242
/* 5228 */    MCD::OPC_CheckPredicate, 1, 151, 6, // Skip to: 6919
/* 5232 */    MCD::OPC_CheckField, 14, 5, 0, 145, 6, // Skip to: 6919
/* 5238 */    MCD::OPC_Decode, 177, 3, 62, // Opcode: MOVWTOS
/* 5242 */    MCD::OPC_FilterValue, 209, 2, 8, 0, // Skip to: 5255
/* 5247 */    MCD::OPC_CheckPredicate, 1, 132, 6, // Skip to: 6919
/* 5251 */    MCD::OPC_Decode, 242, 1, 52, // Opcode: FLCMPS
/* 5255 */    MCD::OPC_FilterValue, 210, 2, 123, 6, // Skip to: 6919
/* 5260 */    MCD::OPC_CheckPredicate, 1, 119, 6, // Skip to: 6919
/* 5264 */    MCD::OPC_Decode, 241, 1, 52, // Opcode: FLCMPD
/* 5268 */    MCD::OPC_FilterValue, 56, 25, 0, // Skip to: 5297
/* 5272 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5275 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5289
/* 5279 */    MCD::OPC_CheckField, 5, 8, 0, 98, 6, // Skip to: 6919
/* 5285 */    MCD::OPC_Decode, 237, 2, 63, // Opcode: JMPLrr
/* 5289 */    MCD::OPC_FilterValue, 1, 90, 6, // Skip to: 6919
/* 5293 */    MCD::OPC_Decode, 236, 2, 63, // Opcode: JMPLri
/* 5297 */    MCD::OPC_FilterValue, 57, 37, 0, // Skip to: 5338
/* 5301 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5304 */    MCD::OPC_FilterValue, 0, 16, 0, // Skip to: 5324
/* 5308 */    MCD::OPC_CheckField, 25, 5, 0, 69, 6, // Skip to: 6919
/* 5314 */    MCD::OPC_CheckField, 5, 8, 0, 63, 6, // Skip to: 6919
/* 5320 */    MCD::OPC_Decode, 210, 3, 64, // Opcode: RETTrr
/* 5324 */    MCD::OPC_FilterValue, 1, 55, 6, // Skip to: 6919
/* 5328 */    MCD::OPC_CheckField, 25, 5, 0, 49, 6, // Skip to: 6919
/* 5334 */    MCD::OPC_Decode, 209, 3, 64, // Opcode: RETTri
/* 5338 */    MCD::OPC_FilterValue, 58, 84, 0, // Skip to: 5426
/* 5342 */    MCD::OPC_ExtractField, 8, 6,  // Inst{13-8} ...
/* 5345 */    MCD::OPC_FilterValue, 16, 16, 0, // Skip to: 5365
/* 5349 */    MCD::OPC_CheckField, 29, 1, 0, 28, 6, // Skip to: 6919
/* 5355 */    MCD::OPC_CheckField, 5, 3, 0, 22, 6, // Skip to: 6919
/* 5361 */    MCD::OPC_Decode, 193, 4, 65, // Opcode: TXCCrr
/* 5365 */    MCD::OPC_FilterValue, 32, 43, 0, // Skip to: 5412
/* 5369 */    MCD::OPC_ExtractField, 0, 8,  // Inst{7-0} ...
/* 5372 */    MCD::OPC_FilterValue, 3, 16, 0, // Skip to: 5392
/* 5376 */    MCD::OPC_CheckField, 25, 5, 0, 1, 6, // Skip to: 6919
/* 5382 */    MCD::OPC_CheckField, 14, 5, 1, 251, 5, // Skip to: 6919
/* 5388 */    MCD::OPC_Decode, 173, 4, 4, // Opcode: TA3
/* 5392 */    MCD::OPC_FilterValue, 5, 243, 5, // Skip to: 6919
/* 5396 */    MCD::OPC_CheckField, 25, 5, 8, 237, 5, // Skip to: 6919
/* 5402 */    MCD::OPC_CheckField, 14, 5, 0, 231, 5, // Skip to: 6919
/* 5408 */    MCD::OPC_Decode, 174, 4, 4, // Opcode: TA5
/* 5412 */    MCD::OPC_FilterValue, 48, 223, 5, // Skip to: 6919
/* 5416 */    MCD::OPC_CheckField, 29, 1, 0, 217, 5, // Skip to: 6919
/* 5422 */    MCD::OPC_Decode, 192, 4, 66, // Opcode: TXCCri
/* 5426 */    MCD::OPC_FilterValue, 59, 55, 0, // Skip to: 5485
/* 5430 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5433 */    MCD::OPC_FilterValue, 0, 34, 0, // Skip to: 5471
/* 5437 */    MCD::OPC_ExtractField, 5, 8,  // Inst{12-5} ...
/* 5440 */    MCD::OPC_FilterValue, 0, 195, 5, // Skip to: 6919
/* 5444 */    MCD::OPC_ExtractField, 25, 5,  // Inst{29-25} ...
/* 5447 */    MCD::OPC_FilterValue, 0, 188, 5, // Skip to: 6919
/* 5451 */    MCD::OPC_CheckField, 14, 5, 0, 10, 0, // Skip to: 5467
/* 5457 */    MCD::OPC_CheckField, 0, 5, 0, 4, 0, // Skip to: 5467
/* 5463 */    MCD::OPC_Decode, 243, 1, 4, // Opcode: FLUSH
/* 5467 */    MCD::OPC_Decode, 246, 1, 4, // Opcode: FLUSHrr
/* 5471 */    MCD::OPC_FilterValue, 1, 164, 5, // Skip to: 6919
/* 5475 */    MCD::OPC_CheckField, 25, 5, 0, 158, 5, // Skip to: 6919
/* 5481 */    MCD::OPC_Decode, 245, 1, 4, // Opcode: FLUSHri
/* 5485 */    MCD::OPC_FilterValue, 60, 25, 0, // Skip to: 5514
/* 5489 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5492 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5506
/* 5496 */    MCD::OPC_CheckField, 5, 8, 0, 137, 5, // Skip to: 6919
/* 5502 */    MCD::OPC_Decode, 212, 3, 8, // Opcode: SAVErr
/* 5506 */    MCD::OPC_FilterValue, 1, 129, 5, // Skip to: 6919
/* 5510 */    MCD::OPC_Decode, 211, 3, 9, // Opcode: SAVEri
/* 5514 */    MCD::OPC_FilterValue, 61, 25, 0, // Skip to: 5543
/* 5518 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5521 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5535
/* 5525 */    MCD::OPC_CheckField, 5, 8, 0, 108, 5, // Skip to: 6919
/* 5531 */    MCD::OPC_Decode, 206, 3, 8, // Opcode: RESTORErr
/* 5535 */    MCD::OPC_FilterValue, 1, 100, 5, // Skip to: 6919
/* 5539 */    MCD::OPC_Decode, 205, 3, 9, // Opcode: RESTOREri
/* 5543 */    MCD::OPC_FilterValue, 62, 25, 0, // Skip to: 5572
/* 5547 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5550 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5564
/* 5554 */    MCD::OPC_CheckField, 5, 8, 0, 79, 5, // Skip to: 6919
/* 5560 */    MCD::OPC_Decode, 201, 4, 8, // Opcode: UMACrr
/* 5564 */    MCD::OPC_FilterValue, 1, 71, 5, // Skip to: 6919
/* 5568 */    MCD::OPC_Decode, 200, 4, 9, // Opcode: UMACri
/* 5572 */    MCD::OPC_FilterValue, 63, 63, 5, // Skip to: 6919
/* 5576 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5579 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5593
/* 5583 */    MCD::OPC_CheckField, 5, 8, 0, 50, 5, // Skip to: 6919
/* 5589 */    MCD::OPC_Decode, 237, 3, 8, // Opcode: SMACrr
/* 5593 */    MCD::OPC_FilterValue, 1, 42, 5, // Skip to: 6919
/* 5597 */    MCD::OPC_Decode, 236, 3, 9, // Opcode: SMACri
/* 5601 */    MCD::OPC_FilterValue, 3, 34, 5, // Skip to: 6919
/* 5605 */    MCD::OPC_ExtractField, 19, 6,  // Inst{24-19} ...
/* 5608 */    MCD::OPC_FilterValue, 0, 25, 0, // Skip to: 5637
/* 5612 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5615 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5629
/* 5619 */    MCD::OPC_CheckField, 5, 8, 0, 14, 5, // Skip to: 6919
/* 5625 */    MCD::OPC_Decode, 153, 3, 67, // Opcode: LDrr
/* 5629 */    MCD::OPC_FilterValue, 1, 6, 5, // Skip to: 6919
/* 5633 */    MCD::OPC_Decode, 152, 3, 67, // Opcode: LDri
/* 5637 */    MCD::OPC_FilterValue, 1, 25, 0, // Skip to: 5666
/* 5641 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5644 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5658
/* 5648 */    MCD::OPC_CheckField, 5, 8, 0, 241, 4, // Skip to: 6919
/* 5654 */    MCD::OPC_Decode, 144, 3, 67, // Opcode: LDUBrr
/* 5658 */    MCD::OPC_FilterValue, 1, 233, 4, // Skip to: 6919
/* 5662 */    MCD::OPC_Decode, 143, 3, 67, // Opcode: LDUBri
/* 5666 */    MCD::OPC_FilterValue, 2, 25, 0, // Skip to: 5695
/* 5670 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5673 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5687
/* 5677 */    MCD::OPC_CheckField, 5, 8, 0, 212, 4, // Skip to: 6919
/* 5683 */    MCD::OPC_Decode, 147, 3, 67, // Opcode: LDUHrr
/* 5687 */    MCD::OPC_FilterValue, 1, 204, 4, // Skip to: 6919
/* 5691 */    MCD::OPC_Decode, 146, 3, 67, // Opcode: LDUHri
/* 5695 */    MCD::OPC_FilterValue, 3, 25, 0, // Skip to: 5724
/* 5699 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5702 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5716
/* 5706 */    MCD::OPC_CheckField, 5, 8, 0, 183, 4, // Skip to: 6919
/* 5712 */    MCD::OPC_Decode, 250, 2, 68, // Opcode: LDDrr
/* 5716 */    MCD::OPC_FilterValue, 1, 175, 4, // Skip to: 6919
/* 5720 */    MCD::OPC_Decode, 249, 2, 68, // Opcode: LDDri
/* 5724 */    MCD::OPC_FilterValue, 4, 25, 0, // Skip to: 5753
/* 5728 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5731 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5745
/* 5735 */    MCD::OPC_CheckField, 5, 8, 0, 154, 4, // Skip to: 6919
/* 5741 */    MCD::OPC_Decode, 159, 4, 69, // Opcode: STrr
/* 5745 */    MCD::OPC_FilterValue, 1, 146, 4, // Skip to: 6919
/* 5749 */    MCD::OPC_Decode, 158, 4, 69, // Opcode: STri
/* 5753 */    MCD::OPC_FilterValue, 5, 25, 0, // Skip to: 5782
/* 5757 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5760 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5774
/* 5764 */    MCD::OPC_CheckField, 5, 8, 0, 125, 4, // Skip to: 6919
/* 5770 */    MCD::OPC_Decode, 254, 3, 69, // Opcode: STBrr
/* 5774 */    MCD::OPC_FilterValue, 1, 117, 4, // Skip to: 6919
/* 5778 */    MCD::OPC_Decode, 253, 3, 69, // Opcode: STBri
/* 5782 */    MCD::OPC_FilterValue, 6, 25, 0, // Skip to: 5811
/* 5786 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5789 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5803
/* 5793 */    MCD::OPC_CheckField, 5, 8, 0, 96, 4, // Skip to: 6919
/* 5799 */    MCD::OPC_Decode, 150, 4, 69, // Opcode: STHrr
/* 5803 */    MCD::OPC_FilterValue, 1, 88, 4, // Skip to: 6919
/* 5807 */    MCD::OPC_Decode, 149, 4, 69, // Opcode: STHri
/* 5811 */    MCD::OPC_FilterValue, 7, 25, 0, // Skip to: 5840
/* 5815 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5818 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5832
/* 5822 */    MCD::OPC_CheckField, 5, 8, 0, 67, 4, // Skip to: 6919
/* 5828 */    MCD::OPC_Decode, 142, 4, 70, // Opcode: STDrr
/* 5832 */    MCD::OPC_FilterValue, 1, 59, 4, // Skip to: 6919
/* 5836 */    MCD::OPC_Decode, 141, 4, 70, // Opcode: STDri
/* 5840 */    MCD::OPC_FilterValue, 8, 25, 0, // Skip to: 5869
/* 5844 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5847 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5861
/* 5851 */    MCD::OPC_CheckField, 5, 8, 0, 38, 4, // Skip to: 6919
/* 5857 */    MCD::OPC_Decode, 141, 3, 67, // Opcode: LDSWrr
/* 5861 */    MCD::OPC_FilterValue, 1, 30, 4, // Skip to: 6919
/* 5865 */    MCD::OPC_Decode, 140, 3, 67, // Opcode: LDSWri
/* 5869 */    MCD::OPC_FilterValue, 9, 25, 0, // Skip to: 5898
/* 5873 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5876 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5890
/* 5880 */    MCD::OPC_CheckField, 5, 8, 0, 9, 4, // Skip to: 6919
/* 5886 */    MCD::OPC_Decode, 133, 3, 67, // Opcode: LDSBrr
/* 5890 */    MCD::OPC_FilterValue, 1, 1, 4, // Skip to: 6919
/* 5894 */    MCD::OPC_Decode, 132, 3, 67, // Opcode: LDSBri
/* 5898 */    MCD::OPC_FilterValue, 10, 25, 0, // Skip to: 5927
/* 5902 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5905 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5919
/* 5909 */    MCD::OPC_CheckField, 5, 8, 0, 236, 3, // Skip to: 6919
/* 5915 */    MCD::OPC_Decode, 136, 3, 67, // Opcode: LDSHrr
/* 5919 */    MCD::OPC_FilterValue, 1, 228, 3, // Skip to: 6919
/* 5923 */    MCD::OPC_Decode, 135, 3, 67, // Opcode: LDSHri
/* 5927 */    MCD::OPC_FilterValue, 11, 25, 0, // Skip to: 5956
/* 5931 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5934 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5948
/* 5938 */    MCD::OPC_CheckField, 5, 8, 0, 207, 3, // Skip to: 6919
/* 5944 */    MCD::OPC_Decode, 151, 3, 67, // Opcode: LDXrr
/* 5948 */    MCD::OPC_FilterValue, 1, 199, 3, // Skip to: 6919
/* 5952 */    MCD::OPC_Decode, 150, 3, 67, // Opcode: LDXri
/* 5956 */    MCD::OPC_FilterValue, 13, 25, 0, // Skip to: 5985
/* 5960 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5963 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 5977
/* 5967 */    MCD::OPC_CheckField, 5, 8, 0, 178, 3, // Skip to: 6919
/* 5973 */    MCD::OPC_Decode, 139, 3, 4, // Opcode: LDSTUBrr
/* 5977 */    MCD::OPC_FilterValue, 1, 170, 3, // Skip to: 6919
/* 5981 */    MCD::OPC_Decode, 138, 3, 4, // Opcode: LDSTUBri
/* 5985 */    MCD::OPC_FilterValue, 14, 25, 0, // Skip to: 6014
/* 5989 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 5992 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 6006
/* 5996 */    MCD::OPC_CheckField, 5, 8, 0, 149, 3, // Skip to: 6919
/* 6002 */    MCD::OPC_Decode, 157, 4, 69, // Opcode: STXrr
/* 6006 */    MCD::OPC_FilterValue, 1, 141, 3, // Skip to: 6919
/* 6010 */    MCD::OPC_Decode, 156, 4, 69, // Opcode: STXri
/* 6014 */    MCD::OPC_FilterValue, 15, 25, 0, // Skip to: 6043
/* 6018 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6021 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 6035
/* 6025 */    MCD::OPC_CheckField, 5, 8, 0, 120, 3, // Skip to: 6919
/* 6031 */    MCD::OPC_Decode, 172, 4, 71, // Opcode: SWAPrr
/* 6035 */    MCD::OPC_FilterValue, 1, 112, 3, // Skip to: 6919
/* 6039 */    MCD::OPC_Decode, 171, 4, 71, // Opcode: SWAPri
/* 6043 */    MCD::OPC_FilterValue, 16, 10, 0, // Skip to: 6057
/* 6047 */    MCD::OPC_CheckField, 13, 1, 0, 98, 3, // Skip to: 6919
/* 6053 */    MCD::OPC_Decode, 238, 2, 67, // Opcode: LDArr
/* 6057 */    MCD::OPC_FilterValue, 17, 10, 0, // Skip to: 6071
/* 6061 */    MCD::OPC_CheckField, 13, 1, 0, 84, 3, // Skip to: 6919
/* 6067 */    MCD::OPC_Decode, 142, 3, 67, // Opcode: LDUBArr
/* 6071 */    MCD::OPC_FilterValue, 18, 10, 0, // Skip to: 6085
/* 6075 */    MCD::OPC_CheckField, 13, 1, 0, 70, 3, // Skip to: 6919
/* 6081 */    MCD::OPC_Decode, 145, 3, 67, // Opcode: LDUHArr
/* 6085 */    MCD::OPC_FilterValue, 19, 10, 0, // Skip to: 6099
/* 6089 */    MCD::OPC_CheckField, 13, 1, 0, 56, 3, // Skip to: 6919
/* 6095 */    MCD::OPC_Decode, 243, 2, 68, // Opcode: LDDArr
/* 6099 */    MCD::OPC_FilterValue, 20, 10, 0, // Skip to: 6113
/* 6103 */    MCD::OPC_CheckField, 13, 1, 0, 42, 3, // Skip to: 6919
/* 6109 */    MCD::OPC_Decode, 250, 3, 69, // Opcode: STArr
/* 6113 */    MCD::OPC_FilterValue, 21, 10, 0, // Skip to: 6127
/* 6117 */    MCD::OPC_CheckField, 13, 1, 0, 28, 3, // Skip to: 6919
/* 6123 */    MCD::OPC_Decode, 252, 3, 69, // Opcode: STBArr
/* 6127 */    MCD::OPC_FilterValue, 22, 10, 0, // Skip to: 6141
/* 6131 */    MCD::OPC_CheckField, 13, 1, 0, 14, 3, // Skip to: 6919
/* 6137 */    MCD::OPC_Decode, 148, 4, 69, // Opcode: STHArr
/* 6141 */    MCD::OPC_FilterValue, 23, 10, 0, // Skip to: 6155
/* 6145 */    MCD::OPC_CheckField, 13, 1, 0, 0, 3, // Skip to: 6919
/* 6151 */    MCD::OPC_Decode, 131, 4, 70, // Opcode: STDArr
/* 6155 */    MCD::OPC_FilterValue, 25, 10, 0, // Skip to: 6169
/* 6159 */    MCD::OPC_CheckField, 13, 1, 0, 242, 2, // Skip to: 6919
/* 6165 */    MCD::OPC_Decode, 131, 3, 67, // Opcode: LDSBArr
/* 6169 */    MCD::OPC_FilterValue, 26, 10, 0, // Skip to: 6183
/* 6173 */    MCD::OPC_CheckField, 13, 1, 0, 228, 2, // Skip to: 6919
/* 6179 */    MCD::OPC_Decode, 134, 3, 67, // Opcode: LDSHArr
/* 6183 */    MCD::OPC_FilterValue, 29, 10, 0, // Skip to: 6197
/* 6187 */    MCD::OPC_CheckField, 13, 1, 0, 214, 2, // Skip to: 6919
/* 6193 */    MCD::OPC_Decode, 137, 3, 72, // Opcode: LDSTUBArr
/* 6197 */    MCD::OPC_FilterValue, 31, 10, 0, // Skip to: 6211
/* 6201 */    MCD::OPC_CheckField, 13, 1, 0, 200, 2, // Skip to: 6919
/* 6207 */    MCD::OPC_Decode, 170, 4, 71, // Opcode: SWAPArr
/* 6211 */    MCD::OPC_FilterValue, 32, 25, 0, // Skip to: 6240
/* 6215 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6218 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 6232
/* 6222 */    MCD::OPC_CheckField, 5, 8, 0, 179, 2, // Skip to: 6919
/* 6228 */    MCD::OPC_Decode, 255, 2, 73, // Opcode: LDFrr
/* 6232 */    MCD::OPC_FilterValue, 1, 171, 2, // Skip to: 6919
/* 6236 */    MCD::OPC_Decode, 254, 2, 73, // Opcode: LDFri
/* 6240 */    MCD::OPC_FilterValue, 33, 69, 0, // Skip to: 6313
/* 6244 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6247 */    MCD::OPC_FilterValue, 0, 35, 0, // Skip to: 6286
/* 6251 */    MCD::OPC_ExtractField, 25, 5,  // Inst{29-25} ...
/* 6254 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 6268
/* 6258 */    MCD::OPC_CheckField, 5, 8, 0, 143, 2, // Skip to: 6919
/* 6264 */    MCD::OPC_Decode, 253, 2, 73, // Opcode: LDFSRrr
/* 6268 */    MCD::OPC_FilterValue, 1, 135, 2, // Skip to: 6919
/* 6272 */    MCD::OPC_CheckPredicate, 0, 131, 2, // Skip to: 6919
/* 6276 */    MCD::OPC_CheckField, 5, 8, 0, 125, 2, // Skip to: 6919
/* 6282 */    MCD::OPC_Decode, 149, 3, 73, // Opcode: LDXFSRrr
/* 6286 */    MCD::OPC_FilterValue, 1, 117, 2, // Skip to: 6919
/* 6290 */    MCD::OPC_ExtractField, 25, 5,  // Inst{29-25} ...
/* 6293 */    MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 6301
/* 6297 */    MCD::OPC_Decode, 252, 2, 73, // Opcode: LDFSRri
/* 6301 */    MCD::OPC_FilterValue, 1, 102, 2, // Skip to: 6919
/* 6305 */    MCD::OPC_CheckPredicate, 0, 98, 2, // Skip to: 6919
/* 6309 */    MCD::OPC_Decode, 148, 3, 73, // Opcode: LDXFSRri
/* 6313 */    MCD::OPC_FilterValue, 34, 33, 0, // Skip to: 6350
/* 6317 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6320 */    MCD::OPC_FilterValue, 0, 14, 0, // Skip to: 6338
/* 6324 */    MCD::OPC_CheckPredicate, 0, 79, 2, // Skip to: 6919
/* 6328 */    MCD::OPC_CheckField, 5, 8, 0, 73, 2, // Skip to: 6919
/* 6334 */    MCD::OPC_Decode, 130, 3, 74, // Opcode: LDQFrr
/* 6338 */    MCD::OPC_FilterValue, 1, 65, 2, // Skip to: 6919
/* 6342 */    MCD::OPC_CheckPredicate, 0, 61, 2, // Skip to: 6919
/* 6346 */    MCD::OPC_Decode, 129, 3, 74, // Opcode: LDQFri
/* 6350 */    MCD::OPC_FilterValue, 35, 25, 0, // Skip to: 6379
/* 6354 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6357 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 6371
/* 6361 */    MCD::OPC_CheckField, 5, 8, 0, 40, 2, // Skip to: 6919
/* 6367 */    MCD::OPC_Decode, 248, 2, 75, // Opcode: LDDFrr
/* 6371 */    MCD::OPC_FilterValue, 1, 32, 2, // Skip to: 6919
/* 6375 */    MCD::OPC_Decode, 247, 2, 75, // Opcode: LDDFri
/* 6379 */    MCD::OPC_FilterValue, 36, 25, 0, // Skip to: 6408
/* 6383 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6386 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 6400
/* 6390 */    MCD::OPC_CheckField, 5, 8, 0, 11, 2, // Skip to: 6919
/* 6396 */    MCD::OPC_Decode, 147, 4, 76, // Opcode: STFrr
/* 6400 */    MCD::OPC_FilterValue, 1, 3, 2, // Skip to: 6919
/* 6404 */    MCD::OPC_Decode, 146, 4, 76, // Opcode: STFri
/* 6408 */    MCD::OPC_FilterValue, 37, 69, 0, // Skip to: 6481
/* 6412 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6415 */    MCD::OPC_FilterValue, 0, 35, 0, // Skip to: 6454
/* 6419 */    MCD::OPC_ExtractField, 25, 5,  // Inst{29-25} ...
/* 6422 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 6436
/* 6426 */    MCD::OPC_CheckField, 5, 8, 0, 231, 1, // Skip to: 6919
/* 6432 */    MCD::OPC_Decode, 145, 4, 76, // Opcode: STFSRrr
/* 6436 */    MCD::OPC_FilterValue, 1, 223, 1, // Skip to: 6919
/* 6440 */    MCD::OPC_CheckPredicate, 0, 219, 1, // Skip to: 6919
/* 6444 */    MCD::OPC_CheckField, 5, 8, 0, 213, 1, // Skip to: 6919
/* 6450 */    MCD::OPC_Decode, 155, 4, 76, // Opcode: STXFSRrr
/* 6454 */    MCD::OPC_FilterValue, 1, 205, 1, // Skip to: 6919
/* 6458 */    MCD::OPC_ExtractField, 25, 5,  // Inst{29-25} ...
/* 6461 */    MCD::OPC_FilterValue, 0, 4, 0, // Skip to: 6469
/* 6465 */    MCD::OPC_Decode, 144, 4, 76, // Opcode: STFSRri
/* 6469 */    MCD::OPC_FilterValue, 1, 190, 1, // Skip to: 6919
/* 6473 */    MCD::OPC_CheckPredicate, 0, 186, 1, // Skip to: 6919
/* 6477 */    MCD::OPC_Decode, 154, 4, 76, // Opcode: STXFSRri
/* 6481 */    MCD::OPC_FilterValue, 38, 54, 0, // Skip to: 6539
/* 6485 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6488 */    MCD::OPC_FilterValue, 0, 25, 0, // Skip to: 6517
/* 6492 */    MCD::OPC_ExtractField, 5, 8,  // Inst{12-5} ...
/* 6495 */    MCD::OPC_FilterValue, 0, 164, 1, // Skip to: 6919
/* 6499 */    MCD::OPC_CheckField, 25, 5, 0, 4, 0, // Skip to: 6509
/* 6505 */    MCD::OPC_Decode, 138, 4, 76, // Opcode: STDFQrr
/* 6509 */    MCD::OPC_CheckPredicate, 0, 150, 1, // Skip to: 6919
/* 6513 */    MCD::OPC_Decode, 153, 4, 77, // Opcode: STQFrr
/* 6517 */    MCD::OPC_FilterValue, 1, 142, 1, // Skip to: 6919
/* 6521 */    MCD::OPC_CheckField, 25, 5, 0, 4, 0, // Skip to: 6531
/* 6527 */    MCD::OPC_Decode, 137, 4, 76, // Opcode: STDFQri
/* 6531 */    MCD::OPC_CheckPredicate, 0, 128, 1, // Skip to: 6919
/* 6535 */    MCD::OPC_Decode, 152, 4, 77, // Opcode: STQFri
/* 6539 */    MCD::OPC_FilterValue, 39, 25, 0, // Skip to: 6568
/* 6543 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6546 */    MCD::OPC_FilterValue, 0, 10, 0, // Skip to: 6560
/* 6550 */    MCD::OPC_CheckField, 5, 8, 0, 107, 1, // Skip to: 6919
/* 6556 */    MCD::OPC_Decode, 140, 4, 78, // Opcode: STDFrr
/* 6560 */    MCD::OPC_FilterValue, 1, 99, 1, // Skip to: 6919
/* 6564 */    MCD::OPC_Decode, 139, 4, 78, // Opcode: STDFri
/* 6568 */    MCD::OPC_FilterValue, 48, 33, 0, // Skip to: 6605
/* 6572 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6575 */    MCD::OPC_FilterValue, 0, 18, 0, // Skip to: 6597
/* 6579 */    MCD::OPC_CheckField, 5, 8, 0, 4, 0, // Skip to: 6589
/* 6585 */    MCD::OPC_Decode, 242, 2, 79, // Opcode: LDCrr
/* 6589 */    MCD::OPC_CheckPredicate, 0, 70, 1, // Skip to: 6919
/* 6593 */    MCD::OPC_Decode, 251, 2, 73, // Opcode: LDFArr
/* 6597 */    MCD::OPC_FilterValue, 1, 62, 1, // Skip to: 6919
/* 6601 */    MCD::OPC_Decode, 241, 2, 79, // Opcode: LDCri
/* 6605 */    MCD::OPC_FilterValue, 49, 37, 0, // Skip to: 6646
/* 6609 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6612 */    MCD::OPC_FilterValue, 0, 16, 0, // Skip to: 6632
/* 6616 */    MCD::OPC_CheckField, 25, 5, 0, 41, 1, // Skip to: 6919
/* 6622 */    MCD::OPC_CheckField, 5, 8, 0, 35, 1, // Skip to: 6919
/* 6628 */    MCD::OPC_Decode, 240, 2, 79, // Opcode: LDCSRrr
/* 6632 */    MCD::OPC_FilterValue, 1, 27, 1, // Skip to: 6919
/* 6636 */    MCD::OPC_CheckField, 25, 5, 0, 21, 1, // Skip to: 6919
/* 6642 */    MCD::OPC_Decode, 239, 2, 79, // Opcode: LDCSRri
/* 6646 */    MCD::OPC_FilterValue, 50, 14, 0, // Skip to: 6664
/* 6650 */    MCD::OPC_CheckPredicate, 0, 9, 1, // Skip to: 6919
/* 6654 */    MCD::OPC_CheckField, 13, 1, 0, 3, 1, // Skip to: 6919
/* 6660 */    MCD::OPC_Decode, 128, 3, 74, // Opcode: LDQFArr
/* 6664 */    MCD::OPC_FilterValue, 51, 33, 0, // Skip to: 6701
/* 6668 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6671 */    MCD::OPC_FilterValue, 0, 18, 0, // Skip to: 6693
/* 6675 */    MCD::OPC_CheckField, 5, 8, 0, 4, 0, // Skip to: 6685
/* 6681 */    MCD::OPC_Decode, 245, 2, 80, // Opcode: LDDCrr
/* 6685 */    MCD::OPC_CheckPredicate, 0, 230, 0, // Skip to: 6919
/* 6689 */    MCD::OPC_Decode, 246, 2, 75, // Opcode: LDDFArr
/* 6693 */    MCD::OPC_FilterValue, 1, 222, 0, // Skip to: 6919
/* 6697 */    MCD::OPC_Decode, 244, 2, 80, // Opcode: LDDCri
/* 6701 */    MCD::OPC_FilterValue, 52, 33, 0, // Skip to: 6738
/* 6705 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6708 */    MCD::OPC_FilterValue, 0, 18, 0, // Skip to: 6730
/* 6712 */    MCD::OPC_CheckField, 5, 8, 0, 4, 0, // Skip to: 6722
/* 6718 */    MCD::OPC_Decode, 130, 4, 81, // Opcode: STCrr
/* 6722 */    MCD::OPC_CheckPredicate, 0, 193, 0, // Skip to: 6919
/* 6726 */    MCD::OPC_Decode, 143, 4, 76, // Opcode: STFArr
/* 6730 */    MCD::OPC_FilterValue, 1, 185, 0, // Skip to: 6919
/* 6734 */    MCD::OPC_Decode, 129, 4, 81, // Opcode: STCri
/* 6738 */    MCD::OPC_FilterValue, 53, 37, 0, // Skip to: 6779
/* 6742 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6745 */    MCD::OPC_FilterValue, 0, 16, 0, // Skip to: 6765
/* 6749 */    MCD::OPC_CheckField, 25, 5, 0, 164, 0, // Skip to: 6919
/* 6755 */    MCD::OPC_CheckField, 5, 8, 0, 158, 0, // Skip to: 6919
/* 6761 */    MCD::OPC_Decode, 128, 4, 81, // Opcode: STCSRrr
/* 6765 */    MCD::OPC_FilterValue, 1, 150, 0, // Skip to: 6919
/* 6769 */    MCD::OPC_CheckField, 25, 5, 0, 144, 0, // Skip to: 6919
/* 6775 */    MCD::OPC_Decode, 255, 3, 81, // Opcode: STCSRri
/* 6779 */    MCD::OPC_FilterValue, 54, 45, 0, // Skip to: 6828
/* 6783 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6786 */    MCD::OPC_FilterValue, 0, 24, 0, // Skip to: 6814
/* 6790 */    MCD::OPC_CheckField, 25, 5, 0, 10, 0, // Skip to: 6806
/* 6796 */    MCD::OPC_CheckField, 5, 8, 0, 4, 0, // Skip to: 6806
/* 6802 */    MCD::OPC_Decode, 133, 4, 81, // Opcode: STDCQrr
/* 6806 */    MCD::OPC_CheckPredicate, 0, 109, 0, // Skip to: 6919
/* 6810 */    MCD::OPC_Decode, 151, 4, 77, // Opcode: STQFArr
/* 6814 */    MCD::OPC_FilterValue, 1, 101, 0, // Skip to: 6919
/* 6818 */    MCD::OPC_CheckField, 25, 5, 0, 95, 0, // Skip to: 6919
/* 6824 */    MCD::OPC_Decode, 132, 4, 81, // Opcode: STDCQri
/* 6828 */    MCD::OPC_FilterValue, 55, 33, 0, // Skip to: 6865
/* 6832 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6835 */    MCD::OPC_FilterValue, 0, 18, 0, // Skip to: 6857
/* 6839 */    MCD::OPC_CheckField, 5, 8, 0, 4, 0, // Skip to: 6849
/* 6845 */    MCD::OPC_Decode, 135, 4, 82, // Opcode: STDCrr
/* 6849 */    MCD::OPC_CheckPredicate, 0, 66, 0, // Skip to: 6919
/* 6853 */    MCD::OPC_Decode, 136, 4, 78, // Opcode: STDFArr
/* 6857 */    MCD::OPC_FilterValue, 1, 58, 0, // Skip to: 6919
/* 6861 */    MCD::OPC_Decode, 134, 4, 82, // Opcode: STDCri
/* 6865 */    MCD::OPC_FilterValue, 60, 35, 0, // Skip to: 6904
/* 6869 */    MCD::OPC_ExtractField, 13, 1,  // Inst{13} ...
/* 6872 */    MCD::OPC_FilterValue, 0, 43, 0, // Skip to: 6919
/* 6876 */    MCD::OPC_ExtractField, 5, 8,  // Inst{12-5} ...
/* 6879 */    MCD::OPC_FilterValue, 10, 4, 0, // Skip to: 6887
/* 6883 */    MCD::OPC_Decode, 171, 1, 83, // Opcode: CASAasi10
/* 6887 */    MCD::OPC_FilterValue, 128, 1, 8, 0, // Skip to: 6900
/* 6892 */    MCD::OPC_CheckPredicate, 0, 4, 0, // Skip to: 6900
/* 6896 */    MCD::OPC_Decode, 174, 1, 83, // Opcode: CASrr
/* 6900 */    MCD::OPC_Decode, 172, 1, 84, // Opcode: CASArr
/* 6904 */    MCD::OPC_FilterValue, 62, 11, 0, // Skip to: 6919
/* 6908 */    MCD::OPC_CheckField, 5, 9, 128, 1, 4, 0, // Skip to: 6919
/* 6915 */    MCD::OPC_Decode, 173, 1, 85, // Opcode: CASXrr
/* 6919 */    MCD::OPC_Fail,
  0
};

static const uint8_t DecoderTableSparcV832[] = {
/* 0 */       MCD::OPC_ExtractField, 8, 6,  // Inst{13-8} ...
/* 3 */       MCD::OPC_FilterValue, 0, 22, 0, // Skip to: 29
/* 7 */       MCD::OPC_CheckField, 29, 3, 4, 36, 0, // Skip to: 49
/* 13 */      MCD::OPC_CheckField, 19, 6, 58, 30, 0, // Skip to: 49
/* 19 */      MCD::OPC_CheckField, 5, 3, 0, 24, 0, // Skip to: 49
/* 25 */      MCD::OPC_Decode, 187, 4, 86, // Opcode: TRAPrr
/* 29 */      MCD::OPC_FilterValue, 32, 16, 0, // Skip to: 49
/* 33 */      MCD::OPC_CheckField, 29, 3, 4, 10, 0, // Skip to: 49
/* 39 */      MCD::OPC_CheckField, 19, 6, 58, 4, 0, // Skip to: 49
/* 45 */      MCD::OPC_Decode, 186, 4, 86, // Opcode: TRAPri
/* 49 */      MCD::OPC_Fail,
  0
};

static const uint8_t DecoderTableSparcV932[] = {
/* 0 */       MCD::OPC_ExtractField, 8, 6,  // Inst{13-8} ...
/* 3 */       MCD::OPC_FilterValue, 0, 26, 0, // Skip to: 33
/* 7 */       MCD::OPC_CheckPredicate, 0, 46, 0, // Skip to: 57
/* 11 */      MCD::OPC_CheckField, 29, 3, 4, 40, 0, // Skip to: 57
/* 17 */      MCD::OPC_CheckField, 19, 6, 58, 34, 0, // Skip to: 57
/* 23 */      MCD::OPC_CheckField, 5, 3, 0, 28, 0, // Skip to: 57
/* 29 */      MCD::OPC_Decode, 180, 4, 86, // Opcode: TICCrr
/* 33 */      MCD::OPC_FilterValue, 32, 20, 0, // Skip to: 57
/* 37 */      MCD::OPC_CheckPredicate, 0, 16, 0, // Skip to: 57
/* 41 */      MCD::OPC_CheckField, 29, 3, 4, 10, 0, // Skip to: 57
/* 47 */      MCD::OPC_CheckField, 19, 6, 58, 4, 0, // Skip to: 57
/* 53 */      MCD::OPC_Decode, 179, 4, 86, // Opcode: TICCri
/* 57 */      MCD::OPC_Fail,
  0
};

static bool checkDecoderPredicate(unsigned Idx, const FeatureBitset& Bits) {
  switch (Idx) {
  default: llvm_unreachable("Invalid index!");
  case 0:
    return (Bits[Sparc::FeatureV9]);
  case 1:
    return (Bits[Sparc::FeatureVIS3]);
  case 2:
    return (Bits[Sparc::FeatureVIS]);
  case 3:
    return (Bits[Sparc::FeatureVIS2]);
  }
}

template<typename InsnType>
static DecodeStatus decodeToMCInst(DecodeStatus S, unsigned Idx, InsnType insn, MCInst &MI,
                                   uint64_t Address, const void *Decoder, bool &DecodeComplete) {
  DecodeComplete = true;
  InsnType tmp;
  switch (Idx) {
  default: llvm_unreachable("Invalid index!");
  case 0:
    tmp = fieldFromInstruction(insn, 0, 22);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 1:
    tmp = fieldFromInstruction(insn, 0, 19);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 25, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 2:
    tmp = fieldFromInstruction(insn, 0, 22);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 25, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 3:
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 0, 14) << 0;
    tmp |= fieldFromInstruction(insn, 20, 2) << 14;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 4:
    return S;
  case 5:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 22);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 6:
    tmp = fieldFromInstruction(insn, 0, 19);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 25, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 20, 2);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 7:
    tmp = fieldFromInstruction(insn, 0, 30);
    if (DecodeCall(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 8:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 9:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 13);
    if (DecodeSIMM13(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 10:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 11:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 13);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 12:
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 13:
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 13);
    if (DecodeSIMM13(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 14:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 15:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 6);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 16:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeASRRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 17:
    tmp = fieldFromInstruction(insn, 0, 13);
    if (DecodeSIMM13(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 18:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 19:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodePRRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 20:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 21:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 11, 2);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 22:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 11);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 23:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 11, 2);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 11);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 24:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 25:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 10);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 26:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeASRRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 27:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeASRRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 13);
    if (DecodeSIMM13(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 28:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodePRRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 29:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodePRRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 13);
    if (DecodeSIMM13(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 30:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 31:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 32:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 33:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 34:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 35:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 36:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 37:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 38:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 39:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 40:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 41:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 42:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 43:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 44:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 45:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 11, 2);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 46:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 47:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 11, 2);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 48:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 49:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 11, 2);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 50:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 51:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 52:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 53:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFCCRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeQFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 54:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 55:
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 56:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 57:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 58:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 59:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 60:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 61:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 62:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeDFPRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 63:
    if (DecodeJMPL(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 64:
    if (DecodeReturn(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 65:
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 66:
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 8);
    MI.addOperand(MCOperand::createImm(tmp));
    tmp = fieldFromInstruction(insn, 25, 4);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 67:
    if (DecodeLoadInt(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 68:
    if (DecodeLoadIntPair(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 69:
    if (DecodeStoreInt(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 70:
    if (DecodeStoreIntPair(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 71:
    if (DecodeSWAP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 72:
    tmp = fieldFromInstruction(insn, 5, 8);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 73:
    if (DecodeLoadFP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 74:
    if (DecodeLoadQFP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 75:
    if (DecodeLoadDFP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 76:
    if (DecodeStoreFP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 77:
    if (DecodeStoreQFP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 78:
    if (DecodeStoreDFP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 79:
    if (DecodeLoadCP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 80:
    if (DecodeLoadCPPair(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 81:
    if (DecodeStoreCP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 82:
    if (DecodeStoreCPPair(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 83:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 84:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeIntRegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 5, 8);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 85:
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 14, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 0, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 25, 5);
    if (DecodeI64RegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 86:
    if (DecodeTRAP(MI, insn, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
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
