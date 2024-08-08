//JUAN DANIEL GÓMEZ - CLASE EMPLEADO
import 'dart:io';

/** Crear una clase llamada Empleado con los siguientes atributos (la clase debe estar creada en un archivo aparte):

nombre (de tipo String): el nombre del empleado.

edad (de tipo int): la edad del empleado.

salario (de tipo double): el salario del empleado.

puesto (de tipo String): el puesto de trabajo del empleado.

tipoContrato (de tipo String): el tipo de contrato del empleado ("Indefinido", "Temporal", "Contratista")

Implementar un constructor para inicializar todos los atributos de la clase Empleado.


Crea los siguientes métodos para la clase Empleado:
aumentarSalario(double porcentaje): aumenta el salario del empleado en un determinado porcentaje.
cumplirAnios(): incrementa la edad del empleado en uno.
cambiarPuesto(String nuevoPuesto): cambia el puesto del empleado al nuevo puesto especificado.
mostrarInformacion(): muestra en la consola toda la información del empleado (nombre, edad, salario y puesto).
calcularBonificacion(): calcula y retorna una bonificación basada en el tipo de contrato del empleado:
1. "Contratista": 10% del salario.
2. "Temporal": 5% del salario.
3. "Indefinido": 15% del salario.
*/

class Empleado{
  //Atributos
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato){}

  void aumentarSalario(){
    double porcentaje;
    print("Ingrese el porcentaje que aumentará su salario (empleado #${this.nombre})");
    porcentaje = double.parse(stdin.readLineSync()!);
    this.salario = salario*(1 + porcentaje/100);
    print("El nuevo salario del empleado ${this.nombre} es: ${this.salario}");
  }

  void cumplirAnios(){
    this.edad += 1;
    print("Ahora el empleado ${this.nombre} tiene ${this.edad} años.");
  }
  void cambiarPuesto(){
    String nuevoPuesto;
    print("Ingrese el nuevo puesto que tendrá el empleado ${this.nombre}");
    nuevoPuesto = stdin.readLineSync()!;
    this.puesto = nuevoPuesto;
    print("El nuevo puesto de ${this.nombre} es: ${this.nombre}");
  }

  void mostrarInformacion(){
    print("*"*50);
    print("Información del empleado");
    print("Nombre: ${this.nombre}");
    print("Edad: ${this.edad}");
    print("Salario: ${this.salario}");
    print("Puesto: ${this.puesto}");
  }

  double bonificacion(){
    double bonif, porcentaje;
    if((this.tipoContrato).toLowerCase() == "contratista"){
      porcentaje = 0.1;
    }else if((this.tipoContrato).toLowerCase() == "temporal"){
      porcentaje = 0.05;
    }else if((this.tipoContrato).toLowerCase() == "indefinido"){
      porcentaje = 0.15;
    }else{
      porcentaje = 0;
    }
    bonif = this.salario*porcentaje;
    return bonif;
  }
}