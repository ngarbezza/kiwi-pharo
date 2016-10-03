scenario outline parsing
testParseScenarioOutlineWithManyExamplesSection

	| scenarioOutlineAst |
	scenarioOutlineAst := parser scenarioOutline parse:
'Scenario Outline: title
	Examples:
		|this|is|a|table|
	Examples:
		|this|is|a|table|
	Scenarios:
		|this|is|a|table|
	Examples:
		|this|is|a|table|
'.
	scenarioOutlineAst isPetitFailure should be: false.
	scenarioOutlineAst should beInstanceOf: KiwiScenarioOutlineASTNode.
	scenarioOutlineAst examplesSections size should be: 4