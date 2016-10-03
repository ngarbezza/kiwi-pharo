count steps
failedSteps

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result failedSteps ]