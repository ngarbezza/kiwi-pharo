parsing complex rules
testParseComplexRuleWithParentheses

	| result |
	result := parser parse: '~@tag1 | (@tag1 & @tag2)'.
	result operator should be: #|.
	result leftRule should beInstanceOf: KiwiNotTagRule.
	result rightRule operator should be: #&.