parsing simple rules
testParseSimpleIncludeTagRule

	| result |
	result := parser parse: '@tag1'.
	result should beInstanceOf: KiwiIncludeTagRule.
	result tagName should equal: 'tag1'