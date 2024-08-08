class Vehiculo {
  String color;
  int velocidad;
  double tamanio;

  //Constructor clase Vehículo
  Vehiculo(this.color, this.velocidad, this.tamanio);
  
  //Método SET y GET
  //Setea o asigna un nuevo valor para el atributo color
  void setColor(String newColor){
    this.color = newColor;
  }
  void setVelocidad(String newVelocidad){
    this.color = newVelocidad;
  }
  void setTamanio(String newTamanio){
    this.color = newTamanio;
  }
  //Permite obtener el valor del atributo color
  String getColor(){
    return this.color;
  }
  int getVelocidad(){
    return this.velocidad;
  }
  double getTamanio(){
    return this.tamanio;
  }
  //Método avanzar
  void avanzar(int velAvanz){
    int newVelocidad = this.velocidad + velAvanz;
    if(newVelocidad <= 200){
      this.velocidad = this.velocidad + velAvanz;
      print("El vehículo avanza a ${this.velocidad}");
    }else{
      print("No puede superar el límite de 200 km/h");
    }
  }
  //Métido detenerse
  void detenerse(){
    velocidad = 0;
    print("El vehículo se detiene");
  }

  //Método reducir velocidad
  void reducir(int velAvanz){
    int newVelocidad = this.velocidad - velAvanz;
    if(newVelocidad < 0){
      newVelocidad = 0;
    }
    this.velocidad = newVelocidad;
    print("Se redujo la velocidad a ${this.velocidad}");
  }

  //Estacionar vehiculo
  void estacionar(String lugar){
    print("El auto se estacionó en $lugar");
    this.velocidad = 0;
  }
}