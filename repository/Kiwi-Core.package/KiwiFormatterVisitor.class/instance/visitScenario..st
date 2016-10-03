visitor methods
visitScenario: aScenario

	aScenario tagGroup ifNotNil: [ aScenario tagGroup accept: self ].
	self visitElement: aScenario withSteps: 'Scenario: '