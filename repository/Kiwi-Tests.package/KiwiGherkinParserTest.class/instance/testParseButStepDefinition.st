steps parsing
testParseButStepDefinition

	|stepAst|
	stepAst := parser step parse: 'But this is a step definition'.

	stepAst isPetitFailure should be: false.
	stepAst kind should equal: 'But'.
	stepAst body should equal: 'this is a step definition'.