class Persona{
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre,this.apellido,this.edad);

  Persona.completo({this.nombre='Carlos',this.apellido='Villar',this.edad=22});

}

class Padre extends Persona {
  int hijos;

  Padre({required this.hijos}):super.completo();

}


abstract class Vehiculo{
  String? placa;

  bool vehiculoencendido();
}


class Taxi extends Vehiculo with Terrestre{

  @override
  bool vehiculoencendido() =>true;


}

class Lancha extends Vehiculo with Acuatico{

  @override
  bool vehiculoencendido() =>true;


}

class Empleado implements Persona{
  @override
  String apellido;

  @override
  int edad;

  @override
  String nombre;

  Empleado(this.nombre,this.apellido,this.edad);

}

mixin Terrestre{
  int ? llantas;
  int? kilometraje;

  tipoDeVehiculo(){
    return "Terrestre";
  }
  
}

mixin Acuatico{
  int ? motor;
  int? millas;

  tipoDeVehiculo(){
    return "acuatico";
  }
  
}



void main() {

  var persona= Persona('Andres','Rodriguez',24);
  var elPadre =Padre(hijos: 6);
  var vehiculotaxi=Taxi();
  vehiculotaxi.llantas=4;
  var vehiculoLancha=Lancha();
  vehiculoLancha.motor=1200;
  print(persona.nombre);
  print(persona.apellido);
  print(persona.edad);

  print(elPadre.apellido);

  print(vehiculotaxi.tipoDeVehiculo());
  print(vehiculotaxi.llantas);
  print(vehiculoLancha.tipoDeVehiculo());
  print(vehiculoLancha.motor);

  
}