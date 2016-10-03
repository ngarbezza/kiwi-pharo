actions
addStepDefinitionsClass: aClassName

	self ensureClassExistence: aClassName.
	self stepDefinitionsClasses add: aClassName.