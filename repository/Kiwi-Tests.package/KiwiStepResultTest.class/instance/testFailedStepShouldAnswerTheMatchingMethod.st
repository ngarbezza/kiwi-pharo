step information
testFailedStepShouldAnswerTheMatchingMethod

	| method |
	method := self class >> #testFailedStepShouldAnswerTheMatchingMethod.
	result setFailedWith: method andError: nil.
	
	result matchingDefinition should be: method.