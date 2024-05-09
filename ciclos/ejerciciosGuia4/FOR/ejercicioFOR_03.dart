import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - FOR 03
  /*
  Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.
  */
  //DECLARACIÓN DE VARIABALES
  int contador_positivos = 0, contador_negativos = 0, contador_cero = 0, num;
  //ENTRADA y PROCESO
  for(int i = 0; i < 20; i++){
    print("Ingrese el número");
    num = int.parse(stdin.readLineSync()!);
    if(num <0){
      contador_negativos++;
    }else if(num == 0){
      contador_cero++;
    }else{
      contador_positivos++;
    }
  }
  //SALIDA
  print("Hay $contador_negativos números negativos.\nHay $contador_cero ceros.\nHay $contador_positivos números positivos.");

}