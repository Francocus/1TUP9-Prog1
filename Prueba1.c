/* Compañia que gestiona la autopista decidio cambiar las tarifas de peaje
tarifas dependen de

- Tipo de vehiculo
        Camion / automovil / motos

- Numero de pasajeros que lleve
- Tipo horario del dia
        Horario A: Alta congestion
                Autos: 200
                       Autos: 3 pasajeros o mas = 0
                Camion : 300
                Moto: 100
        Horario B: Baja congestion
                Horario B es independiente del horario de pasajeros
                        Autos: 150
                        Camion : 200
                        Moto: 0
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
        int vehiculo, horario, val, tarifa, numPasajeros;

        printf("Ingrese el tipo de vehiculo que maneja: 1 para auto, 2 para cami%cn o 3 para moto \n", 162);
        scanf("%d", &vehiculo);

        while (vehiculo < 1 || vehiculo > 3)
        {
                printf("Ingrese una opcion valida: 1 para auto, 2 para cami%cn o 3 para moto \n", 162);
                scanf("%d", &vehiculo);
        }

        switch (vehiculo)
        {
        case 1:
                printf("usted selecciono auto \n");
                do
                {
                        printf("ingrese en forma de numero, el numero de pasajeros que se encuentran en el auto \n");
                        scanf("%d", &numPasajeros);
                        if (numPasajeros>5 || numPasajeros<1)
                        {
                                printf("Numeros de pasajeros invalido, nuevamente --> ");
                        }
                        
                } while (numPasajeros>5 || numPasajeros<1);
                
                
                break;
        case 2:
                printf("usted selecciono cami%cn \n", 162);
                break;
        case 3:
                printf("usted selecciono moto \n");
                break;
        }

        do
        {
                printf("En que horario esta viajando, ingrese 1 para el primer horario o 2 para el segundo horario \n");
                scanf("%d", &horario);

                if (horario == 1 || horario == 2)
                {
                        switch (horario)
                        {
                        case 1:
                                printf("usted eligio %d - horario alta congestion \n", horario);
                                printf("Confirme ingresando 1 o otro numero para volver a seleccionar un horario \n");
                                scanf("%d", &val);
                                break;

                        case 2:
                                printf("usted eligio %d - horario baja congestion \n", horario);
                                printf("Confirme ingresando 1 o ingrese otro numero para volver a seleccionar un horario \n");
                                scanf("%d", &val);
                                break;
                        }
                }
                else
                {
                        printf("Horario de viaje invalido --> ");
                }

        } while ((horario != 1 || horario != 2) && val != 1);

        switch (vehiculo)
        {
        case 1:
                 if (horario == 1) // auto alta congestion//
                {
                       if (numPasajeros>3) // auto alta congestion + 3 pasajeros//
                       {
                        tarifa = 0;
                       }
                       else
                        {
                        tarifa = 200;
                        }
                }
                else // auto baja congestion//
                {
                        tarifa = 150;
                }

        case 2:
                if (horario == 1) // camion alta congestion//
                {
                        tarifa = 300;
                }
                else // camion baja congestion//
                {
                        tarifa = 200;
                }
        case 3:
                if (horario == 1) // moto alta congestion//
                {
                        tarifa = 100;
                }
                else // moto baja congestion//
                {
                        tarifa = 0;
                }
        }
printf("El VEHICULO ES %d ", vehiculo);
printf("El horario ES %d ", horario);
printf("El monto a abonar es de %d Pesos Argentinos", tarifa);

        system("pause");
        return 0;
}
