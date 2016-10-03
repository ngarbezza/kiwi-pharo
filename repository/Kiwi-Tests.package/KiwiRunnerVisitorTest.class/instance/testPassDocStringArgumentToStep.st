running
testPassDocStringArgumentToStep
	"This test uses the KiwiTestSteps>>givenAStepWithADocStringArgument method to create the right scenario to test"
	
	| step stepResult |
	step := KiwiStepASTNode new kind: 'Given'; body: 'a step with a doc string argument'; argument: (KiwiDocStringASTNode new content: 'The argument').
	runner results addFeatureResult: nil; addScenarioResult: nil.
	stepResult := runner visitStep: step.
	
	stepResult isPassed should be: true.
	stepResult matchingDefinition should equal: (KiwiTestsSteps >> #givenAStepWithADocStringArgument:).