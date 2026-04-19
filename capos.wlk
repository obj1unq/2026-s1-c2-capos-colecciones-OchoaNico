object rolando {

    var capacidadDeInventario = 2
    var inventario = #{}
    
    method inventario(){
        return inventario
    }

    method encontrarArtefacto(artefacto){
        self.validarTomaDeArtefacto()
        self.tomarArtefacto(artefacto)
    }

    method validarTomaDeArtefacto(){
        if(self.cantidadDeArtefactos() >= capacidadDeInventario){
            self.error("No hay espacio para tomar otro artefacto")
        }
    }

    method cantidadDeArtefactos(){
        return inventario.size()
    }

    method tomarArtefacto(artefacto){
        inventario.add(artefacto)
    }

    method cambiarTamañoDeInventario(tamaño){
        capacidadDeInventario = tamaño
    }

}