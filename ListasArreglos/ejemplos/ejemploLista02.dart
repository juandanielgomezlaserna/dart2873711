void main(List<String> args) {
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  // Modificar elementos de una lista
  numeros[3] = 20;
  numeros[9] = 30;
  print(numeros);
  //Propiedad length
  print("Tamaño de lista: ${numeros.length}");
  print("Ultimo elemento: ${numeros[numeros.length - 1]}");
  print("Ultimo elemento: ${numeros.last}"); //retorna el elemento en sí
  //Métodos ADD() - REMOVE() - REMOVEAT()
  List<int> numeros2 = [1,2,3,4,5,6,7,8,9,10];
  print(numeros2);
  numeros2.remove(5);
  print(numeros2);
  print(numeros2[4]);
  numeros2.removeAt(1);
  print(numeros2);
}