import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - WHILE 4
  /*
  El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos que entran a la ciudad de México, cuantos entran con calcomanía de cada color. 
  Conociendo el último dígito de la placa de cada automóvil se puede determinar el color de la calcomanía utilizando la sig. relación:
  */
  //DECLARACIÓN DE VARIABLES
  int cant_autos, cant_rojo = 0, cant_amarillo = 0, cant_rosado = 0, cant_verde = 0, cant_azul = 0, digito, contador = 0;
  //ENTRADA, PROCESO
  print("Ingrese la cantidad de autos");
  cant_autos = int.parse(stdin.readLineSync()!);
  while(contador != cant_autos){
    print("Ingrese el último dígito de su placa");
    digito = int.parse(stdin.readLineSync()!);
    if((digito < 3)&(digito>0)){
      cant_amarillo++;
      contador++;
    }else if(digito < 5){
      cant_rosado++;
      contador++;
    }else if(digito < 7){
      cant_rojo++;
      contador++;
    }else if(digito < 9){
      cant_verde++;
      contador++;
    }else if((digito == 9)||(digito == 0)){
      cant_azul++;
      contador++;
    }else{
      print("No es un dígito correcto");
    }
  }
  //SALIDA
  print("Cantidad de amarillos: $cant_amarillo");
  print("Cantidad de rosados: $cant_rosado");
  print("Cantidad de rojos: $cant_rojo");
  print("Cantidad de verdes: $cant_verde");
  print("Cantidad de azules: $cant_azul");
}