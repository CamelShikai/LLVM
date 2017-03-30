#include <stdio.h>
int tobecalled(){
  printf("just a target\n");
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
  if(x + 1 < 4){
    x++;
  }else{
    tobecalled();
    x--;
  } 
  return 0;
}
