background parsing
testParseEmptyBackground

	|backgroundAst|
	backgroundAst := parser background parse: 'Background:'.
	
	backgroundAst isPetitFailure should be: false.
	backgroundAst title should equal: ''.
	backgroundAst description should equal: ''.