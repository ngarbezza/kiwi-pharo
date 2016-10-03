running
testFailedStatusWhenMatchingStepButFailing
	
	| step stepResult |
	step := KiwiStepASTNode new kind: 'Given'; body: 'a failing step'.
	runner results addFeatureResult: nil; addScenarioResult: nil.
		
	stepResult := runner visitStep: step.
	
	stepResult isFailed should be: true.
	stepResult matchingDefinition should equal: (KiwiTestsSteps >> #failingStep)