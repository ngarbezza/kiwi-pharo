status-pending
testPendingStatusIsExclusive

	result addStepResult setPendingWith: (self class >> #testItIsPendingWhenAPreviousStepIsPending).
	
	result isPassed should be: false.
	result isFailed should be: false.
	result isUndefined should be: false.