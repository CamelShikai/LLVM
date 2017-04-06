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
#include "llvm/IR/InstrTypes.h"
#include <string>
#include <unordered_set>
#include <fstream>
#include <iostream>

using namespace llvm;

namespace {
  struct TmObfuscator : public FunctionPass {
    static char ID;
    TmObfuscator() : FunctionPass(ID){}
    Function* insert;
    std::unordered_set<std::string> white_list = {};
    std::unordered_set<std::string>::iterator got;
    int total_cap = 1;
    int obfuscation_counter = 0;
    int candidate_counter = 0;
    bool doInitialization(Module &M) override{
      Constant *hookFunc;
      hookFunc = M.getOrInsertFunction("ext_callee",IntegerType::get(M.getContext(),1),IntegerType::get(M.getContext(),32),IntegerType::get(M.getContext(),32),IntegerType::get(M.getContext(),32), NULL);       
      insert = cast<Function>(hookFunc);
      
      //read while list file
      std::ifstream skip_file("/media/windows/win2/Research/llvm_release_build/yan/white_list.txt");
      for(std::string line;getline(skip_file,line);){
	errs() << line;
	white_list.insert(line);
      }

      return false;
    }
    bool runOnFunction(Function &F) override {
            Function *tmp = &F;
            //skip some functions in white list
	    std::string func_name = tmp->getName().str();
	    got = white_list.find(func_name);
	    if(got != white_list.end()){
	      errs() << func_name  << " skipped\n";
	      return false;
	    }else{
	      //errs() << "do something here" << '\n';
	    }
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
		       //make sure br instrucion follows the icmp instruction
                       //llvm::IRBuilder<> builder(inst);
		       errs().write_escaped(tmp->getName()) << "function\n";
		       llvm::TerminatorInst* br_ins = &*(inst->getParent()->getTerminator());
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
			 //inst->eraseFromParent();
			 //errs() << "1\n";
			 if (auto* icmp = dyn_cast<ICmpInst>(&*inst)){		  
			     // If it is a icmp instruction then we do transformation
			     // ICMP_EQ    = 32,  ///< equal
			     // ICMP_NE    = 33,  ///< not equal
			     // ICMP_UGT   = 34,  ///< unsigned greater than
			     // ICMP_UGE   = 35,  ///< unsigned greater or equal
			     // ICMP_ULT   = 36,  ///< unsigned less than
			     // ICMP_ULE   = 37,  ///< unsigned less or equal
			     // ICMP_SGT   = 38,  ///< signed greater than
			     // ICMP_SGE   = 39,  ///< signed greater or equal
			     // ICMP_SLT   = 40,  ///< signed less than
			     // ICMP_SLE   = 41,  ///< signed less or equal
			     llvm::CmpInst::Predicate p = icmp->getSignedPredicate();
			     errs() << "p:" << p << '\n';
			     Value* op1 = inst->getOperand(0);
			     Value* op2 = inst->getOperand(1);
			     //check op type
			     //llvm::ConstantInt* op1p = dyn_cast<llvm::ConstantInt>(&*op1);
			     //llvm::ConstantInt* op2p = dyn_cast<llvm::ConstantInt>(&*op2);
			     if(op1->getType()->isIntegerTy() && op2->getType()->isIntegerTy() && cast<llvm::IntegerType>(op1->getType())->getBitWidth() == 32 && cast<llvm::IntegerType>(op2->getType())->getBitWidth()==32){
			       errs() << "type right\n";
			       candidate_counter++;
			     }else{
			       
			       errs() << "type not right\n";
			       return false;
			     }
			     
			     if (candidate_counter % 10 <= 2 && obfuscation_counter < total_cap){			       
			       
			       //construct 3 parameters
			       std::vector<llvm::Value*>* putsArgs = new std::vector<llvm::Value*>();
			       ConstantInt* Arg1 = ConstantInt::get(bb->getContext(), APInt(32,p));
			       putsArgs->push_back(Arg1);
			       putsArgs->push_back(op1);
			       putsArgs->push_back(op2);
			       // if(auto* Arg2 = dyn_cast<llvm::ConstantInt>(op1)){
			       //   errs() << "could be1\n";
			       //   putsArgs->push_back(Arg2);
			       // }
			       //ConstantInt* Arg2 = ConstantInt::get(bb->getContext(), APInt(32,op1));
			       //ConstantInt* Arg3 = ConstantInt::get(bb->getContext(), APInt(32,22));
			       // if(auto* Arg3 = dyn_cast<llvm::ConstantInt>(op2)){
			       //   errs() << "could be2\n";
			       //   putsArgs->push_back(Arg3);
			       // }
			     
			       ArrayRef<llvm::Value*> x =  ArrayRef<llvm::Value*>(*putsArgs);
			       Instruction *newInst = CallInst::Create(insert,x);
			       //insert after the icmp instruction
			       newInst->insertAfter(&(*inst));
			       //change branch condition to the callinst instruction
			       errs() << "predicate changed\n";
			       obfuscation_counter += 1;
			       AI->setCondition(newInst);
			     }else{
			       errs() << "cap exceeded or not the one,quit\n";
			       return false;
			     }		   
			 }
		       }else{
			 errs() << "this is not a branchinst" << br_ins->getOpcode() << '\n';
		       }
		     }
		  }
                   
               }      
            }
             
            return true;
    }  
  };
}
char TmObfuscator::ID = 0;
static RegisterPass<TmObfuscator> X("TmObfuscator", "TmObfuscator Pass",false,false);


