querying
getStepByTitle: stepTitle

	^self steps detect: [ :step | step body includesSubString: stepTitle ]