parsing simple rules
testParseSimpleExcludeTagRule

	| result |
	result := parser parse: '~@tag1'.
	result should beInstanceOf: KiwiNotTagRule.
	result innerRule tagName should equal: 'tag1'