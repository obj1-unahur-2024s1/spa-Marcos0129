object olivia{
	var concentracion= 6
	method recibirMasajes(){
		concentracion= concentracion+3
	}
	method discutir(){
		concentracion=concentracion-1
	}
	method gradoDeConcentracion(){
		return concentracion
	}
	
	method darBanioDeVapor(){
	}
}

object bruno{
	var felicidad=true
	var sed=false
	var pesoEnGramos=55000
	
	method recibirMasajes(){
		felicidad = true
	}
	
	method darBanioDeVapor(){
		pesoEnGramos = pesoEnGramos  - 500
		sed = true
	}
	
	method tomarAgua(){
		sed = false
	}
	
	method comerFideos(){
		pesoEnGramos = pesoEnGramos  + 250
		sed = true	
	}
	
	method correr(){
		pesoEnGramos = pesoEnGramos - 300
	}
	
	method verNoticiero(){
		felicidad = false
	}
	
	method esFeliz() = felicidad
	
	method tieneSed() = sed
	
	method estaPerfecto() = self.esFeliz() and self.tieneSed() and pesoEnGramos.between(50000,70000)

	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}


object ramiro{
	var contractura=0
	var pielGrasosa=false
	
	method recibirMasajes(){
		contractura = 0.max(contractura-2)
	}
	
	method darBanioDeVapor(){
		pielGrasosa=false
	}
	
	method comerBigMac(){
		pielGrasosa=true
	}
	
	method bajarAFosa(){
		pielGrasosa=true
		contractura=contractura+1
	}
	
	method jugarPaddle(){
		contractura=contractura+3
	}
	
	method diaDeTrabajo(){
		self.bajarAFosa()
		self.comerBigMac()
		self.bajarAFosa()
	}
	
	method nivelDeContractura() = contractura
	method tienePielGrasosa() = pielGrasosa
	
}

object spa{
	method atender(persona){
		persona.recibirMasajes()
		persona.darBanioDeVapor()
	}
}