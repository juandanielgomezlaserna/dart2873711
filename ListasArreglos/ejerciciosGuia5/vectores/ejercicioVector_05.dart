import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 5
  /*
  Diseñe  un  algoritmo  que  lea  un  número  cualquiera  y  lo  busque  en  el  vector  X,  
  el  cual  tiene almacenados  12  elementos.  Escribir  la  posición  donde  se  encuentra  almacenado  el  número  en  el vector o el mensaje “NO” si no lo encuentra.
  */
  //DECLARACIÓN DE LISTA
  List<int> numeros = [];
  //DECLARACIÓN DE VARIABLES
  int num, buscado, cantNumeros = 12, posicion = cantNumeros+1;
  //ENTRADA DE DATOS
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el valor #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }
  print("Ingrese el valor que va a buscar");
  buscado = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < numeros.length; i++) {
    if(buscado == numeros[i]){
      posicion = i;
    }
  }
  //PROCESO Y SALIDA
  if(posicion >= 0 && posicion <= 12){
    print("El número buscado está en la posición: $posicion");
  }else{
    print("NO");
  }
}