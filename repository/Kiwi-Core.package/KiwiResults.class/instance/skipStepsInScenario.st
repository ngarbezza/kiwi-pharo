testing
skipStepsInScenario
	"true if there are already a failing step in the current scenario, false otherwise"
	
	^self currentScenarioResult skipStepsInScenario