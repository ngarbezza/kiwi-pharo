events
selectedResultChanged: item

	item ifNotNil: [
		treeView selection: item.
		selectedResult := item content.
		(item isKindOf: KiwiStepMatchingMethodTreeNodeModel)
			ifTrue: [
				(buttonsPanel submorphs includes: browseButton) ifFalse: [
					browseButton := UITheme builder
						newButtonFor: self
						action: #browseStepDefinition
						label: 'Browse step definition' help: ''.
					buttonsPanel addMorph: browseButton.
					textEditor setText: ''.
				].
			]
			ifFalse: [
				textEditor setText: selectedResult asText.
				browseButton ifNotNil: [
					buttonsPanel removeMorph: browseButton.
					browseButton := nil.
				]
			].
	]