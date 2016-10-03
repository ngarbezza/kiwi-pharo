printing scenarios
testVisitScenarioWithNameAndDescription

	formatter visitScenario:
		(KiwiScenarioASTNode new title: 'some cool name'; description: 'This is a description').
	
	formatter stream contents should equal:
'Scenario: some cool name
	This is a description'.