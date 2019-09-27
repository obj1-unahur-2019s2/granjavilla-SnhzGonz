class Maiz {
	var estadoActual = "corn_baby.png"
	var plantaAdulta = false
	method image(){
		return estadoActual
	}
	method regar(){
		estadoActual = "corn_adult.png"
		plantaAdulta = true
	}
	method listaParaCosecha(){
		return plantaAdulta
	}
	method valor() {return 150}
}

class Trigo {
	var estadoActual = "wheat_0.png"
	var evolucionActual = 0 
	method image(){
		return estadoActual
	}
	method regar(){
		if (evolucionActual == 0){
			estadoActual = "wheat_1.png"
		}
		else if (evolucionActual == 1) {
			estadoActual = "wheat_2.png"
		}
		else if (evolucionActual == 2) {
			estadoActual = "wheat_3.png"
		}
		evolucionActual += 1
	}
	method listaParaCosecha(){
		return evolucionActual >= 2
	}
	method valor(){
		return (evolucionActual - 1) * 100
	}
		
}

class Tomaco {
	var estadoActual = "tomaco_baby.png"
	
	method image(){
		return estadoActual
	}
	method regar(){
		estadoActual = "tomaco.png"
	}
	
	method listaParaCosecha(){
		return true
	}
	method valor() {return 80}
}

