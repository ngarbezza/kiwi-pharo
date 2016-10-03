running
testUndefinedStatusWhenNoMatchingStep

	| step stepResult |
	step := KiwiStepASTNode new kind: 'Given'; body: 'no matching step'.
	runner results addFeatureResult: nil; addScenarioResult: nil.
	stepResult := runner visitStep: step.
	
	stepResult isUndefined should be: true.