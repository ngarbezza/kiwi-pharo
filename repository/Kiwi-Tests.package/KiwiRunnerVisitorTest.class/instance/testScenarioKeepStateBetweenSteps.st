running
testScenarioKeepStateBetweenSteps

	| scenario scenarioResult |
	scenario := KiwiScenarioASTNode new steps: {
		KiwiStepASTNode new kind: 'When'; body: 'I save some state'.
		KiwiStepASTNode new kind: 'Then'; body: 'The state should remain'.
	}.
	runner results addFeatureResult: nil.

	scenarioResult := runner visitScenario: scenario.
	
	scenarioResult isPassed should be: true.