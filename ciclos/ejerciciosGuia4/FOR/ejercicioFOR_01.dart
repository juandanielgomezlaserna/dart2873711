import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - FOR 01
  /*
  Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado de Algoritmos.
  */
  //DECLARACIÓN DE VARIABLES
  double promedio, sumatoria = 0, nota;
  //ENTRADA DE DATOS, PROCESO Y SALIDA
  for(int i = 0; i < 7; i++){
    print("Ingrese la nota " + (i+1).toString());
    nota = double.parse(stdin.readLineSync()!);
    sumatoria += nota;
  }
  promedio = sumatoria/7;
  print("El promedio de las 7 notas es de: $promedio");
}