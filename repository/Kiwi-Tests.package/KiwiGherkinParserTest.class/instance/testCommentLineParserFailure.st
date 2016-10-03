comments parsing
testCommentLineParserFailure

	(parser commentLine parse: 'xxx') isPetitFailure should be: true.
	(parser commentLine parse: 'xxx#comment') isPetitFailure should be: true.
	(parser commentLine parse: '	xxx # comment') isPetitFailure should be: true.