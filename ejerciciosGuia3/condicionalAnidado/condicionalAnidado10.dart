import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL ANIDADO 10
  /*
  Tomando  como  base  los  resultados  obtenidos  en  un  laboratorio  de  análisis  clínicos,  
  un  medico determina si una persona esta normal, tiene anemia o tiene cardiopatía  
  lo cual depende de su nivel de  hemoglobina  en  la  sangre,  de  su  edad  y de  su  sexo.  
  Si  el nivel  de  hemoglobina que tiene  una persona es menor que el rango que le corresponde, 
  se determina su resultado como Anemia, si esta dentro del rango, se determina su resultado como Normal y 
  si esta por encima del rango, se determina su resultado como Cardiopatía. 
  La tabla en la que el medico se basa para obtener el resultado es la siguiente:
  */
  //DECLARACIÓN DE VARIABLES
  int genero, edad, mes_anio;
  double hemoglobina;
  String resultado;
  //ENTRADA DE DATOS
  print("Ingrese 1 si es hombre, o 2 si es mujer");
  genero = int.parse(stdin.readLineSync()!);
  print("Ingrese 1 si tiene meses o 2 si tiene años");
  mes_anio = int.parse(stdin.readLineSync()!);
  print("Ingrese su edad en meses o en años");
  edad = int.parse(stdin.readLineSync()!);
  print("Ingrese el nivel de hemoglobina");
  hemoglobina = double.parse(stdin.readLineSync()!);
  //PROCESO
  if (mes_anio == 1){
    if(edad <= 1){
      if((hemoglobina >= 13)&(hemoglobina <= 26)){
        resultado = "Normal";
      }else if(hemoglobina<13){
        resultado = "Anemia";
      }else{
        resultado = "Cardiopatía";
      }
    }else if((edad > 1)&(edad <= 6)){
      if((hemoglobina >= 10)&(hemoglobina <= 18)){
        resultado = "Normal";
      }else if(hemoglobina < 10){
        resultado = "Anemia";
      }else{
        resultado = "Cardiopatía";
      }
    }else{
      if((hemoglobina >= 11)&(hemoglobina <= 15)){
        resultado = "Normal";
      }else if(hemoglobina < 11){
        resultado = "Anemia";
      }else{
        resultado = "Cardiopatía";
      }
    }
  }else{
    if(edad <= 5){
      if((hemoglobina >= 11.5)&(hemoglobina <= 15)){
        resultado = "Normal";
      }else if(hemoglobina < 11.5){
        resultado = "Anemia";
      }else{
        resultado = "Cardiopatía";
      }
    }else if((edad > 5)&(edad <= 10)){
      if((hemoglobina >= 12.6)&(hemoglobina <= 15.5)){
        resultado = "Normal";
      }else if(hemoglobina < 12.6){
        resultado = "Anemia";
      }else{
        resultado = "Cardiopatía";
      }
    }
    else if((edad > 10)&(edad <= 15)){
      if((hemoglobina >= 13)&(hemoglobina <= 15.5)){
        resultado = "Normal";
      }else if(hemoglobina < 13){
        resultado = "Anemia";
      }else{
        resultado = "Cardiopatía";
      }
    }else if(genero == 2){
      if((hemoglobina >= 12)&(hemoglobina <= 16)){
        resultado = "Normal";
      }else if(hemoglobina < 12){
        resultado = "Anemia";
      }else{
        resultado = "Cardiopatía";
      }
    }else{
      if((hemoglobina >= 14)&(hemoglobina <= 18)){
        resultado = "Normal";
      }else if(hemoglobina < 14){
        resultado = "Anemia";
      }else{
        resultado = "Cardiopatía";
      }
    }
  }
  //SALIDA
  print("El resultado es: $resultado");
}