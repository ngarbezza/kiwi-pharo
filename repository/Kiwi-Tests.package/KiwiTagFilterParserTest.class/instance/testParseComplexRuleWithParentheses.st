parsing complex rules
testParseComplexRuleWithParentheses

	| result |
	result := parser parse: '~@tag1 | (@tag1 & @tag2)'.
	result operator should be: #|.
	result leftRule should be an instance of: KiwiNotTagRule.
	result rightRule operator should be: #&.