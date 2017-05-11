#include <stdio.h>
void main(){

	enum Direction {c1, c2};
	enum Direction test = c1;
	printf("hello world\n");
	char t[] = "left";
	printf("directiong %s\n",t);
	printf("integer for c1 %d",test);
	union x{
		int x1;
		float x2;
	};
	
}
