import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 6
  /*
  Diseñe  un  algoritmo  que  lea  dos  vectores  A  y  B  de  7  elementos  cada  uno  y  
  multiplique  el  primer elemento de A con el último elemento de B y luego el segundo elemento de A por el sexto elemento de  B  
  y  así  sucesivamente  hasta  llegar  al  séptimo  elemento  de  A  por  el  primer  elemento  de  B.  
  El resultado de la multiplicación almacenarlo en un vector C. Mostrar el resultado.
  */
  //DECLARACIÓN DE LISTAS
  List<int> a = [], b = [], c = [];
  //DECLARACIÓN VARIABLES
  int contSube=0, contBaja, cantNumeros = 7, num;
  //ENTRADA DE DATOS
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese los valores #${i+1}");
    num = int.parse(stdin.readLineSync()!);
    a.add(num);
    num = int.parse(stdin.readLineSync()!);
    b.add(num);
  }
  //PROCESO
  contBaja = a.length - 1;
  for (var i = 0; i < a.length; i++) {
    c.add(a[contSube] * b[contBaja]);
    contSube++;
    contBaja--;
  }
  //SALIDA
  print("Lista a:");
  print(a);
  print("Lista b:");
  print(b);
  print("La lista c quedaría:");
  print(c);
}