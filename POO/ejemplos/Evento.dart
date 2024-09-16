class Evento {
  String _nombre; //Atributo privado
  int cantPersonas; //Atributo público
  DateTime _fecha; //Atributo privado

  Evento(this._nombre, this.cantPersonas, this._fecha);

  //Métodos de SETTERS y GETTERS
  void setNombre(String now){
    _nombre = now;
  }
  String getNombre(){
    return _nombre;
  }
  void setCantPersonas(int cant){
    cantPersonas = cant;
  }
  int getCantPersonas(){
    return cantPersonas;
  }
  void setFechaEvento(DateTime fecha){
    _fecha = fecha;
  }
  DateTime getFechaEvento(){
    return _fecha;
  }
  void _mostrarInfo(){ //Método privado
    print("""
***********************************************
      Nombre: $_nombre
      Cantidad Personas: $cantPersonas
      Fecha: $_fecha
***********************************************
"""); 
  }
  void mostrarInformacion(){
    _mostrarInfo();
  }
}