count scenarios
totalScenarios

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result totalScenarios ]