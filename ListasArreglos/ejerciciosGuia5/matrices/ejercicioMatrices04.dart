import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - MATRIZ 04
  /*
  La escuela Ignacio Barrera, desea que le desarrolles un juego para sus alumnos de primaria. El juego
  se llama "cuadro mágico", un cuadro mágico es aquel en que la suma de cada fila, la suma de cada
  columna y la suma de las diagonales es exactamente igual. El cuadro mágico es de dos dimensiones.
  Desarrollar un programa que pida al usuario las dimensiones deseadas para el cuadro mágico (un
  arreglo de dos dimensiones) en forma de cuadro y luego le pida los datos para llenar el arreglo.
  Después el programa debe calcular la suma de cada fila, de cada columna y de cada diagonal del
  cuadro, si todas las sumas son iguales entonces le deberás de indicar por medio de un mensaje
  "Felicidades creaste un cuadro mágico", de lo contrario le deberás de decir el siguiente mensaje:
  "Modifica los números en el cuadro para que lo hagas mágico".
  */
  //DECLARACIÓN DE MATRIZ
  List<List<int>> matriz = [];
  //DECLARACIÓN DE VARIABLES
  int numero, length_matriz, suma = 0, comprobar = 0;
  //SE PREGUNTA EL TAMAÑO DE LA MATRIZ
  print("Ingrese el tamaño de la matriz");
  length_matriz = int.parse(stdin.readLineSync()!);
  //SE LLENA LA MATRIZ
  for (var i = 0; i < length_matriz; i++) {
    List<int> fila = [];
    for (var j = 0; j < length_matriz; j++) {
      print("Ingrese el número en la posición: [${i}, ${j}]");
      numero = int.parse(stdin.readLineSync()!);
      fila.add(numero);
    }
    matriz.add(fila);
  }
  //PROCESO PARA COMPROBAR SI LA SUMA DA IGUAL
  for (var i = 0; i < matriz.length; i++) {
    suma = 0;
    for (var j = 0; j < matriz.length; j++) {//para hacer las sumas por filas
      suma += matriz[i][j];
    }
    if(comprobar == 0){
      comprobar = suma;
    }else if(comprobar != suma){
      break;
    }
  }
  if(comprobar == suma){
    for (var i = 0; i < matriz.length; i++) {//Para hacer las sumas por columnas
      suma = 0;
      for (var j = 0; j < matriz[0].length; j++) {
        suma += matriz[j][i];
        if(comprobar != suma){
          break;
        }
      }
    }
    if(comprobar == suma){
      int contador = 0;
      for (var i = 0; i < matriz.length; i++) {//para hacer las sumas en diagonal empezando por la izquierda
        suma += matriz[contador][contador];
        contador++;
        if(comprobar != suma){
          break;
        }
      }
      if(comprobar == suma){
        int j = matriz.length - 1;
        for (var i = 0; i < matriz.length; i++) {//para hacer las sumas en diagonal empezando arriba a la derecha
          suma += matriz[i][j];
          j--;
        }
        if(comprobar == suma){
          print("Felicidades creaste un cuadro mágico");
        }
      }else{
        print("Modifica los números en el cuadro para que lo hagas mágico");
      }
    }else{
      print("Modifica los números en el cuadro para que lo hagas mágico");
    }
  }else{
    print("Modifica los números en el cuadro para que lo hagas mágico");
  }
}