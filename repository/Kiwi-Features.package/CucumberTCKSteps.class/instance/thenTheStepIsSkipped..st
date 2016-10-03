then steps
thenTheStepIsSkipped: stepName

	<then: 'the step "([^"]*)" is skipped'>
	
	(scenarioResult getStepByTitle: stepName) isSkipped should be: true.