import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL DOBLE 5
  /*
  Un  cliente  ordena  cierta  cantidad  de  brochas  de  cerda  y  rodillos;
    las  brochas  de  cerda  tienen  un  20%  de descuento y los rodillos un 15% de descuento. 
    Los datos que se tienen por cada tipo de artículo son: la cantidad pedida  y  el  precio  unitario.  
    Además,  si se  paga  de  contado  todo  tiene  un  descuento  del  7%.  Elaborar  un programa que calcule y 
    muestre en  pantalla el costo total de la orden, tanto para el pago de contado como para el caso de pago de crédito. 
    Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el usuario ingresa 2.
  */
  //DECLARACIÓN DE VARIABLES
  int brochas_cerdas, rodillo, tipo_pago;
  double cerdas_precio, rodillo_precio, total_contado, total_credito, total_cerdas, total_rodillo, descuento_cerdas, descuento_rodillo, descuento_contado;
  //ENTRADA DE DATOS
  print("Ingrese el precio unitario de las brochas de cerdas");
  cerdas_precio = double.parse(stdin.readLineSync()!);
  print("Ingrese el preio unitario de las brochas de rodillo");
  rodillo_precio = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de brochas de cerdas que comprará");
  brochas_cerdas = int.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de rodillos que comprará");
  rodillo = int.parse(stdin.readLineSync()!);
  print("Ingrese 1 si desea pagar de contado e ingrese 2 si desea pagar a crédito");
  tipo_pago = int.parse(stdin.readLineSync()!);
  //PROCESO Y SALIDA
  total_cerdas = brochas_cerdas* cerdas_precio;
  descuento_cerdas = total_cerdas * 0.2;
  total_cerdas = total_cerdas - descuento_cerdas;
  total_rodillo = rodillo*rodillo_precio;
  descuento_rodillo = total_rodillo * 0.15;
  total_rodillo = total_rodillo - descuento_rodillo;
  total_credito = total_rodillo + total_cerdas;
  descuento_contado = total_credito * 0.07;
  total_contado = total_credito - descuento_contado;
  if(tipo_pago == 1){
    print("El pago con contado sería de: \$$total_contado");
  }else{
    print("El pago con crédito sería de: \$$total_credito");
  }
}