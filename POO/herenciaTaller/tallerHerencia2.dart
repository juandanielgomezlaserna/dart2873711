import 'Figuras.dart';

void main(List<String> args) {
  Circulo newCirculo = Circulo(4);
  Cuadrado newCuadrado = Cuadrado(5.1);
  Triangulo newTriangulo = Triangulo(10, 5);

  newTriangulo.calcularArea();
  newCuadrado.calcularArea();
  newCirculo.calcularArea();
}