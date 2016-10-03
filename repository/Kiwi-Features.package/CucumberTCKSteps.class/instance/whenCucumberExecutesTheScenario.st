when steps
whenCucumberExecutesTheScenario

	<when: 'Cucumber executes the scenario'>
	runner := KiwiRunnerVisitor
		newStepDefinitionsClasses: { self temporaryStepClassName }.
	runner results addFeatureResult: nil.
	scenarioResult := runner visitScenario: scenario.