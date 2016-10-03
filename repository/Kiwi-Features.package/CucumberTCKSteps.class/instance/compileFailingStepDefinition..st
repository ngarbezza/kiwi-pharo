private
compileFailingStepDefinition: stepString

	self temporaryStepClass compileSilently:
	
('failingStep
	<given: ''{1}''>
	<when: ''{1}''>
	<then: ''{1}''>
	
	self error: ''this is a failing step!!'''
	format: {stepString})
	
	classified: 'failing steps'