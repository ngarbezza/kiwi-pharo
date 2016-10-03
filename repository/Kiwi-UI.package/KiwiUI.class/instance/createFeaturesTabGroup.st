private
createFeaturesTabGroup

	featuresTabGroup := builder newTabGroup: {}.
	self runner features do: [ :feature | self createTabForFeature: feature ].
	^featuresTabGroup