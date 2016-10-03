adding results
addScenarioResult: aScenarioASTNode

	^self scenarioResults add: (KiwiScenarioResult new astNode: aScenarioASTNode)