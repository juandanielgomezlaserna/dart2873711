import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - WHILE 7
  /*
  Encontrar el menor valor de un conjunto de n números dados.
  */
  //DECLARACIÓN DE VARIABLES
  int cantidad, numero, menor, contador = 0;
  //ENTRADA, PROCESO Y SALIDA
  print("Ingrese la cantidad de numeros que desea ingresar");
  cantidad = int.parse(stdin.readLineSync()!);
  if(cantidad != 0){
    print("Ingrese el número");
    numero = int.parse(stdin.readLineSync()!);
    contador++;
    menor = numero;
  }else{
    menor = 0;
  }
  while(contador != cantidad){
    print("Ingrese el número");
    numero = int.parse(stdin.readLineSync()!);
    if(numero < menor){
      menor = numero;
    }
    print("Por ahora, el menor es: $menor");
    contador++;
  }
  //SALIDA
  print("El número menor es: $menor");
}