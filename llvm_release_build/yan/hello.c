#include <stdio.h>
int tobecalled(){
  printf("tobecalled function\n");
  int x = 0;
  int y = 1;
  if (x >= -4){
    y++;
  }
  return 0;
}
int main() {
  //print();
  int x = 1;
  x = x + 4;
  int y  = x + 2;
  y = y + 1;
  if(x < 100){
    printf("x:%d,this is x<100 branch\n",x);
  }else{
    printf("x:%d,this is x>= 100 branch\n",x);
    x--;
  } 
  return 0;
}
