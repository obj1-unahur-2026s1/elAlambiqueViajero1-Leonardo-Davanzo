import lugares.*
object luke{
    var recuerdo = "ninguno"
    var cuantosLugaresVisito = 0 
    method recuerdo() = recuerdo
    method nuevoRecuerdo(objeto) {
      recuerdo = objeto
    }
    method visitó(lugar) {
      cuantosLugaresVisito += 1
      self.nuevoRecuerdo(lugar.recuerdo())
    }
    method cuantosLugaresVisito() = cuantosLugaresVisito
}

object alambiqueVeloz {
    var combustible = true
    var conductor = luke
    var esRapido = true
    var ultimoLugar = "nada"

    method lukeSeSube() {
        conductor = luke
    } 
    method lukeCambiaAlVehiculo(unVehiculo){
        unVehiculo.lukeSeSube()
        conductor = "nadie"
    }
    method tieneSuficienteCombustible() = combustible

    method gastarCombustible() {
      combustible = false
    }
    method cargarComustible() {
      combustible = true
    }
    method esRapido() = esRapido
    method cambiarALento(){ 
        esRapido = false
    }
    method cambiarARapido(){
        esRapido = true
    }
    method ultimaVisita() = ultimoLugar
    method viajarA(lugar){
        if (lugar.restricciones(self)){
            conductor.nuevoRecuerdo(lugar.recuerdo())
            conductor.visitó(lugar)
            ultimoLugar = lugar
        }
    }

}