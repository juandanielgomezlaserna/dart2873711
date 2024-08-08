import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - MATRIZ 01
  /*
  Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números almacenados en la matriz.
  */
  //DECLARACIÓN DE MATRICES
  List<List<double>> matriz = [];
  //DECLARACIÓN DE VARIABLES
  int cantFilas = 2, cantColumnas = 3;
  double suma = 0;
  //Ciclo para llenar la matriz
  for (var i = 0; i < cantFilas; i++) {
    List<double> fila = [];
    for (var j = 0; j < cantColumnas; j++) {
      print("Ingrese el número $i,$j");
      fila.add(double.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }
  //Ciclo para recorrer y generar la suma
  for (var i = 0; i < matriz.length; i++) {
    for (var j = 0; j < matriz[0].length; j++) {
      suma += matriz[i][j];
    }
  }
  //SALIDA
  print(matriz);
  print("La suma de los elementos de la matriz es: $suma");
}