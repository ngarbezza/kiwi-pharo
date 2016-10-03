visitor methods
visitScenarioOutline: aScenarioOutline 

	aScenarioOutline allScenarios do: [ :scenario | scenario accept: self ]