steps parsing
testParseStepDefinitionsNonEnglish

	|spanishParser |
	spanishParser := KiwiGherkinParser spanish.

	(spanishParser step parse: 'Dado xxxx') kind should equal: 'Dado'.
	(spanishParser step parse: 'Cuando xxxx') kind should equal: 'Cuando'.
	(spanishParser step parse: 'Entonces xxxx') kind should equal: 'Entonces'.
	(spanishParser step parse: 'Y xxxx') kind should equal: 'Y'.
	(spanishParser step parse: 'Pero xxxx') kind should equal: 'Pero'.