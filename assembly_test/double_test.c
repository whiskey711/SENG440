#include <stdio.h>

volatile double x;
volatile double y;

int main(){
	
	register double x_temp;
	register double y_temp;
	
	register double z = x_temp + y_temp;

	

	printf("z = %f\n", z);
}
