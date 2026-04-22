// hogar.wlk
// hogar.wlk
object castilloDePiedra {

    const objetosAlmacenados = #{}

    method almacenarArtefacto(artefacto) {
        objetosAlmacenados.add(artefacto)
    }

    method almacenarArtefactos(artefactos){
        artefactos.forEach({objeto=>self.almacenarArtefacto(objeto)})
    }

    method verAlmacenamiento (){
        return objetosAlmacenados
    }

    method artefactoMasPoderoso(personaje){

        return objetosAlmacenados.max({objeto=> objeto.poderAlSerUsadoPor(personaje)})
      
    }

}

object fortalezaDeAcero{

}

object palacioDeMarmol{

}

object torreDeMarfil{

}