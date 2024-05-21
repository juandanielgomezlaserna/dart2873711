import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ - DO WHILE 01
  /*
  En  un  supermercado  una  ama  de  casa  pone  en  su  carrito  los  artículos  que  va  tomando  de  los estantes. 
  La señora quiere asegurarse de que el cajero le cobre bien lo que ella ha comprado, 
  por lo que cada vez que toma un articulo anota su precio junto con la cantidad de artículos iguales que ha tomado 
  y determina cuanto dinero gastara en ese articulo; a esto le suma lo que ira gastando en los demás  artículos,  
  hasta  que  decide  que  ya  tomo  todo  lo  que  necesitaba.  Ayúdale  a  esta  señora  a obtener el total de sus compras.
  */
  //DECLARACIÓN DE VARIABLES
  String? articulo;
  int cantArticulo;
  double precio, totalCompra = 0;
  //ENTRADA, PROCESO Y SALIDA
  do{
    print("Ingrese el nombre del artículo o escriba salir");
    articulo = stdin.readLineSync();
    if(articulo!.toLowerCase() != "salir"){
      print("Ingrese el precio unitario del artículo $articulo");
      precio = double.parse(stdin.readLineSync()!);
      print("Ingrese la cantidad de articulos");
      cantArticulo = int.parse(stdin.readLineSync()!);
      totalCompra += precio*cantArticulo;
    }else{
      print("El total de la compra es: $totalCompra");
    }
  }while(articulo!.toLowerCase() != "salir");
}