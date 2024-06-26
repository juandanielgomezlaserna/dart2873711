import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - WHILE 03
  /*
  En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. 
  El salario se obtiene de la sig. forma:Si el obrero trabaja 40 horas o menos se le paga $20 por hora
  Si trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra.
  */
  //DECLARACIÓN DE VARIABLES
  int cant_obreros, horas, horas_extra, contador=0;
  double salario, precio_hora, precio_extra;
  //ENTRADA, PROCESO , SALIDA
  print("Ingrese la cantidad de obreros");
  cant_obreros = int.parse(stdin.readLineSync()!);
  while(cant_obreros != contador){
    print("Ingrese la cantidad de horas que trabajó");
    horas = int.parse(stdin.readLineSync()!);
    horas_extra = horas - 40;
    if(horas_extra>0){
      precio_hora = 40*20;
      precio_extra = horas_extra*25;
      salario = precio_hora + precio_extra;
    }else{
      precio_hora = horas*20;
      salario = precio_hora;
    }
    print("El salario del obrero es: $salario");
    contador++;
  }
}