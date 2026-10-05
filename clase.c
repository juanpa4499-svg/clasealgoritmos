#include <stdio.h>
/* Ejercicio 1
 int main(void) {
  int x,y,z;
 
  printf("Ingrese el valor de x: ");
  scanf("%d",&x);
  printf("Ingrese el valor de y: ");
  scanf("%d",&y);
  printf("Ingrese el valor de z: ");
  scanf("%d",&z);
 
  if (y-2==(x*3+1)%5) {
    printf("El valor de y-2==(x*3+1) mod 5 es True\n");  
   } else {
    printf("El valor de y-2==(x*3+1) mod 5 es False\n");
   }; //ese ; es como el fi
 
 // para x+y+1 es printf("El valor de x+y+1 es %d\n", x+y+1);
 // printf("%d\n", y-2==(x*3+1)%5);
 // printf("es y menor a x*z? %d\n", y<x*z);
 // printf("El valor para y/2*x es: %d\n", y/2*x); 
  return 0;
}
*/
/* 
 Var x, y : Int;
 
y := y + y;

x := x + y
*/
 //Ejercicio 3:
/* 
 int main(void) {
  int x,y;
    //pido los datos al usuario 
  printf("Ingrese el valor de x: ");
  scanf("%d",&x);
  printf("Ingrese el valor de y: ");
  scanf("%d",&y);

  y= y+y;
  printf("[|sigma 1: x-> %d", x);
  printf("y-> %d", y);
  
  x= x+y;
  printf("[|sigma 2: x-> %d", x);
  printf("y-> %d", y);
  
  return 0;
 }*/
 
  int main(void) {
    int x,y;
    //pido los datos al usuario 
    printf("Ingrese el valor de x: ");
    scanf("%d",&x);
    printf("Ingrese el valor de y: ");
    scanf("%d",&y);
    
    if (x>=y) {
      x=0;
    } else if (x<=y) {
      x=2;
    }
    printf("sigma final: x-> %d, y-> %d\n", x,y);
    return 0;
  }
 


 
