import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - FOR 05
  /*
  Calcular  e  imprimir  la  tabla  de  multiplicar  de  un  número  cualquiera.  Imprimir  el  multiplicando,  el multiplicador y el producto.
  */
  //DECLARACIÓN DE DATOS
  int num, producto;
  //ENTRADA DE DATOS
  print("Ingrese el multiplicando");
  num = int.parse(stdin.readLineSync()!);
  //PROCESO Y SALIDA
  for(int i = 0; i < 10; i++){
    producto = num*(i+1);
    print("$num x " + (i+1).toString() + " = $producto");
  }
}