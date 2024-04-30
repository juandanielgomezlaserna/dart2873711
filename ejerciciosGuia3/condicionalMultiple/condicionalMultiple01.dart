import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL MULTIPLE 01
  /*
  La empresa comercializadora Solva vende escobas, recogedores y aromatizantes, clasifica a sus
  clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:
 Si el cliente es de la categoría 1 se le descuenta el 5%
 Si el cliente es de la categoría 2 se le descuenta el 8%
 Si el cliente de de la categoría 3 se le descuenta el 12%
 Si el cliente es de la categoría 4 se le descuenta el 15%
  */
  //DECLARACIÓN DE VARIABLES
  String? nombreCliente;
  int tipoCliente, cantEscobas, cantRecogedores, cantAromat, precioEscoba, precioRecogedor, precioAromat;
  double descuento, totalCompra, subtotal;
  //ENTRADA DE DATOS
  print("Ingrese su nombre");
  nombreCliente = stdin.readLineSync();
  print("Cuál es su categoría?");
  tipoCliente = int.parse(stdin.readLineSync()!);
  print("Cuál es la cantidad de escobas, recogedores y aromatizantes?");
  cantEscobas = int.parse(stdin.readLineSync()!);
  cantRecogedores = int.parse(stdin.readLineSync()!);
  cantAromat = int.parse(stdin.readLineSync()!);
  //PROCESO
  precioEscoba = 3000;
  precioRecogedor = 1000;
  precioAromat = 1000;
  subtotal = (cantEscobas.toDouble()*precioEscoba)+(cantRecogedores*precioRecogedor)+(cantAromat*precioAromat);
  switch (tipoCliente){
    case 1:
      descuento = subtotal * 0.05;
      break;
    case 2:
      descuento = subtotal * 0.08;
      break;
    case 3:
      descuento = subtotal * 0.12;
      break;
    case 4:
      descuento = subtotal * 0.15;
      break;
    default:
      print("La categoría está incorrecta");
      descuento = 0;
      break;
  }
  totalCompra = subtotal - descuento;
  //SALIDA
  print("Su nombre es: $nombreCliente");
  print("Su total a pagar: $subtotal");
  print("El descuento es: $descuento");
  print("El total a pagar es: $totalCompra");
  }