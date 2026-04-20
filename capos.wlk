// capos.wlk
import hogar.*

object rolando {

    var capacidadDeInventario = 2
    const inventario = #{}
    const historialDeEncuentros = []
    var hogar = castilloDePiedra
    var poder = 5

    method inventario(){
        return inventario
    }

    method verHistorial(){
        return historialDeEncuentros
    }

    method posesionesTotales(){
        return self.inventario().union(hogar.verAlmacenamiento())
    }

    method poseeElArtefacto(artefacto) {
        inventario.any({objeto => objeto == artefacto})
    }

    method asignarHogar(nuevoHogar){
        hogar = nuevoHogar
    }

    method vueltaAHogar(){
        self.inventario().forEach({objeto => hogar.almacenarArtefacto(objeto) })
        self.inventario().clear()
    }

    method encontrarArtefacto(artefacto){
        historialDeEncuentros.add(artefacto)
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

    method capacidadDeInventario() {
        return capacidadDeInventario
    }

}