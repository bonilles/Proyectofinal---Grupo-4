Algoritmo Celular2
	
	Definir apps, agenda, DatosCompletos, AccionesAgenda, DatosContacto, AsignarNombre, AsignarTelefono como caracter;
	Definir Principal, agregado, NomExiste, ArregloValidarContacto, Menu, Seleccion, Vacio, EspacioDisponible, disponible, Volver, regresar, cerrar, MismoContacto, editado, PocicionContacto como entero;
	
	Principal=0; Agregado=0; Disponible=0; DatosCompletos=""; Regresar=0; Cerrar=0; Accionesagenda=""; editado=0;
	
	Dimension Agenda[10,2];
	Dimension Apps[6];
	Dimension DatosContacto[1,2];
	Dimension ArregloValidarContacto[1,2];
	Dimension MismoContacto[1];
	Dimension EspacioDisponible[1];
	Dimension Volver[1];
	Dimension PocicionContacto[1];
	
	Apps[0]="Whatsapp";
	Apps[1]="Facebook";
	Apps[2]="Agenda";
	Apps[3]="Marcador";
	Apps[4]="Mi banco";
	Apps[5]="Instagram";
	
	Agenda[0,0] = "Esteban";			Agenda[0,1]="83547509";
	Agenda[1,0] = "Bianchi";					Agenda[1,1]="87402466";
	Agenda[2,0] = "";					Agenda[2,1]="";
	Agenda[3,0] = "";					Agenda[3,1]="";
	Agenda[4,0] = "";					Agenda[4,1]="";
	Agenda[5,0] = "";					Agenda[5,1]="";
	Agenda[6,0] = "";					Agenda[6,1]="";
	Agenda[7,0] = "";					Agenda[7,1]="";
	Agenda[8,0] = "";					Agenda[8,1]="";
	Agenda[9,0] = "";					Agenda[9,1]="";	
	
	Agenda[0,0] = Mayusculas(Agenda[0,0]);			Agenda[0,1] = Mayusculas(Agenda[0,1]);
	Agenda[1,0] = Mayusculas(Agenda[1,0]);			Agenda[1,1] = Mayusculas(Agenda[1,1]);
	Agenda[2,0] = Mayusculas(Agenda[2,0]);			Agenda[2,1] = Mayusculas(Agenda[2,1]);
	Agenda[3,0] = Mayusculas(Agenda[3,0]);			Agenda[3,1] = Mayusculas(Agenda[3,1]);
	Agenda[4,0] = Mayusculas(Agenda[4,0]);			Agenda[4,1] = Mayusculas(Agenda[4,1]);
	Agenda[5,0] = Mayusculas(Agenda[5,0]);			Agenda[5,1] = Mayusculas(Agenda[5,1]);
	Agenda[6,0] = Mayusculas(Agenda[6,0]);			Agenda[6,1] = Mayusculas(Agenda[6,1]);
	Agenda[7,0] = Mayusculas(Agenda[7,0]);			Agenda[7,1] = Mayusculas(Agenda[7,1]);
	Agenda[8,0] = Mayusculas(Agenda[8,0]);			Agenda[8,1] = Mayusculas(Agenda[8,1]);
	Agenda[9,0] = Mayusculas(Agenda[9,0]);			Agenda[9,1] = Mayusculas(Agenda[9,1]);	
	
	Principal <- MenuPrincipal (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto );	
FinAlgoritmo

////////////////////////////////////////////////////////////////
//Menú  acciones principal
SubAlgoritmo Principal <- MenuPrincipal (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto )	
	Imprimir "-------- MENÚ PRINCIPAL DEL DISPOSITIVO --------";
	Imprimir "";
	Imprimir "Digite una opción del menú:";
	Imprimir "";
	Imprimir "1. Ver opciones de agenda";
	Imprimir "2. Acceder al chat";
	Imprimir "3. Realizar llamada";
	Imprimir "4. Abrir una aplicación";
	Imprimir "5. Apagar el dispositivo";
	Leer Principal;	
	Segun principal
		1: AccionesAgenda <- MenuAcciones (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto ); //Agregar contacto	
			
			
		2: 
		3:
		4:
		5:
			
			
	FinSegun	
Fin SubAlgoritmo

////////////////////////////////////////////////////////////////
//Menú  de acciones agenda
SubAlgoritmo AccionesAgenda <- MenuAcciones (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto )
	Imprimir "Seleccionar una opción";
	Imprimir "";
	Imprimir "A. Agregar un contacto";
	Imprimir "B. Modificar un contacto";
	Imprimir "C. Eliminar un contacto";
	Imprimir "D. Buscar un contacto";
	Imprimir "E. Salir de la agenda";
	Leer AccionesAgenda;
	AccionesAgenda=Mayusculas(AccionesAgenda);	
	si AccionesAgenda="A" Entonces
		Agregado <- AgregarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, MismoContacto, PocicionContacto, Editado ); //Agregar un contacto
	FinSi
	si AccionesAgenda="B" Entonces
		Editado <- EditarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, editado, MismoContacto, PocicionContacto ); //Modificar Contacto
	FinSi
