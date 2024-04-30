import 'dart:io';
import 'dart:math';

void main(){
  //JUAN DANIEL GÓMEZ - CONDICIONAL SIMPLE 6
  /*
  En  un  supermercado  se  hace  una  promoción,  mediante  la  cual  el  cliente  obtiene
    un  descuento dependiendo  de  un  número  que  se  escoge  al  azar.
      Si  el  numero  escogido  es  menor  que  74  el descuento es del 15% sobre el total de la compra,
   si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta.
  */
  //ASIGNACIÓN DE VARIABLES
  double precio, descuento;
  int numero;
  //ENTRADA DE DATOS
  print("Ingrese el precio que tiene que pagar sin el descuento");
  precio = double.parse(stdin.readLineSync()!);
  numero = Random().nextInt(100);
  //PROCESO
  descuento = precio*0.15;
  if(numero >= 74){
    descuento = precio*0.2;
  }
  //SALIDA
  print("El número al azar es: $numero");
  print("Se le descuenta una cantidad de: \$$descuento");
}