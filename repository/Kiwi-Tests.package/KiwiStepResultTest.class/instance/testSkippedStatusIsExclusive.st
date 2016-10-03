status-skipped
testSkippedStatusIsExclusive

	result setSkippedWith: (self class >> #testSkippedStatusIsExclusive).
	
	result isFailed should be: false.
	result isPassed should be: false.
	result isUndefined should be: false.
	result isPending should be: false.