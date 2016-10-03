status-passed
testPassedStatusIsExclusive

	(result addStepResult) setPassedWith: nil.
	(result addStepResult) setPassedWith: nil.
	
	result isPending should be: false.
	result isFailed should be: false.
	result isUndefined should be: false.