import 'dart:io';

void main(List<String> args) {
  /*
  Desarrollar un algoritmo tal que, dado como datos 10 numeros enteros.
  Se mostrará la suma de dichos números.
  */
  int num, sumatoria = 0;
  for (int i = 0; i < 10; i++){
    print("Digite el número:");
    num = int.parse(stdin.readLineSync()!);
    //Se va guardando la suma de los números
    sumatoria += num;
  }
  print("La suma es: $sumatoria");
}