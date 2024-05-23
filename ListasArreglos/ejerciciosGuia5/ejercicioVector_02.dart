import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 2
  /*
  Llenar  dos  vectores  A  y  B  de  10  elementos  cada  uno,  sumar  el  elemento  uno  del  vector  A  
  con  el elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e imprimir el vector resultante.
  */
  //DECLARACIÓN DE LISTAS
  List<double> a = [], b = [], c = [];
  //DECLARACIÓN DE VARIABLES
  double num1, num2;
  int cantNumeros;
  //PEDIR LA CANTIDAD DE NUMEROS
  print("Ingrese la cantidad de datos que va a ingresar");
  cantNumeros = int.parse(stdin.readLineSync()!);
  //SE RECORRE LA LISTA PIDIENDO LOS NUMEROS
  for(var i = 0; i < cantNumeros; i++){
    print("Ingrese los valores ${i + 1}");
    num1 = double.parse(stdin.readLineSync()!);
    a.add(num1);
    num2 = double.parse(stdin.readLineSync()!);
    b.add(num2);
  }
  // SE RECORREN LAS DOS LISTAS Y SE SUMAN AGREGANDOLOS A C
  for(var i = 0; i < a.length; i++){
    c.add(a[i] + b[i]);
  }
  // SE MUESTRA EL RESULTADO
  print("La lista con los numeros sumados es: $c");
}