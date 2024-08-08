import 'dart:io';

void main(List<String> args) {
  List<List<int>> matriz = [];
  int cantFilas = 3, cantColumnas = 4;
  int numero;
  for (var i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    for (var j = 0; j < cantColumnas; j++) {
      print("Ingrese el elemento posición: $i,$j");
      numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
    }
    print(fila);
    matriz.add(fila);
  }
  print("*"*30);
  for (var i = 0; i < matriz.length; i++) {// Recorre las filas
  stdout.write("|");
    for (var j = 0; j < matriz[0].length; j++) {//Recorre las columnas
      //Recorre las columnas
      stdout.write("${matriz[i][j]}|");
    }
    stdout.write("\n");
  }
}