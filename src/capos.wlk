
object rolando {
	
	var property limiteArtefactos = 2
	
	var artefactos = #{}
	
	var property lugarAlmacenamiento = castilloDePiedra
	
	var encuentrosArtefactos = []

	method artefactos() = artefactos
	
	method encuentrosArtefactos() = encuentrosArtefactos
	
	method todosLosArtefactos() = artefactos + lugarAlmacenamiento.artefactos()
	
	method posee(artefacto) = artefactos.contains(artefacto)
	
	method agarrar(artefacto){
		if (artefactos.size() < limiteArtefactos){
			artefactos.add(artefacto)
		}
	}
	
	method encontrar(artefacto){
		encuentrosArtefactos.add(artefacto)
		self.agarrar(artefactos)
	}
	
	method irA(lugar){
		lugar.llega(self)
	}
}

object espadaDelDestino{
	
}

object libroDeHechizos{
	
}

object collarDivino{
	
}

object armaduraDeAceroValyrio{
	
}

object castilloDePiedra{
	
	var artefactos = #{}
	
	method artefactos() = artefactos
	
	method llega(persona){
		artefactos.addAll(persona.artefactos())
		persona.artefactos().clear()
	}
}