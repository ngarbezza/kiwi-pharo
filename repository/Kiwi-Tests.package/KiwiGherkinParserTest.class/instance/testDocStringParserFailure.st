other parsers
testDocStringParserFailure

	|  withtextAtStart withNoCr |
	withtextAtStart := parser multilineArgument parse: 
'"""xxx
"""'.
	withNoCr := parser multilineArgument parse: '""""""'.

	withtextAtStart isPetitFailure should be: true.
	withNoCr isPetitFailure should be: true.