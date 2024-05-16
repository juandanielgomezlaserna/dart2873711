import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - DO WHILE 02
  /*
  Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el cual  
  introduzca  un  número  entero  positivo  e  invierta  los  dígitos  del  número.  Mostrar  el  número invertido.
  */
  //DECLARACIÓN DE VARIABLES
  int num;
  //ENTRADA, PROCESO Y SALIDA
  do {
    print("Ingrese el número o (0) para salir");
    num = int.parse(stdin.readLineSync()!);
    if(num != 0){
      print("El número invertido es: ${num*-1}");
    }else{
      print("fin del programa");
    }
  } while (num != 0);
}