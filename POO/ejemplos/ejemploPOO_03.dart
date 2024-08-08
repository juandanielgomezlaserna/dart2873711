class Vehiculo {
  late String color;
  late int velocidad;
  late double tamanio;

  //Constructor clase Vehículo
  //Vehiculo(this.color, this.velocidad, this.tamanio){}
  Vehiculo(String col, int vel, double tam){
    this.color = col;
    this.velocidad = vel;
    this.tamanio = tam;
  }
  
  //Método avanzar
  void avanzar(int velAvanz){
    this.velocidad = this.velocidad + velAvanz;
    print("El vehículo avanza a ${this.velocidad}");
  }
  //Métido detenerse
  void detenerse(){
    velocidad = 0;
    print("El vehículo se detiene");
  }
}

void main(List<String> args) {
  Vehiculo miVehiculo1;
  miVehiculo1 = Vehiculo("blanco", 30, 3.5);
    miVehiculo1.avanzar(60);
    miVehiculo1.avanzar(70);
    miVehiculo1.detenerse();
    //************************** */
    Vehiculo miVehiculo2 = Vehiculo("negro", 10, 4.5);
    miVehiculo2.avanzar(50);
    miVehiculo2.detenerse();
    //************************** */
    miVehiculo1.avanzar(40);
}