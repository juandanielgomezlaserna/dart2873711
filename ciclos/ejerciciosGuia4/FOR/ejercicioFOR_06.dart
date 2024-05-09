import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ -  FOR 06
  /*
  Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los niños, 
  jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las categorías con base  en la sig, tabla

  Se debe solicitar la edad y el peso de cada persona y calcular y mostrar el promedio por categoría.
  */
  //DECLARACIÓN DE DATOS
  int cant_ninios = 0, cant_jovenes = 0, cant_adultos = 0, cant_mayores = 0, edad;
  double sumatoria_ninios = 0, sumatoria_jovenes = 0, sumatoria_adultos = 0, sumatoria_mayores = 0, promedio_ninios = 0, promedio_jovenes = 0, promedio_adultos = 0, promedio_mayores = 0, peso;
  //ENTRADA Y PROCESO
  for(int i = 0; i < 50; i++){
    print("Ingrese su edad");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingrese su peso");
    peso = double.parse(stdin.readLineSync()!);
    if(edad <= 12){
      sumatoria_ninios += peso;
      cant_ninios++;
    }else if(edad <= 29){
      sumatoria_jovenes += peso;
      cant_jovenes++;
    }else if(edad <= 59){
      sumatoria_adultos += peso;
      cant_adultos++;
    }else{
      sumatoria_mayores += peso;
      cant_mayores++;
    }
  }
  promedio_ninios = sumatoria_ninios/cant_ninios;
  promedio_jovenes = sumatoria_jovenes/cant_jovenes;
  promedio_adultos = sumatoria_adultos/cant_adultos;
  promedio_mayores = sumatoria_mayores/cant_mayores;
  if(cant_ninios == 0){
    promedio_ninios = 0;
  }
  if(cant_jovenes == 0){
    promedio_jovenes = 0;
  }
  if(cant_adultos == 0){
    promedio_adultos = 0;
  }
  if(cant_mayores == 0){
    promedio_mayores = 0;
  }
  //SALIDA
  print("Promedio niños: $promedio_ninios");
  print("Promedio jóvenes: $promedio_jovenes");
  print("Promedio adultos: $promedio_adultos");
  print("Promedio adultos mayores: $promedio_mayores");
}