states
testHasMultilineArgument

	(KiwiStepASTNode new)
		hasMultilineArgument should be: false.
	(KiwiStepASTNode new argument: (KiwiDocStringASTNode new content: 'xxxxx'))
		hasMultilineArgument should be: true.
	(KiwiStepASTNode new argument: (KiwiTableASTNode new data: #(#(1 2) #(3 4))))
		hasMultilineArgument should be: true.