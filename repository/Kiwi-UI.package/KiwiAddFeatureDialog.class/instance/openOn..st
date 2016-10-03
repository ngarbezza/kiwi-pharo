opening
openOn: window

	|dialog|
	self setNewFeature.
	dialog := (UITheme builder newPluggableDialogWindow: 'Please select the source of the feature')
		useDefaultOKCancelButton.
	dialog contentMorph: (dialog newColumn: {
		dialog
			newRadioButtonFor: self
			getSelected: #isNewFeature
			setSelected: #setNewFeature
			label: 'New'
			help: ''.
		dialog
			newRadioButtonFor: self
			getSelected: #isFeatureInSmalltalkImage
			setSelected: #setFeatureInSmalltalkImage
			label: 'In the Smalltalk Image'
			help: ''.
		dialog newRow: {
			dialog newButtonFor: self action: #searchClassOfFeature getEnabled: #isFeatureInSmalltalkImage label: 'Search class' help: ''.
			dialog newButtonFor: self action: #searchMethodOfFeature getEnabled: #isFeatureInSmalltalkImage label: 'Search method' help: ''.
			classSelectedLabel := dialog newLabel: 'No class selected'.
			dialog newLabel: '>>'.
			methodSelectedLabel := dialog newLabel: 'No method selected'.
		}.
		dialog 
			newRadioButtonFor: self
			getSelected: #isFeatureInFileSystem
			setSelected: #setFeatureInFileSystem
			label: 'In the filesystem'
			help: ''.
		dialog newRow: {
			dialog newLabelFor: self label: 'File:' getEnabled: #isFeatureInFileSystem.
			featureFilePathField := dialog
				newTextEntryFor: self
				getText: #featureFilePath
				setText: #featureFilePath:
				getEnabled: #isFeatureInFileSystem
				help: ''.
			dialog newButtonFor: self action: #searchFeatureFilePath getEnabled: #isFeatureInFileSystem label: 'Search file...' help: ''.
		}.
	}); model: nil.
	parentWindow := dialog.
	window openModal: dialog.