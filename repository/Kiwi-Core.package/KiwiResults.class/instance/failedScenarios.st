count scenarios
failedScenarios

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result failedScenarios ]