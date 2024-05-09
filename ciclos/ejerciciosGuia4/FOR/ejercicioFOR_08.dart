import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - FOR 08
  /*
  Un alumno de la clase de lógica matemática desea desarrollar un programa que calcule el factorial de un número N, 
  el cual le dará al usuario, el factorial de un número N, definido matemáticamente como N! se obtiene como la multiplicación de 
  todos los números que están desde el 1 hasta el N = 1 * 2 * 3 * ..... (N-2) * (N-1) * N, como se muestra en la figura, por definición el factorial de 0 es 1.
  */
  //DECLARACIÓN DE VARIABLES
  int num, resultado = 1;
  //ENTRADA DE DATOS
  print("Ingrese el factorial");
  num = int.parse(stdin.readLineSync()!);
  if(num == 0){
    resultado = 1;
  }else{
    for(int i = num; i > 0; i--){
      resultado = resultado * (i); 
    }
  }
  //SALIDA
  print("$num! = $resultado");
}