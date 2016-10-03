accessing
getArgumentsFrom: aPragma

	| args stepRegex |
	args := OrderedCollection new.
	stepRegex := aPragma arguments first asRegex.
	stepRegex matches: self body.
	2 to: stepRegex subexpressionCount
		do: [ :n | args add: (stepRegex subexpression: n) ].
	self hasMultilineArgument ifTrue: [ args add: self argument asArgument ].	
	^args asArray