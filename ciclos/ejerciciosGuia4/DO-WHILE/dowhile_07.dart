import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - DO WHILE 7
  /*
  Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la letra 'a'. 
  Por cada carácter leído que no sea una 'a' debe mostrar un mensaje indicándolo. Cuando lea las 10 letras 'a' el programa terminará.
  */
  //DECLARACIÓN DE VARIABLES
  String? letra;
  int contador = 0;
  //ENTRADA, PROCESO Y SALIDA
  do {
    print("Ingrese la letra");
    letra = stdin.readLineSync();
    letra = letra!.toLowerCase();
    if(letra != "a"){
      print("La letra no es la letra a");
    }else{
      contador++;
    }
  } while (contador != 10);
}