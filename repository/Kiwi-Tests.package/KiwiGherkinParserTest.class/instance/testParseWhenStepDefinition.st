steps parsing
testParseWhenStepDefinition

	|stepAst|
	stepAst := parser step parse: 'When this is a step definition'.

	stepAst isPetitFailure should be: false.
	stepAst kind should equal: 'When'.
	stepAst body should equal: 'this is a step definition'.