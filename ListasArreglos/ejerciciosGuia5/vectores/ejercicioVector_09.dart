import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 9
  /*
  Una agencia de seguros desea obtener un reporte al final del día de sus n empleados para determinar cuál fue el empleado que obtuvo 
  el mayor sueldo en base a sus ventas y comisiones, se registrará el nombre del empleado la edad y el sueldo que obtuvo al final del día. 
  Desarrollar un programa que pida al usuario el nombre de los n empleados, su edad y el sueldo para generar un reporte que lo muestre en 
  pantalla de la siguiente manera: el nombre del empleado, edad, sueldo, el empleado con mayor sueldo, el sueldo del empleado que gana más y su edad.
  Debe declarar un arreglo de enteros para la edad.
  Debe declarar un arreglo de reales para el sueldo.
  Debe declarar un arreglo de cadena para el nombre
  */
  //DECLARACIÓN DE LISTAS
  List<String> nombres = [];
  List<double> sueldos = [];
  List<int> edades = [], idMejores = [];
  //DECLARACIÓN DE VARIABLES
  String? nombre;
  int edad, cantEmpleados, idEmpleado;
  double sueldo, mayorSueldo = 0;
  //ENTRADA DE DATOS
  print("Ingrese la cantidad de empleados");
  cantEmpleados = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < cantEmpleados; i++) {
    print("Empleado #${i + 1}:");
    print("Ingrese el nombre del empleado");
    nombre = stdin.readLineSync();
    print("Ingrese la edad del empleado");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingrese el sueldo del empleado");
    sueldo = double.parse(stdin.readLineSync()!);
    //SE AGREGAN LOS DATOS A SUS RESPECTIVAS LISTAS
    nombres.add(nombre!);
    edades.add(edad);
    sueldos.add(sueldo);
    //SE COMPARA CON EL MAYOR SUELDO
    if(sueldo > mayorSueldo){
      mayorSueldo = sueldo;
    }
  }
  //PROCESO
  for (var i = 0; i < sueldos.length; i++) {
    //SI EL SUELDO ES IGUAL AL MAYOR SE AGREGARÁ A LA LISTA DE ID DE EMPLEADOS
    //CON EL MEJOR SUELDO
    idEmpleado = i;
    if(sueldos[i] == mayorSueldo){
      idMejores.add(idEmpleado);
    }
  }
  //SALIDA
  //MOSTRAR LOS DATOS DE TODOS LOS EMPLEADOS
  for (var i = 0; i < nombres.length; i++) {
    print("Empleado #${i + 1}");
    print("Nombre: ${nombres[i]}");
    print("Edad: ${edades[i]}");
    print("Sueldo: ${sueldos[i]}");
  }
  //MOSTRAR DATOS DEL O LOS EMPLEADOS CON MAYOR SUELDO
  print("*" * 30);
  print("Empleado o empleados con mayor sueldo");
  for (var i = 0; i < idMejores.length; i++) {
    idEmpleado = idMejores[i];
    print("_" * 30);
    print("Id empleado: $idEmpleado");
    print("Nombre: ${nombres[idEmpleado]}");
    print("Edad: ${edades[idEmpleado]}");
    print("Sueldo: ${sueldos[idEmpleado]}");
  }
}