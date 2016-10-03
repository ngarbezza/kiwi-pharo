step information
testPassedStepShouldAnswerTheMatchingMethod

	| method |
	method := self class >> #testFailedStepShouldAnswerTheMatchingMethod.
	result setPassedWith: method.
	
	result matchingDefinition should be: method.