actions
removeSelectedStepDefClass
	
	runner removeStepDefinitionsClass: stepClassesList selection.
	stepClassesList updateList.
	removeStepDefButton update: #isThereStepDefClasses