features
calculoDePromediosBasico
	^ '# language: es

Característica: Cálculo de promedios del fútbol argentino

	Escenario: Promedio de equipo con una temporada
		Dado el equipo "San Martín (SJ)"
		Y 38 puntos en 31 PJ en la temporada "2011-2012"
		Cuando se calcula el promedio
		Entonces el promedio debe ser 1.225
		
	Escenario: Promedio de equipo con más de una temporada
		Dado el equipo "San Lorenzo"
		Y 52 puntos en 38 PJ en la temporada "2009-2010"
		Y 47 puntos en 38 PJ en la temporada "2010-2011"
		Y 32 puntos en 30 PJ en la temporada "2011-2012"
		Cuando se calcula el promedio
		Entonces el promedio debe ser 1.235
				
	Escenario: Cambio de promedio según partido ganado
		Dado el equipo "San Martín (SJ)"
		Y 38 puntos en 31 PJ en la temporada "2011-2012"
		Cuando el equipo gana un partido
		Y se calcula el promedio
		Entonces el equipo debe tener 41 puntos en 32 PJ
		Y el promedio debe ser 1.281
		
	Escenario: Cambio de promedio según partido empatado
		Dado el equipo "San Martín (SJ)"
		Y 38 puntos en 31 PJ en la temporada "2011-2012"
		Cuando el equipo empata un partido
		Y se calcula el promedio
		Entonces el equipo debe tener 39 puntos en 32 PJ
		Y el promedio debe ser 1.218
		
	Escenario: Cambio de promedio según partido perdido
		Dado el equipo "San Martín (SJ)"
		Y 38 puntos en 31 PJ en la temporada "2011-2012"
		Cuando el equipo pierde un partido
		Y se calcula el promedio
		Entonces el equipo debe tener 38 puntos en 32 PJ
		Y el promedio debe ser 1.187'