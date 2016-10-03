status-passed
testStepIsPassedIfItIsMarkedAsPassed

	result setPassedWith: (self class >> #testStepIsPassedIfItIsMarkedAsPassed).

	result isPassed should be: true.
