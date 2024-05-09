import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - FOR 02
  /*
  Leer 10 números e imprimir solamente los números positivos
  */
  //DECLARACIÓN DE VARIABLES
  int num;
  //ENTRADA, PROCESO, SALIDA
  for(int i = 0; i < 10; i++){
    print("Inserte el número");
    num = int.parse(stdin.readLineSync()!);
    if(num >= 0){
      print("El número $num es positivo");
    }
  }
}