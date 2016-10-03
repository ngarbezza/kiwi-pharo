background parsing
testParseBackgroundWithSteps

	|backgroundAst|
	backgroundAst := parser background parse: 
'Background: title
	Given something
	And something else'.
	
	backgroundAst isPetitFailure should be: false.
	backgroundAst steps size should be: 2.