import hechizos.*

object  espadaDelDestino {
    var cantidadDeUsos = 0

    method poderAlSerUsadoPor(personaje){
        if (cantidadDeUsos == 0){
            return personaje.poderBase()
        } else {
            return personaje.poderBase() / 2
        }
    }

    method aumentarCantidadDeUsos(){
        cantidadDeUsos = cantidadDeUsos + 1
    }

}

object libroDeHechizos {

    const hechizos = [bendicion, invisibilidad, invocacion]
  
    method poderAlSerUsadoPor(personaje) {
        if(hechizos.isEmpty()){
            return 0
        } else {
            return hechizos.first().usarHechizoEn(personaje)
        }
    }

    method aumentarCantidadDeUsos(){
        hechizos.remove(hechizos.first())
    }

    method validarUsoDeHechizo() {
        if (hechizos.isEmpty()){
            self.error("No hay hechizos en el libro")
        }
    }

}

object collarDivino {
   const poderBase = 3
   var cantidadDeUsos = 0

   method poderAlSerUsadoPor(personaje) {
        return if(personaje.poderBase() > 6){
            poderBase + cantidadDeUsos
        } else {
            poderBase
        }
   }

   method aumentarCantidadDeUsos(){
        cantidadDeUsos = cantidadDeUsos + 1
   }
}

object armaduraDeAceroValyrio {
  const poderBase = 6

  method poderAlSerUsadoPor(personaje) {
        return poderBase
  }

  method aumentarCantidadDeUsos(){

  }


}