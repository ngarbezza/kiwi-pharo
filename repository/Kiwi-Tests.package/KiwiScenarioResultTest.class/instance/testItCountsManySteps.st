counting steps
testItCountsManySteps

	3 timesRepeat: [ result addStepResult ].
	
	result totalSteps should be: 3.