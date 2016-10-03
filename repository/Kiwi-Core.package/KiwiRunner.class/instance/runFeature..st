running
runFeature: aFeature

	(self features includes: aFeature)
		ifFalse: [ KiwiError signal: 'The feature specified is not in the runner' ]
		ifTrue: [ | oldFeatures result |
			oldFeatures := self features.
			features := OrderedCollection with: aFeature.
			result := self run.
			features := oldFeatures.
			^result
		]