abstract class Producto {
  int _codigoProducto;
  String _nombreProducto;
  bool _disponible;
  double _precio;

  Producto(this._codigoProducto, this._disponible, this._nombreProducto, this._precio);

  void mostrarInformacion(){
    print("""
    código del producto: $_codigoProducto
    nombre del producto: $_nombreProducto
    disponible: ${_disponible ? "Sí":"No"}
    precio: $_precio
    """);
  }

  double realizarDescuento(){
    return _precio;
  }

  int getCodigo(){
    return _codigoProducto;
  }

  void setCodigo(newCodigo){
    _codigoProducto = newCodigo;
  }

  String getNombre(){
    return _nombreProducto;
  }

  void setDisponible(newDisponible){
    _disponible = newDisponible;
  }

  bool getDisponible(){
    return _disponible;
  }

  void setPrecio(newPrecio){
    _precio = newPrecio;
  }

  double getPrecio(){
    return _precio;
  }
}

class DiscoDuro extends Producto{
  String _tipoDisco;
  int _capacidad;

  DiscoDuro(this._capacidad, this._tipoDisco, codigo, nombre, disponible, precio):super(codigo, disponible, nombre, precio);

  void mostrarInformacion(){
    print("""
    código del producto: $_codigoProducto
    nombre del producto: $_nombreProducto
    disponible: ${_disponible ? "Sí":"No"}
    Precio: $_precio
    Tipo de disco: $_tipoDisco
    Capacidad: $_capacidad
    """);
  }

  void setTipo(newTipo){
    _tipoDisco = newTipo;
  }

  String getTipo(){
    return _tipoDisco;
  }

  void setCapacidad(newCapacidad){
    _capacidad = newCapacidad;
  }

  int getCapacidad(){
    return _capacidad;
  }

  double realizarDescuento(){
    return _precio*0.8;
  }
}

class Marcador extends Producto {
  String _colorTinta;
  String _tipoMarcador;

  Marcador(this._colorTinta, this._tipoMarcador, codigo, nombre, disponible, precio):super(codigo, disponible, nombre, precio);

  void mostrarInformacion(){
    print("""
    código del producto: $_codigoProducto
    nombre del producto: $_nombreProducto
    disponible: ${_disponible ? "Sí":"No"}
    Precio: $_precio
    Color de tinta: $_colorTinta
    Tipo Marcador: $_tipoMarcador
    """);
  }

  void setColor(newColor){
    _colorTinta = newColor;
  }

  String getColor(){
    return _colorTinta;
  }

  void setTipo(newTipo){
    _tipoMarcador = newTipo;
  }

  String getTipo(){
    return _tipoMarcador;
  }

  double realizarDescuento(){
    return _precio*0.9;
  }
}

class Electrodomestico extends Producto {
  int _consumowats;
  bool _tieneBluetooth;

  Electrodomestico(this._consumowats, this._tieneBluetooth, codigo, nombre, disponible, precio):super(codigo, disponible, nombre, precio);

  void mostrarInformacion(){
    print("""
    código del producto: $_codigoProducto
    nombre del producto: $_nombreProducto
    disponible: ${_disponible ? "Sí":"No"}
    Precio: $_precio
    Consumo Wats: $_consumowats
    Tiene Bluetooth: ${_tieneBluetooth ? "Sí":"No"}
    """);
  }

  double calcularPrecioConsumo(int horas){
    return (horas*_consumowats).toDouble();
  }

  void setConsumo(int newConsumo){
    _consumowats = newConsumo;
  }

  int getConsumo(){
    return _consumowats;
  }

  void setBluetooth(bool newEstado){
    _tieneBluetooth = newEstado;
  }

  bool getBluetooth(){
    return _tieneBluetooth;
  }

  double realizarDescuento(){
    return _precio*0.7;
  }
}

class Portatil extends Electrodomestico {
  int _tamanoMemoria;
  String _procesador;

  Portatil(this._tamanoMemoria, this._procesador, consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio):super(consumoWats, tieneBluetooth, codigoProducto, disponible, nombreProducto, precio);

  void mostrarInformacion(){
    print("""
    código del producto: $_codigoProducto
    nombre del producto: $_nombreProducto
    disponible: ${_disponible ? "Sí":"No"}
    Precio: $_precio
    Consumo Wats: $_consumowats
    Tiene Bluetooth: ${_tieneBluetooth ? "Sí":"No"}
    Tamaño memoria: $_tamanoMemoria
    Procesador: $_procesador
    """);
  }

  void setTamano(int newTamano){
    _tamanoMemoria = newTamano;
  }

  int getTamano(){
    return _tamanoMemoria;
  }

  void setProcesador(String newProcesador){
    _procesador = newProcesador;
  }

  String getProcesador(){
    return _procesador;
  }
}

class Parlante extends Electrodomestico{
  String _potencia;
  double _peso;

  Parlante(this._potencia, this._peso, consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio):super(consumoWats, tieneBluetooth, codigoProducto, disponible, nombreProducto, precio);

  void mostrarInformacion(){
    print("""
    código del producto: $_codigoProducto
    nombre del producto: $_nombreProducto
    disponible: ${_disponible ? "Sí":"No"}
    Precio: $_precio
    Consumo Wats: $_consumowats
    Tiene Bluetooth: ${_tieneBluetooth ? "Sí":"No"}
    Potencia: $_potencia
    Peso: $_peso
    """);
  }

  void setPotencia(String newPotencia){
    _potencia = newPotencia;
  }

  String getPotencia(){
    return _potencia;
  }

  void setPeso(double newPeso){
    _peso = newPeso;
  }

  double getPeso(){
    return _peso;
  }
}