count scenarios
pendingScenarios

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result pendingScenarios ]