actions
removeStepDefinitionsClass: aClassName

	self ensureClassExistence: aClassName.
	self stepDefinitionsClasses remove: aClassName.