status-undefined
testUndefinedStatusIsExclusive

	result setUndefined.
	
	result isFailed should be: false.
	result isPassed should be: false.
	result isSkipped should be: false.
	result isPending should be: false.