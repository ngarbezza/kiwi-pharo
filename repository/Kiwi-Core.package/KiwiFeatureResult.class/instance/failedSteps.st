count steps
failedSteps

	^self scenarioResults
		inject: 0
		into: [ :acc :result | acc + result failedSteps ]