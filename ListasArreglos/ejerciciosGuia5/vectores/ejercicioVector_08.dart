import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 8
  /*
  Consultar el método de ordenación por burbuja y ordenar un arreglo entero de 10 elementos.
  */
  //DECLARACIÓ DE LISTAS
  List<int> numeros = [];
  //DECLARACIÓN DE VARIABLES
  int cantNumeros = 10, num, temporal;
  //ENTRADA DE DATOS
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el número:");
    num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }
  //PROCESO
  for (var i = 0; i < numeros.length - 1; i++) {
    for (var a = 0; a < numeros.length - 1; a++) {
      if(i == 0){
        if(numeros[i] < numeros[a] + 1){
          temporal = numeros[i];
          numeros[i] = numeros[a];
          numeros[a] = temporal;
        }
        }
    }
  }
  //SALIDA
  print("La lista ordenada es:");
  print(numeros);
  }