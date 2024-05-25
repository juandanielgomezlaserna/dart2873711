import 'dart:io';

void main(List<String> args) {
  // JUAN DANIEL GÓMEZ - DO WHILE 06
  /*
  Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en cada una de las 5 unidades de la materia. 
  Al final que escriba el número de control del alumno que obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios.
  */
  //DECLARACIÓN DE VARIABLES
  double calificacion, promedio, mayorPromedio = 0, sumaCalific = 0;
  int numControl = 0, cantEstudiantes, contador = 0;
  print("Cuantos estudiantes están en el curso");
  cantEstudiantes = int.parse(stdin.readLineSync()!);
  do {
    print("Estudiante #${contador+1}");
    sumaCalific = 0;
    for(int i = 0; i < 5; i++){
      print("Digite la nota ${i + 1}");
      calificacion = double.parse(stdin.readLineSync()!);
      while(calificacion < 0 || calificacion > 5){
        print("Nota incorrecta,ingresela nuevamente");
        calificacion = double.parse(stdin.readLineSync()!);
      }
      sumaCalific += calificacion;
    }
    promedio = sumaCalific / 5;
    if(promedio > mayorPromedio){
      mayorPromedio = promedio;
      numControl = contador + 1;
    }
    print("*"*30);
    contador ++;
  } while (contador < cantEstudiantes);
  print("El mayor promedio es: $mayorPromedio");
  print("El número de control del mejor estudiante es: $numControl");
}