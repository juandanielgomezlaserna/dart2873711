import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL MULTIPLE 5
  /*
  El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el país destino, 
  y del número de minutos hablados.
  En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una clave.
  Construya la solución para calcular e imprimir el costo de una llamada dada la clave.
  */
  //DECLARACIÓN DE VARIABLES
  int clave, precio, total, minutos;
  //ENTRADA DE DATOS
  print("Ingrese la clave de su zona");
  clave = int.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de minutos hablados");
  minutos = int.parse(stdin.readLineSync()!);
  //PROCESO
  switch (clave){
    case 12:
      precio = 200;
      break;
    case 15:
      precio = 220;
      break;
    case 18:
      precio = 480;
      break;
    case 19:
      precio = 350;
      break;
    case 23:
      precio = 600;
      break;
    case 25:
      precio = 600;
      break;
    case 29:
      precio = 500;
      break;
    default:
    print("No es una clave correcta");
      precio = 0;
      break;
  }
  total = precio*minutos;
  //SALIDA
  print("El precio a pagar será de: $total");
}