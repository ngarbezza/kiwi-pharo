testing
hasTag: aTagName

	^(super hasTag: aTagName)
		or: [ self scenarios anySatisfy: [ :scenario | scenario hasTag: aTagName ] ]