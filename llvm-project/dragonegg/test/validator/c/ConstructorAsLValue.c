// RUN: %dragonegg -S -o /dev/null %s -fplugin-arg-dragonegg-enable-gcc-optzns -O1
#define __vector __attribute__((vector_size(16) ))
typedef __vector signed char qword;
typedef __vector unsigned int VU32;
extern short g[192 +16];
void f(qword);
void f1 (unsigned ctr)
{
  VU32 pin;
  pin = (VU32){(__SIZE_TYPE__)&g[16]};
  do {
   f((qword)pin);
   ctr--;
  }
while(ctr);
}
