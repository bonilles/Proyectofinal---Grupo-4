# Proyectofinal
Proyecto final del curso programación 1


Algoritmo Celular2
	
	Definir agenda, nombre, telefono, apps, menu, guardado, encontrado, MenuAgenda, MenuAgendaSelect como caracter;
	Definir existe, submenucontactos, Validado, OpcionSeleccionada, volver, editado como entero;
	Dimension Agenda[10,2];
	Dimension Apps[6];
	
	validado=0; guardado=""; encontrado=""; opcionseleccionada=0; existe=0; submenucontactos=0; MenuAgenda=""; MenuAgendaSelect=""; volver=0; editado=0;
	
	Apps[0]="Whatsapp";
	Apps[1]="Facebook";
	Apps[2]="Agenda";
	Apps[3]="Marcador";
	Apps[4]="Mi banco";
	Apps[5]="Instagram";
	
	Agenda[0,0] = "ESTEBAN";				Agenda[0,1]="83547509";
	Agenda[1,0] = "ALLAN";					Agenda[1,1]="10";
	Agenda[2,0] = "GERA";					Agenda[2,1]="11";
	Agenda[3,0] = "ALON";					Agenda[3,1]="12";
	Agenda[4,0] = "BIAN";					Agenda[4,1]="13";
	Agenda[5,0] = "MAMI";					Agenda[5,1]="14";
	Agenda[6,0] = "PAPI";					Agenda[6,1]="15";
	Agenda[7,0] = "TIO";					Agenda[7,1]="16";
	Agenda[8,0] = "TIA";					Agenda[8,1]="17";
	Agenda[9,0] = "";						Agenda[9,1]="";	
	
	OpcionSeleccionada <- MenuPrincipal (OpcionSeleccionada);
	si OpcionSeleccionada=1 Entonces
		MenuAgendaSelect <- MenuAccionesAgenda (MenuAgenda, MenuAgendaSelect, guardado, existe, agenda, volver, OpcionSeleccionada, editado );
		si MenuAgendaSelect="A"
			Guardado <- AgregarContacto (existe, agenda, guardado, volver, MenuAgendaSelect, MenuAgenda, OpcionSeleccionada);
		FinSi
	FinSi
	
FinAlgoritmo


////////////////////////////////////////////////////////////////
//Módulo principal
SubAlgoritmo OpcionSeleccionada <- MenuPrincipal (OpcionSeleccionada)
	Imprimir "-------- MENÚ PRINCIPAL DEL DISPOSITIVO --------";
	Imprimir "";
	Imprimir "Digite una opción del menú:";
	Imprimir "";
	Imprimir "1. Ver opciones de agenda";
	Imprimir "2. Acceder al chat";
	Imprimir "3. Realizar llamada";
	Imprimir "4. Abrir una aplicación";
	Imprimir "5. Apagar el dispositivo";
	Leer OpcionSeleccionada;
Fin SubAlgoritmo

///////////////////////////////////////////////////////
//Menú de la agenda
SubAlgoritmo MenuAgendaSelect <- MenuAccionesAgenda (MenuAgenda, MenuAgendaSelect, guardado, existe, agenda, volver, OpcionSeleccionada, Editado )
	Imprimir "Seleccionar una opción";
	Imprimir "A. Agregar un contacto";
	Imprimir "B. Modificar un contacto";
	Imprimir "C. Eliminar un contacto";
	Imprimir "D. Buscar un contacto";
	Imprimir "E. Salir de la agenda";
	Leer MenuAgendaSelect;
	MenuAgendaSelect=mayusculas(MenuAgendaSelect);
	Si 	MenuAgendaSelect="A" Entonces
		Guardado <- AgregarContacto (existe, agenda, guardado, volver, MenuAgendaSelect, MenuAgenda, OpcionSeleccionada);
	FinSi
	si MenuAgendaSelect="B" entonces
		Editado <- ModificarContacto (existe, agenda, guardado, volver, MenuAgendaSelect, MenuAgenda, OpcionSeleccionada);
	FinSi
	MenuAgendaSelect="";
Fin SubAlgoritmo


///////////////////////////////////////////////////////
//Agregar un contacto
SubAlgoritmo Guardado <- AgregarContacto (existe, agenda, guardado, volver, MenuAgendaSelect, MenuAgenda, OpcionSeleccionada)
	definir nombre, telefono como caracter;
	Nombre=""; telefono="";
	Imprimir "Digite el nombre del contacto que desea guardar";
	Leer Nombre;
	Nombre=mayusculas(Nombre);
	Imprimir "Digite el número de telefono";
	Leer telefono;
	Imprimir "";
	Mientras nombre="" o telefono="" hacer
		Imprimir "";
		Imprimir "**Ambos espacios son requeridos, intente nuevamente**";
		Imprimir "Digite el nombre del contacto que desea guardar";
		Leer Nombre;
		Nombre=mayusculas(Nombre);
		Imprimir "Digite el número de telefono";
		Leer telefono;		
	FinMientras
	Existe <- ValidarContacto ( nombre, Agenda, telefono, volver, MenuAgendaSelect, MenuAgenda, existe, guardado, OpcionSeleccionada );
	Guardado <- PocisionVacia ( nombre, Agenda, telefono, guardado);
	
Fin SubAlgoritmo

