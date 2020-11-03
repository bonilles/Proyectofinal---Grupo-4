Algoritmo Módulo_de_aplicaciones
	Definir App, Aplicaciones Como Caracter;
	Definir i, j Como Real;
	Dimension Aplicaciones[6,1];
	Aplicaciones[0,0]="WhatsApp";
	Aplicaciones[1,0]="Facebook";
	Aplicaciones[2,0]="Agenda";
	Aplicaciones[3,0]="Marcador";
	Aplicaciones[4,0]="Banco_X";
	Aplicaciones[5,0]="Instagram";
	Escribir "Aplicaciones Instaladas";
	Escribir "WhatsApp, Facebook, Agenda, Marcador, Banco_X, Instagram";
	Escribir "Escribe aquí para buscar";
	leer App;
	Para i=0 Hasta 5 Con Paso 1 Hacer
		Para j=0 Hasta 0 Con Paso 1 Hacer
			Si App=Aplicaciones[i,j] Entonces
				Imprimir "la Aplicación " Aplicaciones[i,0] " ha sido abierto";
			Fin Si
			si App<>Aplicaciones[i,j] Entonces
				Imprimir "la Aplicación Ingresada no esta instalada";
			FinSi
		Fin Para
	Fin para
FinAlgoritmo


