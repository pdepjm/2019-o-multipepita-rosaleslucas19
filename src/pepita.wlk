object pepita {
	var energia = 100

	method energia() = energia
	
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method kmsEntre() {
		if (energia.between(300, 400))
		return 10
		
		return 0
	}
	method kmsMultiplo() {
		if (energia % 20 == 0)
		return 15
		
		return 0 
	}
	method kmsBase() {
		return energia / 5 
	}
	method cuantoQuiereVolar() = self.kmsBase() + self.kmsEntre() + self.kmsMultiplo()
	
	method salirAComer() {
		self.vola(self.distanciaHastaDeposito())
		self.come(alpiste)
		self.vola(self.distanciaHastaDeposito())
	}
	
	method distanciaHastaDeposito () = 5
	
	method haceLoQueQuieras() {
		
		if (self.estaCansada())
		self.come(alpiste)
		
		if(self.estaFeliz())
		self.vola(8)
		
	}
	
	method visitar(lugar) {
		energia += lugar.energiaQueOtorga(self)
		
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
	
	
}

object mijo {
	var mojado = false
	
	method mojarse() {
		mojado = true
	}
	
	method secarse() {
		mojado = false
		
	}
	
	method energiaQueOtorga () {
		if (mojado)
		return 15
		else 
		return 20
	}
	
}

object canelon {
	var salsa = true
	var queso = true
	
	method ponerSalsa () {
		salsa = true
	}
	
	method ponerQueso() {
		queso = true
	}
	
	method sacarSalsa () {
		salsa = false
	}
	
	method sacarQueso() {
		queso = false
	}
	
	method energiaQueOtorga() = self.canelonBase() + self.salsa() + self.queso()
	
	method canelonBase() = 20
	
	method salsa() {
		if (salsa)
		return 5
		else 
		return 0
	}
	method queso() {
		if (queso)
		return 7
		else
		return 0 
	}
	
	
}

object roque { 
	var pupilo = pepita
	
	method entrenar () {
	pupilo.vola(10)
	pupilo.come(alpiste)
	pupilo.vola(5)
	pupilo.haceLoQueQuieras()	
	}
	
	method tuPupiloEs(nuevoPupilo) {
		pupilo = nuevoPupilo 
		
	}
	
	method pupiloActual() = pupilo
}

object pepon {
	var energia = 100
	method come(comida) {
		energia = energia + comida.energiaQueOtorga()/2
	}
	
	method vola(kms) {
		energia = energia - (1+0.5 * kms)
		
	}
	
	method haceLoQueQuieras() {
		self.vola(1)

	}
}

object pipa {
	var kmsRecorridos = 0
	var cantComidas  = 0
	
	method kmsRecorridos() = kmsRecorridos
	
	method cantComidas () = cantComidas 
	
	method come(comida) {
		cantComidas += 1
	}
	
	method vola(kms) {
		kmsRecorridos += kms
	}
	
	method haceLoQueQuieras() {
	}
	
}

object patagonaia {
	method energiaQueOtorga() = 30	
}

object sierrasCordobesas {
	method energiaQueOtorga() = 70
}

object marDelPlata {
	var temporadaAlta = true
	method energiaQueOtorga() {
		if (temporadaAlta)
		return (-20)
		else
		return 80
		
	}
}

object noroeste {
	method energiaQueOtorga() {
		return pepita.energia() * 0.1 
		
	}
}

object susana {
	var pupilo = pepita
	
	method entrenar() {
		pupilo.come(alpiste)
		pupilo.vola(20)
		
	}
	
	method pupiloActual() = pupilo
	
	method tuPupiloEs(nuevoPupilo) {
		pupilo = nuevoPupilo 
		
	}
}

