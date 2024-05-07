import 'dart:io';

void main(List<String> args) {
  print("Imprimir números pares digitados por el usuario");
  int num = -1;
  while(num != 0){
    print("Ingrese un número (cero para salir)");
    num = int.parse(stdin.readLineSync()!);
    if(num % 2 == 0){//comprobar si es par
      print("El número es par");
    }else{
      print("El número es impar");
    }
  }
}