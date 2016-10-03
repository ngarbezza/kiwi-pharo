accessing
getStepByTitle: stepTitle

	^self stepResults detect: [ :sr | sr astNode body = stepTitle ] ifNone: [ nil ]
