/* contiene la funcion:
bool es_vocal(char letra)
que dado el caracter letra devuelve true si es una vocal y false en caso contrario. En la funci ́on main se
le debe solicitar al usuario que ingrese un caracter y luego se debe mostrar un mensaje que indique si dicho
caracter es una */
#include <stdio.h>

bool es_vocal (char letra) {
 // definir la variable res.
 return (letra ==  'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u' || letra ==  'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'U');
}

char pedir_letra (void) {
  char x;
  printf("Introduzca una letra: ");
  scanf("%c", &x);
  return x;
}

int main (void) {
  char n;
  n = pedir_letra();
  if (es_vocal (n)) {
    printf ("es vocal");
  } else {
    printf ("es consonante");
  }
  return 0;
}

