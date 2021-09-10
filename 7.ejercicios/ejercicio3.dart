void ejercicio3({required String palabra}){

String reverso= palabra.split('').reversed.join('');
  if(palabra==reverso){
    print("$palabra es palindroma");
  }else{
    print("$palabra no es palindroma");
  }

}



void main() {

String palabra="radar";
ejercicio3(palabra: palabra);
  
}