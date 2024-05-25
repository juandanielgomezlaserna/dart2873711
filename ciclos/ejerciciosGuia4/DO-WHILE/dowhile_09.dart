import 'dart:io';
import 'dart:math';
void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - DO WHILE 9
  /*
  Escribir un programa que muestre el siguiente menú y que permita pasar magnitudes de grados a radianes y de radianes a grados.
  1.
  Pasar de grados a radianes
  2.
  Pasar de radianes a grados
  3.
  Salir del programa
  */
  //DECLARACIÓN DE VARIABLES
  int opcion;
  double dato, respuesta;
  //ENTRADA, PROCESO Y SALIDA
  do {
    print("Bienvenido a la calculadora de grados");
    print("1. Pasar de grados a radianes");
    print("2. Pasar de radianes a grados");
    print("3. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        print("Ingrese los grados");
        dato = double.parse(stdin.readLineSync()!);
        respuesta = dato * pi / 180;
        print("Los grados en radianes son: $respuesta radianes");
        break;
      case 2:
        print("Ingrese los radianes");
        dato = double.parse(stdin.readLineSync()!);
        respuesta = dato * 180 / pi;
        print("Los radianes en grados son: $respuesta grados");
        break;
      case 3:
        print("Hasta luego");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 3);
}