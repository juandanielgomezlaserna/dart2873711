import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 5
  /*
  Diseñe  un  algoritmo  que  lea  un  número  cualquiera  y  lo  busque  en  el  vector  X,  
  el  cual  tiene almacenados  12  elementos.  Escribir  la  posición  donde  se  encuentra  almacenado  el  número  en  el vector o el mensaje “NO” si no lo encuentra.
  */
  //DECLARACIÓN DE LISTA
  List<int> vectorX = [];
  //DECLARACIÓN DE VARIABLES
  int numBuscar, cantElementos = 5, num;
  int posicion = -1;
  bool encontrado = false;
  //ENTRADA DE DATOS
  for (var i = 0; i < cantElementos; i++) {
    print("Ingrese el valor #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    vectorX.add(num);
  }
  print("Ingrese el valor que va a buscar");
  numBuscar = int.parse(stdin.readLineSync()!);
  //ciclo para buscar el elemento
  for (var i = 0; i < vectorX.length; i++) {
    if(numBuscar == vectorX[i]){
      posicion = i;
      encontrado = true;
      break;
    }
  }
  //PROCESO Y SALIDA
  if(encontrado){
    print("Número encontrado");
  }else{
    print("NO");
  }
}