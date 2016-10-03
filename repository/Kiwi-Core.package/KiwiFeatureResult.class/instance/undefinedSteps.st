count steps
undefinedSteps

	^self scenarioResults
		inject: 0
		into: [ :acc :result | acc + result undefinedSteps ]