status-failed
testFailedStatusIsExclusive

	(result addStepResult)
		setFailedWith: (self class >> #testFailedStatusIsExclusive)
		andError: Exception new.
	
	result isPassed should be: false.
	result isPending should be: false.
	result isUndefined should be: false.