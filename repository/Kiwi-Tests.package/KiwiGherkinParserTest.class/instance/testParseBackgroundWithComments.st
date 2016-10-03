background parsing
testParseBackgroundWithComments

	|backgroundAst|
	backgroundAst := parser background parse: '# comment1
	#comment2
	Background:'.
	
	backgroundAst isPetitFailure should be: false.
	backgroundAst comment should beInstanceOf: KiwiCommentASTNode.