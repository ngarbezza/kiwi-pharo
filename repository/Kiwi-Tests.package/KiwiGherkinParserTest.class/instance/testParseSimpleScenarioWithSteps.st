scenarios parsing
testParseSimpleScenarioWithSteps

	|scenarioAst|
	scenarioAst := parser scenario parse: 
'Scenario: title

	Given xxx
	When yyy
	Then zzz'.
	
	scenarioAst isPetitFailure should be: false.
	scenarioAst steps size should be: 3.