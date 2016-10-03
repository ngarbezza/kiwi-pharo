count steps
passedSteps

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result passedSteps ]