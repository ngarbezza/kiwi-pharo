status-undefined
testItIsUndefinedWhenAStepInsideIsUndefined

	result addStepResult setUndefined.
	
	result isUndefined should be: true.