Fin SubAlgoritmo

////////////////////////////////////////////////////////////////
//Agregar contacto
SubAlgoritmo Agregado <- AgregarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, MismoContacto, PocicionContacto, Editado )
	DatosCompletos <- SolicitarDatosContacto (DatosContacto);
	Regresar <- ValidarContacto (agenda, DatosContacto, ArregloValidarContacto, volver, principal, EspacioDisponible, datoscompletos, Disponible, MismoContacto, PocicionContacto);	
	Si ArregloValidarContacto[0,0]=0 y ArregloValidarContacto[0,1]=0
		Disponible <- PocisionVacia (agenda, datoscontacto, EspacioDisponible);
		si EspacioDisponible[0]=0 Entonces				
			imprimir "No hay espacio disponible en la agenda.";
			AccionesAgenda <- MenuAcciones (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto );			
		FinSi		
		si EspacioDisponible[0]>0 Entonces	
			EspacioDisponible[0]=EspacioDisponible[0]-1;
			Imprimir "Contacto guardado, quedan " +ConvertirATexto(EspacioDisponible[0]) + " espacios disponibles en la agenda.";	
			Imprimir "";
			Imprimir "Seleccione una opción";
			Imprimir "1. Agregar otro contacto";
			Imprimir "2. Volver al menú principal";
			Leer regresar;
			Volver[0]=Regresar; //devolver EspacioDisponible[0] a 0.
		FinSi
	FinSi	
	si ArregloValidarContacto[0,0]=1 Entonces
		Imprimir "";
		Imprimir "El nombre ya existe dentro de sus contactos, utilice un nombre diferente";	
		Imprimir "";
		Imprimir "Seleccione una opción";
		Imprimir "1. Agregar otro contacto";
		Imprimir "2. Volver al menú principal";
		Leer regresar;
		Volver[0]=Regresar;		
	FinSi	
	si ArregloValidarContacto[0,1]=1 Entonces
		Imprimir "";
		Imprimir "El número ingresado ya está asignado a alguno de sus contactos, utilice un número diferente";	
		Imprimir "";
		Imprimir "Seleccione una opción";
		Imprimir "1. Agregar otro contacto";
		Imprimir "2. Volver al menú principal";
		Leer regresar;
		Volver[0]=Regresar;
	FinSi	
	si volver[0]=1 Entonces
		Agregado <- AgregarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, MismoContacto, PocicionContacto, Editado );					
	FinSi
	si volver[0]=2 Entonces
		Principal <- MenuPrincipal (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto );
	FinSi	
Fin SubAlgoritmo

