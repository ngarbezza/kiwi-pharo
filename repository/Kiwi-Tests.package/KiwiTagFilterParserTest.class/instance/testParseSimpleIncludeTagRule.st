parsing simple rules
testParseSimpleIncludeTagRule

	| result |
	result := parser parse: '@tag1'.
	result should be an instance of: KiwiIncludeTagRule.
	result tagName should equal: 'tag1'