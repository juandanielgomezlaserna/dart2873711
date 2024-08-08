import 'dart:io';

class Perro {
  //Atributos
  String nombre;
  String raza;
  double peso;

  //Constructor: Función que se ejecuta cuano se crea un objeto de la clase
  Perro(this.nombre, this.raza, this.peso);

  //Métodos
  void correr(){
    print("El perro ${this.nombre} corre");
  }
  void ladrar(){
    print("El perro ${this.nombre} ladra");
  }
  void dormir(){
    print("El perro ${this.nombre} duerme");
  }
  void mostrarInfo(){
    print("El perro se llama ${this.nombre}, es de raza ${this.raza} y pesa ${this.peso}kg");
  }
}//Fin clase

void main(List<String> args) {
  //Cración del objeto
  int perro; //vble tipo entero
  String perros; //vble tipo cadena
  bool perross = true; //vble tipo Booleano
  Perro perro1; //vble tipo perro (Clase)
  perro1 = Perro("Max", "pincher", 10.2);
  perro1.correr();
  perro1.ladrar();
  perro1.dormir();
  perro1.mostrarInfo();
  print("*"*50);
  /********************/
  Perro perro2 = Perro("Mac", "Pitbul", 4);
  perro2.correr();
  perro2.ladrar();
  perro2.dormir();
  perro2.mostrarInfo();
  /***************** */
  print("*"*50);
  String nombrePerro;
  String razaPerro;
  double pesoPerro;
  print("Ingrese el nombre del perro");
  nombrePerro = stdin.readLineSync()!;
  print("Ingrese la raza del perro");
  razaPerro = stdin.readLineSync()!;
  print("Ingrese el peso del perro");
  pesoPerro = double.parse(stdin.readLineSync()!);
  Perro perro3 = Perro(nombrePerro, razaPerro, pesoPerro);
  perro3.correr();
  perro3.ladrar();
  perro3.dormir();
  perro3.mostrarInfo();
}