import 'dart:io';

void main(List<String> args) {
  // JUAN DANIEL GÓMEZ - DO WHILE 04
  /*
  Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población y Vivienda. 
  Desea obtener de todas las personas que alcance a encuestar en un día, 
  que porcentaje tiene  estudios  de  primaria,  secundaria,  carrera  técnica,  
  estudios  profesionales  y  estudios  de posgrado.El programa debe preguntar si se desea continuar ingresando datos.
  */
  //DECLARACIÓN DE VARIABLES
  double por_primaria, por_secundaria, por_tecnico, por_profesional, por_posgrado;
  int continuar;
  do {
    print("Ingrese el porcentaje de estudios que logró en primaria");
    por_primaria = double.parse(stdin.readLineSync()!);
    print("Ingrese el porcentaje de estudios que logró en secundaria");
    por_secundaria = double.parse(stdin.readLineSync()!);
    print("Ingrese el porcentaje de estudios que logró en su carrera tecnica");
    por_tecnico = double.parse(stdin.readLineSync()!);
    print("Ingrese el porcentaje de estudios que logró en sus estudios profesionales");
    por_profesional = double.parse(stdin.readLineSync()!);
    print("Ingrese el porcentaje de estudios que logró en sus estudios pos grado");
    por_posgrado = double.parse(stdin.readLineSync()!);
    //MOSTRAR LOS RESULTADOS
    print("El porcentaje que hizo en primaria fue: $por_primaria");
    print("El porcentaje que hizo en secundaria fue: $por_secundaria");
    print("El porcentaje que hizo en tecnico fue: $por_tecnico");
    print("El porcentaje que hizo en profesional fue: $por_profesional");
    print("El porcentaje que hizo en posgrado fue: $por_posgrado");
    print("***********************************");
    print("¿Desea seguir ingresando datos? (1)para salir, (0)para continuar");
    continuar = int.parse(stdin.readLineSync()!);

  } while (continuar != 1);
}