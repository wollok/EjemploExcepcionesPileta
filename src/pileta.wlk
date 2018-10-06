class Persona {
	
	var property contento = false
	var cantZambullidas = 0
	
	method vacaciones() {
		pileta.llenarDeAgua()
		self.zambullirse(pileta)
	}
	
	method zambullirse(lugar){
		contento = true
		lugar.salpicar()
		cantZambullidas +=1
	}
	
}

object pileta {
	var property seCortoElAgua = false
	var property agua = 0
    const capacidadMaxima = 1000
    
	method llenarDeAgua(){
		if (seCortoElAgua )
		   throw new Exception("sin agua")
		agua = capacidadMaxima
	}
	method salpicar() {
		agua = agua - 1
	}
	
}