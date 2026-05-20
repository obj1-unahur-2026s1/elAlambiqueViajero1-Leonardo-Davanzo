object llaveroTorreEifel {}
object mate {
    var tieneYerba = false
    method tieneYerba() = tieneYerba
    method ponerOSacarYerba() {
      tieneYerba = !tieneYerba
    }
}
object recuerdoVariable {
    var objeto = "No hay un recuerdo asignado"
    method recuerdo() = objeto
    method asignarObjeto(cosa) {
        objeto = cosa
    }
}