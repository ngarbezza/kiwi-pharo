comments parsing
testCommentLineParserSuccessful

	(parser commentLine parse: '#starting line comment') isPetitFailure should be: false.
	(parser commentLine parse: '	#comment with tabs') isPetitFailure should be: false.
	(parser commentLine parse: '######## comment') isPetitFailure should be: false.