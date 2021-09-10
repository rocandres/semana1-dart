
void ejercicio2({required List<int> a, required List<int> b}){
  List<int> filter=[];

   for (var i = 0; i < a.length; i++) {
    for (var j = 0; j < b.length; j++) {
      if(a[i]==b[j]){
        filter.add(a[i]);
      }
    
    }

  }
  print(filter.toSet());
}

void ejercicio2_forma2({required List<int> a, required List<int> b}){

  List<int> a =[1, 1, 2, 3, 5, 5,8, 13, 21, 34, 55, 89];
  List<int> b=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> filter=[];

   for (var i = 0; i < a.length; i++) {
    
    if(b.contains(a[i])){
       filter.add(a[i]);
    }
    

  }
  print(filter.toSet());
}


void main(){
  
  List<int> a =[1, 1, 2, 3, 5, 5,8, 13, 21, 34, 55, 89];
  List<int> b=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  ejercicio2(a: a,b: b);
  ejercicio2_forma2(a: a,b: b);

}