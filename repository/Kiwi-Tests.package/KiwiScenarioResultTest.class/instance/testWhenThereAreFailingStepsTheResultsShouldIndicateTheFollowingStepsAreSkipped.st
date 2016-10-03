skipping steps
testWhenThereAreFailingStepsTheResultsShouldIndicateTheFollowingStepsAreSkipped

	(result addStepResult) setFailedWith: nil andError: Exception new.
	
	result skipStepsInScenario should be: true.