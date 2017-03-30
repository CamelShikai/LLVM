/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Global Instruction Selector for the AArch64 target                         *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#ifdef GET_GLOBALISEL_TEMPORARIES_DECL
  mutable MachineOperand TempOp0;
  mutable MachineOperand TempOp1;
#endif // ifdef GET_GLOBALISEL_TEMPORARIES_DECL

#ifdef GET_GLOBALISEL_TEMPORARIES_INIT
, TempOp0(MachineOperand::CreatePlaceholder())
, TempOp1(MachineOperand::CreatePlaceholder())
#endif // ifdef GET_GLOBALISEL_TEMPORARIES_INIT

#ifdef GET_GLOBALISEL_IMPL
bool AArch64InstructionSelector::selectImpl(MachineInstr &I) const {
  MachineFunction &MF = *I.getParent()->getParent();
  const MachineRegisterInfo &MRI = MF.getRegInfo();
  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32spRegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* imm */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
(selectArithImmed(I.getOperand(1), TempOp0, TempOp1)))) &&
((/* Rn */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32spRegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (add:i32 addsub_shifted_imm32:i32:$imm, GPR32sp:i32:$Rn)  =>  (ADDWri:i32 GPR32sp:i32:$Rn, addsub_shifted_imm32:i32:$imm)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(AArch64::ADDWri));
    MIB.add(I.getOperand(0)/*Rd*/);
    MIB.add(I.getOperand(2)/*Rn*/);
MIB.add(TempOp0);
MIB.add(TempOp1);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64spRegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* imm */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
(selectArithImmed(I.getOperand(1), TempOp0, TempOp1)))) &&
((/* Rn */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64spRegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (add:i64 addsub_shifted_imm64:i64:$imm, GPR64sp:i64:$Rn)  =>  (ADDXri:i64 GPR64sp:i64:$Rn, addsub_shifted_imm64:i64:$imm)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(AArch64::ADDXri));
    MIB.add(I.getOperand(0)/*Rd*/);
    MIB.add(I.getOperand(2)/*Rn*/);
MIB.add(TempOp0);
MIB.add(TempOp1);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32spRegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32spRegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* imm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
(selectArithImmed(I.getOperand(2), TempOp0, TempOp1))))) {
    // (add:i32 GPR32sp:i32:$Rn, addsub_shifted_imm32:i32:$imm)  =>  (ADDWri:i32 GPR32sp:i32:$Rn, addsub_shifted_imm32:i32:$imm)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(AArch64::ADDWri));
    MIB.add(I.getOperand(0)/*Rd*/);
    MIB.add(I.getOperand(1)/*Rn*/);
MIB.add(TempOp0);
MIB.add(TempOp1);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64spRegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64spRegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* imm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
(selectArithImmed(I.getOperand(2), TempOp0, TempOp1))))) {
    // (add:i64 GPR64sp:i64:$Rn, addsub_shifted_imm64:i64:$imm)  =>  (ADDXri:i64 GPR64sp:i64:$Rn, addsub_shifted_imm64:i64:$imm)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(AArch64::ADDXri));
    MIB.add(I.getOperand(0)/*Rd*/);
    MIB.add(I.getOperand(1)/*Rn*/);
MIB.add(TempOp0);
MIB.add(TempOp1);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (add:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)  =>  (ADDWrr:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)
    I.setDesc(TII.get(AArch64::ADDWrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (add:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (ADDXrr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::ADDXrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_AND) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (and:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)  =>  (ANDWrr:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)
    I.setDesc(TII.get(AArch64::ANDWrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_AND) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (and:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (ANDXrr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::ANDXrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ASHR) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sra:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (ASRVXr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::ASRVXr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_LSHR) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (srl:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (LSRVXr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::LSRVXr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_OR) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (or:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)  =>  (ORRWrr:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)
    I.setDesc(TII.get(AArch64::ORRWrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_OR) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (or:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (ORRXrr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::ORRXrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SDIV) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sdiv:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)  =>  (SDIVWr:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)
    I.setDesc(TII.get(AArch64::SDIVWr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SDIV) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sdiv:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (SDIVXr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::SDIVXr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SHL) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (shl:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (LSLVXr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::LSLVXr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SUB) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32spRegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* imm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
(selectArithImmed(I.getOperand(2), TempOp0, TempOp1))))) {
    // (sub:i32 GPR32sp:i32:$Rn, addsub_shifted_imm32:i32:$imm)  =>  (SUBSWri:i32:i32 GPR32sp:i32:$Rn, addsub_shifted_imm32:i32:$imm)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(AArch64::SUBSWri));
    MIB.add(I.getOperand(0)/*Rd*/);
    MIB.add(I.getOperand(1)/*Rn*/);
MIB.add(TempOp0);
MIB.add(TempOp1);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SUB) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64spRegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* imm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
(selectArithImmed(I.getOperand(2), TempOp0, TempOp1))))) {
    // (sub:i64 GPR64sp:i64:$Rn, addsub_shifted_imm64:i64:$imm)  =>  (SUBSXri:i64:i32 GPR64sp:i64:$Rn, addsub_shifted_imm64:i64:$imm)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(AArch64::SUBSXri));
    MIB.add(I.getOperand(0)/*Rd*/);
    MIB.add(I.getOperand(1)/*Rn*/);
MIB.add(TempOp0);
MIB.add(TempOp1);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SUB) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sub:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)  =>  (SUBSWrr:i32:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)
    I.setDesc(TII.get(AArch64::SUBSWrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SUB) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sub:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (SUBSXrr:i64:i32 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::SUBSXrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_UDIV) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (udiv:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)  =>  (UDIVWr:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)
    I.setDesc(TII.get(AArch64::UDIVWr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_UDIV) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (udiv:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (UDIVXr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::UDIVXr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_XOR) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Wm */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Operand 2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
(isOperandImmEqual(I.getOperand(2), -1, MRI))))) {
    // (xor:i32 GPR32:i32:$Wm, -1:i32)  =>  (ORNWrr:i32 WZR:i32, GPR32:i32:$Wm)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(AArch64::ORNWrr));
    MIB.add(I.getOperand(0)/*Rd*/);
    MIB.addReg(AArch64::WZR);
    MIB.add(I.getOperand(1)/*Wm*/);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_XOR) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Xm */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Operand 2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
(isOperandImmEqual(I.getOperand(2), -1, MRI))))) {
    // (xor:i64 GPR64:i64:$Xm, -1:i64)  =>  (ORNXrr:i64 XZR:i64, GPR64:i64:$Xm)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(AArch64::ORNXrr));
    MIB.add(I.getOperand(0)/*Rd*/);
    MIB.addReg(AArch64::XZR);
    MIB.add(I.getOperand(1)/*Xm*/);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_XOR) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (xor:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)  =>  (EORWrr:i32 GPR32:i32:$Rn, GPR32:i32:$Rm)
    I.setDesc(TII.get(AArch64::EORWrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_XOR) &&
((/* Rd */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* Rn */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Rm */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(AArch64::GPR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (xor:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)  =>  (EORXrr:i64 GPR64:i64:$Rn, GPR64:i64:$Rm)
    I.setDesc(TII.get(AArch64::EORXrr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_BR) &&
((/* addr */ (I.getOperand(0).isMBB())))) {
    // (br (bb:Other):$addr)  =>  (B (bb:Other):$addr)
    I.setDesc(TII.get(AArch64::B));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  return false;
}
#endif // ifdef GET_GLOBALISEL_IMPL
