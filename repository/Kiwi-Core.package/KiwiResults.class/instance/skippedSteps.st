count steps
skippedSteps

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result skippedSteps ]