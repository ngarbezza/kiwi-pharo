steps parsing
testParseAndStepDefinition

	|stepAst|
	stepAst := parser step parse: 'And this is a step definition'.

	stepAst isPetitFailure should be: false.
	stepAst kind should equal: 'And'.
	stepAst body should equal: 'this is a step definition'.