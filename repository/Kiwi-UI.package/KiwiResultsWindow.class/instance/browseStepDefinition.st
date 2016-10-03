events
browseStepDefinition

	|selected|
	selected := treeView selectedMorph complexContents.
	Smalltalk tools browser
		fullOnClass: selected item methodClass
		selector: selected item selector