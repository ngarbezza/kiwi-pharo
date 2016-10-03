keywords internationalization
testGetKeywordSymbol

	self assert: #given equals: (KiwiInternationalization getKeywordIdentifier: 'Given').
	self assert: #given equals: (KiwiInternationalization getKeywordIdentifier: 'Dado').
	self assert: #and equals: (KiwiInternationalization getKeywordIdentifier: 'And').