///////////////////////////////////////////////////////    DESARROLLANDO
//Editar un contacto
SubAlgoritmo Editado <- ModificarContacto (existe, agenda, guardado, volver, MenuAgendaSelect, MenuAgenda, OpcionSeleccionada)
	definir nombre, telefono, encontrado como caracter;
	Nombre=""; telefono=""; encontrado="";
	Imprimir "Digite el nombre del contacto que desea modificar";
	Leer Nombre;
	Nombre=mayusculas(Nombre);
	Imprimir "Digite el número del contacto que desea modificar";
	Leer telefono;
	Imprimir "";
	Mientras nombre="" o telefono="" hacer
		Imprimir "";
		Imprimir "**Ambos espacios son requeridos, intente nuevamente**";
		Imprimir "Digite el nombre del contacto que desea guardar";
		Leer Nombre;
		Nombre=mayusculas(Nombre);
		Imprimir "Digite el número de telefono";
		Leer telefono;		
	FinMientras
	Existe <- ValidarContacto ( nombre, Agenda, telefono, volver, MenuAgendaSelect, MenuAgenda, existe, guardado, OpcionSeleccionada );
	
	
Fin SubAlgoritmo

///////////////////////////////////////////////////////
//Comprueba si el # o número ingresados ya existe
SubAlgoritmo  Existe <- ValidarContacto ( nombre, Agenda, telefono, volver, MenuAgendaSelect, MenuAgenda, existe, guardado, OpcionSeleccionada )
	Definir i, j como entero;
	i=0; j=0; existe =0;
	para i=0 hasta 9 con paso 1
		para j=0 hasta 1 con paso 1
			si telefono=agenda[i,j]
				existe = 1;
			FinSi
			si nombre=agenda[i,j]
				existe =2;
			FinSi
		FinPara
	FinPara
	si existe=1 Entonces
		Imprimir "El número digitado ya está almacenado en este dispositivo, intente de nuevo";
		Guardado <- AgregarContacto (existe, agenda, guardado, volver, MenuAgendaSelect, MenuAgenda, OpcionSeleccionada);
	FinSi
	si existe=2 Entonces
		Imprimir "Este nombre ya existe en la agenda, intente de nuevo";
		IMprimir"Escoja una opción para continuar:";
		Imprimir "1. Guardar contacto";
		Imprimir "2. Regresar al menú principal";
		Leer volver;
		Si volver=1 Entonces
			MenuAgendaSelect <- MenuAccionesAgenda (MenuAgenda, MenuAgendaSelect, guardado, existe, agenda, volver, OpcionSeleccionada, editado );
		FinSi
		si volver=2 Entonces
			OpcionSeleccionada <- MenuPrincipal (OpcionSeleccionada);
		FinSi
	FinSi
	
	Si existe=0 entonces
		Guardado <- PocisionVacia ( nombre, Agenda, telefono, guardado);
		
		si guardado="" Entonces
			Imprimir"El contacto no se puede almacenar, la agenda está llena";
		FinSi
		si guardado="Guardado" Entonces
			Imprimir "El contacto ha sido guardado en su agenda";
		FinSi
		
		
		IMprimir"Escoja una opción para continuar:";
		Imprimir "1. Guardar contacto";
		Imprimir "2. Regresar al menú principal";
		Leer volver;
		Si volver=1 Entonces
			Guardado <- AgregarContacto (existe, agenda, guardado, volver, MenuAgendaSelect, MenuAgenda, OpcionSeleccionada);
		FinSi
		si volver=2 Entonces
			OpcionSeleccionada <- MenuPrincipal (OpcionSeleccionada);
		FinSi
	FinSi
FinSubAlgoritmo

///////////////////////////////////////////////////////
//Guarda el # en el siguiente espacio disponible ó dice si la agenda está llena
SubAlgoritmo  Guardado <- PocisionVacia ( nombre, Agenda, telefono, guardado)
	
	Definir i, j como entero;
	i=0; j=0; guardado="";
	para i=0 hasta 9 con paso 1 Hacer
		para j=0 hasta 1 con paso 1 Hacer
			si agenda[i,j]="" Entonces
				agenda[i,j]=Nombre;
				j=j+1;
				Agenda[i,j]=Telefono;
				i=9;
				Guardado= "Guardado";
			FinSi
		FinPara
	FinPara		
	
FinSubAlgoritmo

///////////////////////////////////////////////////////
//Buscar un contacto en la agenda
SubAlgoritmo  Encontrado <- BuscarContacto ( nombre, Agenda, telefono, encontrado)
	
	Definir i, j como entero;
	i=0; j=0;
	para i=0 hasta 9 con paso 1 Hacer
		para j=0 hasta 1 con paso 1 Hacer
			si agenda[i,j]="" Entonces
				agenda[i,j]=Nombre;
				j=j+1;
				Agenda[i,j]=Telefono;
				i=9;
				Imprimir "Ubicado en fila " +ConvertirATexto(i);
				Imprimir "Ubicado en columna " +ConvertirATexto(j);
				Encontrado= "Si";
			SiNo
				Encontrado="No";
			FinSi
			si encontrado="Si" y i=j+1 Entonces
				Imprimir "Encontrados juntos";
			FinSi
		FinPara
	FinPara		

FinSubAlgoritmo
	


