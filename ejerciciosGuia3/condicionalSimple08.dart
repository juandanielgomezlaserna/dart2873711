import 'dart:io';

void main(){
  //JUAN DANIEL GÓMEZ - CONDICIONAL SIMPLE 8
  /*
  Dada la duración en minutos de una llamada calcular el costo, considerando:
  •Hasta tres minutos el costo es 600
  •Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.
  */
  //DECLARACIÓN DE VARIABLES
  int minutos, precio;
  //ENTRADA DE DATOS
  print("Ingrese los minutos que estuvo en la llamada");
  minutos = int.parse(stdin.readLineSync()!);
  //PROCESO
  precio = minutos*600;
  if (minutos > 3){
    precio = 600*3 + ((minutos - 3)*750);
  }
  //SALIDA
  print("El precio total a pagar es de: \$$precio");
}