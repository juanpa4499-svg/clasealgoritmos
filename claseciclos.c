#include <stdio.h>
/* EJERCICIO 7
int main(void) { 
  int i;
  
  //solicitud de datos al usuario
  printf("Introduzca el Estado inicial de i: ");
  scanf("%d", &i);
  
  while (i!=0) {
   i= i-1;
  }
  return 0;
} */

int main (void) {
  int x,y,i;
    
  //solicitud de datos al usuario
  printf("Introduzca el Estado inicial de x: ");
  scanf("%d", &x);
  printf("Introduzca el Estado inicial de y: ");
  scanf("%d", &y);
  
  i=0;
  
  while (x>=y) {
    x = x-y;
    i = i+1;
    printf ("Sigma %d: x-> %d, y->%d\n", i,x,y);
  }
  return 0;
}
