parser definitions
docString
	
	| open close |
	open := '"""' asParser , #blank asParser star , #newline asParser.
	close := #newline asParser optional, #blank asParser star , '"""' asParser , #space asParser star.
	^ open , close negate star flatten , close