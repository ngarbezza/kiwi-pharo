then steps
thenTheStepIsSkipped: stepName

	<then: 'the step "([^"]*)" is skipped'>
	
	(scenarioResult stepNamed: stepName) isSkipped should be: true.