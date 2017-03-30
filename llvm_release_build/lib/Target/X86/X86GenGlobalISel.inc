/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Global Instruction Selector for the X86 target                             *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#ifdef GET_GLOBALISEL_TEMPORARIES_DECL
#endif // ifdef GET_GLOBALISEL_TEMPORARIES_DECL

#ifdef GET_GLOBALISEL_TEMPORARIES_INIT
#endif // ifdef GET_GLOBALISEL_TEMPORARIES_INIT

#ifdef GET_GLOBALISEL_IMPL
bool X86InstructionSelector::selectImpl(MachineInstr &I) const {
  MachineFunction &MF = *I.getParent()->getParent();
  const MachineRegisterInfo &MRI = MF.getRegInfo();
  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (add:i8 GR8:i8:$src1, GR8:i8:$src2)  =>  (ADD8rr:i8:i32 GR8:i8:$src1, GR8:i8:$src2)
    I.setDesc(TII.get(X86::ADD8rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (add:i16 GR16:i16:$src1, GR16:i16:$src2)  =>  (ADD16rr:i16:i32 GR16:i16:$src1, GR16:i16:$src2)
    I.setDesc(TII.get(X86::ADD16rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (add:i32 GR32:i32:$src1, GR32:i32:$src2)  =>  (ADD32rr:i32:i32 GR32:i32:$src1, GR32:i32:$src2)
    I.setDesc(TII.get(X86::ADD32rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_ADD) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (add:i64 GR64:i64:$src1, GR64:i64:$src2)  =>  (ADD64rr:i64:i32 GR64:i64:$src1, GR64:i64:$src2)
    I.setDesc(TII.get(X86::ADD64rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_AND) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (and:i8 GR8:i8:$src1, GR8:i8:$src2)  =>  (AND8rr:i8:i32 GR8:i8:$src1, GR8:i8:$src2)
    I.setDesc(TII.get(X86::AND8rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_AND) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (and:i16 GR16:i16:$src1, GR16:i16:$src2)  =>  (AND16rr:i16:i32 GR16:i16:$src1, GR16:i16:$src2)
    I.setDesc(TII.get(X86::AND16rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_AND) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (and:i32 GR32:i32:$src1, GR32:i32:$src2)  =>  (AND32rr:i32:i32 GR32:i32:$src1, GR32:i32:$src2)
    I.setDesc(TII.get(X86::AND32rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_AND) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (and:i64 GR64:i64:$src1, GR64:i64:$src2)  =>  (AND64rr:i64:i32 GR64:i64:$src1, GR64:i64:$src2)
    I.setDesc(TII.get(X86::AND64rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_MUL) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (mul:i16 GR16:i16:$src1, GR16:i16:$src2)  =>  (IMUL16rr:i16:i32 GR16:i16:$src1, GR16:i16:$src2)
    I.setDesc(TII.get(X86::IMUL16rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_MUL) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (mul:i32 GR32:i32:$src1, GR32:i32:$src2)  =>  (IMUL32rr:i32:i32 GR32:i32:$src1, GR32:i32:$src2)
    I.setDesc(TII.get(X86::IMUL32rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_MUL) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (mul:i64 GR64:i64:$src1, GR64:i64:$src2)  =>  (IMUL64rr:i64:i32 GR64:i64:$src1, GR64:i64:$src2)
    I.setDesc(TII.get(X86::IMUL64rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_OR) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (or:i8 GR8:i8:$src1, GR8:i8:$src2)  =>  (OR8rr:i8:i32 GR8:i8:$src1, GR8:i8:$src2)
    I.setDesc(TII.get(X86::OR8rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_OR) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (or:i16 GR16:i16:$src1, GR16:i16:$src2)  =>  (OR16rr:i16:i32 GR16:i16:$src1, GR16:i16:$src2)
    I.setDesc(TII.get(X86::OR16rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_OR) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (or:i32 GR32:i32:$src1, GR32:i32:$src2)  =>  (OR32rr:i32:i32 GR32:i32:$src1, GR32:i32:$src2)
    I.setDesc(TII.get(X86::OR32rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_OR) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (or:i64 GR64:i64:$src1, GR64:i64:$src2)  =>  (OR64rr:i64:i32 GR64:i64:$src1, GR64:i64:$src2)
    I.setDesc(TII.get(X86::OR64rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SHL) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Operand 2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
(isOperandImmEqual(I.getOperand(2), 1, MRI))))) {
    // (shl:i8 GR8:i8:$src1, 1:i8)  =>  (ADD8rr:i8:i32 GR8:i8:$src1, GR8:i8:$src1)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(X86::ADD8rr));
    MIB.add(I.getOperand(0)/*dst*/);
    MIB.add(I.getOperand(1)/*src1*/);
    MIB.add(I.getOperand(1)/*src1*/);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SHL) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Operand 2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
(isOperandImmEqual(I.getOperand(2), 1, MRI))))) {
    // (shl:i16 GR16:i16:$src1, 1:i8)  =>  (ADD16rr:i16:i32 GR16:i16:$src1, GR16:i16:$src1)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(X86::ADD16rr));
    MIB.add(I.getOperand(0)/*dst*/);
    MIB.add(I.getOperand(1)/*src1*/);
    MIB.add(I.getOperand(1)/*src1*/);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SHL) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Operand 2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
(isOperandImmEqual(I.getOperand(2), 1, MRI))))) {
    // (shl:i32 GR32:i32:$src1, 1:i8)  =>  (ADD32rr:i32:i32 GR32:i32:$src1, GR32:i32:$src1)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(X86::ADD32rr));
    MIB.add(I.getOperand(0)/*dst*/);
    MIB.add(I.getOperand(1)/*src1*/);
    MIB.add(I.getOperand(1)/*src1*/);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SHL) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* Operand 2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
(isOperandImmEqual(I.getOperand(2), 1, MRI))))) {
    // (shl:i64 GR64:i64:$src1, 1:i8)  =>  (ADD64rr:i64:i32 GR64:i64:$src1, GR64:i64:$src1)
    MachineInstrBuilder MIB = BuildMI(*I.getParent(), I, I.getDebugLoc(), TII.get(X86::ADD64rr));
    MIB.add(I.getOperand(0)/*dst*/);
    MIB.add(I.getOperand(1)/*src1*/);
    MIB.add(I.getOperand(1)/*src1*/);
    MIB.setMemRefs(I.memoperands_begin(), I.memoperands_end());
    I.eraseFromParent();
    MachineInstr &NewI = *MIB;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SUB) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sub:i8 GR8:i8:$src1, GR8:i8:$src2)  =>  (SUB8rr:i8:i32 GR8:i8:$src1, GR8:i8:$src2)
    I.setDesc(TII.get(X86::SUB8rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SUB) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sub:i16 GR16:i16:$src1, GR16:i16:$src2)  =>  (SUB16rr:i16:i32 GR16:i16:$src1, GR16:i16:$src2)
    I.setDesc(TII.get(X86::SUB16rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SUB) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sub:i32 GR32:i32:$src1, GR32:i32:$src2)  =>  (SUB32rr:i32:i32 GR32:i32:$src1, GR32:i32:$src2)
    I.setDesc(TII.get(X86::SUB32rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_SUB) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (sub:i64 GR64:i64:$src1, GR64:i64:$src2)  =>  (SUB64rr:i64:i32 GR64:i64:$src1, GR64:i64:$src2)
    I.setDesc(TII.get(X86::SUB64rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_XOR) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(8))) &&
((&RBI.getRegBankFromRegClass(X86::GR8RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (xor:i8 GR8:i8:$src1, GR8:i8:$src2)  =>  (XOR8rr:i8:i32 GR8:i8:$src1, GR8:i8:$src2)
    I.setDesc(TII.get(X86::XOR8rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_XOR) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(16))) &&
((&RBI.getRegBankFromRegClass(X86::GR16RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (xor:i16 GR16:i16:$src1, GR16:i16:$src2)  =>  (XOR16rr:i16:i32 GR16:i16:$src1, GR16:i16:$src2)
    I.setDesc(TII.get(X86::XOR16rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_XOR) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(32))) &&
((&RBI.getRegBankFromRegClass(X86::GR32RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (xor:i32 GR32:i32:$src1, GR32:i32:$src2)  =>  (XOR32rr:i32:i32 GR32:i32:$src1, GR32:i32:$src2)
    I.setDesc(TII.get(X86::XOR32rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_XOR) &&
((/* dst */ (MRI.getType(I.getOperand(0).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(0).getReg(), MRI, TRI))))) &&
((/* src1 */ (MRI.getType(I.getOperand(1).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(1).getReg(), MRI, TRI))))) &&
((/* src2 */ (MRI.getType(I.getOperand(2).getReg()) == (LLT::scalar(64))) &&
((&RBI.getRegBankFromRegClass(X86::GR64RegClass) == RBI.getRegBank(I.getOperand(2).getReg(), MRI, TRI)))))) {
    // (xor:i64 GR64:i64:$src1, GR64:i64:$src2)  =>  (XOR64rr:i64:i32 GR64:i64:$src1, GR64:i64:$src2)
    I.setDesc(TII.get(X86::XOR64rr));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  if ((I.getOpcode() == TargetOpcode::G_BR) &&
((/* dst */ (I.getOperand(0).isMBB())))) {
    // (br (bb:Other):$dst)  =>  (JMP_1 (bb:Other):$dst)
    I.setDesc(TII.get(X86::JMP_1));
    MachineInstr &NewI = I;

    constrainSelectedInstRegOperands(NewI, TII, TRI, RBI);
    return true;
  }

  return false;
}
#endif // ifdef GET_GLOBALISEL_IMPL
