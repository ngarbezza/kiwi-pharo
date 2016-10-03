scenario outline parsing
testParseCompleteScenarioOutline
	| scenarioOutlineAst |
	scenarioOutlineAst := parser scenarioOutline parse:
'# comment
@tag
Scenario Outline: title
	this is a description
	
	Given something
	And something else
	
	Examples:
		|this|is|a|table|
'.
	scenarioOutlineAst isPetitFailure should be: false.
	scenarioOutlineAst should be an instance of: KiwiScenarioOutlineASTNode.
	scenarioOutlineAst comment notNil should be: true.
	scenarioOutlineAst tagGroup notNil should be: true.
	scenarioOutlineAst title should equal: 'title'.
	scenarioOutlineAst description should equal: 'this is a description'.
	scenarioOutlineAst steps size should be: 2.
	scenarioOutlineAst examplesSections size should be: 1