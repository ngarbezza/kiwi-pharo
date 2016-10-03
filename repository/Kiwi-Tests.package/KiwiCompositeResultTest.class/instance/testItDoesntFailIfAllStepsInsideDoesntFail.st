status-failed
testItDoesntFailIfAllStepsInsideDoesntFail

	(result addStepResult) setPassedWith: nil.
	(result addStepResult) setPendingWith: nil.
	(result addStepResult) setUndefined.
	
	result isFailed should be: false.