////////////////////////////////////////////////////////////////
//Modificar contacto
SubAlgoritmo Editado <- EditarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, editado, MismoContacto, PocicionContacto )
	DatosCompletos <- SolicitarDatosContactoModificar (DatosContacto);
	Regresar <- ValidarContacto (agenda, DatosContacto, ArregloValidarContacto, volver, principal, EspacioDisponible, datoscompletos, Disponible, MismoContacto, PocicionContacto);
	Definir MenuEditar, Seguro como entero;
	Definir NuevoNom, NuevoTel Como Caracter;
	NuevoNom=""; NuevoTel=""; MenuEditar=0; Seguro=0;
	si ArregloValidarContacto[0,0]=0 y ArregloValidarContacto[0,1]=0
		Imprimir "Contacto no encontrado, intente de nuevo";
		Imprimir "Seleccione una acción";
		Imprimir "1. Modificar otro contacto";
		Imprimir "2. Volver al menú principal";
		Leer MenuEditar;
		Si MenuEditar=1 Entonces
			Editado <- EditarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, editado, MismoContacto, PocicionContacto );			
		FinSi
		Si MenuEditar=2 entonces 
			Principal <- MenuPrincipal (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto );
		FinSi
	FinSi	
	Si MismoContacto[0]=0 y ArregloValidarContacto[0,0]=1 Entonces ///////Agregar acá que pasa si el contacto del todo no existe
		Imprimir "El nombre digitado ya existe en su agenda pero con un número de telefono distinto, verifique los datos e intente de nuevo";
		Imprimir "";
		Editado <- EditarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, editado, MismoContacto, PocicionContacto );
	FinSi	
	Si MismoContacto[0]=0 y ArregloValidarContacto[0,0]=1 Entonces
		Imprimir "El nombre digitado ya existe en su agenda pero con un número de telefono distinto, verifique los datos e intente de nuevo";
		Imprimir "";
		Editado <- EditarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, editado, MismoContacto, PocicionContacto );
	FinSi	
	Si MismoContacto[0]=0 y ArregloValidarContacto[0,1]=1 Entonces
		Imprimir "El número digitado pertenece a un contacto con un nombre distinto, verifique los datos e intente de nuevo";
		Imprimir "";
		Editado <- EditarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, editado, MismoContacto, PocicionContacto );		
	FinSi	
	Si MismoContacto[0]=1 Entonces
		Imprimir "Contacto encontrado en su agenda";
		Imprimir "Digite el nuevo nombre del contacto";
		leer NuevoNom;
		Imprimir "Digite el nuevo número de telefono del contacto";
		Leer NuevoTel;
		Imprimir "Está seguro que desea modificar el contacto?";
		Imprimir "1. Si";
		Imprimir "2. No";
		Leer Seguro;
		si seguro=1 Entonces
			Agenda[PocicionContacto[0],0]=NuevoNom;
			Agenda[PocicionContacto[0],1]=NuevoTel;
			Imprimir "El contacto ha sido modificado";
			Imprimir "Seleccione una opción";
			Imprimir "1. Modificar otro contacto";
			Imprimir "2. Volver al menú principal";
			Leer MenuEditar;
			Si MenuEditar=1 Entonces
				Editado <- EditarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, editado, MismoContacto, PocicionContacto );			
			FinSi
			Si MenuEditar=2 entonces 
				Principal <- MenuPrincipal (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto );
			FinSi			
		FinSi
		Si seguro=2 Entonces
			Imprimir "Seleccione una acción";
			Imprimir "1. Modificar otro contacto";
			Imprimir "2. Volver al menú principal";
			Leer MenuEditar;
			Si MenuEditar=1 Entonces
				Editado <- EditarContacto (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, Agregado, editado, MismoContacto, PocicionContacto );			
			FinSi
			Si MenuEditar=2 entonces 
				Principal <- MenuPrincipal (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto );
			FinSi			
		FinSi
	FinSi	
Fin SubAlgoritmo

////////////////////////////////////////////////////////////////
//Menú para volver
SubAlgoritmo Cerrar <- SubMenu (Volver, principal, agenda, DatosContacto, ArregloValidarContacto, EspacioDisponible, AccionesAgenda, DatosCompletos, Regresar, Disponible )
	si volver[0]=1 Entonces
		Imprimir "Ha seleccionado 1";
		DatosCompletos <- SolicitarDatosContacto (DatosContacto);
		Regresar <- ValidarContacto (agenda, DatosContacto, ArregloValidarContacto, volver, principal, EspacioDisponible, datoscompletos, Disponible, MismoContacto, PocicionContacto);		
		Si ArregloValidarContacto[0,0]=0 o ArregloValidarContacto[0,1]=0
			Disponible <- PocisionVacia (agenda, datoscontacto, EspacioDisponible);
			si EspacioDisponible[0]=0 Entonces				
				imprimir "No hay espacio disponible en la agenda";
			FinSi				
			si EspacioDisponible[0]>0 Entonces		
				Imprimir "Contacto guardado, quedan " +ConvertirATexto(EspacioDisponible[0]) + " espacios disponibles en la agenda: ";
				Imprimir "";
				Imprimir "Seleccione una opción";
				Imprimir "1. Agregar otro contacto";
				Imprimir "2. Volver al menú principal";
			FinSi
		FinSi		
		si ArregloValidarContacto[0,0]=1 Entonces
			Imprimir "";
			Imprimir "El nombre ya existe dentro de sus contactos, utilice un nombre diferente";	
			Imprimir "";
			Imprimir "Seleccione una opción";
			Imprimir "1. Agregar otro contacto";
			Imprimir "2. Volver al menú principal";
		FinSi		
		si ArregloValidarContacto[0,1]=1 Entonces
			Imprimir "";
			Imprimir "El número ingresado ya está asignado a alguno de sus contactos, utilice un número diferente ";					
		FinSi
	FinSi	
	Si volver[0]=2 Entonces
		Principal <- MenuPrincipal (ArregloValidarContacto, EspacioDisponible, Volver, DatosCompletos, DatosContacto, Regresar, agenda, principal, Disponible, AccionesAgenda, cerrar, agregado, MismoContacto, Editado, PocicionContacto );
	FinSi
Fin SubAlgoritmo

