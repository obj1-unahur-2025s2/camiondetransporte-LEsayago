object cosas {
  
} //Knight Rider: pesa 500 kilos y su nivel de peligrosidad es 10.

object knightRider {
  method peso() = 500
  
  method peligrosidad() = 10
} //Bumblebee: pesa 800 kilos y su nivel de peligrosidad 

//es 15 si está transformado en auto o 30 si está como robot.
object bumblebee {

  var transformadoEnAuto = true
  
  method peso() = 800

  method transformar() = not transformadoEnAuto

  method peligrosidad() =  if (transformadoEnAuto) 15 else 30

}

// Paquete de ladrillos: cada ladrillo pesa 2 kilos,
// la cantidad de ladrillos que tiene puede variar. La peligrosidad es 2.

object paqueteDeLadrillos {

  
}