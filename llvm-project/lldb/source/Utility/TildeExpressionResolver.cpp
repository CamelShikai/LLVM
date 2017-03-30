//===--------------------- TildeExpressionResolver.cpp ----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "lldb/Utility/TildeExpressionResolver.h"

#include "llvm/ADT/SmallString.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Path.h"

#if !defined(LLVM_ON_WIN32)
#include <pwd.h>
#endif

using namespace lldb_private;
using namespace llvm;

namespace fs = llvm::sys::fs;
namespace path = llvm::sys::path;

TildeExpressionResolver::~TildeExpressionResolver() {}

bool StandardTildeExpressionResolver::ResolveExact(
    StringRef Expr, SmallVectorImpl<char> &Output) {
  // We expect the tilde expression to be ONLY the expression itself, and
  // contain no separators.
  assert(!llvm::any_of(Expr, [](char c) { return path::is_separator(c); }));
  assert(Expr.empty() || Expr[0] == '~');

  return !fs::real_path(Expr, Output, true);
}

bool StandardTildeExpressionResolver::ResolvePartial(StringRef Expr,
                                                     StringSet<> &Output) {
  // We expect the tilde expression to be ONLY the expression itself, and
  // contain no separators.
  assert(!llvm::any_of(Expr, [](char c) { return path::is_separator(c); }));
  assert(Expr.empty() || Expr[0] == '~');

  Output.clear();
#if defined(LLVM_ON_WIN32) || defined(__ANDROID__)
  return false;
#else
  if (Expr.empty())
    return false;

  SmallString<32> Buffer("~");
  setpwent();
  struct passwd *user_entry;
  Expr = Expr.drop_front();

  while ((user_entry = getpwent()) != NULL) {
    StringRef ThisName(user_entry->pw_name);
    if (!ThisName.startswith(Expr))
      continue;

    Buffer.resize(1);
    Buffer.append(ThisName);
    Buffer.append(path::get_separator());
    Output.insert(Buffer);
  }

  return true;
#endif
}
