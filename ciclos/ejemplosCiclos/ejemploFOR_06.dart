import 'dart:io';

void main(List<String> args) {
  /*
  Pedir al usuario n notas ingresadas por el usuario.
  Si el promedio es mayor a 3, decir que el estudiante aprobó
  el trimestre, sino que indique que reprobó.
  */
  //DELCARACIÓN DE VARIABLES
  int n;
  double nota, sumatoria, promedio;
  //ENTRADA DE DATOS
  print("Ingrese cuantas notas va a ingresar");
  n = int.parse(stdin.readLineSync()!);
  //PROCESO
  sumatoria = 0;
  for(int i = 0;i < n; i++){
    print("Ingrese la nota " + (i+1).toString());
    nota = double.parse(stdin.readLineSync()!);
    sumatoria += nota;
  }
  promedio = sumatoria/n;
  if(promedio >= 3){
    print("El estudiante aprobó el trimestre");
  }else{
    print("El estudiante reprobó el trimestre");
  }
}