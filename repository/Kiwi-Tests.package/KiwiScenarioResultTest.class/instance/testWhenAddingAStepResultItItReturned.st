adding steps
testWhenAddingAStepResultItItReturned

	| returnValue |
	returnValue := result addStepResult.
	
	(returnValue respondsTo: #isFailed) should be: true.