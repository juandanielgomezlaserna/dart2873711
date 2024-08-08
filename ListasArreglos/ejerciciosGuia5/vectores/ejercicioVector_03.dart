import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - VECTORES 3
  /*
  Almacenar  15  números  en  un  vector,  imprimir  cuantos  son  ceros,  cuántos  son  negativos,  cuantos positivos. 
  Imprimir además la suma de los negativos, la suma de los ceros y la suma de los positivos.
  */
  //DECLARACIÓN DE LISTAS
  List<double> numeros = [], negativos = [], positivos = [];
  //DECLARACIÓN DE VARIABLES
  int cantNumeros = 15, cantNegativos = 0, cantPositivos = 0, cantCeros = 0;
  double num, sumaNegativos = 0, sumaPositivos = 0;
  //RECORRER LISTA NUMEROS Y PEDIR LOS DATOS
  for(var i = 0; i < cantNumeros; i++){
    print("Ingrese el dato #${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num);
  }
  for(var i = 0; i < numeros.length; i++){
    if(numeros[i] < 0){
      cantNegativos++;
      negativos.add(numeros[i]);
    }else if(numeros[i] > 0){
      cantPositivos++;
      positivos.add(numeros[i]);
    }else{
      cantCeros++;
    }
  }
  //SE RECORRE LA LISTA DE NEGATIVOS Y SE SUMAN
  for(var i = 0; i < negativos.length; i++){
    sumaNegativos += negativos[i];
  }
  //SE RECORRE LA LISTA DE POSITIVOS Y SE SUMAN
  for(var i = 0;i < positivos.length; i++){
    sumaPositivos += positivos[i];
  }
  //SE MUESTRA CADA RESULTADO
  print("Cantidad de ceros: $cantCeros");
  print("Cantidad de números positivos: $cantPositivos");
  print("Cantidad de números negativos: $cantNegativos");
  print("Suma de todos los positivos: $sumaPositivos");
  print("Suma de todos los negativos: $sumaNegativos");
}