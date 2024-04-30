import 'dart:io';

void main(){
  //JUAN DANIEL GÓMEZ LASERNA - CONDICIONAL SIMPLE 3
  /*
  El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes,
   de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario.
    Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal.
   */
  //ASIGNACIÓN DE VARIABLES
  double descuento, precio;
  int cant_trajes;
  //ENTRADA DE DATOS
  print("Ingrese la cantidad de trajes que compró");
  cant_trajes = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio total de los trajes");
  precio = double.parse(stdin.readLineSync()!);
  //PROCESO
  if (cant_trajes >= 3){
    descuento = precio*0.17;
    precio = precio - descuento;
  }
  //SALIDA
  print("El precio que tiene que pagar es de: $precio");
}
