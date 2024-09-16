import 'dart:math';

abstract class Figura{
  void calcularArea();
}

class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  void calcularArea(){
    print("El área del circulo es: ${radio*radio*pi}");
  }
}

class Triangulo extends Figura {
  double base;
  double altura;

  Triangulo(this.altura, this.base);

  void calcularArea(){
    print("El área del triángulo es: ${(base*altura)/2}");
  }

}

class Cuadrado extends Figura{
  double lado;

  Cuadrado(this.lado);

  void calcularArea(){
    print("EL área del cuadrado es: ${lado*lado}");
  }
}