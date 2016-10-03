status-skipped
testStepIsSkippedIfItIsMarkedAsSkipped

	result setSkippedWith: (self class >> #testStepIsSkippedIfItIsMarkedAsSkipped).
	
	result isSkipped should be: true.