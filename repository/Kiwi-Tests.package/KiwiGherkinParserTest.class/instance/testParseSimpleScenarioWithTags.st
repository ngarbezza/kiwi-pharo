scenarios parsing
testParseSimpleScenarioWithTags

	|scenarioAst|
	scenarioAst := parser scenario parse: 
'@tag1 @tag2
@tag3 		@tag4
Scenario: the title'.
	
	scenarioAst isPetitFailure should be: false.
	scenarioAst tagGroup tags size should be: 4.