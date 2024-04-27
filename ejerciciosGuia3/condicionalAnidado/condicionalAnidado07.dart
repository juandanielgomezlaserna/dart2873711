import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL ANIDADO 7
  /*
  Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los reste y si no que los sume.
  */
  //DECLARACIÓN DE VARIABLES
  int num1, num2, resultado;
  //ENTRADA DE DATOS
  print("Ingrese el numero 1 y el numero 2");
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);
  //PROCESO
  if(num1 == num2){
    resultado = num1*num2;
  }else if(num1 > num2){
    resultado = num1 - num2;
  }else{
    resultado = num1 + num2;
  }
  //SALIDA
  print("Resultado: $resultado");
}