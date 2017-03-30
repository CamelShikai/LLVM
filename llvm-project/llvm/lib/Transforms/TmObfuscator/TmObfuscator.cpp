/*
Turing Machine Obfuscator Pass
*/
#include "llvm/ADT/ArrayRef.h"
#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Compiler.h"
#include "llvm/IR/CFG.h"

using namespace llvm;

namespace {
  struct TmObfuscator : public FunctionPass {
    static char ID;
    TmObfuscator() : FunctionPass(ID){}
    Function* insert;
    bool doInitialization(Module &M) override{
      Constant *hookFunc;
      hookFunc = M.getOrInsertFunction("print",IntegerType::get(M.getContext(),1),IntegerType::get(M.getContext(),32),IntegerType::get(M.getContext(),32),IntegerType::get(M.getContext(),32), NULL);       
      insert = cast<Function>(hookFunc);
      return false;
    }
    bool runOnFunction(Function &F) override {
            Function *tmp = &F;
            //
            for (Function::iterator bb = tmp->begin(); bb != tmp->end(); ++bb) {
	      //errs().write_escaped(bb->getName()) << "basicblock\n";
	     
	      for (BasicBlock::iterator inst = bb->begin(); inst != bb->end(); ++inst) {
		//errs() << inst->getName() << "opname:" << inst->getOpcodeName();
		//errs() << " opcode:" << inst->getOpcode() << '\n';
		  if (inst->isTerminator()){
		    //errs() << inst->getOpcodeName() << " is a terminator\n";
		  }
		  
                  if (inst->getOpcode() == Instruction::ICmp) {
		     Instruction* next_inst = inst->getNextNode();
		     if(next_inst->getOpcode() == Instruction::Br) {
		       //dyn_cast<llvm::BranchInst*>(next_inst);
                       //llvm::IRBuilder<> builder(inst);
		       //construct 3 parameters
                       std::vector<llvm::Value*>* putsArgs = new std::vector<llvm::Value*>();
                       ConstantInt* Arg1 = ConstantInt::get(bb->getContext(), APInt(32,0));
                       ConstantInt* Arg2 = ConstantInt::get(bb->getContext(), APInt(32,2));
                       ConstantInt* Arg3 = ConstantInt::get(bb->getContext(), APInt(32,3));
                       putsArgs->push_back(Arg1);
                       putsArgs->push_back(Arg2);
                       putsArgs->push_back(Arg3);		      
                       ArrayRef<llvm::Value*> x =  ArrayRef<llvm::Value*>(*putsArgs);
                       Instruction *newInst = CallInst::Create(insert,x);
		       //inst->getType()->print(errs());
		       //Instruction* next_ins = &(*(inst+1));
                       newInst->insertAfter(&(*inst));
		       llvm::Instruction* br_ins = &*(newInst->getParent()->getTerminator());
		       //errs() << br_ins->getOpcode() << "br_ins\n";
		       //llvm::Value temp = LLVMGetCondition(newInst);
		       //next_inst->eraseFromParent();
		       //inst->eraseFromParent();
		       //BasicBlock::iterator ii(inst);
		       //LoadInst *CI = dyn_cast<LoadInst>(inst);
		       //ReplaceInstWithInst((Instruction*)CI, newInst);
                       //inst->replaceAllUsesWith(newInst);
		       //BasicBlock * label1 = successors(&(*bb));
		       //BasicBlock * label2 = successors(label1);
		       if (auto* AI = dyn_cast<BranchInst>(br_ins)){
			 errs() << "predicate changed\n";
			 AI->setCondition(newInst);
			 //inst->eraseFromParent();
		       }else{
			 errs() << "this is not a branchinst" << br_ins->getOpcode() << '\n';
		       }
		     }
		  }
                   
               }      
            }
             
            return true;
    }
    
    // bool runOnBasicBlock(BasicBlock &BB){
    //   errs() << "this is a block" << '\n';
    //   return false;
    // }
  };
}
char TmObfuscator::ID = 0;
static RegisterPass<TmObfuscator> X("TmObfuscator", "TmObfuscator Pass",false,false);


