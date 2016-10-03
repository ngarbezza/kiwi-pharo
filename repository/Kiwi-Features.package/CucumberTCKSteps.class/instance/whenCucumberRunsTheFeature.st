when steps
whenCucumberRunsTheFeature

	<when: 'Cucumber runs the feature'>
	runner := KiwiRunner new.
	runner addFeature: feature.
	runner addStepDefinitionsClass: #CucumberTemporarySteps.
	featureResult := runner run currentFeatureResult.