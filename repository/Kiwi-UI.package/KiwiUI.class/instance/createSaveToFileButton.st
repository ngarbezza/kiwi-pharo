private
createSaveToFileButton

	^builder
		newButtonFor: self
		action: #saveFeatureToFile
		getEnabled: #isThereFeatures
		label: 'Save to file...'
		help: 'Save the current feature to a file'