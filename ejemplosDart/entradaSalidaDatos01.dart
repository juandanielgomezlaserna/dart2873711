import 'dart:io';

void main() {
  // DEFINICIÓN DE VARIABLES
  String? nombre;
  // nombre = "Juan";
  //ENTRADA DEL ALGORITMO
  stdout.writeln("Ejemplo 01 - entrada/Salida Datos");
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  //SALIDA ALGORITMO
  print("Su nombre es: $nombre");
}
