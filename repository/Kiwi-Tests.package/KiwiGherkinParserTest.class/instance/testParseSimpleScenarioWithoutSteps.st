scenarios parsing
testParseSimpleScenarioWithoutSteps

	|scenarioAst|
	scenarioAst := parser scenario parse: 
'Scenario: the title
	This is a description'.
	
	scenarioAst isPetitFailure should be: false.
	scenarioAst title should equal: 'the title'.
	scenarioAst description should equal: 'This is a description'.