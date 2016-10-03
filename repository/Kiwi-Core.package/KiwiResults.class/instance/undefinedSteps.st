count steps
undefinedSteps

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result undefinedSteps ]