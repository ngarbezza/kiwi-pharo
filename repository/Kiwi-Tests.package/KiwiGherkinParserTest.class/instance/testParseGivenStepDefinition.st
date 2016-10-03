steps parsing
testParseGivenStepDefinition

	|stepAst|
	stepAst := parser step parse: 'Given this is a step definition'.

	stepAst isPetitFailure should be: false.
	stepAst kind should equal: 'Given'.
	stepAst body should equal: 'this is a step definition'.