parser definitions
docString

	^super docString ==> [ :tokens | KiwiDocStringASTNode new content: tokens fourth ]