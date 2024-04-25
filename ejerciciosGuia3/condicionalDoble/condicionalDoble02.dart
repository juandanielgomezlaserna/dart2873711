import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL DOBLE 2
  /*
  Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
  •Si trabaja 40 horas o menos se le paga $16 por hora
  •Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra.
  */
  //DECLARACIÓN DE VARIABLES
  int cant_horas, horas_extra;
  double total;
  //ENTRADA DE DATOS
  print("Ingrese la cantidad de horas que trabajó");
  cant_horas = int.parse(stdin.readLineSync()!);
  //PROCESO Y SALIDA
  if(cant_horas <= 40){
    total = cant_horas*16;
  }else{
    horas_extra = cant_horas - 40;
    total = (40*16) + (horas_extra*20);
  }
  print("El total que se ganará será de: \$$total");
}