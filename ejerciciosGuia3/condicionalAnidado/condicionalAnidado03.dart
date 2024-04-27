import 'dart:io';

void main(List<String> args) {
    //JUAN DANIEL GÓMEZ LASERNA - CONDICIONAL ANIDADO 2
    /*
    En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del
    número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10%
    de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco
    pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de
    descuento. El precio de cada computadora es de $1100000
    */
    //DECLARACIÓN DE VARIABLES
    int cant_computadoras;
    double precio_unidad, total, descuento;
    //ENTRADA DE DATOS
    precio_unidad = 1100000;
    print("Ingrese la cantidad de computadoras que comprará");
    cant_computadoras = int.parse(stdin.readLineSync()!);
    //PROCESO
    total = cant_computadoras*precio_unidad;
    if(cant_computadoras < 5){
      descuento = total*0.1;
      total = total - descuento;
    }else if((cant_computadoras >= 5) & (cant_computadoras < 10)){
      descuento = total*0.2;
      total = total - descuento;
    }else if(cant_computadoras>=10){
      descuento = total*0.4;
      total = total - descuento;
    }
    //SALIDA
    print("Tendrá que pagar un total de: $total");
}