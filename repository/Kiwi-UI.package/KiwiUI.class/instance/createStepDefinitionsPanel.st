private
createStepDefinitionsPanel

	^builder newGroupbox: 'Step definitions' forAll: {
		builder newRow: {
			builder newColumn: {
				self createAddStepDefButton.
				removeStepDefButton := self createRemoveSelectedStepDefButton.
			}.
			stepClassesList := builder
				newListFor: self
				list: #stepDefinitionsClasses
				selected: #stepDefinitionClassSelected
				changeSelected: #stepClassSelectionChanged:
				help: 'Cucumber will search for steps definitions in these classes'
		}.
	}.