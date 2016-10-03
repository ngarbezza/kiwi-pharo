step information
testPendingStepShouldAnswerTheMatchingMethod

	| method |
	method := self class >> #testFailedStepShouldAnswerTheMatchingMethod.
	result setPendingWith: method.
	
	result matchingDefinition should be: method.