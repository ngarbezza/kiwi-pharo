steps parsing
testParseThenStepDefinition

	|stepAst|
	stepAst := parser step parse: 'Then this is a step definition'.

	stepAst isPetitFailure should be: false.
	stepAst kind should equal: 'Then'.
	stepAst body should equal: 'this is a step definition'.