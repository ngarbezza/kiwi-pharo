running
testPassedStatusWhenMatchingStepWithoutErrors

	| step stepResult |
	step := KiwiStepASTNode new kind: 'Given'; body: 'a passing step'.
	runner results addFeatureResult: nil; addScenarioResult: nil.
	stepResult := runner visitStep: step.

	stepResult matchingDefinition should equal: (KiwiTestsSteps >> #passingStep).
	stepResult isPassed should be: true.