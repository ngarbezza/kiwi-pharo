when steps
whenCucumberRunsTheScenarioWithStepsForACalculator
	"This step depends on the implementation of CalculatorSteps class. Browse this class for more information"

	<when: 'Cucumber runs the scenario with steps for a calculator'>
	
	runner := KiwiRunnerVisitor newStepDefinitionsClasses: #(CalculatorSteps).
	feature := KiwiFeatureASTNode new scenarios: {scenario}.
	feature accept: runner.
	scenarioResult := runner results currentScenarioResult.