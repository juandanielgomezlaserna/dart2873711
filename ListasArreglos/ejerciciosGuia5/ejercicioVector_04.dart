import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 4
  /*
  Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original e imprimir el vector resultante.
  */
  //DECLARACIÓN DE LISTAS
  List<double> numeros = [],  numerosInvertido = [];
  //DECLARACIÓN DE VARIABLES
  double num;
  int cantNumeros = 8;
  //RECORRER LA LISTA Y AGREGAR LOS NUMEROS
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el número");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num);
  }
  //RECORRER LA LISTA AL REVÉS Y AGREGAR LOS DATOS A NUMEROSINVERTIDO
  for (var i = numeros.length - 1; i >= 0; i--) {
    numerosInvertido.add(numeros[i]);
  }
  //SALIDA
  print("Lista original:");
  print(numeros);
  print("Lista invertida:");
  print(numerosInvertido);
}