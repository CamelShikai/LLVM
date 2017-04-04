//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include <iostream>
#include <fstream>

using namespace llvm;

namespace {
struct Hello2 : public FunctionPass {
  static char ID;
  Hello2() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    //errs() << "Function name: ";
    //errs().write_escaped(F.getName()) << '\n';
    std::ofstream wlist;
    wlist.open("white_list.txt",std::ios_base::app);
    wlist << F.getName().str() << '\n';
    return false;
  }
}; // end of struct Hello
}  // end of anonymous namespace

char Hello2::ID = 0;
static RegisterPass<Hello2> X("hello2", "Hello2 World Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
