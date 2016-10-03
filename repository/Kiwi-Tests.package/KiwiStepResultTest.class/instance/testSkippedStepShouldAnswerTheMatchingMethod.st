step information
testSkippedStepShouldAnswerTheMatchingMethod

	| method |
	method := self class >> #testFailedStepShouldAnswerTheMatchingMethod.
	result setSkippedWith: method.
	
	result matchingDefinition should be: method.