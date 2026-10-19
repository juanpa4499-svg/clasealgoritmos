// teniendo un arreglo de tamaño 5, sumo los elementos pares del arreglo.


#include <stdio.h>

bool es_par(int n) {
  int res = 0; // inicializo a res como false
  
  res = n % 2 == 0;
  
  return res;
}
int main(void) {
  int a[5]; // equivalente a decir var a: array [0,5) of INT
  int sumapares = 0;
  int pos = 0;
  // le pido al usuario los enteros
  
  printf("ingrese los 5 elementos del arreglo: \n");
  scanf("%d", &a[0]);
  scanf("%d", &a[1]);
  scanf("%d", &a[2]);
  scanf("%d", &a[3]);
  scanf("%d", &a[4]);
  
  while (pos<5) {
  
    if ( es_par(a[pos]) ) {
    
      sumapares = sumapares + a[pos];
    
    } else {
      
      ;      
      
    }
    
    pos = pos + 1;
 }
 
 printf("la suma del arreglo en sus elementos pares es: %d\n", sumapares);
 return 0; 
}
