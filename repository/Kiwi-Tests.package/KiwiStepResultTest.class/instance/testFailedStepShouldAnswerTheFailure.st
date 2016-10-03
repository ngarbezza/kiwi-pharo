step information
testFailedStepShouldAnswerTheFailure

	| exception |
	exception := Exception new.
	result setFailedWith: nil andError: exception.
	
	result failure should be: exception.