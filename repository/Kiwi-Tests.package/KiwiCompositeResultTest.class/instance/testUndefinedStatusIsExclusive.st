status-undefined
testUndefinedStatusIsExclusive

	result addStepResult setUndefined.
	
	result isPassed should be: false.
	result isFailed should be: false.
	result isPending should be: false.