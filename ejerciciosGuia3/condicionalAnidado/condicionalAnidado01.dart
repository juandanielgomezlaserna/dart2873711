import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL ANIDADO 1
  /*
  Dado tres números calcular el mayor
  */
  //DECLARACIÓN DE VARIABLES
  int num1, num2, num3, mayor;
  //ENTRADA DE DATOS
  print("Ingrese el numero 1, 2 y 3");
  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);
  num3 = int.parse(stdin.readLineSync()!);
  //PROCESO
  if(num1>num2){
    if(num2>num3){
      mayor = num1;
    }else if(num1>num3){
      mayor = num1;
    }else{
      mayor = num3;
    }
  }else{
    if(num1>num3){
      mayor = num2;
    }else if(num2>num3){
      mayor = num2;
    }else{
      mayor = num3;
    }
  }
  //SALIDA
  print("El número mayor es: $mayor");
}