visitor methods
doVisitScenario: aScenario

	| scenarioResult |
	scenarioResult := self results addScenarioResult: aScenario.
	self executeHooks: #before.
	aScenario steps do: [ :step | step accept: self ].
	self executeHooks: #after.
	^scenarioResult
