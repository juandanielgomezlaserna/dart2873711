import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - DO WHILE 02
  /*
  Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el cual  
  introduzca  un  número  entero  positivo  e  invierta  los  dígitos  del  número.  Mostrar  el  número invertido.
  */
  //DECLARACIÓN DE VARIABLES
  int numInicial;
  int nuevoNumero, modulo, division;
  //ENTRADA, PROCESO, SALIDA
  print("Ingrese el número");
  numInicial = int.parse(stdin.readLineSync()!);
  nuevoNumero = numInicial;
  do {
    modulo = nuevoNumero % 10;
    division = nuevoNumero~/10;
    stdout.write(modulo);
    nuevoNumero = division;
  } while (division != 0);
}