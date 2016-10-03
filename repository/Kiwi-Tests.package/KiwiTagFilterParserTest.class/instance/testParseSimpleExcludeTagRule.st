parsing simple rules
testParseSimpleExcludeTagRule

	| result |
	result := parser parse: '~@tag1'.
	result should be an instance of: KiwiNotTagRule.
	result innerRule tagName should equal: 'tag1'