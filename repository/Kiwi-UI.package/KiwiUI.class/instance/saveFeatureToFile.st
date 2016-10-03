actions
saveFeatureToFile

	| newFeature path |
	path := UITheme new
		fileSaveIn: mainWindow
		title: 'Select or write the feature file name'
		extensions: nil path: nil.
	path ifNotNil: [
		newFeature := self currentFeature saveToFile: path fullName.
		self currentFeature isNewFeature
			ifTrue: [ self replaceFeature: self currentFeature with: newFeature ]
			ifFalse: [
			(UITheme new
				chooseIn: mainWindow
				title: 'Replace the old feature with the new one in the runner?'
				labels: #('Yes' 'No')
				values: #(true false)
				lines: nil)
				ifTrue: [ self replaceFeature: self currentFeature with: newFeature ]
		]
	]