status-passed
testItDoesntPassIfSomeStepInsideDoesntPass

	(result addStepResult) setPassedWith: nil.
	(result addStepResult) setPendingWith: nil.
	
	result isPassed should be: false.