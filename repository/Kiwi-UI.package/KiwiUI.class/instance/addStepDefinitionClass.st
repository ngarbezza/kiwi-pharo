actions
addStepDefinitionClass
	
	| className |
	className := (OBCompletionDialog openOn: 
		(OBCompletionRequest new
			collection: Smalltalk keys asSortedCollection caseSensitive: false;
			prompt: 'Select a class';
			yourself)) answer.
	className ifNotNil: [ 
		runner addStepDefinitionsClass: className.
		stepClassesList updateList.
		removeStepDefButton update: #isThereStepDefClasses.
	]