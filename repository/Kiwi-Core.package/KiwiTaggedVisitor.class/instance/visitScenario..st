visitor methods
visitScenario: aScenario

	(self tagFilter includes: aScenario)
		ifTrue: [ ^self doVisitScenario: aScenario ]