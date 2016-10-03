status-pending
testWhenThereArePendingAndFailedStepsTheResultShouldBePending

	result addStepResult setPassedWith: (self class >> #testItIsPendingWhenAPreviousStepIsPending).
	result addStepResult setFailedWith: (self class >> #testItIsPendingWhenAPreviousStepIsPending) andError: Exception new.
	result addStepResult setPendingWith: (self class >> #testItIsPendingWhenAPreviousStepIsPending).
	
	result isPending should be: true.
	result isFailed should be: false.