printing scenarios
testVisitScenarioWithName

	formatter visitScenario:	(KiwiScenarioASTNode new title: 'some cool name').
	
	formatter stream contents should equal: 'Scenario: some cool name'.