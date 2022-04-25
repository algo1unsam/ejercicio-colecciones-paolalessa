
object rolando {
	
	var property limiteArtefactos = 2
	
	var artefactos = #{}
	
	var property lugarAlmacenamiento = castilloDePiedra
	
	var encuentrosArtefactos = []

	method artefactos() = artefactos
	
	method encuentrosArtefactos() = encuentrosArtefactos
	
	method posesiones() = artefactos + lugarAlmacenamiento.artefactos()
	
	method posee(artefacto) = self.posesiones().contains(artefacto)
	
	method agarrar(artefacto){
		if (artefactos.size() < limiteArtefactos){
			artefactos.add(artefacto)
		}
	}
	
	method encontrar(artefacto){
		encuentrosArtefactos.add(artefacto)
		self.agarrar(artefactos)
	}
	
	method volverACasa(){
		lugarAlmacenamiento.guardar(artefactos)
		artefactos.clear()
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
	
	method guardar(_artefactos){
		artefactos.addAll(_artefactos)
	}
}