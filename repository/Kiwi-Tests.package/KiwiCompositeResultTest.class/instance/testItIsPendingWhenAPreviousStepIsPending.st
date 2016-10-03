status-pending
testItIsPendingWhenAPreviousStepIsPending

	result addStepResult setPendingWith: (self class >> #testItIsPendingWhenAPreviousStepIsPending).
	
	result isPending should be: true.