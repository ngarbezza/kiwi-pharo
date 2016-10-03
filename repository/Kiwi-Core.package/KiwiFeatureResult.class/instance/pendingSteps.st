count steps
pendingSteps

	^self scenarioResults
		inject: 0
		into: [ :acc :result | acc + result pendingSteps ]