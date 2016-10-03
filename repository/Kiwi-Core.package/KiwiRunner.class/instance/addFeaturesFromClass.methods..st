actions
addFeaturesFromClass: aClassSymbol methods: aCollectionOfSymbols

	aCollectionOfSymbols do: [ :methodName | self addFeatureFromClass: aClassSymbol method: methodName ]