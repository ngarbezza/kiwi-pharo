running
testPendingStatusWhenStepDefinitionTaggedAsPending

	| step stepResult |
	step := KiwiStepASTNode new kind: 'Given'; body: 'a pending step'.
	runner results addFeatureResult: nil; addScenarioResult: nil.
	stepResult := runner visitStep: step.
	stepResult matchingDefinition should equal: (KiwiTestsSteps >> #pendingStep).
	stepResult isPending should be: true.