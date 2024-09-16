class CuentaBancaria {
  double _saldo;
  CuentaBancaria(this._saldo);
  void depositar(double deposito){
    _saldo += deposito;
  }
  double obtenerSaldo(){
    return _saldo;
  }
}