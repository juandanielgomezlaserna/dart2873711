import 'dart:io';

void main(List<String> args) {
  /*
  Desarrollar un algoritmo que lea n números positivos y muestre el promedio de los n números positivos
  */
  int contador = 0, num, n;
  double sumatoria = 0, promedio;
  print("Ingrese la cantidad de números que va a ingresar");
  n = int.parse(stdin.readLineSync()!);
  while(contador < n){
    print("Ingrese el número");
    num = int.parse(stdin.readLineSync()!);
    if(num>0){
      sumatoria += num;
      contador ++;
    }else{
      print("El número tiene que ser positivo");
    }
  }
  promedio = sumatoria/n;
  print("El promedio es: $promedio");
}