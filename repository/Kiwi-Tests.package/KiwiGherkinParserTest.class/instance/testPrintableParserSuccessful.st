other parsers
testPrintableParserSuccessful

	(parser printable parse: '2476') should equal: $2.
	(parser printable parse: '% 423sdff5') should equal: $%.
	(parser printable parse: 'aA%&f5') should equal: $a.