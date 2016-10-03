count steps
passedSteps

	^self scenarioResults
		inject: 0
		into: [ :acc :result | acc + result passedSteps ]