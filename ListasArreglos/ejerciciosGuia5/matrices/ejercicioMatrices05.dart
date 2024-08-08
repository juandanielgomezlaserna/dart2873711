import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - MATRIZ 05
  /*
  Hacer un algoritmo que solicite los valores para llenar dos matrices de 3 * 3 y las multiplique, almacenando el resultado en otra matriz de 3 * 3.
  Se debe consultar el método para multiplicar matrices.
  Como resultado de la ejecución del programa, además del mensaje correspondiente, deberás mostrar en pantalla el arreglo de entrada 
  (el cuadro), la suma de cada renglón y la suma de cada columna.
  */
  //DECLARACIÓN DE MATRICES
  List<List<int>> matrizA = [], matrizB = [], resultados = [], cuadro = [];
  //DECLARACIÓN DE LISTAS
  List<int> sumaFilas = [], sumaColumnas = [];
  //DECLARACIÓN DE VARIABLES
  int numero, multiplicacion, cantidadNumeros = 3, suma = 0, mayor = 0;
  //SE LLENA LA MATRIZ A
  print("*"*30);
  print("1. Llene la matriz A que desea multiplicar:");
  for (var i = 0; i < cantidadNumeros; i++) {
    List<int> filas = [];
    for (var j = 0; j < cantidadNumeros; j++) {
      print("1.${i+1}${j+1}. Ingrese el número en la posición ($i, $j)");
      numero = int.parse(stdin.readLineSync()!);
      filas.add(numero);
    }
    matrizA.add(filas);
  }
  //SE LLENA LA MATRIZ B
  print("*"*30);
  print("2. Llene la matriz B que desea multiplicar:");
  for (var i = 0; i < cantidadNumeros; i++) {
    List<int> filas = [];
    for (var j = 0; j < cantidadNumeros; j++) {
      print("1.${i+1}${j+1}. Ingrese el número en la posición ($i, $j)");
      numero = int.parse(stdin.readLineSync()!);
      filas.add(numero);
    }
    matrizB.add(filas);
  }
  //SE HACE EL DEBIDO PROCESO PARA MULTIPLICAR LA MATRIZ Y SE VA ALMACENANDO EN LA MATRIZ RESULTADOS
  //SE RECORREN LAS MATRICES DE TAL MODO QUE LA MATRIZ A SE RECORRA POR FILAS Y LA MATRIZ B POR COLUMNAS
  //SE INVIERTE LA MATRIZ B DE TAL FORMA QUE LAS COLUMNAS SEAN FILAS Y LAS FILAS SEAN COLUMNAS
  List<List<int>> nuevaMatrizB = [];
  for (var i = 0; i < matrizB.length; i++) {
    List<int> filas = [];
    for (var j = 0; j < matrizB[0].length; j++) {
      filas.add(matrizB[j][i]);
    }
    nuevaMatrizB.add(filas);
  }
  //SE CONVIERTE LA NUEVA MATRIZ B EN LA MATRIZ B
  matrizB = nuevaMatrizB;
  //SE RECORREN LOS ELEMENTOS DE LA MATRIZ A Y LA MATRIZ B PARA CREAR LA NUEVA MATRIZ RESULTADOS
  for (var a = 0; a < cantidadNumeros; a++) {
    List<int> filas = [];
    for (var i = 0; i < matrizA.length; i++) {
      for (var j = 0; j < matrizA[0].length; j++) {
        multiplicacion = matrizA[a][j] * matrizB[i][j];
        suma += multiplicacion;
      }
      if(suma > mayor){
        mayor = suma;
      }
      filas.add(suma);
      suma = 0;
    }
    resultados.add(filas);
  }
  //SE MUESTRA EL RESULTADO DE LA MATRIZ RECORRIENDO LA MATRIZ RESULTADOS
  print("*"*30);
  print("3. El resultado de multiplicar la matriz A por la matriz B es el siguiente:");
  for (var i = 0; i < resultados.length; i++) {
    stdout.write("|");
    for (var j = 0; j < resultados[0].length; j++) {
      if(resultados[i][j].toString().length < mayor.toString().length){
        stdout.write("${resultados[i][j]}" + " "*(mayor.toString().length - resultados[i][j].toString().length) + "|");
      }else{
        stdout.write("${resultados[i][j]}|");
      }
    }
    stdout.write("\n");
  }
  //SE CREA EL CUADRO QUE TENDRÁ LA SUMA DE LAS FILAS Y COLUMNAS
  //PRIMERO SE CREA LA SUMA DE LAS FILAS
  for (var i = 0; i < resultados.length; i++) {
    for (var j = 0; j < resultados[0].length; j++) {
      suma+= resultados[i][j];
    }
    if(suma > mayor){
      mayor = suma;
    }
    sumaFilas.add(suma);
    suma = 0;
  }
  //SEGUNDO SE CREA LA SUMA DE LAS COLUMNAS
  for (var i = 0; i < resultados.length; i++) {
    for (var j = 0; j < resultados[0].length; j++) {
      suma+= resultados[j][i];
    }
    sumaColumnas.add(suma);
    suma = 0;
  }
  for (var i = 0; i < sumaFilas.length; i++) { //SE SUMAN TODOS LOS VALORES DE LAS FILAS
    suma+= sumaFilas[i];
  }
  sumaColumnas.add(suma); //SE AGREGA LA SUMA DE LAS FILAS A LA SUMA COLUMNAS
  suma = 0;
  //POR ÚLTIMO SE CREA EL CUADRO
  for (var i = 0; i < resultados.length + 1; i++) {
    List<int> filas = [];
    for (var j = 0; j < resultados[0].length + 1; j++) {
      if(i < resultados.length){//AGREGARÁ DATOS DE LAS FILAS SOLO SI NO ES LA ÚLTIMA FILA
        if(j >= resultados.length){//SI ES EL ÚLTIMO DE LA FILA SE AGREGA EL VALOR DE LA SUMA DE FILAS
          filas.add(sumaFilas[i]);
        }else{//DE LO CONTRARIO SE AGREGARÁ UN VALOR DE LA MATRIZ RESULTADOS
          filas.add(resultados[i][j]);
        }
      }
    }
    if(i >= resultados.length){
      cuadro.add(sumaColumnas); //SI ES EL ÚLTIMO DE LAS COLUMNAS SE AGREGA LA SUMA DE LAS COLUMNAS
    }else{//DE LO CONTRARIO SE AGREGARÁ LA FILA QUE HA SIDO CREADA
      cuadro.add(filas);
    }
  }
  //SE MUESTRA EL CUADRO CREADO
  print("*"*30);
  print("4. El cuadro mostrando las sumas de las filas y de las columnas:");
  for (var i = 0; i < cuadro.length; i++) {
    stdout.write("|");
    for (var j = 0; j < cuadro[0].length; j++) {
      if(cuadro[i][j].toString().length < mayor.toString().length){
        stdout.write("${cuadro[i][j]}" + " "*(mayor.toString().length - cuadro[i][j].toString().length) + "|");
      }else{
        stdout.write("${cuadro[i][j]}|");
      }
    }
    stdout.write("\n");
  }
}