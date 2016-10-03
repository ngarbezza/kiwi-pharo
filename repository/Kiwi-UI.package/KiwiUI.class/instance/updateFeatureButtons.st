private
updateFeatureButtons

	{runSelectedFeatureButton. runAllFeaturesButton.
	saveToFileButton. saveToMethodButton}
		do: [ :each | each update: #isThereFeatures ]