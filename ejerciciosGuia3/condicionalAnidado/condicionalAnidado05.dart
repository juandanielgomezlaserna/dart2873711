import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL ANIDADO 5
  /*
  Una frutería ofrece las manzanas con descuento según la siguiente tabla:
  NUM. DE KILOS COMPRADOS% DESCUENTO0 -202.01 
  -5105.01 
  -101510.01 
  en adelante
  20Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo vale $1300
  */
  //DECLARACIÓN DE VARIABLES
  double kilos, descuento, total, por_descuento, precio_kilo;
  //ENTRADA DE DATOS
  print("Ingrese la cantidad de kilos que comprará");
  kilos = double.parse(stdin.readLineSync()!);
  precio_kilo = 1300;
  //PROCESO
  if(kilos <= 2){
    por_descuento = 0;
  }else if((kilos > 2)&(kilos <= 5)){
    por_descuento = 0.1;
  }else if((kilos > 5)&(kilos <= 10)){
    por_descuento = 0.15;
  }else{
    por_descuento = 0.2;
  }
  total = precio_kilo*kilos;
  descuento = total*por_descuento;
  total = total - descuento;
  //SALIDA
  print("Tendrá que pagar un precio de: $total");
}