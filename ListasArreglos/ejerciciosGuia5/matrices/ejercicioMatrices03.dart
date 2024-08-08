import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - MATRIZ 03
  /*
  La compañía manufacturera Monte Real fábrica 5 artículos diferentes y se trabajan tres turnos por día, 
  la compañía necesita obtener un reporte al final del día del total de la producción por artículo y el total de la producción por turno. 
  Desarrollar un programa que pida al usuario el nombre de cada artículo y la producción que se hizo en cada uno de los tres turnos del día y 
  genere un reporte al final del día mostrado en pantalla el total de de la producción por artículo, el total de la producción por turno y el artículo con mayor producción.
  */
  //DECLARACIÓN DE MATRIZ
  List<List<double>> matriz = [];
  //DECLARACIÓN DE LISTAS
  List<String> nombres = [];
  List<double> totales = [];
  //DECLARACIÓN DE VARIABLES
  double precio, sumatoria = 0, mayor = 0;
  String? nombre_articulo;
  int cant_articulos = 5, cant_turnos = 3, cantidad, num_letras, posicion_mayor = 0, contador = 0;
  //SE LLENA LA MATRIZ Y LA LISTA DE NOMBRES
  for (var i = 0; i < cant_articulos; i++) {
    print("Ingrese el nombre del artículo #${i + 1}");
    nombre_articulo = stdin.readLineSync();
    print("Ingrese el precio unitario del producto");
    precio = double.parse(stdin.readLineSync()!);
    nombres.add(nombre_articulo!);
    List<double> turnos = [];
    for (var j = 0; j < cant_turnos; j++) {
      print("Ingrese la cantidad de articulos que se vendieron en el turno #${j + 1}");
      cantidad = int.parse(stdin.readLineSync()!);
      turnos.add(cantidad*precio);
    }
    matriz.add(turnos);
    print("*"*30);
  }
  //SALIDA
  stdout.write("+-------------------------------------------------+\n| Artículo| turno 1 | turno 2 | turno 3 |  Total  |\n+-------------------------------------------------+\n");
  for (var i = 0; i < matriz.length; i++) {
    if(nombres[i].length < 9){
      //proceso para agregar espacios para que la tabla quede bien
      num_letras = 9 - nombres[i].length;
      String espacios = " "*num_letras;
      nombre_articulo = "${nombres[i]}" + espacios;
      stdout.write("|$nombre_articulo|");
    }else{
      stdout.write("|${nombres[i]}|");
    }
    for (var j = 0; j < matriz[0].length; j++) {
      sumatoria += matriz[i][j];
      if(matriz[i][j] < 1000000.0){
        String numero = "${matriz[i][j]}";
        num_letras = 9 - numero.length;
        String espacios = " "*num_letras;
        numero = "$numero" + espacios;
        stdout.write("$numero|");
      }else{
        stdout.write("${matriz[i][j]}|");
      }
    }
    String total = "$sumatoria";
    if(total.length < 9){
      int num_digitos;
      num_digitos = 9 - total.length;
      String espacios = " "*num_digitos;
      total = "$total" + espacios;
      stdout.write("$total|");
      }else{
        stdout.write("$total|");
      }
    stdout.write("\n");
    if(sumatoria > mayor){
      mayor = sumatoria;
      posicion_mayor = i;
    }
    sumatoria = 0;
  }
  print("+-------------------------------------------------+");
  for (var i = 0; i < matriz[0].length; i++) {
    for (var j = 0; j < matriz.length; j++) {
      sumatoria += matriz[j][i];
    }
    totales.add(sumatoria);
    sumatoria = 0;
  }
  stdout.write("|totales  |");
  for (var i = 0; i < totales.length; i++) {
    String numero = "${totales[i]}";
    if(numero.length < 9){
      int num_digitos;
      num_digitos = 9 - numero.length;
      String espacios = " "*num_digitos;
      numero = "$numero" + espacios;
      stdout.write("$numero|");
    }
    else{
      stdout.write("$numero|");
    }
    sumatoria += totales[i];
  }
  String suma = "${sumatoria}";
  if(suma.length < 9){
    int num_digitos;
    num_digitos = 9 - suma.length;
    String espacios = " "*num_digitos;
    suma = "$suma" + espacios;
    stdout.write("$suma|");
  }
  else{
    stdout.write("$suma|");
  }
  print("\n+-------------------------------------------------+");
  print("\nProducto mayor: ${nombres[posicion_mayor]}");
}