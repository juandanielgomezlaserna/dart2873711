import 'dart:io';

void main(List<String> args) {
  /*
  Desarrollar un algoritmo tal que, dado como datos 10 numeros enteros.
  Se mostrará la suma de dichos números.
  */
  int num, sumatoria = 0, n = 10;
  double promedio;
  for (int i = 0; i < n; i++){
    print("Digite el número: "+(i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    //Se va guardando la suma de los números
    sumatoria += num;
  }
  promedio = sumatoria/n;
  print("El promedio es: $promedio");
}