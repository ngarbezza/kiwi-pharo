other parsers
testPrintableParserFailure

	(parser printable parse: String cr) isPetitFailure should be: true.
	(parser printable parse: String tab) isPetitFailure should be: true.