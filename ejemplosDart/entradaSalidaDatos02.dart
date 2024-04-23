import 'dart:io';

void main(){
  print("Ejemplo 02 - Entrada/Salida Datos");
  //DEFINICION DE VARIABLES
  int num1, num2, suma;
  //ENTRADA ALGORITMO
  print("Ingrese valor numero 1");
  num1 = int.parse(stdin.readLineSync()!);
  print("Ingrese valor numero 2");
  num2 = int.parse(stdin.readLineSync()!);
  suma = num1 + num2;
  print("El resultado de la suma es: $suma");
}