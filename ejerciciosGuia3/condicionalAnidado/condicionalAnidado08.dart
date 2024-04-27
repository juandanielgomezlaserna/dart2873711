import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL ANIDADO 8
  /*
  El jefe del departamento de construcción de la constructora Pagasa, 
  desea que se le desarrolle un programa para sus empleados, 
  el cual calcule el sueldo de un empleado, de tal manera que el sueldo se calculará de la siguiente manera: 
  si el número de horas trabajadas es mayor a 40, el excedente de 40 hrs. 
  se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. 
  se paga la cuota normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. 
  se paga al triple de la cuota por  hora.  Se  pedirá  el  nombre  del  empleado,  
  el  número  de  horas  trabajadas  y  la  cuota  por  hora. mostrar en pantalla el nombre del empleado, 
  el número de horas trabajadas y su sueldo.
  */
  //DECLARACIÓN DE VARIABLES
  int horas, horas_extra;
  double cuota_hora, total;
  String? nombre;
  //ENTRADA DE DATOS
  print("Ingrese su nombre");
  nombre = stdin.readLineSync();
  print("Ingrese las horas que trabajó");
  horas = int.parse(stdin.readLineSync()!);
  print("Ingrese la cuota por hora");
  cuota_hora = double.parse(stdin.readLineSync()!);
  //PROCESO
  horas_extra = horas - 40;
  if(horas_extra <= 0){
    total = cuota_hora*horas;
  }else if(horas_extra <= 10){
    total = (40*cuota_hora)+(horas_extra*cuota_hora*2);
  }else{
    total = (40*cuota_hora)+(10*cuota_hora*2)+((horas_extra-10)*cuota_hora*3);
  }
  //SALIDA
  print("El sueldo del empleado $nombre será de: $total");
}