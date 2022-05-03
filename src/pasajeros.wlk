object neo {
	var energia = 100
	
	method esElElegido() = true
	
	method saltar() {
		energia *= 0.5
	}
	
	method vitalidad() {
		energia *= 0.1 		
	}
}

object morfeo {
	var property vitalidad = 8
	var estaCansado = false
	
	method estaCansado() = estaCansado
	
	method esElElegido() = false
	
	method saltar() {
		estaCansado = !estaCansado
		vitalidad = 0.max(vitalidad-1)
	}
}

object trinity {
	
	method esElElegido() = false
	
	method saltar() {}
	
	method vitalidad() = 0
	
}