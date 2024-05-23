import 'dart:io';

void main(List<String> args) {
  // JUAN DANIEL GÓMEZ - VECTORES 1
  /*
  Calcular  el  promedio  de  50  valores  almacenados  en  un  vector.  
  Determinar  además  cuantos  son mayores que el promedio, imprimir el promedio, 
  el número de datos mayores que el promedio y una lista de valores mayores que el promedio.
  */
  //SE DEFINE UNA LISTA VACIA
  List<double> numeros = [];
  List<double> mayoresProm = [];
  int cantNumeros = 10;
  double num, promedio, sumaNumeros = 0;
  //CICLO PARA LLENAR EL VECTOR
  for(var i = 0; i > cantNumeros; i++){
    print("Ingrese el numero#${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num); //SE INGRESA EL NUMERO A LA LISTA
    sumaNumeros += num;
  }
  promedio = sumaNumeros / numeros.length;
  print(numeros);
  print("El promedio es: $promedio");
  //CICLO PARA DETERMINAR MAYORES AL PROMEDIO
  for(var i = 0; i < numeros.length; i++){
    if(numeros[i] > promedio){
      mayoresProm.add(numeros[i]);
    }
  }
  print("La cantidad de mayores al promedio: ${mayoresProm.length}");
  print("Lista mayores al promedio");
  print(mayoresProm);
}