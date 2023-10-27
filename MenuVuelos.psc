Algoritmo MenuVuelos(actualizado)
	
	Definir optMenu, optOrdenPasajeros, optListado Como Entero
	Definir numAsiento, letraAsiento Como Caracter
	Dimension pasajeros[3,4] //Nombre, apellido, Numero asiento, Letra asiento
	cargarPasajeros(pasajeros)
	
	Escribir "BIENVENIDO AL SISTEMA DE VENTA DE PASAJES AEREOS"
	
	Repetir
		menu(opciones)
		Escribir "Ingrese el numero que corresponde a la opcion que desea elegir"
		Leer optMenu
		Repetir
			si optMenu>6 o optMenu<1
				Escribir "Ingrese una opcion valida"
				menu(opciones)
				Leer OptMenu
			FinSi
		Hasta Que optMenu>0 y optMenu<=6
	
		Segun optMenu
			1: 
				
			2: 
				ordenarAsientos(pasajeros)
				buscarPasajeAsiento(pasajeros)
				
			3:
				
			4:
				Repetir
					
					Escribir "Como desea ordenar la lista de pasajeros?"
					Escribir "1- por numero de asientos ascendientes"
					Escribir "2 - Por numero de asiento descendiente"
					leer optOrdenPasajeros
					Segun optOrdenPasajeros
						1:
						2:
					FinSegun
				Hasta Que optOrdenPasajeros=1 o optOrdenPasajeros=2
				
			5:
				Repetir
					
					Escribir "Seleccion como desea ver el listado"
					Escribir "1- cantidad de pasajes vendido porruta aerea"
					Escribir "2 - porcentaje de ventas por ruta aerea"
					leer optListado
					Segun optListado
						1:
						2:
					FinSegun
				Hasta Que optOrdenPasajeros=1 o optOrdenPasajeros=2
				
			6: Escribir "Ha salido del Menu, que tenga buenos dias"
		FinSegun	
	hasta Que optMenu==6
FinAlgoritmo

SubProceso cargarPasajeros(pasajeros)
	pasajeros[0,0]="Matias"
	pasajeros[0,1]="Martinez"
	pasajeros[0,2]="1"
	pasajeros[0,3]="C"
	pasajeros[1,0]="Maria"
	pasajeros[1,1]="Zegui"
	pasajeros[1,2]="2"
	pasajeros[1,3]="B"
	pasajeros[2,0]="Belen"
	pasajeros[2,1]="Lomas"
	pasajeros[2,2]="1"
	pasajeros[2,3]="A"
FinSubProceso

SubProceso menu(opciones)
	Escribir "1 - Venta de Pasaje"
	Escribir "2 - Buscar pasaje vendido por numero de asiento"
	Escribir "3 - Buscar Pasajero"
	Escribir "4 - Mostrar lista de pasajeros en orden"
	Escribir "5 - Listados"
	Escribir "6 - Salir"
FinSubProceso


SubProceso ordenarAsientos(pasajeros)
	definir i,j Como Entero 
	
	para i=0 hasta 1
		posmenor=i
		para j= i+1 hasta 2
			
			si Concatenar(pasajeros[posmenor,2],pasajeros[posmenor,3])  > Concatenar(pasajeros[j,2],pasajeros[j,3])
				posmenor=j
			FinSi
		FinPara
		
		
		para k=0 hasta 3 
			aux = pasajeros[i,k] 
			pasajeros[i,k]=pasajeros[posmenor,k] 
			pasajeros[posmenor,k]=aux 
		FinPara
	FinPara
	
FinSubProceso

SubProceso buscarPasajeAsiento(pasajero)
	Definir mitad Como Entero
	Definir numAsiento Como Entero
	
	Escribir "ingrese el Numero de su fila"
	leer numAsiento
	//validacion ingresar numero
Mientras numAsiento<=0 o numAsiento>50
Escribir "ingrese un Numero de fila valido"
leer numAsiento
FinMientras

	numAsientoTxt=ConvertirATexto(numAsiento)
	
	Escribir "Ingrese la Letra de su asiento"
	leer letraAsiento
	
	//validacion letra mayuscula
	letra=Mayusculas(letraAsiento)
	
	Escribir "Usted eligio buscar el asiento "
	Mostrar Concatenar(numAsientoTxt, letraAsiento)
	
	Busqueda=Concatenar(numAsientoTxt, letra)
	inferior=0
	superior= 2
	bandera=Falso
	
	Repetir
		mitad=trunc((inferior+superior)/2) 
		
		si Concatenar(pasajero[mitad,2],pasajero[mitad,3])==Busqueda
			Escribir  "El numero de asiento pertence al pasajero " 
			Escribir "Apellido: ", pasajero[mitad,1]
			Escribir "Nombre: ",  pasajero[mitad,0]
			Mostrar "Asiento: ", Busqueda
			bandera=Verdadero
			
		SiNo
			Si Concatenar(pasajero[mitad,2],pasajero[mitad,3])<Busqueda
				inferior=mitad+1
			SiNo
				superior=mitad-1
			FinSi
		FinSi
		si inferior>superior
			Escribir "El asiento que busca no se encuentra en la base de datos"
		FinSi
		
	Mientras que bandera=Falso y inferior<=superior
	
FinSubProceso

//mostrar orden
//para i=0 hasta 2
//	para j=0 hasta 3
//		escribir Pasajero[i,j]," " Sin Saltar
//	FinPara
//FinPara