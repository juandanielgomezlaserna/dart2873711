import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - CONDICIONAL ANIDADO 6
  /*
  El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año. 
  La manera de planificarlas depende de lo siguiente:Si actualmente su capital se encuentra con saldo negativo, 
  pedirá un préstamo bancario para que su nuevo saldo sea de $1000000. 
  Si su capital tiene actualmente un saldo positivo pedirá un préstamo bancario  para  tener  un  nuevo  saldo  de  $2000000,  
  pero  si  su capital  tiene  actualmente  un  saldo superior a los $2000000 no pedirá ningún préstamo.

  Posteriormente repartirá su presupuesto de la siguiente manera.
  •$500000 para equipo de computo
  •$200000 para mobiliario
  •y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal.
  
  Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos e incentivos al personal y, 
  en caso de que fuera necesario, a cuanto ascendería la cantidad que se pediría al banco.
  */
  //DECLARACIÓN DE VARIABLES
  double salario, prestamo, equipo, mobiliario, insumos, incentivos;
  //ENTRADA DE DATOS
  print("Ingrese el salario que tiene actualmente");
  salario = double.parse(stdin.readLineSync()!);
  equipo = 500000;
  mobiliario = 200000;
  //PROCESO
  if(salario<0){
    prestamo = 1000000;
  }else if((salario >= 0)&(salario <= 2000000)){
    prestamo = 2000000 - salario;
  }else{
    prestamo = 0;
  }
  salario = salario + prestamo;
  salario = salario - equipo;
  salario = salario - mobiliario;
  insumos = salario*0.5;
  incentivos = salario*0.5;


  //SALIDA
  print("En insumos se le irán: \$$insumos\nEn incentivos se le irpan:\$$incentivos");
  print("prestará una cantidad de \$$prestamo");
}