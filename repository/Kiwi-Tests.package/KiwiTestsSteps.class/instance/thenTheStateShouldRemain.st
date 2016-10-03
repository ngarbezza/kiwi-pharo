keep state steps
thenTheStateShouldRemain

	<then: 'The state should remain'>
	
	"This step should not fail if the 'when I save some state' step is executed previously.
	See KiwiRunnerVisitorTest >>testScenarioKeepStateBetweenSteps"
	
	state + 1