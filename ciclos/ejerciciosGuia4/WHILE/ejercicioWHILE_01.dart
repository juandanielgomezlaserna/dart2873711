import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - WHILE 01
  /*
  Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. 
  Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus  ventas.  
  El  gerente  de  su  compañía  desea  saber  cuanto  dinero obtendrá  en  la  semana  cada vendedor por concepto de comisiones por las tres ventas realizadas, 
  y cuanto tomando en cuenta su sueldo base y sus comisiones.
  */
  //DECLARACIÓN DE VARIABLES
  int cant_vendedores, contador=0;
  double venta, total_ventas = 0, comision, sueldo_base, sueldo_final;
  //ENTRADA, PROCESO, SALIDA
  print("Ingrese la cantidad de vendedores");
  cant_vendedores = int.parse(stdin.readLineSync()!);
  while(contador != cant_vendedores){
    print("Vendedor #" + (contador+1).toString());
    print("Ingrese su sueldo base");
    sueldo_base = double.parse(stdin.readLineSync()!);
    for(int i = 0; i < 3; i++){
      print("Ingrese la cantidad de la venta número " + (i+1).toString());
      venta = double.parse(stdin.readLineSync()!);
      total_ventas += venta;
    }
    comision = total_ventas * 0.1;
    sueldo_final = sueldo_base + comision;
    print("Su sueldo final será de: $sueldo_final");
    contador++;
  }
}