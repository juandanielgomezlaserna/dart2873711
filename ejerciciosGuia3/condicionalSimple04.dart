import 'dart:io';

void main(){
  //JUAN DANIEL GÓMEZ - CONDICIONAL SIMPLE 4
  /*
  Hacer  un  algoritmo  que  imprima  el  nombre  de  un  artículo,
    clave,  precio  original  y  su  precio  con descuento.
     El descuento lo hace en base a la clave,
      si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves).
  */
  //DECLARACION DE VBLES
  String? nombre_articulo;
  double precio_original, precio_descuento, descuento;
  int clave;
  //ENTRADA DE DATOS
  print("Ingrese el nombre del artículo");
  nombre_articulo = stdin.readLineSync();
  print("Ingrese la clave");
  clave = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio del producto");
  precio_original = double.parse(stdin.readLineSync()!);
  //PROCESO
  precio_descuento = precio_original;
  if(clave == 1){
    descuento = precio_original*0.1;
    precio_descuento = precio_original - descuento;
  }
  if(clave == 2){
    descuento = precio_original*0.2;
    precio_descuento = precio_original - descuento;
  }
  //SALIDA
  print("El nombre del artículo es: $nombre_articulo\nEl precio origninal es de: $precio_original\nEl precio con descuento es: $precio_descuento");
}