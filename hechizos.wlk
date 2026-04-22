object bendicion {
    
    method usarHechizoEn(personaje){
        return 4
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