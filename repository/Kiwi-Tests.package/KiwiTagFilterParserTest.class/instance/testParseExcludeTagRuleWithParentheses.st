parsing simple rules
testParseExcludeTagRuleWithParentheses

	| result |
	result := parser parse: '~(@tag1 | (@tag2 & ~@tag3))'.
	result should beInstanceOf: KiwiNotTagRule.
	result innerRule should beInstanceOf: KiwiCompositeTagRule.