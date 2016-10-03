accessing
childNodeClassFromItem: anItem

	^(anItem astNode isKindOf: KiwiScenarioASTNode)
		ifTrue: [ KiwiScenarioTreeNodeModel ]
		ifFalse: [ KiwiScenarioOutlineTreeNodeModel ]