////////////////////////////////////////////////////////////////
//Solicitar datos de contacto
SubAlgoritmo DatosCompletos <- SolicitarDatosContacto (DatosContacto)
	Definir DatosCompletos, nombre, telefono Como Caracter;
	Datoscompletos=""; Nombre=""; telefono="";	
	DatosContacto[0,0]=""; DatosContacto[0,1]="";
	Imprimir "Digite el nombre del contacto que desea guardar";
	Leer Nombre;
	Nombre=Mayusculas(Nombre);
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
	DatosCompletos="Completos";
	DatosContacto[0,0]=Nombre; DatosContacto[0,1]=Telefono;
	DatosContacto[0,0]= Mayusculas(DatosContacto[0,0]);
Fin SubAlgoritmo

////////////////////////////////////////////////////////////////
//Solicitar datos de contacto PARA MODIFICAR
SubAlgoritmo DatosCompletos <- SolicitarDatosContactoModificar (DatosContacto)
	Definir DatosCompletos, nombre, telefono Como Caracter;
	Datoscompletos=""; Nombre=""; telefono="";	
	DatosContacto[0,0]=""; DatosContacto[0,1]="";
	Imprimir "Digite el nombre del contacto que desea MODIFICAR";
	Leer Nombre;
	Nombre=Mayusculas(Nombre);
	Imprimir "Digite el número de telefono del contacto a modificar";
	Leer telefono;
	Imprimir "";
	Mientras nombre="" o telefono="" hacer
		Imprimir "";
		Imprimir "**Ambos espacios son requeridos, intente nuevamente**";
		Imprimir "Digite el nombre del contacto que desea modificar";
		Leer Nombre;
		Nombre=mayusculas(Nombre);
		Imprimir "Digite el número de telefono del contacto a modificar";;
		Leer telefono;		
	FinMientras
	DatosCompletos="Completos";
	DatosContacto[0,0]=Nombre; DatosContacto[0,1]=Telefono;
	DatosContacto[0,0]= Mayusculas(DatosContacto[0,0]);
Fin SubAlgoritmo

////////////////////////////////////////////////////////////////
//Validar si ya existe
SubAlgoritmo Regresar <- ValidarContacto (agenda, DatosContacto, ArregloValidarContacto, volver, principal, EspacioDisponible, datoscompletos, Disponible, MismoContacto, PocicionContacto)
	Definir i, j,  NomExiste, TelExiste, Regresar, AccionesAgenda, cerrar, MismoNombre, PocisionNombre, PocisionTel como entero;		
	i=0; j=0; NomExiste=0; TelExiste=0; ArregloValidarContacto[0,0]=0; Regresar=0; AccionesAgenda=0; cerrar=0; MismoNombre=0; PocisionNombre=0; PocisionTel=0;
	para i=0 hasta 9 con paso 1
		para j=0 hasta 1 con paso 1
			si DatosContacto[0,0] = agenda[i,j]
				NomExiste = 1;
				PocisionNombre=i;
			FinSi
			si DatosContacto[0,1] = agenda[i,j]
				TelExiste =1;
				PocisionTel=j;
			FinSi
			si DatosContacto[0,0] = agenda[i,j] y DatosContacto[0,1] = agenda[i,j+1] Entonces
				MismoNombre=1;
			FinSi
		FinPara
	FinPara
	//Imprimir "El contacto está ubicado en la fila " + ConvertirATexto(PocisionNombre) " y la columna " +ConvertirATexto(PocisionTel);
	ArregloValidarContacto[0,0]=NomExiste;
	ArregloValidarContacto[0,1]=TelExiste;
	MismoContacto[0]=MismoNombre;
	PocicionContacto[0]=PocisionNombre;
Fin SubAlgoritmo

////////////////////////////////////////////////////////////////
//Guardar el contacto en un espacio en blanco
SubAlgoritmo Disponible <- PocisionVacia (agenda, datoscontacto, EspacioDisponible)
	Definir i, j, disponible como entero;
	i=0; j=0; Disponible=0; 	
	Para i=0 Hasta 9 Con Paso 1 Hacer
		Para j=0 Hasta 1 Con Paso 1 Hacer
			si Agenda[i,j]="" Entonces
				Disponible=Disponible+1;
				j=j+1;
			FinSi
			
		Fin Para
	Fin Para
	j=0;i=0;
	Para i=0 Hasta 9 Con Paso 1 Hacer	
		Para j=0 Hasta 1 Con Paso 1 Hacer
			si Agenda[i,j]="" Entonces
				Agenda[i,j]=DatosContacto[0,0];				
				j=j+1;
				Agenda[i,j]=DatosContacto[0,1];
				i=9;
			FinSi
		Fin Para
	Fin Para
	EspacioDisponible[0]=Disponible;
Fin SubAlgoritmo

