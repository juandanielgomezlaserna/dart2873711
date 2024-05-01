import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL MULTIPLE 4
  /*
  Calcular el valor de f(x) según la expresión
  */
  //DECLARACIÓN DE VARIABLES
  int n;
  num x, modulo, resultado;
  //ENTRADA DE DATOS
  print("Ingrese el valor de x");
  x = num.parse(stdin.readLineSync()!);
  //PROCESO
  modulo = x % 4;
  n = modulo.toInt();
  resultado = 0;
  switch(n){
    case 0:
      resultado = pow(x, 2);
      break;
    case 1:
      resultado = x/6;
      break;
    case 2:
      resultado = sqrt(x);
      break;
    case 3:
      resultado = (pow(x, 3)+5);
      break;
  }
  //SALIDA
  print("El resultado de la función es: $resultado");

}