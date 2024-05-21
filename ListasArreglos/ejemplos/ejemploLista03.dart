import 'dart:io';

void main(List<String> args) {
  //Agregar elementos a la lista - ADD

  List<String> nombres = [];
  String? nombre;
  //Ciclo para llenar nombres
  for (int i = 0; i < 5; i++) {
    print("Digite el nombre #${i + 1}");
    nombre = stdin.readLineSync()!;
    nombres.add(nombre); //Agrega un elemento al final de la lista
    print(nombres);
  }
  print("*" * 30);
  print(nombres);
  
  //Recorrer lista para mostrar elementos
  for (var i = 0; i < 5; i++) {
    print("Nombre #${i+1}: ${nombres[i]}");
  }
}