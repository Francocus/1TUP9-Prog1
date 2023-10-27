Proceso sin_titulo
	definir opcionMenu, validar, rutaSeleccionada, plazasRuta1, plazasRuta2, plazasRuta3, plazasRuta4, plazasDisponibles como entero
	Definir datosPasajero Como Caracter
	Dimension datosPasajero[4]
	Dimension plazasRuta1[120, 2]
	Dimension plazasDisponibles[4, 2]
	plazasDisponibles[0, 0] = 120
	plazasDisponibles[1,0] = 120
	plazasDisponibles[2,0] = 80
	plazasDisponibles[3,0] = 80
	plazasDisponibles[0,1] = 0
	plazasDisponibles[1,1] = 0
	plazasDisponibles[2,1] = 0
	plazasDisponibles[3,1] = 0
	escribir "Bienvenido al Sistema de Pasajes Aereos"
	escribir "1. Venta de pasaje"
	Escribir "2. Buscar pasaje vendido"
	Escribir "3. Buscar pasajero"
	Escribir "4. Ordenar y mostrar lista de pasajeros"
	Escribir "5. Listado/s"
	Escribir "6. Salir"
	Leer opcionMenu
	
	Mientras opcionMenu <> 1 y opcionMenu <> 6 y validar = 0 Hacer
		Escribir "Primero debe ingresar la venta del pasaje"
		leer opcionMenu
	FinMientras
	
	Segun opcionMenu Hacer
		1:
			validar = 1
			escribir "Rutas disponibles:"
			Escribir "1. Buenos Aires - Bariloche, quedan ", plazasDisponibles[0,0], " plazas disponibles"
			Escribir "2. Buenos Aires - Salta"
			Escribir "3. Rosario - Buenos Aires"
			Escribir "4. Mar del Plata - Mendoza"
			Escribir "Ruta seleccionada:"
			//agregar un salir
			leer rutaSeleccionada
			Mientras rutaSeleccionada < 1 y rutaSeleccionada > 4 Hacer
				Escribir "Ingrese una ruta valida"
				escribir "Rutas disponibles:"
				Escribir "1. Buenos Aires - Bariloche"
				Escribir "2. Buenos Aires - Salta"
				Escribir "3. Rosario - Buenos Aires"
				Escribir "4. Mar del Plata - Mendoza"
				Escribir "Ruta seleccionada:"
				leer rutaSeleccionada
			FinMientras
			Segun rutaSeleccionada Hacer
				1: si plazasDisponibles[0,0] == 0 Entonces
						Escribir "No hay mas plazas disponibles para la ruta seleccionada"
					sino
						Escribir "Ingrese su nombre"
						Leer
					FinSi
					
			FinSegun
			
		2:
			
	FinSegun
	
FinProceso