other parsers
testReservedWordsAndSymbolsParser

	#('Given' 'When' 'Then' 'And' 'But' 'Scenario:' 'Scenario Outline:') do: [ :word |
		(parser reservedWordsAndSymbols parse: word) isPetitFailure should be: false.
	]