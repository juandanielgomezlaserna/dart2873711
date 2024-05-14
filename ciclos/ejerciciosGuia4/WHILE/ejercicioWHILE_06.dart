import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - WHILE 6
  /*
  Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos.
  */
  //DECLARACIÓN DE VARIABLES
  int cant_alumnos, cant_mujeres = 0, cant_hombres = 0, genero, edad, edad_hombres = 0, edad_mujeres = 0, edades = 0, contador = 0;
  double promedio, promedio_hombres, promedio_mujeres;
  //ENTRADA, PROCESO
  print("Ingrese la cantidad de alumnos");
  cant_alumnos = int.parse(stdin.readLineSync()!);
  while(contador != cant_alumnos){
    print("Ingrese 1 si es mujer o 2 si es hombre");
    genero = int.parse(stdin.readLineSync()!);
    print("Ingrese su edad");
    edad = int.parse(stdin.readLineSync()!);
    if(genero == 1){
      cant_mujeres++;
      edad_mujeres += edad;
      edades += edad;
      contador++;
    }else if(genero == 2){
      cant_hombres++;
      edad_hombres += edad;
      edades += edad;
      contador++;
    }else{
      print("Genero no válido");
    }
  }
  promedio = edades/cant_alumnos;
  promedio_mujeres = edad_mujeres/cant_mujeres;
  promedio_hombres = edad_hombres/cant_hombres;
  if(cant_hombres == 0){
    promedio_hombres = 0;
  }
  if(cant_mujeres == 0){
    promedio_mujeres = 0;
  }
  //SALIDA
  print("El promedio de las edades de las mujeres es: $promedio_mujeres");
  print("El promedio de las edades de los hombres es: $promedio_hombres");
  print("El promedio de las edades de todos los alumnos es: $promedio");
}