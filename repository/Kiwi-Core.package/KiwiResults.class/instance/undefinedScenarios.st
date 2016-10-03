count scenarios
undefinedScenarios

	^self featureResults
		inject: 0
		into: [ :acc :result | acc + result undefinedScenarios ]