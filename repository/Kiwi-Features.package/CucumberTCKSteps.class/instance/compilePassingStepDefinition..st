private
compilePassingStepDefinition: stepString

	self temporaryStepClass compileSilently:
	
('passingStep{1}
	<given: ''{2}''>
	<when: ''{2}''>
	<then: ''{2}''>'
	format: {Time millisecondClockValue printString. stepString})
	
	classified: 'passing steps'.
	(Delay forMilliseconds: 10) wait.