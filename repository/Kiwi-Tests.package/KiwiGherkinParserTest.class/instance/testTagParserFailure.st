tags parsing
testTagParserFailure
	
	(parser tag parse: '@ tag') isPetitFailure should be: true.
	(parser tag parse: ' @tag') isPetitFailure should be: true.