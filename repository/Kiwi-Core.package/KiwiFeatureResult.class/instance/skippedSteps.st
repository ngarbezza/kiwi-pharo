count steps
skippedSteps

	^self scenarioResults
		inject: 0
		into: [ :acc :result | acc + result skippedSteps ]