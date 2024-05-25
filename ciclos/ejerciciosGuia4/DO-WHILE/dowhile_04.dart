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
  int continuar, cont_primaria = 0, cont_secundaria = 0, cont_tecnico = 0, cont_profesional = 0, cont_posgrado = 0, cantidad_personas = 0;
  String? estudios;
  //ENTRADA DE DATOS, PROCESO
  do {
    print("Ingrese el nivel de estudios que tiene");
    estudios = (stdin.readLineSync())!.toLowerCase();
    if(estudios == "primaria"){
      cont_primaria ++;
      cantidad_personas++;
    }else if(estudios == "secundaria"){
      cont_secundaria ++;
      cantidad_personas++;
    }else if(estudios == "tecnico"){
      cont_tecnico++;
      cantidad_personas++;
    }else if(estudios == "profesional"){
      cont_profesional++;
      cantidad_personas++;
    }else if(estudios == "posgrado"){
      cont_profesional++;
      cantidad_personas++;
    }else{
      print("No es un estudio válido");
    }
    print("Desea continuar? (0) continuar (1) seguir");
    continuar = int.parse(stdin.readLineSync()!);
    while(continuar != 1 && continuar != 0){
      print("Opción incorrecta, ingrese nuevamente la opción");
      continuar = int.parse(stdin.readLineSync()!);
    }
  } while (continuar != 1);
  por_primaria = cont_primaria*100/cantidad_personas;
  por_secundaria = cont_secundaria*100/cantidad_personas;
  por_tecnico = cont_tecnico*100/cantidad_personas;
  por_profesional = cont_profesional*100/cantidad_personas;
  por_posgrado = cont_posgrado*100/cantidad_personas;
  //SALIDA
  print("Primaria: $por_primaria%");
  print("Secundaria: $por_secundaria%");
  print("Tecnico: $por_tecnico%");
  print("Profesional: $por_profesional%");
  print("Posgrado: $por_posgrado%");
}