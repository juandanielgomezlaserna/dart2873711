import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - WHILE 5
  /*
  Obtener el promedio de calificaciones de un grupo de n alumnos.
  */
  //DECLARACIÓN DE VARIABLES
  int cant_alumnos;
  double nota, sumatoria = 0, promedio, contador = 0;
  //ENTRADA, PROCESO
  print("Ingrese la cantidad de alumnos");
  cant_alumnos = int.parse(stdin.readLineSync()!);
  while(cant_alumnos != contador){
    print("Ingrese la nota");
    nota = double.parse(stdin.readLineSync()!);
    sumatoria += nota;
    contador++;
  }
  promedio = sumatoria/cant_alumnos;
  //SALIDA
  print("El promedio de las notas es: $promedio");
}