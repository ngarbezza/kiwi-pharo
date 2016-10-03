status-undefined
testWhenThereArePendingAndUndefinedStepsTheResultShouldBeUndefined

	result addStepResult
		setPendingWith: (self class >> #testWhenThereAreFailingAndUndefinedStepsTheResultShouldBeUndefined).
	result addStepResult setUndefined.
	
	result isUndefined should be: true.
	result isPending should be: false.