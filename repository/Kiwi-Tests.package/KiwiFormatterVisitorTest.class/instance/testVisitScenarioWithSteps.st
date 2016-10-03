printing scenarios
testVisitScenarioWithSteps

	|scenarioAst whenStep thenStep |
	whenStep := KiwiStepASTNode new kind: 'When'; body: 'something'.
	thenStep := KiwiStepASTNode new kind: 'Then'; body: 'something else'.
	scenarioAst:= KiwiScenarioASTNode new title: 'some cool name'; description: 'This is a description'; steps: { whenStep. thenStep }.
	
	scenarioAst accept: formatter.
		
	formatter stream contents should equal: 
'Scenario: some cool name
	This is a description
	
	When something
	Then something else'.