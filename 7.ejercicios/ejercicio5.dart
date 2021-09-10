class Persona{
  String nombre;
  String apellido;
  int edad;

  Persona({this.nombre='Andres',this.apellido='Rodriguez',this.edad=24});

  getNombreCompleto(){
    return this.nombre+" "+this.apellido;
  }

}

class Artista extends Persona with Dibujar{
  String area;
  List<String> obras=[];
  List<String> generos=[];

  Artista.completo({required this.area,required this.obras,required this.generos}) : super();

  getObras(){
    return(obras);
  }
  

}

class Ingeniero extends Persona with Dibujar,Leer{
  String area;
  String universidad;
  int experiencia;

  Ingeniero.completo({required this.area,required this.universidad,required this.experiencia}) : super();

  getInformacion(){
    return "Ingeniero $area de la universidad $universidad";
  }
}

class Doctor extends Persona with Leer,Ejercitarse{
  String especialidad;
  String hospital;
  int experiencia;

  Doctor.completo({required this.especialidad,required this.hospital,required this.experiencia}) : super();

  getInformacion(){
    return "Doctor de $especialidad del hospita $hospital";
  }

}

class Atleta extends Persona{
  String? liga;
  String? entrenador;
  bool? alto_rendimiento;

  Atleta.completo({this.liga,this.entrenador,this.alto_rendimiento}) : super();

  getAltoRendimiento(){
    if(alto_rendimiento == true){
      return "si";
    }else{
      return "No";
    }
  }
}

class Boxeador extends Atleta with Ejercitarse,Boxear{
  String categoria;
  Boxeador.completo({required this.categoria}) : super.completo();
}

mixin Dibujar{
  String color="rojo";
  String figura="paisaje";
  String nombre_obra="Amanecer Llanero";

  Dibujar_obra(){
    return nombre_obra;
  }
  
}

mixin Leer{
  String libro="Patrones de diseño";
  String Autor="Gamma";
  String volumen="1";

  leyendo(a){
    return a;
  }

  
}

mixin Ejercitarse{
  String deporte="Futbol";
  String objeto ="Balon";
  String lugar="cancha";

  tiempo_ejercitarse(a){
    return a;

  }

  
}

mixin Boxear{
  int numero_round=12;
  int tiempo_round=20;
  String juez ="Juan perez";

  tiempo_pelea(){
    return this.numero_round*this.tiempo_round;
  }
  
}

void main(){

  var artista= Artista.completo(area:"Oleo" ,generos: ["Paisajes","Bodegones"] ,obras:["Atardecer"] );  
  print("El artista "+artista.nombre+" tiene como generos "+artista.generos.toString()+" creo una nueva obra llamada "+artista.Dibujar_obra());

  var ingeniero= Ingeniero.completo(area: "Sistemas", universidad: "Unillanos", experiencia: 4);

  print(ingeniero.getInformacion());
  print(ingeniero.Dibujar_obra());
  print(ingeniero.leyendo("PAtrones de diseño"));

  var doctor= Doctor.completo(especialidad:'Pediatria' ,experiencia: 7 ,hospital:"Departamental" );
  print(doctor.getInformacion());
  print(doctor.tiempo_ejercitarse(10));
  print(doctor.leyendo("Salud mental"));

  var boxeador= Boxeador.completo(categoria: "Peso pluma");
  print(boxeador.getNombreCompleto());
  print(boxeador.categoria);
  print(boxeador.tiempo_pelea());
  print(boxeador.tiempo_ejercitarse(30));
  
}