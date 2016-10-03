count steps
pendingSteps

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result pendingSteps ]