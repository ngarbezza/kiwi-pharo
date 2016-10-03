other parsers
testParseDocString

| empty simple |
	empty := parser multilineArgument parse: 
'
"""
"""'.
	simple := parser multilineArgument parse: 
'
"""
	simple
	string
"""'.
	
	(empty isPetitFailure | simple isPetitFailure) should be: false.
	
	empty content should equal: ''.
	simple content should equal:
'	simple
	string'.