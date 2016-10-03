scenarios parsing
testParseSimpleScenarioWithComments

	|scenarioAst|
	scenarioAst := parser scenario parse: 
'#comment

#comment2
Scenario: the title'.

	scenarioAst isPetitFailure should be: false.
	scenarioAst comment lines notEmpty should be: true.