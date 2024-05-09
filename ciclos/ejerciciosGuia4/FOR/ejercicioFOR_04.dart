import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - FOR 04
  /*
  Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. 
  Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.
  */
  //DELCARACIÓN DE VARIABLES
  double nota, mas_bajo = 10, sumatoria = 0, promedio;
  //ENTRADA Y PROCESO
  for(int i = 0; i < 40; i++){
    print("Ingrese la nota #" + (i+1).toString());
    nota = double.parse(stdin.readLineSync()!);
    if(nota < mas_bajo){
      mas_bajo = nota;
    }
    sumatoria += nota;
  }
  promedio = sumatoria/40;
  print("la nota más baja es $mas_bajo mientras que el promedio es: $promedio");
}