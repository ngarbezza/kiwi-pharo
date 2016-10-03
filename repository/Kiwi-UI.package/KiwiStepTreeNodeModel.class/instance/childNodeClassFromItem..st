accessing
childNodeClassFromItem: anItem

	anItem isCompiledMethod ifTrue: [ ^KiwiStepMatchingMethodTreeNodeModel ].
	(anItem isKindOf: Error) ifTrue: [ ^KiwiStepErrorTreeNodeModel ].
	(anItem isKindOf: Symbol) ifTrue: [ ^KiwiStepStateTreeNodeModel ].
