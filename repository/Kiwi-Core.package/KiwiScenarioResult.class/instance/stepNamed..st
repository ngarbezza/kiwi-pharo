accessing
stepNamed: aStepName

	^self stepResults detect: [ :sr | sr astNode body = aStepName ] ifNone: [ nil ]
