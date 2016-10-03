parser definitions
multilineArgument
	
	^#newline asParser
	, #space asParser star
	, (self table / self docString)