import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL ANIDADO 9
  /*
  El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año 2009. 
  Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. 
  Las personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo de menos de 25 años.
  Las  personas adscritas  a  la  jubilación  por  antigüedad  joven deben  tener menos de  60  años  
  y  una antigüedad en su empleo de 25 años o más.Las  personas  adscritas  a  la  jubilación  por  antigüedad  
  adulta  deben  tener  60  años  o  mas  y  una antigüedad en su empleo de 25 años o mas.
  Determinar en que tipo de jubilación, quedara adscrita una persona.
  */
  //DECLARACIÓN DE VARIABLES
  int edad, antiguedad;
  String jubilacion;
  //ENTRADA DE DATOS
  print("Ingrese la edad que tiene");
  edad = int.parse(stdin.readLineSync()!);
  print("Ingrese el periodo de antiguedad en años");
  antiguedad = int.parse(stdin.readLineSync()!);
  //PROCESO
  if(edad >= 60){
    if(antiguedad < 25){
      jubilacion = "tiene una jubilación por edad.";
    }else{
      jubilacion = "tiene una jubilación por antiguedad adulta.";
    }
  }else{
    if(antiguedad >= 25){
      jubilacion = "tiene una jubilación por antiguedad joven.";
    }else{
      jubilacion = "no tiene ninguna jubilación, porque es joven y no tiene antiguedad";
    }
  }
  //SALIDA
  print("La persona $jubilacion");
}