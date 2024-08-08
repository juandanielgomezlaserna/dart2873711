import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 7
  /*
  Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa palabra o frase es palíndroma.
  */
  //DECLARACIÓN DE LISTA
  List<String> frases = [];
  //DECLARACIÓN DE VARIABLES
  String? frase, nuevaFrase = "", fraseInvertida = "";
  //ENTRADA DE DATOS
  print("Ingrese la frase o palabra");
  frase = stdin.readLineSync();
  frase = frase!.toLowerCase();
  //PROCESO
  for (var i = 0; i < frase.length; i++) {
    if(frase[i] != " "){
      frases.add(frase[i]);
      nuevaFrase = nuevaFrase! + frase[i]; 
    }
  }
  for (var i = nuevaFrase!.length - 1; i >= 0 ; i--) {
    fraseInvertida = fraseInvertida! + nuevaFrase[i];
  }
  if(nuevaFrase == fraseInvertida){
    print("Es palíndromo");
  }else{
    print("No es palíndromo");
  }
}