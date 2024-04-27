import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ LASERNA - CONDICIONAL ANIDADO 2
  /*
  Dado el monto de una compra calcular el descuento considerado
• Descuento es 20% si el monto es mayor a 20000 pesos.
• Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
• no hay descuento si el monto es menor o igual a 10000 pesos.
  */
  //DECLARACIÓN DE VARIABLES
  double monto, descuento;
  //ENTRADA DE DATOS
  print("Ingrese el valor de su monto");
  monto = double.parse(stdin.readLineSync()!);
  //PROCESO
  if(monto > 20000){
    descuento = monto*0.2;
    monto = monto - descuento;
  }else if((monto > 10000)&(monto <= 20000)){
    descuento = monto*0.1;
    monto = monto - descuento;
  }
  //SALIDA
  print("El monto a pagar es de: $monto");
}