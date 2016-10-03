scenario outline parsing
testParseScenarioOutlineWithOneExamplesSection

	| scenarioOutlineAst |
	scenarioOutlineAst := parser scenarioOutline parse:
'Scenario Outline: title
	Examples:
		|this|is|a|table|
'.
	scenarioOutlineAst isPetitFailure should be: false.
	scenarioOutlineAst should be an instance of: KiwiScenarioOutlineASTNode.
	scenarioOutlineAst examplesSections size should be: 1