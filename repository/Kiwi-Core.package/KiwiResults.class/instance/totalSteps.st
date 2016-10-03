count steps
totalSteps

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result totalSteps ]