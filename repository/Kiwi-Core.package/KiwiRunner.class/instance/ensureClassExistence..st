private
ensureClassExistence: aClassName

	Smalltalk
		at: aClassName
		ifAbsent: [ KiwiError signalFor: #inexistentStepDefinitionClass ].