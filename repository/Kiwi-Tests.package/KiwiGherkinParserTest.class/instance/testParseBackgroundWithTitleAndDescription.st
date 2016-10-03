background parsing
testParseBackgroundWithTitleAndDescription

	|backgroundAst|
	backgroundAst := parser background parse: 
'Background: something
	dfshdf sjfosifd'.
	
	backgroundAst isPetitFailure should be: false.
	backgroundAst title should equal: 'something'.
	backgroundAst description should equal: 'dfshdf sjfosifd'.