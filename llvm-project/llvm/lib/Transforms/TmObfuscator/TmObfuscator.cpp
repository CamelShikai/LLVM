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
#include <stdlib.h>

using namespace llvm;

namespace {
  struct TmObfuscator : public FunctionPass {
    static char ID;
    TmObfuscator() : FunctionPass(ID){}
    Function* insert;
    std::unordered_set<std::string> white_list = {};
    std::unordered_set<std::string>::iterator got;
    int total_cap = INT_MAX;
    int obfuscation_counter = 0;
    int candidate_counter = 0;
    
          
    //set up
    bool doInitialization(Module &M) override{
      Constant *hookFunc;
      hookFunc = M.getOrInsertFunction("ext_callee",IntegerType::get(M.getContext(),1),IntegerType::get(M.getContext(),32),IntegerType::get(M.getContext(),32),IntegerType::get(M.getContext(),32), NULL);
      //hookFunc = M.getOrInsertFunction("ext_callee",IntegerType::get(M.getContext(),1),IntegerType::get(M.getContext(),32),IntegerType::get(M.getContext(),32),IntegerType::get(M.getContext(),32), Type::LabelTyID, Type::LabelTyID, NULL);
				       
      insert = cast<Function>(hookFunc);
      
      //read while list file
      std::ifstream skip_file("/media/windows/win2/Research/llvm_release_build/yan/white_list.txt");
      for(std::string line;getline(skip_file,line);){
	//errs() << line;
	white_list.insert(line);
      }
      //open logfile
      
      return false;
    }
    //finish
    bool doFinalization(Module &M) override {
      //log
      std::ofstream passlog;
      passlog.open("passlog.txt",std::ios::app);
      std::string mo = M.getModuleIdentifier();
      passlog << "Module:" << mo << "candidate_counter:" << candidate_counter << "obfuscation_counter" << obfuscation_counter << '\n';
      passlog.close();
      return false;
    }
    
    //per function
    bool runOnFunction(Function &F) override {
            Function *tmp = &F;
            //skip some functions in white list
	    std::string func_name = tmp->getName().str();
	    if(func_name == "fallbackSort") return false;
	    got = white_list.find(func_name);
	    if(got != white_list.end()){
	      errs() << func_name  << " In while list,skipped\n";
	      return false;
	    }else{
	      //errs() << "do something here" << '\n';
	    }
            for (Function::iterator bb = tmp->begin(); bb != tmp->end(); ++bb) {
	      //errs().write_escaped(bb->getName()) << "basicblock\n";
	     
	      for (BasicBlock::iterator inst = bb->begin(); inst != bb->end(); ++inst) {
		//errs() << inst->getName() << "opname:" << inst->getOpcodeName();
		//errs() << " opcode:" << inst->getOpcode() << '\n';
			
		if (inst->getOpcode() == Instruction::ICmp) {
		  Instruction* next_inst = inst->getNextNode();
		  if(next_inst->getOpcode() == Instruction::Br) {
		    //make sure br instrucion follows the icmp instruction		       
		    llvm::TerminatorInst* br_ins = &*(inst->getParent()->getTerminator());
		    if (!br_ins->isSameOperationAs(next_inst)) {
		      errs() << "next instruction not terminator";
		      continue;
		    }
		    
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
			Value* op1 = inst->getOperand(0);
			Value* op2 = inst->getOperand(1);
			//check op type
			
			if(op1->getType()->isIntegerTy() && op2->getType()->isIntegerTy() && cast<llvm::IntegerType>(op1->getType())->getBitWidth() == 32 && cast<llvm::IntegerType>(op2->getType())->getBitWidth() == 32){
			  //Value* op1_32 = zext op1->getType() op1 to i32;
			  candidate_counter++;
			  //int tmp1 = cast<llvm::ConstantInt>(op1)->getSExtValue();
			  //int tmp2 = cast<llvm::ConstantInt>(op2)->getSExtValue();
			  
			  //llvm::BitCastInst(op1,IntegerType::get(F.getContext(),64));
			  //llvm::BitCastInst(op2,IntegerType::get(F.getContext(),64));
			  //errs() << "bitcast operated\n";
			}else{
			  op1->getType()->print(errs());
			  op2->getType()->print(errs());
			  errs() << "not 32 bit integer,skip\n";
			  continue;
			}
			unsigned successor_num = br_ins->getNumSuccessors();
			errs() << "total successor number :" << successor_num << "\n";
			//BasicBlock *label1 = br_ins->getSuccessor(0);
			//BasicBlock *label2 = br_ins->getSuccessor(1);
			//BlockAddress *label1_addr = llvm::BlockAddress::get(label1);
			//BlockAddress *label2_addr = llvm::BlockAddress::get(label2);
			//label1_addr->getType()->print(errs());
			//label1->print(errs());
			//by mod:candidate_counter % 10 <= 5 && obfuscation_counter < total_cap
			int roll = rand() % 10;
			errs() << "roll number:" << roll;
			if (roll < 0){			       
			  errs() << "candidate counter :"<< candidate_counter << "\n";
			  //construct 3 parameters
			  std::vector<llvm::Value*>* putsArgs = new std::vector<llvm::Value*>();
			  ConstantInt* Arg1 = ConstantInt::get(bb->getContext(), APInt(32,p));
			  putsArgs->push_back(Arg1);
			  putsArgs->push_back(op1);
			  putsArgs->push_back(op2);
			  //putsArgs->push_back(label1_addr);
			  //putsArgs->push_back(label2_addr);
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
			  //insert before the AI instruction
			  //newInst->insertBefore(&(*AI));
		       
			  ReplaceInstWithInst(inst->getParent()->getInstList(), inst,newInst);
			  obfuscation_counter += 1;
			  errs() << "\033[1;31m function ->\033[0m";
			  errs().write_escaped(tmp->getName());	  
			  newInst -> print(errs());
			  errs() << "replace former icmp inst";
			  //inst->print(errs());			  
			  errs() << "\033[1;31m ob num: \033[0m";
			  errs() << obfuscation_counter << '\n';
			  //change branch condition to the callinst instruction
			 
			  if(AI->isConditional()){//have to check isconditional, or will prompt segmment fault 
			    AI->setCondition(newInst);
			    errs() << "condition set to :";
			    AI->print(errs());
			    errs() << '\n';
			  }
			}else{
			  errs() << "cap exceeded or not the one,quit\n";
			  continue;
			}		   
		      }
		    }else{
		      errs() << "this is not a branchinst" << br_ins->getOpcode() << '\n';
		    }
		  }
		}
                
	      }      
            }
             
            return obfuscation_counter != 0 ? true : false;
    }  
  };
}
char TmObfuscator::ID = 0;
static RegisterPass<TmObfuscator> X("TmObfuscator", "TmObfuscator Pass",false,false);


