feature loading
testAddingAnInexistentStepsClassShouldRaiseAnError

	| runner |
	runner := KiwiRunner new.
	self
		should: [ runner addStepDefinitionsClass: #FKDJBRFSD ]
		raise: KiwiError
		withExceptionDo: [ :ex |
			ex messageText should equal:
				(ex class messageAt: #inexistentStepDefinitionClass)
		].
	
	runner stepDefinitionsClasses isEmpty should be: true.