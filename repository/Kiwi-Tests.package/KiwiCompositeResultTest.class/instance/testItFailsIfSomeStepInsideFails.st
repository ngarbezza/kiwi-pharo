status-failed
testItFailsIfSomeStepInsideFails

	(result addStepResult) setPassedWith: nil.
	(result addStepResult) setFailedWith: nil andError: Exception new.
	
	result isFailed should be: true.