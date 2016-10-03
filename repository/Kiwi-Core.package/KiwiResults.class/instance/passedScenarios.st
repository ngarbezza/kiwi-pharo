count scenarios
passedScenarios

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result passedScenarios ]