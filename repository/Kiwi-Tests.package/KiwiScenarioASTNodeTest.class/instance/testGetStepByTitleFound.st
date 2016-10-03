as yet unclassified
testGetStepByTitleFound

	| scenario whenStep |
	scenario := KiwiScenarioASTNode new.
	whenStep := KiwiStepASTNode new kind: 'When'; body: 'something'.
	scenario steps: (Array with: whenStep).

	self assert: (scenario stepNamed: 'something') equals: whenStep