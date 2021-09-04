
String obtenerNombre({required String valor}){
  if(valor == 'juan'){
    throw FormatException("El nombre de $valor  no puede ser procesado");
  }

  double variablePrueba =5/0;
  return valor;
}

void main() {

  try{
   String resultado= obtenerNombre(valor: "juan");
   print(resultado);
  }on FormatException catch(e){
    print("Format exception");
    print(e);
  }
  catch(e){
    print("General");
    print(e);

  }


  
}