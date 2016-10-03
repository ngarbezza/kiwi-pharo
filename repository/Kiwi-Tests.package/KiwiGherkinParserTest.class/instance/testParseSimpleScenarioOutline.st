scenarios parsing
testParseSimpleScenarioOutline

	| scenarioAst |
	scenarioAst := parser scenarioOutline parse:
'Scenario Outline: title
	description'.

	scenarioAst isPetitFailure should be: false.
	scenarioAst should beInstanceOf: KiwiScenarioOutlineASTNode.
	scenarioAst title should equal: 'title'.
	scenarioAst description should equal: 'description'