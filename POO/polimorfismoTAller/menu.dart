import 'dart:io';

import 'Producto.dart';

void main(List<String> args) {
  int opcion, contador = 1;
  List<DiscoDuro> discosDuros = [];
  List<Marcador> marcadores = [];
  List<Portatil> portatiles = [];
  List<Parlante> parlantes = [];
  do {
  print("""
Elige una opción:
1)	Crear Disco Duro
2)	Crear Marcador
3)	Crear Portátil
4)	Crear Parlante
5)	Vender Disco Duro
6)	Vender Marcador
7)	Vender Portátil
8)	Vender Parlante
9)	Calcular precio consumo Portátil
10)	Calcular precio consumo Parlante
11)	Salir
""");
  opcion = int.parse(stdin.readLineSync()!);

  switch(opcion){
    case 1:
      print("Ingresa el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("¿Está disponible? (true sí, false no)");
      bool disponible = bool.parse(stdin.readLineSync()!);
      print("Ingresa el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("Ingresa el tipo de disco duro (SSD o HDD)");
      String tipoDisco = stdin.readLineSync()!;
      print("Ingresa la capacidad de almacenamiento");
      int capacidad = int.parse(stdin.readLineSync()!);
      DiscoDuro discoDuro = DiscoDuro(capacidad, tipoDisco, contador, nombre, disponible, precio);
      discosDuros.add(discoDuro);
      contador++;
      break;

    case 2:
      print("Ingresa el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("¿Está disponible? (true sí, false no)");
      bool disponible = bool.parse(stdin.readLineSync()!);
      print("Ingresa el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("Ingresa el color de la tinta del marcador");
      String colorTinta = stdin.readLineSync()!;
      print("Ingresa el tipo de marcador que es el producto");
      String tipoMarcador = stdin.readLineSync()!;
      Marcador marcador = Marcador(colorTinta, tipoMarcador, contador, nombre, disponible, precio);
      marcadores.add(marcador);
      contador++;
      break;

    case 3:
      print("Ingresa el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("¿Está disponible? (true sí, false no)");
      bool disponible = bool.parse(stdin.readLineSync()!);
      print("Ingresa el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("ingresa el tamaño de la memoria del portatil");
      int tamanoMemoria = int.parse(stdin.readLineSync()!);
      print("Ingresa el nombre del procesador del portátil");
      String procesador = stdin.readLineSync()!;
      print("Ingresa el consumo de los wats que tiene el portátil");
      int consumoWats = int.parse(stdin.readLineSync()!);
      Portatil portatil = Portatil(tamanoMemoria, procesador, consumoWats, true, contador, nombre, disponible, precio);
      portatiles.add(portatil);
      contador++;
      break;

    case 4:
      print("Ingresa el nombre del producto");
      String nombre = stdin.readLineSync()!;
      print("¿Está disponible? (true sí, false no)");
      bool disponible = bool.parse(stdin.readLineSync()!);
      print("Ingresa el precio del producto");
      double precio = double.parse(stdin.readLineSync()!);
      print("Ingresa la potencia que tiene el parlante");
      String potencia = stdin.readLineSync()!;
      print("Ingresa el peso que tiene el parlante");
      double peso = double.parse(stdin.readLineSync()!);
      print("Ingresa el consumo de los wats que tiene el portátil");
      int consumoWats = int.parse(stdin.readLineSync()!);
      Parlante parlante = Parlante(potencia, peso, consumoWats, true, contador, nombre, disponible, precio);
      parlantes.add(parlante);
      contador++;
      break;

    case 5:
      print("Ingrese el disco duro que desea comprar");
      for (var i = 0; i < discosDuros.length; i++) {
        print("${i + 1}. ${discosDuros[i].getNombre()}");
      }
      int pocision = int.parse(stdin.readLineSync()!);
      print("El producto: ${discosDuros[pocision - 1].getNombre()} ha sido vendido con un precio de: ${discosDuros[pocision - 1].realizarDescuento()}");
      discosDuros.removeAt(pocision - 1);
      break;

    case 6:
      print("Ingrese el marcador que desea comprar");
      for (var i = 0; i < marcadores.length; i++) {
        print("${i + 1}. ${marcadores[i].getNombre()}");
      }
      int pocision = int.parse(stdin.readLineSync()!);
      print("El producto: ${marcadores[pocision - 1].getNombre()} ha sido vendido con un precio de: ${marcadores[pocision - 1].realizarDescuento()}");
      marcadores.removeAt(pocision - 1);
      break;

    case 7:
      print("Ingrese el portatil que desea comprar");
      for (var i = 0; i < portatiles.length; i++) {
        print("${i + 1}. ${portatiles[i].getNombre()}");
      }
      int pocision = int.parse(stdin.readLineSync()!);
      print("El producto: ${portatiles[pocision - 1].getNombre()} ha sido vendido con un precio de: ${portatiles[pocision - 1].realizarDescuento()}");
      portatiles.removeAt(pocision - 1);
      break;

    case 8:
      print("Ingrese el parlante que desea comprar");
      for (var i = 0; i < parlantes.length; i++) {
        print("${i + 1}. ${parlantes[i].getNombre()}");
      }
      int pocision = int.parse(stdin.readLineSync()!);
      print("El producto: ${parlantes[pocision - 1].getNombre()} ha sido vendido con un precio de: ${parlantes[pocision - 1].realizarDescuento()}");
      parlantes.removeAt(pocision - 1);
      break;

    case 9:
      print("Ingrese el portatil que desea ver su consumo en wats");
      for (var i = 0; i < portatiles.length; i++) {
        print("${i + 1}. ${portatiles[i].getNombre()}");
      }
      int pocision = int.parse(stdin.readLineSync()!);
      print("Ahora ingrese las horas que ha sido utilizado");
      int horas = int.parse(stdin.readLineSync()!);
      print("El producto: ${portatiles[pocision - 1].getNombre()} cuesta un valor de: ${portatiles[pocision - 1].calcularPrecioConsumo(horas)}");
      break;
    
    case 10:
      print("Ingrese el parlante que desea ver su consumo en wats");
      for (var i = 0; i < parlantes.length; i++) {
        print("${i + 1}. ${parlantes[i].getNombre()}");
      }
      int pocision = int.parse(stdin.readLineSync()!);
      print("Ahora ingrese las horas que ha sido utilizado");
      int horas = int.parse(stdin.readLineSync()!);
      print("El producto: ${parlantes[pocision - 1].getNombre()} cuesta un valor de: ${parlantes[pocision - 1].calcularPrecioConsumo(horas)}");
      break;

    case 11:
      break;

    default:
      print("Ingrese una opción correcta");
      break;
  }
  } while (opcion != 11);
}