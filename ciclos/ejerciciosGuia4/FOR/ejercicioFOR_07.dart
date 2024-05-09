import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - FOR 07
  /*
  Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. 
  Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras.
  */
  //DECLARACIÓN DE VARIABLES
  double descuento, precio, total_ganado = 0, kilos, precio_kilo = 10000;
  //ENTRADA Y PROCESO
  for(int i = 0; i < 15; i++){
    print("Ingrese la cantidad de kilos que comprará");
    kilos = double.parse(stdin.readLineSync()!);
    precio = precio_kilo*kilos;
    if(kilos>10){
      descuento = precio*0.15;
      precio = precio - descuento;
    }
    total_ganado += precio;
    print("El cliente tendrá que pagar: $precio");
  }
  //SALIDA
  print("La tienda percibirá: $total_ganado");
}