accessing
resultsModels

	^self result featureResults
		collect: [ :feature | KiwiFeatureTreeNodeModel with: feature ]