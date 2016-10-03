visitor methods
visitStep: aStep
	
	self stream nextPutAll: aStep kind; space; nextPutAll: aStep body.
	aStep hasMultilineArgument ifTrue: [ aStep argument accept: self ].