steps parsing
testParseStepWithMultilineStringArgument

	(parser step parse:
	'Given the following multiline string argument
		"""
		text
		"""
	') argument value content should equal: 'text'.