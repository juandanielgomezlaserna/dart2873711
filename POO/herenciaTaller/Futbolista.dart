import './Persona.dart';

class Futbolista extends Persona{
  String _equipo;
  String _posicion;
  int cantidadGoles;

  Futbolista(this._equipo, this._posicion, this.cantidadGoles, nombre, edad):super(nombre, edad);

  void setEquipo(String equipo){
    _equipo = equipo;
  }

  String getEquipo(){
    return _equipo;
  }

  void setPosicion(String posicion){
    _posicion = posicion;
  }

  String getPosicion(){
    return _posicion;
  }

  void setCantidadGoles(int goles){
    cantidadGoles += goles;
  }

  int getCantidadGoles(){
    return cantidadGoles;
  }

  bool esTitular(){
    return cantidadGoles >= 5;
  }
}