#include <stdio.h>

int main() {
  //print();
  int x = 100;
  
  int y  = x + 2;
  y = y + 1;
  if(x < 100){
    tobecalled();
    printf("x:%d,this is x<100 branch\n",x);
  }else{
    tobecalled();
    printf("x:%d,this is x>= 100 branch\n",x);
    x--;
  } 
  return 0;
}
