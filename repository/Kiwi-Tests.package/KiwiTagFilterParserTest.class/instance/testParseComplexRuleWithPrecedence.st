parsing complex rules
testParseComplexRuleWithPrecedence

	| result result2 |
	result := parser parse: '~@tag1 | @tag2 & @tag3'.
	result2 := parser parse: '~@tag1 & @tag2 | @tag3'.
	
	result operator should be: #|.
	result leftRule should beInstanceOf: KiwiNotTagRule.
	result rightRule operator should be: #&.
	
	result2 operator should be: #|.
	result2 leftRule operator should be: #&.
	result2 rightRule should beInstanceOf: KiwiIncludeTagRule.