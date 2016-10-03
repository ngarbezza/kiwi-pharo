conversion
saveToMethod: aMethodSymbol class: aClassSymbol category: category

	(Smalltalk at: aClassSymbol)
		compileSilently: aMethodSymbol asString, ' ^'''''
		classified: category.
	^(KiwiFeatureFromMethod class: aClassSymbol method: aMethodSymbol)
		featureContent: self featureContent;
		yourself