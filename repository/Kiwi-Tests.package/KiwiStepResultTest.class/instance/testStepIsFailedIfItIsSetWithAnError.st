status-failed
testStepIsFailedIfItIsSetWithAnError

	result setFailedWith: nil andError: Exception new.
	
	result isFailed should be: true.
