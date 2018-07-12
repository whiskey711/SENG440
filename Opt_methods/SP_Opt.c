#include <math.h> // for testing only!
#include <stdio.h>
#include <time.h>

//Print out sin(x) vs fp CORDIC sin(x)

// This code implemented Software pipline and Opreator strength reduction

//Constants
#define cordic_1K 0x26DD3B6A
#define half_pi 0x6487ED51
#define MUL 1073741824.000000
#define CORDIC_NTAB 32
int cordic_ctab [] = {0x3243F6A8, 0x1DAC6705, 0x0FADBAFC, 0x07F56EA6, 0x03FEAB76, 0x01FFD55B, 
0x00FFFAAA, 0x007FFF55, 0x003FFFEA, 0x001FFFFD, 0x000FFFFF, 0x0007FFFF, 0x0003FFFF, 
0x0001FFFF, 0x0000FFFF, 0x00007FFF, 0x00003FFF, 0x00001FFF, 0x00000FFF, 0x000007FF, 
0x000003FF, 0x000001FF, 0x000000FF, 0x0000007F, 0x0000003F, 0x0000001F, 0x0000000F, 
0x00000008, 0x00000004, 0x00000002, 0x00000001, 0x00000000, };

void cordic(int theta, int *s, int *c, int n)
{
  volatile int k, d, tx, ty, tz;
  volatile int x=cordic_1K,y=0,z=theta;
  n = (n>CORDIC_NTAB) ? CORDIC_NTAB : n;
 // double CompNum = n >> 5;
 // n = ( CompNum== 1) ? CORDIC_NTAB : n;
  for (k=0; k<n; ++k)
  {

    //d = z>>31;
    //get sign. for other architectures, you might want to use the more portable version
    d = z>=0 ? 0 : -1;
    tx = x - (((y>>k) ^ d) - d);
    ty = y + (((x>>k) ^ d) - d);
    tz = z - ((cordic_ctab[k] ^ d) - d);
    x = tx; y = ty; z = tz;
  }  
 *c = x; *s = y;
}


int main(int argc, char **argv)
{
    clock_t begin = clock();
    volatile double p;
    volatile int s,c;
    volatile int i ;
    volatile double invi = 0.0000002;
    volatile double invpi = M_PI/2;
    
    p = 0;
    
    for(i=0;i<5000000;i++)
    {
      
        //use 32 iterations
        cordic((p*MUL), &s, &c, 32);
        //these values should be nearly equal
        printf("%f : %f\n", s/MUL, sin(p));
	p = (i+1)*invi*invpi;  
    }
    cordic((p*MUL), &s, &c, 32);
    printf("%f : %f\n", s/MUL, sin(p));
    
    
    clock_t end = clock();
    double time = (double)(end - begin);
    printf("we need %f to complete.",time);
}