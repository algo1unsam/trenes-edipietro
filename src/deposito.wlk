import trenes.*
import formacion.* 

class Deposito{
	
	var formaciones=[]
	var formacion= new Formacion()
	
	
	
	method agregarFormacion(unaformacion)
	{
		formaciones.add{unaformacion}
	}
	
	method agregarLocomotoraSinoPuedeMoverse(unalocomotora)
	{
	if (!formacion.puedeMoverse()&& (unalocomotora.arrastreUtil()>formacion.kilosDeempuje()))
	{
		formacion.add(unalocomotora)
	}	
		}
		
		
	method agregarConductorExperimentado()
	{
		return formaciones.any{ forma=> forma.esCompleja()}
	}	
	
	method esCompleja(){
		return (formacion.sumaVagonesyLocomotoras().size()>20) or self.sumvagones() && self.sumaLocomotoras()>1000
	}
}