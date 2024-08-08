import 'dart:io';
import 'empleado.dart';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - EJERCICIO 1 POO
  /*
  En el método main, crear una lista de empleados y añadir varias instancias de la clase Empleado a la lista (Utilizar ciclos y las entradas deben ser por parte del usuario).

  Implementar una función que recorra la lista de empleados y llame al método mostrarInformacion para cada empleado.

  Probar cada uno de los métodos implementados para varios empleados, mostrando los resultados en la consola. Para ello se debe utilizar las listas de tipo Empleado creadas
  */

  String nombreUsuario, puestoUsuario, tipoContratoUsuario;
  int edadUsuario, cantEmpleados;
  double salarioUsuario;
  List<Empleado> empleados = [];

  print("Ingrese la cantidad de empleados que desea agregar");
  cantEmpleados = int.parse(stdin.readLineSync()!);
  //Crear empleados
  for (var i = 0; i < cantEmpleados; i++) {
    print("Ingrese el nombre del empleado #${i + 1}");
    nombreUsuario = stdin.readLineSync()!;
    print("Ingrese la edad del empleado #${i + 1}");
    edadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese el salario que gana el empleado #${i + 1}");
    salarioUsuario = double.parse(stdin.readLineSync()!);
    print("Ingrese el puesto que tiene el empleado #${i + 1}");
    puestoUsuario = stdin.readLineSync()!;
    print("Ingrese el tipo de contrato que tiene el empleado #${i + 1}");
    tipoContratoUsuario = stdin.readLineSync()!;
    Empleado empleado = Empleado(nombreUsuario, edadUsuario, salarioUsuario, puestoUsuario, tipoContratoUsuario);
    empleados.add(empleado);
  }

  mostrarListaEmpleados(empleados);
}

void mostrarListaEmpleados(List<Empleado> empleados){
  //Mostrar información empleados
  for (var i = 0; i < empleados.length; i++) {
    empleados[i].mostrarInformacion();
    empleados[i].aumentarSalario();
    print("La bonificación fue de: ${empleados[i].bonificacion()}");
    empleados[i].cambiarPuesto();
    empleados[i].cumplirAnios();
    empleados[i].mostrarInformacion();
  }
}