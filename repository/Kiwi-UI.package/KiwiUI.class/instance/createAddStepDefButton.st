private
createAddStepDefButton

	^builder
		newButtonFor: self
		action: #addStepDefinitionClass
		label: 'Add class'
		help: 'Add a class with step definitions'