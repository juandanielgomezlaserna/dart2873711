import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - MATRIZ 02
  /*
  Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición [fila, columna] del número mayor almacenado en la matriz. Los números son diferentes.
  */
  //DECLARACIÓN DE LISTA
  List<List<double>> matriz = [];
  //DECLARACIÓN DE VARIABLES
  double numero, mayor = 0;
  int cantFilas = 3, cantColumnas = 3;
  //ENTRADA DE DATOS RECORRIENDO LA MATRIZ
  for (var i = 0; i < cantFilas; i++) {
    List<double> fila = [];
    for (var j = 0; j < cantColumnas; j++) {
      print("Ingrese el número en la posición $i,$j");
      numero = double.parse(stdin.readLineSync()!);
      fila.add(validarRepetido(matriz, numero));
      if(i == 0 && j == 0){
        mayor = numero;
      }else if(numero > mayor){
        mayor = numero;
      }
    }
    matriz.add(fila);
  }
  //SALIDA
  //RECORRER LA MATRIZ PARA ENCONTRR LA POSICIÓN DEL NÚMERO MAYOR
  for (var i = 0; i < matriz.length; i++) {
    for (var j = 0; j < matriz[0].length; j++) {
      if(matriz[i][j] == mayor){
        print("La posición del número mayor de la matriz es: $i,$j y el número es: $mayor");
      }
    }
  }
}

double validarRepetido(List<List> matriz,double numero){
  for (var i = 0; i < matriz.length; i++) {
        for (var j = 0; j < matriz[0].length; j++) {
          while(numero == matriz[i][j]){
            print("Ingrese un número diferente");
            numero = double.parse(stdin.readLineSync()!);
          }
        }
      }
  return numero;
}