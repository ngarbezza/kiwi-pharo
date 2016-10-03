steps parsing
testParseStepWithTable

	(parser step parse:
	'Given the following table argument
		| x1 | x2 |
		| y1 | y2 |
	') argument value should beInstanceOf: KiwiTableASTNode.