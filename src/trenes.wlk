class Locomotora{

	var property anchoUtil=10
	var property largo=50
    var property pesoMax=1000
    var pesolocoMotora=100
    var property cantVagones=1
	var property velMax=[]
	var arrastreUtil=null
	
    method arrastre(){ 
        if(pesolocoMotora<=pesoMax)
    	arrastreUtil= pesolocoMotora - pesoMax
      
    else 
     error.throwWithMessage{"No puede arrastrar a la formación"}
}	

method velocidadLocomotora(velocidad){
velMax.add{velocidad}
}

}	

class Formaciones{
   var property vagones=[]
   var property locomotoras=[]
   method agregarVagones(vagon){ vagones.add{vagon}}
   method totalPasajeros(formacion){ vagones.sum{formacion.cantdepasajeros()}}
   method agregarLocomotoras(locomotora){locomotoras.add{locomotora}}
   method vagonesLivianos(){return vagones.count{ vagon => vagon.peso()>=2500}
   }
  method velMax(){}
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