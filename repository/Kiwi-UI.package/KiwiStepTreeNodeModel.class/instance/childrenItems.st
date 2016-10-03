accessing
childrenItems

	| result |
	result := OrderedCollection new.
	result add: self item status.
	self item hasMatchingDefinition ifTrue: [ result add: self item matchingDefinition ].
	self item isFailed ifTrue: [ result add: self item failure ].
	^result asArray