import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL DOBLE 3
  /*
  Hacer un algoritmo que calcule el total a pagar por la compra de camisas.
   Si se compran tres camisas o mas se aplica un descuento del 20%  sobre el total de la compra y si son menos de tres camisas un descuento del 10%
  */
  //DECLARACIÓN DE VARIABLES
  int cant_camisas;
  double precio_original, precio_descuento, descuento;
  //ENTRADA DE DATOS
  print("Ingrese la cantidad de camisas que compró");
  cant_camisas = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio total de la compra");
  precio_original = double.parse(stdin.readLineSync()!);
  //PROCESO
  if(cant_camisas >= 3){
    descuento = precio_original * 0.2;
  }else{
    descuento = precio_original * 0.1;
  }
  precio_descuento = precio_original - descuento;
  //SALIDA
  print("El total a pagar es de: $precio_descuento, con un descuento de $descuento");
}