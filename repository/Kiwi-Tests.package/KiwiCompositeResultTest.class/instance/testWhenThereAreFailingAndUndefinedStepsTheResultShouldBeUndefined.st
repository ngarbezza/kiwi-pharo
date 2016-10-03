status-undefined
testWhenThereAreFailingAndUndefinedStepsTheResultShouldBeUndefined

	result addStepResult
		setFailedWith: (self class >> #testWhenThereAreFailingAndUndefinedStepsTheResultShouldBeUndefined)
		andError: Exception new.
	result addStepResult setUndefined.
	
	result isUndefined should be: true.
	result isFailed should be: false.