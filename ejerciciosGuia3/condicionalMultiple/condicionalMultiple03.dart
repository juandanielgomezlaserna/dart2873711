import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL MULTIPLE 3
  //DECLARACIÓN DE VARIABLES
  int numero;
  num v, resultado;
  //ENTRADA DE DATOS
  print("Ingrese el numero");
  numero = int.parse(stdin.readLineSync()!);
  print("Ingrese el valor");
  v = num.parse(stdin.readLineSync()!);
  //PROCESO
  switch (numero){
    case 1:
      resultado = 100*v;
      break;
    case 2:
      resultado = pow(100, v);
      break;
    case 3:
      resultado = 100/v;
      break;
    default:
      resultado = 0;
      break;
  }
  //SALIDA
  print("Resultado: $resultado");
}