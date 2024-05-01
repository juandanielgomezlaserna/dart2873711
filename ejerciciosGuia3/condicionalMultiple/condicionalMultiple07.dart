import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL MULTIPLE 7
  /*
  El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el país destino, y del número de minutos hablados.
  En la siguiente tabla se presenta el costo por minuto por zona. 
  A cada uno se le ha asociado una clave. Construya la solución para calcular e imprimir el costo de una llamada dada la clave y la duración de la llamada.
  */
  //DECLARACIÓN DE VARIABLES
  int clave, precio, minutos, minutos_extra, precio_extra, total;
  //ENTRADA DE DATOS
  print("Ingrese la clave de la zona");
  clave = int.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de minutos");
  minutos = int.parse(stdin.readLineSync()!);
  //PROCESO
  minutos_extra = minutos - 4;
  switch(clave){
    case 12:
      precio = 200;
      precio_extra = 150;
      break;
    case 15:
      precio = 220;
      precio_extra = 180;
      break;
    case 18:
      precio = 450;
      precio_extra = 350;
      break;
    case 19:
      precio = 350;
      precio_extra = 270;
      break;
    case 23:
      precio = 600;
      precio_extra = 460;
      break;
    case 25:
      precio = 600;
      precio_extra = 460;
      break;
    case 29:
      precio = 500;
      precio_extra = 390;
    default:
      print("Esa no es una zona");
      precio = 0;
      precio_extra = 0;
  }
  total = minutos*precio;
  if(minutos_extra > 0){
    total = (4*precio)+(minutos_extra*precio_extra);
  }
  //SALIDA
  print("El total a pagar es: $total");
}