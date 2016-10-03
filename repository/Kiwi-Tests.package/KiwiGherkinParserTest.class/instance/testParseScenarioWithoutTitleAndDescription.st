scenarios parsing
testParseScenarioWithoutTitleAndDescription

	| scenarioAst |
	scenarioAst := parser scenario parse:
'Scenario:
	Given xxx
	When yyy
	Then zzz'.
	
	scenarioAst isPetitFailure should be: false.
	scenarioAst title should equal: ''.
	scenarioAst description should equal: ''.
	scenarioAst steps size should be: 3