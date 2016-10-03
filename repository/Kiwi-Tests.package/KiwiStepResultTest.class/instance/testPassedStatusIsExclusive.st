status-passed
testPassedStatusIsExclusive

	result setPassedWith: (self class >> #testPassedStatusIsExclusive).

	result isUndefined should be: false.
	result isFailed should be: false.
	result isSkipped should be: false.
	result isPending should be: false.
