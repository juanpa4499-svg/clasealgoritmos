/*
Definir la función bool distintos(int tam, int arr[]) implementando el siguiente algoritmo:

Const N : Int, A : array [0, N) of Int;
Var n, p : Int;
{P : N > 0}
n, p := 0, true
do n ≠ N - 1 →
n, p := n + 1, p ∧ (A.n ≠ A.(n+1))
od
{Q : p = ⟨ ∀i : 0 ≤ i < N - 1 : A.i ≠ A.(i+1)⟩}
Verificar la pre-condición usando assert(). Luego completar la siguiente función main():

#define N 5
int main(void) {
int valores[N] = {5, 0, 15, -2, -2};
completar
return 0;

y mostrar un mensaje que diga las secuencias de 2 elementos del arreglo son distintos
en caso que la función distintos() aplicada al arreglo valores devuelva true, y en caso
contrario debe mostrar el mensaje Hay al menos una secuencia de 2 elementos iguales en
el arreglo. Incluir al final del archivo al menos un ejemplo de ejecución como
comentario.


*/

#include <stdio.h>
#include <assert.h>
#define N 5

bool distintos(int tam, int arr[]) {
  int n,p; 
  assert(tam>=0);
  n = 0; 
  p = 1; // le pongo un numero distinto de 0, ya que en c eso simboliza al True
  
  
  while (n != tam-1) {
    p = p && (arr[n] != arr[n+1]);
    n = n+1;
  } 
  return p;
}

int main(void) {

  int valores[N] = {5, 0, 15, -2, 2};
  
  if (distintos(N, valores)) {
  
    printf("las secuencias de 2 elementos del arreglo son distintos\n");
  
  } else {
  
    printf("Hay al menos una secuencia de 2 elementos iguales en el arreglo\n");
  
  }
  return 0;

}

/*
ejecutando con valores como está en el codigo  int valores[N] = {5, 0, 15, -2, -2};

 visitante@lab28-139:~/Escritorio$ ./sim2
Hay al menos una secuencia de 2 elementos iguales en el arreglo

*/





 

