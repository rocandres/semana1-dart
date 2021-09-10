import 'dart:math';

void ejercicio1(){
  var aleatorio = new Random();
  List<int> edades=[];
  int suma=0;
  for (var i = 0; i < 6; i++) {
    edades.add(aleatorio.nextInt(100));
    suma=suma+edades[i];
  }
  edades.sort();
  print("Ordenado:");
  print(edades);
  print("Promedio es ${suma/edades.length}");
  print("Primero ${edades.first} y ultimo ${edades.last} " );
}

void main() {
  ejercicio1();
}