import trenes.*

class Formacion {

	var property vagones = []
	var property locomotoras = []

	method agregarVagones(vagon) {
		vagones.add{ vagon}
	}

	method totalPasajeros(formacion) {
		return vagones.sum{ unaform => unaform.cantidadPasajeros() }
	}

	method agregarLocomotoras(locomotora) {
		locomotoras.add{ locomotora}
	}

	method vagonesLivianos() {
		return vagones.count{ vagon => vagon.peso() < 2500 }
	}

	method velMaxFormacion() {
		locomotoras.min{ locomotora => locomotora.velMax()}
	}

	method esEficiente() {
		locomotoras.any{ locom => locom.peso() > locom.peso() * 5}
	}

	method puedeMoverse() {
		return locomotoras.sumaLocomotoras() >= vagones.sumVagones()
	}

	method kilosDeempuje() {
		if (self.puedeMoverse()) return 0 else return (vagones.sumVagones() - locomotoras.sumaLocomotoras())
	}

	method sumVagones() {
		return vagones.sum{ vagon => vagon.peso() }
	}

	method sumaLocomotoras() {
		locomotoras.sum{ loco => loco.arrastreutil()}
	}
	method agregarLocomotoraSiNoPuedeMoverse(unaFormacion) {
		return locomotoras.find{ unaLocomotora => unaLocomotora.arrastreUtil() >= locomotoras.KilosDeempuje() }
	}
	
	method sumaVagonesyLocomotoras(){
		return vagones +locomotoras
	}

}

