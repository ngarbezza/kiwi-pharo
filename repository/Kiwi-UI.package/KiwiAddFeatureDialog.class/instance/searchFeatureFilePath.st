private
searchFeatureFilePath
	
	| path |
	path := UITheme new
		chooseFullFileNameIn: parentWindow
		title: 'Please select the .feature file'
		patterns: nil
		path: nil
		preview: nil.
	path ifNotNil: [ featureFilePathField setText: path. self featureFilePath: path ].