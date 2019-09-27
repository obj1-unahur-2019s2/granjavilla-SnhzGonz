import wollok.game.*
import cultivos.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	const property plantaParaVender = []
	
	method plantasParaVender(planta){
		plantaParaVender.add(planta)
	}
	method venderPlantas(){
		const oro = self.plantaParaVender.sum({s => s.valor()})
	}
}