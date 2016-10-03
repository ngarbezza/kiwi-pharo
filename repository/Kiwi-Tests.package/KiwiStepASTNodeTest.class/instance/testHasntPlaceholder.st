steps with placeholders
testHasntPlaceholder

	((KiwiStepASTNode new kind: 'Given'; body: 'theres no placeholders here')
		hasPlaceholder: 'placeholder') should be: false.
	
	((KiwiStepASTNode new kind: 'Given'; body: 'here is a placeholder but with other <name>')
		hasPlaceholder: 'placeholder') should be: false.