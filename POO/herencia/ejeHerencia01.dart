class Animal{
  String color;
  String especie;
  double tamanio;

  Animal(this.color, this.especie, this.tamanio);

  void hacerSonido(){
    print("El animal hace un sonido");
  }
}
//La clase perro hereda de animal
class Perro extends Animal{
  String raza;
  Perro(this.raza, colorUsu, especieUsu, tamaUsu):super(colorUsu, especieUsu, tamaUsu);
  @override // Se sobreescribe el método del padre
  void hacerSonido(){
    print("El perro ladra");
  }
  void mostrarInfo(){
    print("""
      Especie: $especie
      color: $color
      Tamaño: $tamanio
      Raza: $raza
""");
  }
}

class Gato extends Animal{
  bool estaVacunado;
  Gato(this.estaVacunado, colorUsu, especieUsu, tamaUsu):super(colorUsu, especieUsu, tamaUsu);
  @override
  void hacerSonido(){
    print("El gato maulla");
  }
  void mostrarInfo(){
    print("""
      Especie: $especie
      color: $color
      Tamaño: $tamanio
      Esta vacunado: ${estaVacunado ? "Sí":"No"}
""");
  }
}

void main(List<String> args) {
  Perro myDog = Perro("Pitbull", "negro", "canino", 20.0);
  myDog.hacerSonido();
  myDog.mostrarInfo();
  Gato myCat = Gato(true, "Blanco", "Felino", 10.0);
  myCat.hacerSonido();
  myCat.mostrarInfo();
}