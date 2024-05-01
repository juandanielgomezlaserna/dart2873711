import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL MULTIPLE 6
  /*
  Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene. 
  Es necesario tener en cuenta si es año bisiesto o no.
  */
  //DECLARACIÓN DE VARIABLES
  String? mes;
  String mes_string;
  int anio, dias, esBisiesto;
  int enero = 31, febrero = 28, marzo = 31, abril = 30, mayo = 31, junio = 30, julio = 31, agosto = 31, septiembre = 30, octubre = 31, noviembre = 30, diciembre = 31;

  //ENTRADA DE DATOS
  print("Ingrese el año");
  anio = int.parse(stdin.readLineSync()!);
  print("Ingrese el nombre del mes");
  mes = stdin.readLineSync();
  print("Ingrese 1 si el año es bisiesto o 0 si el año no es bisiesto");
  esBisiesto = int.parse(stdin.readLineSync()!);
  //PROCESO
  mes_string = mes.toString();
  mes_string = mes_string.toLowerCase();
  if(esBisiesto == 1){
    febrero = 29;
  }
  switch (mes_string){
    case "enero":
      dias = enero;
      break;
    case "febrero":
      dias = enero + febrero;
      break;
    case "marzo":
      dias = enero + febrero + marzo;
      break;
    case "abril":
      dias = enero + febrero + marzo + abril;
      break;
    case "mayo":
      dias = enero + febrero + marzo + abril + mayo;
      break;
    case "junio":
      dias = enero + febrero + marzo + abril + mayo + junio;
      break;
    case "julio":
      dias = enero + febrero + marzo + abril + mayo + junio + julio;
      break;
    case "agosto":
      dias = enero + febrero + marzo + abril + mayo + junio + julio + agosto;
      break;
    case "septiembre":
      dias = enero + febrero + marzo + abril + mayo + junio + julio + agosto + septiembre;
      break;
    case "octubre":
      dias = enero + febrero + marzo + abril + mayo + junio + julio + agosto + septiembre + octubre;
      break;
    case "noviembre":
      dias = enero + febrero + marzo + abril + mayo + junio + julio + agosto + septiembre + octubre + noviembre;
      break;
    case "diciembre":
      dias = enero + febrero + marzo + abril + mayo + junio + julio + agosto + septiembre + octubre + noviembre + diciembre;
      break;
    default:
      print("No es un mes");
      dias = 0;
  }
  //SALIDA
  print("La cantidad de días que lleva el año $anio son: $dias");
}