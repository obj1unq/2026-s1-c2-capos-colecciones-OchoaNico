object castilloDePiedra {

    const objetosAlmacenados = #{}

    method almacenarArtefacto(artefacto) {
        objetosAlmacenados.add(artefacto)
    }

    method verAlmacenamiento (){
        return objetosAlmacenados
    }

}