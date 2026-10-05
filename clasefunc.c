#include <stdio.h>

/* int es_par (int x) {
 return (x%2==0);
}

int main (void) {
  int i;
  
  // pido el dato
  printf("Introduzca el Estado inicial de i: ");
  scanf("%d", &i);
  
  if (es_par(i)) {
    printf("El numero es par\n");
  } else {
    printf("El numero es impar\n");
  }

} */


int main(void) {
  int x,y,X,Y;
    //solicitud de datos al usuario
  printf("Introduzca el Estado inicial de x: ");
  scanf("%d", &x);
  printf("Introduzca el Estado inicial de y: ");
  scanf("%d", &y);
  
  X = x;
  Y = y;
  // {precondicion: x = X, y = Y} 
  x = x+1;
  y = x+y;
  // {post: x = X+1, y= Y+X}
  return 0;
} 


