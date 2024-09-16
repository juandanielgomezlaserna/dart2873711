import 'dart:io';

import 'Futbolista.dart';
import 'Persona.dart';
import 'Programador.dart';

void main(List<String> args) {
  List<Programador> programadores = [];
  List<Futbolista> futbolistas = [];
  print("Bienvenido al creador de personas");
  print("Primero crearemos una persona común");
  print("Ingresa el nombre de la persona común");
  String nombre = stdin.readLineSync()!;
  print("Ingresa la edad de la persona");
  int edad = int.parse(stdin.readLineSync()!);
  Persona persona1 = Persona(nombre, edad);
  print("Se ha creado la persona con los siguientes datos:");
  print("nombre: ${persona1.getNombre()}");
  print("Edad: ${persona1.getEdad()}");
  print("-"*100);
  print("Ahora crearemos dos futbolistas");

  for (var i = 0; i < 2; i++) {
    print("Ingresa el nombre del futbolista #${i + 1}");
    nombre = stdin.readLineSync()!;
    print("Ingresa la edad de $nombre");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingresa el nombre del equipo en el cuál está $nombre");
    String equipo = stdin.readLineSync()!;
    print("Ingresa la posición en la que juega $nombre");
    String posicion = stdin.readLineSync()!;
    print("Ingresa la cantidad de goles que ha metido $nombre");
    int cantidadGoles = int.parse(stdin.readLineSync()!);
    Futbolista futbolista = Futbolista(equipo, posicion, cantidadGoles, nombre, edad);
    futbolistas.add(futbolista);
  }

  print("-"*100);
  print("Ahora crearemos dos programadores");
  for (var i = 0; i < 2; i++) {
    print("Ingresa el nombre del programador #${i + 1}");
    nombre = stdin.readLineSync()!;
    print("Ingresa la edad de $nombre");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingresa el nombre de la empresa en el cuál está $nombre");
    String empresa = stdin.readLineSync()!;
    print("Ingresa el salario que gana $nombre");
    double salario = double.parse(stdin.readLineSync()!);
    Programador programador = Programador(empresa, salario, nombre, edad);
    programadores.add(programador);
  }
  //MENÚ
  print("*"*100);
  int opcion;
  do {
    print("MENÚ PERSONAS");
    print("1. Menú futbolistas");
    print("2. Menú programadores");
    print("3. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        menuFutbolistas(futbolistas);
        break;
      
      case 2:
        menuProgramadores(programadores);
        break;
      
      case 3:
        print("Hasta luegui");
        break;

      default:
        print("Ingresa una opción correcta");
        break;
    }
  } while (opcion != 3);
}

void menuFutbolistas(List<Futbolista> futbolistas){
  int opcion;
  do {
    print("*"*100);
    print("Ingrese el futbolista al que desea entrar al menú (1 o 2)");
    int posicion = int.parse(stdin.readLineSync()!);
    print("MENÚ FUTBOLISTAS");
    print("1. Mostrar información del futbolista");
    print("2. Cambiar equipo del futbolista");
    print("3. Cambiar posición del futbolista");
    print("4. Sumar goles al futbolista");
    print("5. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        print("Nombre: ${futbolistas[posicion - 1].getNombre()}");
        print("Edad: ${futbolistas[posicion - 1].getEdad()}");
        print("Equipo: ${futbolistas[posicion - 1].getEquipo()}");
        print("Posición: ${futbolistas[posicion - 1].getPosicion()}");
        print("Cantidad de goles: ${futbolistas[posicion - 1].getCantidadGoles()}");
        print("Es titular: ${futbolistas[posicion - 1].esTitular() ? "sí":"no"}");
        break;

      case 2:
        print("Ingresa el nombre del nuevo equipo");
        String nuevoEquipo = stdin.readLineSync()!;
        futbolistas[posicion - 1].setEquipo(nuevoEquipo);
        break;

      case 3:
        print("Ingresa el nombre de la nueva posición");
        String nuevaPosicion = stdin.readLineSync()!;
        futbolistas[posicion - 1].setPosicion(nuevaPosicion);
        break;

      case 4:
        print("Ingresa la cantidad de goles a sumar");
        int cantidadGoles = int.parse(stdin.readLineSync()!);
        futbolistas[posicion - 1].setCantidadGoles(cantidadGoles);
        break;

      case 5:
        print("Hasta luegui futbolistas");
        break;

      default:
        print("Ingresa una opción correcta");
        break;
    }
  } while (opcion != 5);
}

void menuProgramadores(List<Programador> programadores){
  int opcion;
  do {
    print("*"*100);
    print("Ingrese el programador al que desea entrar al menú (1 o 2)");
    int posicion = int.parse(stdin.readLineSync()!);
    print("MENÚ PROGRAMADORES");
    print("1. Mostrar información del programador");
    print("2. Cambiar empresa del programador");
    print("3. Cambiar salario del programador");
    print("4. Obtener salario neto del programador");
    print("5. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch(opcion){
      case 1:
        print("Nombre: ${programadores[posicion - 1].getNombre()}");
        print("Edad: ${programadores[posicion - 1].getEdad()}");
        print("Empresa: ${programadores[posicion - 1].getEmpresa()}");
        print("Salario: ${programadores[posicion - 1].getSalario()}");
        break;

      case 2:
        print("Ingresa el nombre de la nueva empresa");
        String nuevaEmpresa = stdin.readLineSync()!;
        programadores[posicion - 1].setEmpresa(nuevaEmpresa);
        break;

      case 3:
        print("Ingresa el nuevo salario");
        double nuevoSalario = double.parse(stdin.readLineSync()!);
        programadores[posicion - 1].setSalario(nuevoSalario);
        break;

      case 4:
        print("El salario neto es: ${programadores[posicion - 1].obtenerSalarioNeto()}");
        break;

      case 5:
        print("Hasta luegui programadores");
        break;

      default:
        print("Ingresa una opción correcta");
        break;
    }
  } while (opcion != 5);
}