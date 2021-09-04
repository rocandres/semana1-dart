
String obtenerNombre(String valor){
    return 'Valor funcion $valor';
}

String obtenerValorFuncionFlecha(String valor)=> 'valor funcion $valor';

obtenerValorSinRetorno({String valor='pablo'}){
    return 'Valor funcion $valor';
}

String obtenerFuncionNameParameter({String? valor, String valor2='pablo',required String valor3}){
    return 'Valor funcion $valor otro valor $valor2 y otro valor $valor3';
}

String funcionParametrosOpcionales(String valor1,[int? valor2]){
  return valor1;
}

funcionTest(String valor1,String valor2,String valor3){
  return valor1;
}


void main(){

var miFuncion=(String valor){
  return valor;
};


print(obtenerNombre("Andre"));
print(obtenerValorFuncionFlecha("Felipe"));
print(obtenerFuncionNameParameter(valor3: 'sofia'));
print(obtenerFuncionNameParameter(valor2: 'Rodriguez',valor3: 'Cabanzo'));
print(
  funcionParametrosOpcionales('andres',2)
);

print(miFuncion("Hola mundo"));

}