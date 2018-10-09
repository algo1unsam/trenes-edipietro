import formacion.*

class Locomotora {

	var property pesoMax 
	var peso
	var property velMax
	var property pesoArrastre
	var vagon = []
	var locomotoras = []

	method pesoLocomotora(valor) {
		peso = valor
	}

	method velocidadMax(valor) {
		velMax = valor
	}
	
	method pesoMaxdeArrastre(valor){
		
		pesoArrastre=valor

}
	method arrastreUtil() {
		return (peso -pesoArrastre)
	}

	method acumulArrastre() {
		return locomotoras.sum{ locom => locom.arrastreUtil() }
	}

	method agregarVagon(form) {
		vagon.add(form)
	}

	

	method sumPesos() {
		return locomotoras.sum{ loco => loco.peso() }
	}

}

class Vagonpasajeros {

	var property anchoUtil = null
	var property largo = null
	var numPasajeros = 100

	method peso() = numPasajeros * 80

	method cantidadPasajeros() {
		if (anchoUtil <= 2.5) return (8 * largo) else return (10 * largo)
	}

}

class Vagoncarga {

	var cargamax = null
	var pesoGuardas = 10

	method cargaMax(valor) {
		cargamax = valor
	}

	method peso() = cargamax + 160 + pesoGuardas

}

