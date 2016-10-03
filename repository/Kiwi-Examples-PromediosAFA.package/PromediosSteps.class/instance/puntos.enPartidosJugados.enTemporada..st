steps - given
puntos: pts enPartidosJugados: pj enTemporada: t

	<given: '(\d+) puntos en (\d+) PJ en la temporada "([^"]*)"'>
	
	equipo agregarTemporada: t con: pts asNumber en: pj asNumber