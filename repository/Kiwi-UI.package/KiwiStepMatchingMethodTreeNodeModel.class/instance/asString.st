converting
asString

	^'Match: ' , (self item printString copyFrom: 2 to: (self item printString indexOf: $") - 2)