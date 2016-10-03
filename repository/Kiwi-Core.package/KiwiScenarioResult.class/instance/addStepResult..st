adding results
addStepResult: aStepASTNode

	^self stepResults add: (KiwiStepResult new astNode: aStepASTNode)