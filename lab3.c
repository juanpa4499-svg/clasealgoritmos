/*
Laboratorio 8 (Arreglos, todos positivos, algunos positivos). Hacer un programa en un archivo con nombre
positivos.c que contenga las funciones
bool todos_pos(int tam, int a[])
bool algunos_pos(int tam, int a[])
que implementan los algoritmos derivados en los ejercicios 5a y 5b, respectivamente. En la funci ́on main pedir los
datos del arreglo al usuario asumiendo un tama ̃no constante previamente establecido (en tiempo de compilaci ́on),
e imprmir el mensaje “son todos positivos”, en caso de que todos sean positivos, “alguno es positivo” en caso
de que no todos, pero alguno sea positivo y “ninguno es positivo”, en caso de que ninguno sea positivo.
*/

#include <stdio.h>
#include <assert.h>

bool todos_pos(int tam, int a[]) {
  int res;
  int pos;
  
  assert(tam>0);
  
  res = 1;
  pos = 0;
  
  while (pos != tam) {
  
    res = res && (a[pos]>=0);
    pos = pos + 1;
  
  }

  return res;
}

bool algunos_pos(int tam, int a[]) {
  int res;
  int pos;
  
  assert(tam>0);
  
  res = 0;
  pos = 0;
  
  while (pos != tam) {
  
    res = res || (a[pos]>0);
    pos = pos + 1;
  
  }

  return res; 

}

void pedir_arreglo(int tam, int a[]) {
  int pos = 0;
  
  assert(tam>0);
  
  while (tam != pos) {
  
    printf("ingrese el elemento %d del arreglo: \n", pos);
    scanf("%d", &a[pos]);
    pos = pos + 1;
    
  }

}

int main(void) {
  const int n = 5;
  int arreglo[n];
  
  pedir_arreglo(n, arreglo);

  if ( todos_pos(3, arreglo) ) {
    
    printf("todos los elementos del arreglo son positivos\n");
  
  } else if ( algunos_pos(3, arreglo) && (todos_pos(3, arreglo) == 0) ){
    
    printf("Alguno de ellos es positivo\n");
    
    } else {
    
    printf("Son TODOS NEGATIVOS\n");
    
    }
  
  return 0;
}
