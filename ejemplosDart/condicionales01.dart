void main(){
  print("******************");
  //CONDICIONAL SIMPLE
  int edad;
  edad = 19;
  if(edad >=18){
    print("Usted es mayor de edad");
  }
  print("******************");
  //CONDICIONAL DOBLE
  bool esMayor = true; //Definición y Asignación
  if(esMayor == true){//SI
    print("Es mayor de edad");
  }else{//SINO
    print("Es menor de edad");
  }
  print("CONDICIONAL DOBLE #2");
  double nota = 4.5;
  if (nota >= 3){
    print("Usted aprobó el exámen");
  } else{
    print("Usted no aprobó el exámen");
  }

  //CONDICIONAL ANIDADO
  int estrato = 2;
  if (estrato == 1){
    print("Usted es estrato 1");
    print("Se le subsidia ek 10% de la factura");
  }else if(estrato == 2){
    print("Usted es estrato 2");
    print("Se le subsidia el 5% de la factura");
  }else if(estrato == 3){
    print("Usted es estrato 3");
    print("Se le subsidia el 3% de la factura");
  }else if(estrato == 4){
    print("Usted es estrato 4");
    print("Paga un 5% más de la factura");
  }else if(estrato == 5){
    print("Usted es estrato 5");
    print("paga un 10% más de la factura");
  }else if(estrato == 6){
    print("Usted es estrato 6");
    print("paga un 15% más de la factura");
  }else{
    print("El estrato es incorrecto");
  }
  }