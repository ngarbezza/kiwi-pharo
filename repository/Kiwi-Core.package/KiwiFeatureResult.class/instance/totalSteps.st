count steps
totalSteps

	^self scenarioResults
		inject: 0
		into: [ :acc :result | acc + result totalSteps ]