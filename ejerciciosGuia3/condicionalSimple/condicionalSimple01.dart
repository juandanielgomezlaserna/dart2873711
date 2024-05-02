import 'dart:io';

void main(List<String> args){
  // JUAN DANIEL GÓMEZ - CONDICIONAL SIMPLE 01
  /*
  El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, 
  solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, 
  para calcular el sueldo neto del empleado, se le otorga un incentivo del  5%  si  el  empleado  trabajó  más  de  40  horas.  
  Imprimir  el  nombre  del  empleado  y  su  sueldo. Desarrollar el algoritmoy diagrama de flujo.
  */
  //DEFINICIÓN VARIABLES
  String? nombre;
  double horasTrabajas, cuotaHora, sueldo, incentivo, descuento;
  //ENTRADA ALGORITMO
  print("Ingrese su nombre");
  nombre = stdin.readLineSync();
  print("Digite la cantidad de horas trabajadas");
  horasTrabajas = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor de la hora");
  cuotaHora = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  sueldo = horasTrabajas*cuotaHora;
  if(horasTrabajas>40){
    incentivo = sueldo*0.05;
    sueldo = sueldo + incentivo;
    print("Se obtuvo un incentivo de: $incentivo");
  }
  //SALIDA ALGORITMO
  print("El sueldo neto de $nombre es: $sueldo");
}