import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL ANIDADO 4
  /*
  En  un  montallantas  se  ha  establecido  una  promoción  de  las  llantas  marca  “Ponchadas”,
  dicha promoción consiste en lo siguiente:Si se compran menos de cinco llantas el precio es de $90000 cada una, 
  de $80000 si se compran de cinco a 10 y de $70000 si se compran más de 10. 
  Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las llantas que compra 
  y la que tiene que pagar por el total de la compra
  */
  //DECLARACIÓN DE VARIABLES
  int cant_llantas, precio_llanta, total;
  //ENTRADA DE DATOS
  print("Ingrese la cantidad de llantas que adesea comprar");
  cant_llantas = int.parse(stdin.readLineSync()!);
  //PROCESO
  if(cant_llantas<5){
    precio_llanta = 90000;
  }else if((cant_llantas >=5)&(cant_llantas<=10)){
    precio_llanta = 80000;
  }else{
    precio_llanta = 70000;
  }
  total = precio_llanta*cant_llantas;
  //SALIDA
  print("Lo que le vale cada llanta es un valor de: $precio_llanta\nMientras que el total sería de: $total");
}