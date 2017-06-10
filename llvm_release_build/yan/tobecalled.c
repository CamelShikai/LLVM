#include <stdio.h>
int tobecalled(){
  int x = 0;
  int y = 1;
  if (x - 5 + 1 == -4){
    printf("x equal -4\n");
  }else{
    printf("x not equal -4\n");
  }

  printf("tobecalled finished\n");
  return 0;
}
