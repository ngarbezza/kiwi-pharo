other parsers
testUntilEndOfLineParser

	|result|
	result := parser untilEndOfLine parse: 'qwe123 	%fd4

	'.
	
	result should equal: 'qwe123 	%fd4'.