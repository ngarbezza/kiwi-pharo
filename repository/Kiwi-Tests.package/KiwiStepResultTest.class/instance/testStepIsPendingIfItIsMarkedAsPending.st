status-pending
testStepIsPendingIfItIsMarkedAsPending

	result setPendingWith: (self class >> #testStepIsPendingIfItIsMarkedAsPending).

	result isPending should be: true.