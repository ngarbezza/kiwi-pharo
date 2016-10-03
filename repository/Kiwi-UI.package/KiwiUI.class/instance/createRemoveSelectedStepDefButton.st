private
createRemoveSelectedStepDefButton
	
	^builder
		newButtonFor: self
		action: #removeSelectedStepDefClass
		getEnabled: #isThereStepDefClasses
		label: 'Remove selected'
		help: 'Remove the selected class from this window'