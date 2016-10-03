private
compilePendingStepDefinition: stepString

	self temporaryStepClass compileSilently:

('failingStep{1}
	<given: ''{2}''>
	<when: ''{2}''>
	<then: ''{2}''>
	<pending>'
	format: {Time millisecondClockValue printString. stepString})
	
	classified: 'pending steps'