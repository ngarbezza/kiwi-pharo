status-pending
testPendingStatusIsExclusive

	result setPendingWith: (self class >> #testPendingStatusIsExclusive).

	result isFailed should be: false.
	result isPassed should be: false.
	result isSkipped should be: false.
	result isUndefined should be: false.