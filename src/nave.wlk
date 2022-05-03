import pasajeros.*

object nave {
	var pasajeros = [neo,morfeo, trinity]
	
	method cantPasajeros() = pasajeros.size()
	
	method elegidoEstaEnNave() = pasajeros.any( { p => p.esElElegido() } )
	
	method acelerarNave() {
		pasajeros.filter( { p => not p.esElElegido() } )
		.forEach( { p => p.saltar() } )
	}
	
	method noElegidos() = pasajeros.filter( { p => not p.esElElegido() } )
	method acelerarOptimo() {
		self.noElegidos().forEach( { p => p.saltar() } )
	}
	
	method pasajeroConMasVitalidad() = pasajeros.max( { p => p.vitalidad() } ) 
	method pasajeroConMenorVitalidad() = pasajeros.min( { p => p.vitalidad() } ) 
	
	
	method estaEquilibrada() {
		return self.mayorVitalidad().vitalidad() < self.menorVitalidad().vitalidad() * 2
	}	
	
	method chocar() {
		pasajeros.forEach( { p => p.saltar() } )
		pasajeros.clear()
	}
	
}
