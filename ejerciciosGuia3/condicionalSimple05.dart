import 'dart:io';

void main(){
  //JUAN DANIEL GÓMEZ - CONDICIONAL SIMPLE 5
  /*
  Calcular el total que una persona debe pagar en un almacén,
   si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más.
  */
  //ASIGNACIÓN DE VARIABLES
  int cant_llantas, precio_llantas, precio_total;
  //ENTRADA DE DATOS
  print("Ingrese la cantidad de llantas que desea comprar");
  cant_llantas = int.parse(stdin.readLineSync()!);
  //PROCESO
  precio_llantas = 80000;
  if(cant_llantas >= 5){
    precio_llantas = 70000;
  }
  precio_total = precio_llantas*cant_llantas;
  print("El precio total a pagar es de: \$$precio_total");
}