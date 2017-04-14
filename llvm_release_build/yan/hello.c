#include <stdio.h>

int main() {
  //print();
  int x = 100;
  
  int y  = x + 2;
  y = y + 1;

  for (int j = 0; j < 100; j++){
    y = y + j;
  }
	
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
