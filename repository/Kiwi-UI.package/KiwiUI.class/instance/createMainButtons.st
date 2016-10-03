private
createMainButtons

	^builder newRow: { 
		runAllFeaturesButton := builder
			newButtonFor: self
			action: #runAllFeatures
			getEnabled: #isThereFeatures
			label: 'Run all features'
			help: 'Runs all the features in this profile'.
		runSelectedFeatureButton := builder
			newButtonFor: self
			action: #runSelectedFeature
			getEnabled: #isThereFeatures
			label: 'Run current feature'
			help: 'Runs the current selected feature'
	}