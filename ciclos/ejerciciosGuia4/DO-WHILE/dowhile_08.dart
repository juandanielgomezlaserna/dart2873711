import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - DO WHILE 8
  /*
  Hacer un programa que lea caracteres desde teclado y vaya contando las vocales que aparecen. 
  El programa terminará cuando lea el carácter # y entonces mostrará un mensaje indicando cuántas vocales ha leído (cuántas de cada una de ellas).
  */
  //DECLARACIÓN DE VARIABLES
  int contadorA = 0, contadorE = 0, contadorI = 0, contadorO = 0, contadorU = 0, contadorVocales = 0;
  String? letra;
  //ENTRADA Y PROCESO
  do {
    print("Ingrese el caracter");
    letra = stdin.readLineSync();
    letra = letra!.toLowerCase();
    if(letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u"){
      print("Este cáracter no es una vocal");
    }else{
      print("Este carácter es una vocal");
      contadorVocales++;
      if(letra == "a"){
        contadorA++;
      }else if(letra == "e"){
        contadorE++;
      }else if(letra == "i"){
        contadorI++;
      }else if(letra == "o"){
        contadorO++;
      }else{
        contadorU++;
      }
    }
  } while (letra != "#");
  //SALIDA
  print("Hubo una cantidad de $contadorVocales vocales");
  print("Hubo una cantidad de $contadorA a");
  print("Hubo una cantidad de $contadorE e");
  print("Hubo una cantidad de $contadorI i");
  print("Hubo una cantidad de $contadorO o");
  print("Hubo una cantidad de $contadorU u");
}