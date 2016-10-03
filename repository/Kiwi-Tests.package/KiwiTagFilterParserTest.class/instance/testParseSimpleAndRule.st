parsing simple rules
testParseSimpleAndRule

	| result |
	result := parser parse: '@tag1 & @tag2'.	
	result should beInstanceOf: KiwiCompositeTagRule.
	result operator should be: #&.
	result leftRule tagName should equal: 'tag1'.
	result rightRule tagName should equal: 'tag2'.