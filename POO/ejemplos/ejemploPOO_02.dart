import 'dart:io';

class Persona {
  //Atributos
  String nombre;
  String genero;
  double estatura;
  int nacimiento;

  //Constructor
  Persona(this.nombre, this.genero, this.estatura, this.nacimiento);

  //Métodos
  void saludar(){
    print("${this.nombre} dice hola");
  }

  void comunicarse(){
    print("${this.nombre} se está comunicando");
  }

  void dormir(){
    print("${this.nombre} está durmiendo");
  }

  void mostrarEdad(){
    DateTime now = DateTime.now();
    int anio = now.year;
    int edad = anio - nacimiento;
    print("La edad de ${this.nombre} es de $edad años.");
  }

  void mostrarInfo(){
    print("Nombre: ${this.nombre}");
    print("Genero: ${this.genero}");
    print("Estatura: ${this.estatura}");
    print("Fecha de nacimiento: ${this.nacimiento}");
  }
}

void main(List<String> args) {
  //Primera forma de crear un objeto
  Persona persona1;
  persona1 = Persona("Juan", "Masculino", 1.70, 2005);
  persona1.saludar();
  persona1.comunicarse();
  persona1.dormir();
  persona1.mostrarEdad();
  persona1.mostrarInfo();
  //Segunda forma de crear un objeto
  Persona persona2 = Persona("Andres", "Femenino", 1.70, 2004);
  persona2.saludar();
  persona2.comunicarse();
  persona2.dormir();
  persona2.mostrarEdad();
  persona2.mostrarInfo();
  //Tercera forma de crear un objeto
  String nombre = "Esteban";
  String genero = "Masculino";
  double estatura = 1.70;
  int nacimiento = 2006;
  Persona persona3 = Persona(nombre, genero, estatura, nacimiento);
  persona3.saludar();
  persona3.comunicarse();
  persona3.dormir();
  persona3.mostrarEdad();
  persona3.mostrarInfo();
  //Cuarta forma de crer un objeto
  String nombrePersona;
  String generoPersona;
  double estaturaPersona;
  int nacimientoPersona;
  print("Ingrese el nombre de la persona");
  nombrePersona = stdin.readLineSync()!;
  print("Ingrese el genero de la persona");
  generoPersona = stdin.readLineSync()!;
  print("Ingrese la estatura de la persona");
  estaturaPersona = double.parse(stdin.readLineSync()!);
  print("Ingrese el año de nacimiento de la persona");
  nacimientoPersona = int.parse(stdin.readLineSync()!);
  Persona persona4 = Persona(nombrePersona, generoPersona, estaturaPersona, nacimientoPersona);
  persona4.saludar();
  persona4.comunicarse();
  persona4.dormir();
  persona4.mostrarEdad();
  persona4.mostrarInfo();
}