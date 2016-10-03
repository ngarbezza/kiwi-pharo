parsing simple rules
testParseExcludeTagRuleWithParentheses

	| result |
	result := parser parse: '~(@tag1 | (@tag2 & ~@tag3))'.
	result should be an instance of: KiwiNotTagRule.
	result innerRule should be an instance of: KiwiCompositeTagRule.