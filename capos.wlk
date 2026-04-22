// capos.wlk
// capos.wlk
// capos.wlk
// capos.wlk
// capos.wlk
// capos.wlk
// capos.wlk
import hogar.*

object rolando {

    var capacidadDeInventario = 2
    const inventario = #{}
    const historialDeEncuentros = []
    var hogar = castilloDePiedra
    var poderBase = 5
    const enemigos = #{archibaldo,astra,caterina}

    method enemigosQuePuedeVencer() {
        return enemigos.filter({enemigo=> self.puedeVencerA(enemigo)})
    }

    method moradasConquistables() {
        return self.enemigosQuePuedeVencer().map({enemigo => enemigo.hogar()}).asSet()
    }

    method puedeVencerA(enemigo){
        return self.poderDePelea() > enemigo.poderDePelea()
    }

    method hogar(){
        return hogar
    }

    method artefactoMasPoderosoEnHogar() {
        return hogar.artefactoMasPoderoso(self)
    }

    method lucharBatalla() {
        inventario.forEach({objeto=> objeto.aumentarCantidadDeUsos()})
        poderBase = poderBase + 1
    }

    method poderDePelea() {
        return inventario.sum({objeto => objeto.poderAlSerUsadoPor(self)}) + poderBase
    }

    method poderBase() {
        return poderBase
    }

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
        self.posesionesTotales().any({objeto => objeto == artefacto})
    }

    method asignarHogar(nuevoHogar){
        hogar = nuevoHogar
    }

    method vueltaAHogar(){
        hogar.almacenarArtefactos(self.inventario())
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

object caterina {
    const poderBase = 28
    const hogar = fortalezaDeAcero

    method poderDePelea(){
        return poderBase
    }

    method hogar() {
        return hogar
    }
}

object archibaldo {
    const poderBase = 16
    const hogar = palacioDeMarmol

    method poderDePelea(){
        return poderBase
    }

    method hogar() {
        return hogar
    }
}

object astra {
    const poderBase = 14
    const hogar = torreDeMarfil

    method poderDePelea(){
        return poderBase
    }

    method hogar() {
        return hogar
    }
}