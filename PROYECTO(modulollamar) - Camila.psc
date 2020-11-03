Algoritmo moduloLlamar
	// Definir 
	Definir contacto,nombre,num Como Caracter;
	Definir i,j,eleccion,validar Como Entero;
	Dimension contacto[3,3];
	// inicializa
	i <- 0; j <- 0; num <- ''; validar <- 0; eleccion <- 0;
	// matriz de prueba
	contacto[0,0]<-'sol'; contacto[0,1]<-'89768898';
	contacto[1,0]<-'roy'; contacto[1,1]<-'82312434';
	// consultar
	Escribir 'Ingrese 1 si desea llamar desde su lista de contactos o 2 si desea digitar el número de telefono';
	Leer eleccion;
	Si eleccion=1 Entonces
		Escribir 'Ingrese el nombre del contacto que desea llamar';
		Leer nombre;
		Para i<-0 Hasta 1 Hacer
			Para j<-0 Hasta 1 Hacer
				Si nombre=contacto[i,j] Entonces
					Escribir 'El nombre del contacto es ',contacto[i,0];
					Escribir 'El numero del contacto es ',contacto[i,1];
					Escribir 'La duracion de la llamada fue de ',azar(60),' segundos';
					validar <- 1;
				FinSi
			FinPara
		FinPara
		Si validar=0 Entonces
			Escribir 'contacto no valido';
		FinSi
	FinSi
	Si eleccion=2 Entonces
		Escribir 'Ingrese el número de teléfono';
		Leer num;
		Escribir 'La duracion de la llamada fue de ',azar(60),' segundos';
	FinSi
FinAlgoritmo
