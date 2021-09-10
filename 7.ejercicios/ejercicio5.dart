class Persona{
  String nombre;
  String apellido;
  int edad;

  Persona({this.nombre='Andres',this.apellido='Rodriguez',this.edad=24});

}

class Artista extends Persona with Dibujar{
  Artista.completo() : super();
}

class Ingeniero extends Persona with Dibujar,Leer{
  Ingeniero.completo() : super();
}

class Doctor extends Persona with Leer,Ejercitarse{
  Doctor.completo() : super();
}

class Atleta extends Persona{
  Atleta.completo() : super();
}

class Boxeador extends Atleta with Ejercitarse,Boxear{
  Boxeador.completo() : super.completo();
}

mixin Dibujar{
  
}

mixin Leer{
  
}

mixin Ejercitarse{
  
}

mixin Boxear{
  
}