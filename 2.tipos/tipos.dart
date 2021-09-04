void main() {
  //NUmeros
  int edadInt=23;
  double puntosDouble = 10.2;
  var edadVar=48;

  num edadNum = edadInt;
  num puntosNum=puntosDouble;

  //print(edadNum);

//String

var texto1='valor con comilla simple';
var texto2="valor con comilla doble";
var texto3="It's ease to escape the string delimiter";
var texto4='It\'s ease to escape the string delimiter';
//Concatenar
var texto6 ="Este valor se une con el siguiente valor"+"yo me uno";
var texto7="me uno con "', este otro valor';
//interpolacion
var texto5="el resultado de sumar 3 + 3 es ${3+3}";
var texto8="texto a interpolar";
var variableTipoNumero=50;
var texto9="Vamos a interpolar e texto7 \'$texto7'\ ,el valor de la variableTipoNumero es $variableTipoNumero";
var texto10 =''' Create table persons(
                  Persona int,
                  LastName varchar(255)  
                  )
            ''';
var texto11=r'mostrar este caracter \';


print(texto1);
print(texto2);
print(texto3);
print(texto4);
print(texto5);
print(texto6);
print(texto7);
print(texto8);
print(texto9);
print(texto10);
print(texto11);

//Booleanos
String texto12='';
if(texto12.isEmpty){
  print("es vacio");
}

var variableBooleanNull=null;
if(variableBooleanNull==null){
  print("es nulo");

}

//Listas
var lista1 =['mazda','Kia','chevrolet'];
List<String> lista2 =['mazda','Kia','chevrolet'];
var lista3=["renault",...lista1];
var lista4;
List<String> ?lista6=null;
var lista5=[...lista3,...?lista6,...?lista4];

var ListaSet ={'mazda','Kia','chevrolet','chevrolet'};
ListaSet.add("mazdados");
ListaSet.add("Kia");
ListaSet.clear();

var Lista7=[1,2.0,true];
List<dynamic> Lista8=[1,2.0,true];

var maps1={
  'red':'rojo',
  'blue':'azul'
};
//maps1.clear();
maps1['green']='verde';

print(lista1);
print(lista2);
print(lista2.last); //ultimo
print(lista2.reversed);//reverse
print(lista3);
print(lista5);
print(ListaSet);
print(Lista7);
print(Lista8);
print(maps1);
print(maps1.length);

maps1.forEach((key, value) =>
  print(key)
);

maps1.forEach((key, value) {print(key);});
}
