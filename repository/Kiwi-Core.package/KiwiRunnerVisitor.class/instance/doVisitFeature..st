visitor methods
doVisitFeature: aFeature

	self results addFeatureResult: aFeature.
	aFeature scenarios do: [ :scenario |
		aFeature isBackgroundPresent ifTrue: [ aFeature background accept: self ].
		scenario accept: self.
		self restoreState.
	].