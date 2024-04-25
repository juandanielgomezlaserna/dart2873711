import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL DOBLE 6
  /*
  El  gobierno  colombiano  desea  reforestar  un  bosque  que  mide  determinado  número  de  hectáreas.
    Si  la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig.
     manera:Porcentaje de la superficie del bosqueTipo de árbol70% Pino20% Roble10% 
     CedroSi la superficie del terreno es menor o igual a un millón de metros cuadrados,
     entonces decidirá sembrar de la sig. manera:Porcentaje de la superficie del bosqueTipo de árbol50%Pino30%Roble20%
     CedroEl gobierno desea saber el numerode pinos, robles y cedros que tendrá que sembrar en el bosque,
      si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados caben 10 cedros. 
      También se sabe que una hectárea equivale a 10 mil metros cuadrados.
  */
  //DECLARACIÓN DE VARIABLES
  double hectareas, por_pino, por_roble, por_cedro, metros2, m2_pino, m2_roble, m2_cedro, espacio_pino, espacio_roble, espacio_cedro, cant_pino, cant_roble, cant_cedro;
  //ENTRADA DE DATOS
  print("Ingrese la cantidad de hectareas del terreno");
  hectareas = double.parse(stdin.readLineSync()!);
  //PROCESO
  metros2 = hectareas*10000;
  m2_pino = 10/8;
  m2_roble = 1;
  m2_cedro = 18/10;
  if(metros2 > 1000000){
    por_pino = 0.7;
    por_roble = 0.2;
    por_cedro = 0.1;
  }else{
    por_pino = 0.5;
    por_roble = 0.3;
    por_cedro = 0.2;
  }
  espacio_cedro = metros2*por_cedro;
  espacio_roble = metros2*por_roble;
  espacio_pino = metros2*por_pino;
  cant_pino = espacio_pino/m2_pino;
  cant_cedro = espacio_cedro/m2_cedro;
  cant_roble = espacio_roble/m2_roble;
  //SALIDA
  print("Cantidad de pinos: $cant_pino\nCantidad de Robles: $cant_roble\nCantidad de cedros: $cant_cedro");
}