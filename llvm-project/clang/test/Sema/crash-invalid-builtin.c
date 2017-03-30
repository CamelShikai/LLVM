// RUN: %clang_cc1 -triple=x86_64-apple-darwin -fsyntax-only -verify %s
// PR23086

__builtin_isinf(...); // expected-warning {{type specifier missing, defaults to 'int'}} expected-error {{ISO C requires a named parameter before '...'}} // expected-error {{conflicting types for '__builtin_isinf'}} // expected-note {{'__builtin_isinf' is a builtin with type 'int ()'}}
