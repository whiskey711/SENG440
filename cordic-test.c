#include "cordic-32bits.h"
#include <math.h> // for testing only!
#include <stdio.h>
#include <time.h>

//Print out sin(x) vs fp CORDIC sin(x)
int main(int argc, char **argv)
{
        clock_t begin = clock();
    double p;
    int s,c;
    int i;    
    for(i=0;i<5000000;i++)
    {
        p = (i/5000000.0)*M_PI/2;        
        //use 32 iterations
        cordic((p*MUL), &s, &c, 32);
        //these values should be nearly equal
        printf("%f : %f\n", s/MUL, sin(p));
    }
    
    clock_t end = clock();
    double time = (double)(end - begin);
    printf("we need %f to complete.",time);
}