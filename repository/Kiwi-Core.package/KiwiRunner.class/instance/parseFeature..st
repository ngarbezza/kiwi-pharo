private
parseFeature: aFeatureContent

	| result |
	result := (KiwiGherkinParser detectingLanguage: aFeatureContent)
		parseFeature: aFeatureContent.
	^result isPetitFailure
		ifTrue: [ KiwiFailingFeature new failure: result ]
		ifFalse: [ result ]