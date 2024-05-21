void main(List<String> args) {
  // Definición y asignación de lista vacía
  List<int> numeros1 = [];
  //Definición y asignación de lista con elementos
  List<int> pesos = [65, 75, 70, 48, 65, 55, 48];
  List<String> frutas = ['Manzana', 'Pera', 'Fresa'];
  List<bool> estados = [true, false, false, true];
  List<double> estaturas = [1.65, 1.52, 1.55, 1.80];
  //Definición/Asignación de listas dinamicas
  List<dynamic> listaDinamica = [30, 4.5, 'Pepe', true, ['Mango', 'Mora', frutas], pesos];

  //Acceder a los elementos
  print(pesos); 
  print(frutas); 
  print(estados); 
  print(estaturas); 
  print(listaDinamica); 
  print(frutas[1]);//acceder a un elemento
  print(pesos[5]); //55
  print(listaDinamica[4][2][0]); //Manzana
}