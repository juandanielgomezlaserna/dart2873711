import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - DO WHILE
  /*
  En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar que porcentaje 
  de los n diputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en contra y 
  que porcentaje se abstiene de opinar.El programa debe preguntar si se desea continuar ingresando datos.
  */
  //DECLARACIÓN DE VARIABLES
  int opinion, contra = 0, aFavor = 0, nulo = 0, total = 0;
  String? seguir;
  double por_contra, por_favor, por_nulo;
  //ENTRADA, PROCESO
  do {
    print("Ingrese 1 para estar a favor, 2 para estar en contra y 3 para abstenerse de opinar");
    opinion = int.parse(stdin.readLineSync()!);
    if (opinion == 1) {
      aFavor++;
      total++;
    } else if (opinion == 2) {
      contra++;
      total++;
    } else if (opinion == 3) {
      nulo++;
      total++;
    } else {
      print("Opción incorrecta");
    }
    do {
      print("¿Desea continuar ingresando datos?");
      print("Sí[y] no[n]");
      seguir = stdin.readLineSync();
      seguir = seguir!.toLowerCase();
      if(seguir != "y" && seguir != "n"){
        print("opción incorrectaa");
      }
    } while (seguir != "y" && seguir != "n");
  } while (seguir != "n");
  por_contra = contra*100/total;
  por_favor = aFavor*100/total;
  por_nulo = nulo*100/total;
  //SALIDA
  print("A favor: $por_favor%");
  print("En contra: $por_contra%");
  print("Sin opinión: $por_nulo%");
  print("Total de personas que votaron: $total");
}
