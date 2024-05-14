import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - WHILE 03
  /*
  Determinar  cuantos  hombres  y  cuantas  mujeres  se  encuentran  en  un  grupo  de  n  personas, suponiendo que los datos son extraídos alumno por alumno.
  */
  //DECLARACIÓN DE VARIABLES
  int cant_hombres = 0, cant_mujeres = 0, genero, cant_personas, contador = 0;
  //ENTRADA, PROCESO
  print("Ingrese la cantidad de alumnos");
  cant_personas = int.parse(stdin.readLineSync()!);
  while(cant_personas != contador){
    print("Ingrese 1 si es hombre o 2 si es mujer");
    genero = int.parse(stdin.readLineSync()!);
    if(genero == 1){
      cant_hombres++;
      contador++;
    }else if(genero == 2){
      cant_mujeres++;
      contador++;
    }else{
      print("No es un genero");
    }
  }
  //SALIDA
  print("Cantidad de hombres: $cant_hombres, cantidad de mujeres: $cant_mujeres");
}