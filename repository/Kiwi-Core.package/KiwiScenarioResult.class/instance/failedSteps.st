count steps
failedSteps

	^(self stepResults select: #isFailed) size