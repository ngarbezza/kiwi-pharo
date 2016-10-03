printing features
testVisitFeatureWithScenarios

	| expectedResult scenario1 scenario2 scenario3 feature |
	expectedResult := 
'Feature: name
	This is a description
	
	Scenario: 1
	
	Scenario: 2
	
	Scenario: 3'.
	
	scenario1 := KiwiScenarioASTNode new title: '1'; steps: #().
	scenario2 := KiwiScenarioASTNode new title: '2'; steps: #().
	scenario3 := KiwiScenarioASTNode new title: '3'; steps: #().
	feature := KiwiFeatureASTNode new
		title: 'name';
		description: 'This is a description';
		scenarios: { scenario1 . scenario2 . scenario3 }.
	
	feature accept: formatter.
	formatter stream contents should equal: expectedResult.