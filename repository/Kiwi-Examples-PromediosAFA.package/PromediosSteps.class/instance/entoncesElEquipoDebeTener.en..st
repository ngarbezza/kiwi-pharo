steps - then
entoncesElEquipoDebeTener: puntos en: partidosJugados

	<then: 'el equipo debe tener (\d+) puntos en (\d+) PJ'>
	
	equipo totalPuntos should equal: puntos asNumber.
	equipo totalPartidosJugados should equal: partidosJugados asNumber.