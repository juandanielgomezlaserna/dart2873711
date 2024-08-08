import 'vehiculo.dart';

void main(List<String> args) {
  Vehiculo myCar = Vehiculo("Rojo", 200, 2.5);

  print("El auto es de color ${myCar.getColor()}");
  myCar.setColor("Amarillo");
  print("El auto cambió a color ${myCar.getColor()}");
}