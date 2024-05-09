import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - FOR 01
  /*
  Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado de Algoritmos.
  */
  //DECLARACIÓN DE VARIABLES
  int nota;
  double promedio, sumatoria = 0;
  //ENTRADA DE DATOS, PROCESO Y SALIDA
  for(int i = 0; i < 7; i++){
    print("Ingrese la nota " + (i+1).toString());
    nota = int.parse(stdin.readLineSync()!);
    sumatoria += nota;
  }
  promedio = sumatoria/7;
  print("El promedio de las 7 notas es de: $promedio");
}