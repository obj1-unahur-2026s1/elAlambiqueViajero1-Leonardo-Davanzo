import recuerdos.*
object paris {
    method restricciones(vehiculo) {
        return vehiculo.tieneSuficienteCombustible()
    }
    method recuerdo() = llaveroTorreEifel
}
object buenosAires {
    method restricciones(vehiculo) {
        return vehiculo.esRapido()
    }
    method recuerdo() = mate
}
object bagdad {
    method restricciones() = true
    method recuerdo() = recuerdoVariable.recuerdo()
    method asignarRecuerdo(objeto) {
        recuerdoVariable.asignarObjeto(objeto)
    }
}
object lasVegas {
    var recuerdo = "nada"
    method restricciones(vehiculo) {
        recuerdo = vehiculo.ultimaVisita().recuerdo()
        return vehiculo.ultimaVisita().restricciones(vehiculo)
      
    }
    method recuerdo() = recuerdo
}