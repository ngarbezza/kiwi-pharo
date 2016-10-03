scenarios parsing
testParseCompleteScenarioWithSteps

	| scenarioAst |
	scenarioAst := parser scenario parse:
'# first comment line
         # second comment line
@tag1 @tag2
@tag3 @tag4
Scenario: title
	this is a description

	Given xxx
	When yyy
	Then zzz'.
	
	scenarioAst isPetitFailure should be: false.
	scenarioAst comment notNil should be: true.
	scenarioAst tagGroup notNil should be: true.
	scenarioAst title should equal: 'title'.
	scenarioAst description should equal: 'this is a description'.
	scenarioAst steps size should be: 3