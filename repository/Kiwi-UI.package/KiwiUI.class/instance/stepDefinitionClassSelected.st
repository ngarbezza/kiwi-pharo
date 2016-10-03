accessing
stepDefinitionClassSelected

	^stepDefinitionSelectionIndex ifNil: [ 1 ] ifNotNil: [ stepDefinitionSelectionIndex ]