import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - WHILE 7
  /*
  Encontrar el mayor valor de un conjunto de n números dados.
  */
  //DECLARACIÓN DE VARIABLES
  int cantidad, numero, mayor, contador = 0;
  //ENTRADA, PROCESO Y SALIDA
  print("Ingrese la cantidad de numeros que desea ingresar");
  cantidad = int.parse(stdin.readLineSync()!);
  if(cantidad != 0){
    print("Ingrese el número");
    numero = int.parse(stdin.readLineSync()!);
    contador++;
    mayor = numero;
  }else{
    mayor = 0;
  }
  while(contador != cantidad){
    print("Ingrese el número");
    numero = int.parse(stdin.readLineSync()!);
    if(numero > mayor){
      mayor = numero;
    }
    print("Por ahora, el mayor es: $mayor");
    contador++;
  }
  //SALIDA
  print("El número mayor es: $mayor");
}