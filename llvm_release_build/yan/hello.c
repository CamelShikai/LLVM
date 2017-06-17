#include <stdio.h>

int main() {
  //print();
  int x = 99;
  int y = 0;

  for (int j = 0; j < 100; j++){
    y = y + j;
  }
  //x = x - 5;	
  if(x + 2 - 1 == 100){
    printf("in x==100 branch \n");
    //tobecalled();
  }else{
    printf("x:%d,this is x != 100 branch\n",x);
    //tobecalled();    
    x--;
  } 
  printf("main finished\n");
  return 0;
}
