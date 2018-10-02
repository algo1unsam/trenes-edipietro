import formacionets.*
class Locomotora{

	var property pesoMax=1000
    var peso=100
    var property velMax=1000
	var property arrastreUtil
	var vagon=[]
	var locomotoras=[]	
	
    method arrastre(){ 
        if(peso<=pesoMax)
    	arrastreUtil= peso - pesoMax
      
    else 
     error.throwWithMessage{"No puede arrastrar a la formación"}
}	
method acumulArrastre(){
	return locomotoras.sum{locom=>locom.arrastreUtil()}
}
 method agregarVagon(form){
	vagon.add(form)
	
}
  	method puedeMoverse(){
  	
		return locomotoras.acumulArrastre() > self.sumPesos()
	}
  	
 method sumPesos(){ return locomotoras.sum{loco=>loco.peso()}}
}	


class Vagonpasajeros{
	  var  property anchoUtil=null
	  var  property largo=null
	  	var cantpasajeros=100

	method peso()= cantpasajeros*80
				
	method cantdepasajeros(){
		
		if (anchoUtil<=2.5){cantpasajeros=largo*8	}
		else {cantpasajeros=largo*10}
			}
}
class Vagoncarga{
	var cargamax
	method cargaMax(valor) {cargamax=valor}
	method peso()=cargamax+160
}
