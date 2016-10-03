keywords internationalization
testSpanishKeywords

	#('Dado' 'Cuando' 'Entonces' 'Y' 'Pero' 'Antecedentes' 'Escenario' 'Característica' 'Esquema del escenario' 'Ejemplos' 'Escenarios')
	do: [ :kw | self assert: (KiwiInternationalization isKeyword: kw fromLanguage: #es) ]