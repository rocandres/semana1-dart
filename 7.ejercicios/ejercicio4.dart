void ejercicio4({required List<int> a}){
List<int>filter=[];

for(var i=0; i<a.length; i++){
  if(a[i]%2==0){
    filter.add(a[i]);
  }
}
print(filter);
}

void main(){

List<int>a =[1, 4, 9, 16, 25, 36, 49, 64, 81, 100,200];
ejercicio4(a: a);

}