status-passed
testItPassIfTheStepsInsidePass

	(result addStepResult) setPassedWith: nil.
	(result addStepResult) setPassedWith: nil.
	
	result isPassed should be: true.