querying
stepNamed: aStepName

	^self steps detect: [ :step | step body includesSubstring: aStepName ]