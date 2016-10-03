status-failed
testFailedStatusIsExclusive

	result setFailedWith: nil andError: Exception new.
	
	result isUndefined should be: false.
	result isPassed should be: false.
	result isSkipped should be: false.
	result isPending should be: false.