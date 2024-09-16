class Persona{
  String _nombre;
  int _edad;

  Persona(this._nombre, this._edad);

  void setNombre(String nombreUsuario){
    _nombre = nombreUsuario;
  }

  String getNombre(){
    return _nombre;
  }

  void setEdad(int edadUsuario){
    _edad = edadUsuario;
  }

  int getEdad(){
    return _edad;
  }
}