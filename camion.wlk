object camion {

/*Se pide que se le pueda cargar y descargar cosas (de 1 a vez) y también cual 
es el peso total del camión, incluyendo su tara que es de 1000 kg.*/
  const tara = 1000
  const contenido = []
  
  method cargar(unaCosa) = contenido.add(unaCosa)
  
  method descargar(unaCosa) {
    if (contenido.contains(unaCosa)) contenido.remove(unaCosa)
  }
  
  method peso() = contenido.fold(0 , {sum, x => sum + x.peso()}) + tara

/*También se necesita conocer si los pesos de todas las cosas 
cargadas en el camión son números pares.*/

  method esParELPesosDeTodasLasCosasCargadas() = contenido.all({x => x.peso() % 2 == 0}) 

/*Debemos poder consultar si hay alguna cosa que pesa un determinado valor.*/

  method algunoPesa(unPeso) = contenido.any({x => x.peso() == unPeso}) 

/*Para un mejor control del tipo de peligro que puede representar la carga, se debe poder 
obtener la primer cosa cargada que tenga un determinado nivel de peligrosidad*/

  method primerElementoConPeligrosidad_(unNivelDePeligrosidad) = contenido.find({x => x.peligrosidad() == unNivelDePeligrosidad}) 
}

/*Obtener todas las cosas que superan un determinado nivel de peligrosidad.*/

