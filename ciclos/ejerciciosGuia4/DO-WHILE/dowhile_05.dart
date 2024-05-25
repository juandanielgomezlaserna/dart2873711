void main(List<String> args) {
  //JUAN DANIEL GOMEZ - DO WHILE
  /*
  Calcular la suma siguiente:100 + 98 + 96 + 94 + . . . + 0 en este orden
  */
  //DECLARACIÓN DE VARIABLES
  int suma = 0, contador = 0;
  //ENTRADA PROCESO Y SALIDA
  do {
    contador++;
    suma += contador;
  } while (contador != 100);
  print(suma);
}