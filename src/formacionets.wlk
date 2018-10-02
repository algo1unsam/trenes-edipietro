import trenes.*

class Formaciones{
   var property vagones=[]
   var property locomotoras=[]
   method agregarVagones(vagon){ vagones.add{vagon}}
   method totalPasajeros(formacion){ vagones.sum{formacion.cantdepasajeros()}}
   method agregarLocomotoras(locomotora){locomotoras.add{locomotora}}
   method vagonesLivianos(){return vagones.count{ vagon => vagon.peso()>=2500}
   }
  method velMax(){
  	locomotoras.sum{locomotora =>locomotora.velocidad()}
  }
  method esEficiente(){
  	locomotoras.any{locom=>locom.peso()>locom.peso()*5}}
  	
 method kilosDeempuje(){
 	if (locomotoras.puedeMoverse())
 	return 0
 	
 	else
 	
 	return locomotoras.sumPesos()- locomotoras.arrastreUtil()
 }

	}
