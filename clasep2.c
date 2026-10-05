#include <stdio.h>

 int main(void) {
  int x,y,z,m;
  
  //pido datos
  printf("Ingrese el valor de x: ");
  scanf("%d",&x);
  printf("Ingrese el valor de y: ");
  scanf("%d",&y);
  printf("Ingrese el valor de z: ");
  scanf("%d",&z);
  printf("Ingrese el valor de m: ");
  scanf("%d",&m);
  //
  
  if (x<y) {
   m = x;
  } else if (x>=y){
   m = y;
  }
  
  if (m<z) {
  } else if (m>=z) {
   m = z;
  }
  return 0;
 }
