import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ LASERNA - CONDICIONAL DOBLE 1
  /*
  Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
  */
  //DECLARACIÓN DE VARIABLES
  int num1, num2;
  //ENTRADA DE DATOS
  print("Ingrese el número 1 y 2");
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);
  //PROCESO Y SALIDA
  if(num1>num2){
    print("El orden de los números es: $num2, $num1");
  }else{
    print("El orden de los números es: $num1, $num2");
  }
}