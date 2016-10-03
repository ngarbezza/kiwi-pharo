steps with placeholders
testHasPlaceholder

	((KiwiStepASTNode new kind: 'Given'; body: 'one <placeholder> here')
		hasPlaceholder: 'placeholder') should be: true.