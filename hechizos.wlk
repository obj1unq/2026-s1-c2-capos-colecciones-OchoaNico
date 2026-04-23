object bendicion {
    
    const poder = 4

    method usarHechizoEn(personaje){
        return poder
    }

}

object invisibilidad {

    method usarHechizoEn(personaje){
        return personaje.poderBase()
    }

}

object invocacion {

    method usarHechizoEn(personaje){
        return personaje.artefactoMasPoderosoEnHogar().poderAlSerUsadoPor(personaje)
    }

}