/*
Definir la función bool todos_iguales_pos_pares(int tam, int arr[]) implementando el
siguiente algoritmo:

Const N : Int, A : array [0, N) of Int;
Var n: Int;
Var p: Bool;
{P : N > 0}
n, p := 0, true

C/C++

C/C++

C/C++
do n < N →
n, p := n + 2, p ∧ (A.0 = A.n)
od
{Q : p = ⟨ ∀i : 0 ≤ i < N ∧ i mod 2 = 0 : A.0 = A.i⟩}
Verificar la pre-condición usando assert(). Luego completar la siguiente función main():

#define N 10
int main(void) {
int valores[N] = {2, 0, 2, -2, 2, 12, 2, 2, 2, 15};
COMPLETAR
return 0;
}
Que debe mostrar un mensaje que diga Todos los elementos en las posiciones pares del
arreglo son iguales en caso que la función todos_iguales_pos_pares() aplicada al arreglo
valores devuelva true, y en caso contrario debe mostrar el mensaje Hay al menos un
elemento distinto al resto del arreglo en alguna posición par. Incluir al final del
archivo al menos un ejemplo de ejecución como comentarios.


*/

#include <stdio.h>
#include <assert.h>

int todos_iguales_pos_pares(int tam, int arr[]){
  int res, pos;
  assert(tam>=0);
  // como res es bool, en c lo representamos como 0 si es false y como otro numero si es True 
  res = 1;
  pos = 0;
  
  while (tam > pos) {
 
    res = res && (arr[0] == arr[pos]);
    pos = pos+2;
  }
  return res;
}

void pedir_arreglo(int tam, int a[]) {
  int pos = 0;
  
  while (pos != tam) {
    printf("Ingrese el elemento %d del arreglo \n", pos); 
    scanf("%d", &a[pos]);
    pos = pos+1; 
  }
}

int main(void) {
  int valores[5];
  pedir_arreglo(5, valores);
  // como dependiendo del valor de verdad de la funcion mostraremos un mensaje distinto, proponemos un IF donde las guardas sean los posibles valores de verdad de la funcion
  
  if (todos_iguales_pos_pares(5, valores)) {
    
    printf("Todos los elementos en las posiciones pares del arreglo son iguales\n");
  
  } else {
  
    printf("Hay al menos un elemento distinto al resto del arreglo en alguna posición par \n");
  
  }
  return 0;
}






























