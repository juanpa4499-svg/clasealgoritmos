#include <stdio.h>
// libreria para las precondiciones
#include <assert.h>


int suma_hasta(int n){
	// primero declaro la variable que voy a devolver, r.
	int r; 
	int i;
	
	assert(n>=0);	
	
	i=1;
	r=0;
 
	while (i<=n) {
		r= r+i;
		i= i+1;
	}
	return r;
}

int sumatoria_gauss(int n) {
	int r;
	r = (n*(n+1))/2;
	return r;
}
int main(void) {
	int x;
	printf("Introduzca hasta donde se realizará la suma: \n");
	scanf("%d", &x);

	if (x>=0) {
		printf("La suma hasta %d, es:  %d\n", x, suma_hasta(x));
	} else {
		printf("[ERROR] Ingrese un numero positivo\n");  
	}
	return 0;
}
